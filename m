Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id F38834C800BA
	for <poky@yoctoproject.org>; Mon, 16 May 2011 07:30:11 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 May 2011 05:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,374,1301900400"; d="scan'208";a="436793286"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 16 May 2011 05:30:10 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 16 May 2011 20:30:06 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 16 May 2011 20:30:05 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 16 May 2011 20:30:04 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 16 May 2011 20:30:02 +0800
Thread-Topic: [poky] [PATCH 2/2] distrodata.bbclass: Add checklicense task
Thread-Index: AcwRkTGQInabzIAeRl6tFsLK8n2maACM1Kyw
Message-ID: <749B9D3DBF0F054390025D9EAFF47F224C328998@shsmsx501.ccr.corp.intel.com>
References: <cover.1305269419.git.lei.mei@intel.com>
	<748c06bb7ff87fb396298084a35cb0eb45a088c1.1305269419.git.lei.mei@intel.com>
	<1305306814.2023.19.camel@scimitar>
In-Reply-To: <1305306814.2023.19.camel@scimitar>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] distrodata.bbclass: Add checklicense task
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 May 2011 12:30:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Josh,

	Thanks for your comments, I am very appreciate of that.
	I have revised these patches and sent a new pull-request to mail list, ple=
ase review it.

Thanks
Lei

>-----Original Message-----
>From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org]
>On Behalf Of Joshua Lock
>Sent: Saturday, May 14, 2011 1:14 AM
>To: poky@yoctoproject.org
>Subject: Re: [poky] [PATCH 2/2] distrodata.bbclass: Add checklicense task
>
>On Thu, 2011-01-13 at 15:04 +0800, Mei Lei wrote:
>> From: Mei Lei <lei.mei@intel.com>
>>
>> This task will check which license text is missing
>
>Can you flesh out this commit log some please? Why is this task useful?
>When should it be used? Etc.
>
>Code style comments in line below, thanks!
>
>>
>> Signed-off-by: Mei Lei <lei.mei@intel.com>
>> ---
>>  meta/classes/distrodata.bbclass |   88
>++++++++++++++++++++++++---------------
>>  1 files changed, 54 insertions(+), 34 deletions(-)
>>
>> diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.b=
bclass
>> index 905dad7..58a2cf7 100644
>> --- a/meta/classes/distrodata.bbclass
>> +++ b/meta/classes/distrodata.bbclass
>> @@ -4,18 +4,8 @@ addhandler distro_eventhandler
>>  python distro_eventhandler() {
>>
>>      if bb.event.getName(e) =3D=3D "BuildStarted":
>> -	"""initialize log files."""
>> -	logpath =3D bb.data.getVar('LOG_DIR', e.data, 1)
>> -	bb.utils.mkdirhier(logpath)
>> -	logfile =3D os.path.join(logpath, "distrodata.%s.csv" %
>bb.data.getVar('DATETIME', e.data, 1))
>> -	if not os.path.exists(logfile):
>> -		slogfile =3D os.path.join(logpath, "distrodata.csv")
>> -		if os.path.exists(slogfile):
>> -			os.remove(slogfile)
>> -		os.system("touch %s" % logfile)
>> -		os.symlink(logfile, slogfile)
>> -		bb.data.setVar('LOG_FILE', logfile, e.data)
>> -
>> +	import oe.distro_check as dc
>> +	logfile =3D dc.create_log_file(e.data,"distrodata.csv")
>>  	lf =3D bb.utils.lockfile(logfile + ".lock")
>>  	f =3D open(logfile, "a")
>>
>	f.write("Package,Description,Owner,License,ChkSum,Status,VerMatch,Versio
>n,Upsteam,Non-Update,Reason,Recipe Status\n")
>> @@ -211,17 +201,8 @@ do_distrodataall() {
>>  addhandler checkpkg_eventhandler
>>  python checkpkg_eventhandler() {
>>      if bb.event.getName(e) =3D=3D "BuildStarted":
>> -	"""initialize log files."""
>> -	logpath =3D bb.data.getVar('LOG_DIR', e.data, 1)
>> -	bb.utils.mkdirhier(logpath)
>> -	logfile =3D os.path.join(logpath, "checkpkg.%s.csv" %
>bb.data.getVar('DATETIME', e.data, 1))
>> -	if not os.path.exists(logfile):
>> -		slogfile =3D os.path.join(logpath, "checkpkg.csv")
>> -		if os.path.exists(slogfile):
>> -			os.remove(slogfile)
>> -		os.system("touch %s" % logfile)
>> -		os.symlink(logfile, slogfile)
>> -		bb.data.setVar('LOG_FILE', logfile, e.data)
>> +	import oe.distro_check as dc
>> +	logfile =3D dc.create_log_file(e.data,"checkpkg.csv")
>>
>>  	lf =3D bb.utils.lockfile(logfile + ".lock")
>>  	f =3D open(logfile, "a")
>> @@ -662,17 +643,8 @@ python check_eventhandler() {
>>          distro_check_dir =3D os.path.join(tmpdir, "distro_check")
>>          datetime =3D bb.data.getVar('DATETIME', e.data, 1)
>>          """initialize log files."""
>> -        logpath =3D bb.data.getVar('LOG_DIR', e.data, 1)
>> -        bb.utils.mkdirhier(logpath)
>> -        logfile =3D os.path.join(logpath, "distrocheck.%s.csv" %
>bb.data.getVar('DATETIME', e.data, 1))
>> -        if not os.path.exists(logfile):
>> -                slogfile =3D os.path.join(logpath, "distrocheck.csv")
>> -                if os.path.exists(slogfile):
>> -                        os.remove(slogfile)
>> -                os.system("touch %s" % logfile)
>> -                os.symlink(logfile, slogfile)
>> -                bb.data.setVar('LOG_FILE', logfile, e.data)
>> -
>> +        import oe.distro_check as dc
>> +        logfile =3D dc.create_log_file(e.data,"distrocheck.csv")
>>      return
>>  }
>>
>> @@ -701,3 +673,51 @@ do_distro_checkall[nostamp] =3D "1"
>>  do_distro_checkall() {
>>  	:
>>  }
>> +##Check Missing License Text
>> +addhandler checklicense_eventhandler
>> +python checklicense_eventhandler() {
>> +    if bb.event.getName(e) =3D=3D "BuildStarted":
>> +        """initialize log files."""
>> +        import oe.distro_check as dc
>> +        logfile =3D dc.create_log_file(e.data,"missinglicense.csv")
>Whitespace: logfile =3D dc.create_log_file(e.data, "missinglicense.csv")
>> +        lf =3D bb.utils.lockfile(logfile + ".lock")
>Personally I prefer to use string formatting rather for this sort of
>thing:
>+        lf =3D bb.utils.lockfile("%s.lock" % logfile)
>> +        f =3D open(logfile, "a")
>> +        f.write("Package\tLicense\tMissingLicense\n")
>> +        f.close()
>> +        bb.utils.unlockfile(lf)
>> +    return
>> +}
>> +
>> +addtask checklicense
>> +do_checklicense[nostamp] =3D "1"
>> +python do_checklicense() {
>> +    import os
>> +    import bb
>> +    import shutil
>> +    logpath =3D bb.data.getVar('LOG_DIR', d, 1)
>> +    bb.utils.mkdirhier(logpath)
>> +    pn =3D bb.data.getVar('PN',d,1)
>
>pn =3D bb.data.getVar('PN', d, True)
>
>Please try and maintain whitespace style and use boolean values where
>appropriate.
>
>> +    logfile =3D os.path.join(logpath, "missinglicense.csv")
>> +    generic_directory =3D bb.data.getVar('COMMON_LICENSE_DIR', d, True)
>> +    license_types =3D bb.data.getVar('LICENSE', d, True)
>> +    for license_type in ((license_types.replace('+', '').replace('|', '=
&')
>> +                          .replace('(', '').replace(')', '').replace(';=
', '')
>> +                          .replace(',', '').replace(" ", "").split("&")=
)):
>> +        if not os.path.isfile(os.path.join(generic_directory, license_t=
ype)):
>> +            lf =3D bb.utils.lockfile(logfile + ".lock")
>Maybe use string formatters here too:
>+            lf =3D bb.utils.lockfile("%s.lock" % logfile)
>> +            f =3D open(logfile,"a")
>> +            f.write("%s\t%s\t%s\n" % \
>> +        		(pn,license_types,license_type))
>> +            f.close()
>> +            bb.utils.unlockfile(lf)
>> +    return
>> +}
>> +
>> +addtask checklicenseall after do_checklicense
>> +do_checklicenseall[recrdeptask] =3D "do_checklicense"
>> +do_checklicenseall[nostamp] =3D "1"
>> +do_checklicenseall() {
>> +	:
>> +}
>> +
>> +
>
>--
>Joshua Lock
>        Yocto Build System Monkey
>        Intel Open Source Technology Centre
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

