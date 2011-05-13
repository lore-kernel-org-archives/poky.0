Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F6464C811FD
	for <poky@yoctoproject.org>; Fri, 13 May 2011 12:13:56 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 May 2011 10:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,365,1301900400"; d="scan'208";a="746908112"
Received: from unknown (HELO [10.7.199.58]) ([10.7.199.58])
	by orsmga001.jf.intel.com with ESMTP; 13 May 2011 10:13:35 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 13 May 2011 10:13:34 -0700
In-Reply-To: <748c06bb7ff87fb396298084a35cb0eb45a088c1.1305269419.git.lei.mei@intel.com>
References: <cover.1305269419.git.lei.mei@intel.com>
	<748c06bb7ff87fb396298084a35cb0eb45a088c1.1305269419.git.lei.mei@intel.com>
X-Mailer: Evolution 3.0.1 (3.0.1-1.fc15) 
Message-ID: <1305306814.2023.19.camel@scimitar>
Mime-Version: 1.0
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
X-List-Received-Date: Fri, 13 May 2011 17:13:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-13 at 15:04 +0800, Mei Lei wrote:
> From: Mei Lei <lei.mei@intel.com>
> 
> This task will check which license text is missing

Can you flesh out this commit log some please? Why is this task useful?
When should it be used? Etc.

Code style comments in line below, thanks!

> 
> Signed-off-by: Mei Lei <lei.mei@intel.com>
> ---
>  meta/classes/distrodata.bbclass |   88 ++++++++++++++++++++++++---------------
>  1 files changed, 54 insertions(+), 34 deletions(-)
> 
> diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
> index 905dad7..58a2cf7 100644
> --- a/meta/classes/distrodata.bbclass
> +++ b/meta/classes/distrodata.bbclass
> @@ -4,18 +4,8 @@ addhandler distro_eventhandler
>  python distro_eventhandler() {
>  
>      if bb.event.getName(e) == "BuildStarted":
> -	"""initialize log files."""
> -	logpath = bb.data.getVar('LOG_DIR', e.data, 1)
> -	bb.utils.mkdirhier(logpath)
> -	logfile = os.path.join(logpath, "distrodata.%s.csv" % bb.data.getVar('DATETIME', e.data, 1))
> -	if not os.path.exists(logfile):
> -		slogfile = os.path.join(logpath, "distrodata.csv")
> -		if os.path.exists(slogfile):
> -			os.remove(slogfile)
> -		os.system("touch %s" % logfile)
> -		os.symlink(logfile, slogfile)
> -		bb.data.setVar('LOG_FILE', logfile, e.data)
> -
> +	import oe.distro_check as dc
> +	logfile = dc.create_log_file(e.data,"distrodata.csv")
>  	lf = bb.utils.lockfile(logfile + ".lock")
>  	f = open(logfile, "a")
>  	f.write("Package,Description,Owner,License,ChkSum,Status,VerMatch,Version,Upsteam,Non-Update,Reason,Recipe Status\n")
> @@ -211,17 +201,8 @@ do_distrodataall() {
>  addhandler checkpkg_eventhandler
>  python checkpkg_eventhandler() {
>      if bb.event.getName(e) == "BuildStarted":
> -	"""initialize log files."""
> -	logpath = bb.data.getVar('LOG_DIR', e.data, 1)
> -	bb.utils.mkdirhier(logpath)
> -	logfile = os.path.join(logpath, "checkpkg.%s.csv" % bb.data.getVar('DATETIME', e.data, 1))
> -	if not os.path.exists(logfile):
> -		slogfile = os.path.join(logpath, "checkpkg.csv")
> -		if os.path.exists(slogfile):
> -			os.remove(slogfile)
> -		os.system("touch %s" % logfile)
> -		os.symlink(logfile, slogfile)
> -		bb.data.setVar('LOG_FILE', logfile, e.data)
> +	import oe.distro_check as dc
> +	logfile = dc.create_log_file(e.data,"checkpkg.csv")
>  
>  	lf = bb.utils.lockfile(logfile + ".lock")
>  	f = open(logfile, "a")
> @@ -662,17 +643,8 @@ python check_eventhandler() {
>          distro_check_dir = os.path.join(tmpdir, "distro_check")
>          datetime = bb.data.getVar('DATETIME', e.data, 1)
>          """initialize log files."""
> -        logpath = bb.data.getVar('LOG_DIR', e.data, 1)
> -        bb.utils.mkdirhier(logpath)
> -        logfile = os.path.join(logpath, "distrocheck.%s.csv" % bb.data.getVar('DATETIME', e.data, 1))
> -        if not os.path.exists(logfile):
> -                slogfile = os.path.join(logpath, "distrocheck.csv")
> -                if os.path.exists(slogfile):
> -                        os.remove(slogfile)
> -                os.system("touch %s" % logfile)
> -                os.symlink(logfile, slogfile)
> -                bb.data.setVar('LOG_FILE', logfile, e.data)
> -
> +        import oe.distro_check as dc
> +        logfile = dc.create_log_file(e.data,"distrocheck.csv")
>      return
>  }
>  
> @@ -701,3 +673,51 @@ do_distro_checkall[nostamp] = "1"
>  do_distro_checkall() {
>  	:
>  }
> +##Check Missing License Text
> +addhandler checklicense_eventhandler
> +python checklicense_eventhandler() {
> +    if bb.event.getName(e) == "BuildStarted":
> +        """initialize log files."""
> +        import oe.distro_check as dc
> +        logfile = dc.create_log_file(e.data,"missinglicense.csv")
Whitespace: logfile = dc.create_log_file(e.data, "missinglicense.csv")
> +        lf = bb.utils.lockfile(logfile + ".lock")
Personally I prefer to use string formatting rather for this sort of
thing:
+        lf = bb.utils.lockfile("%s.lock" % logfile)
> +        f = open(logfile, "a")
> +        f.write("Package\tLicense\tMissingLicense\n")
> +        f.close()
> +        bb.utils.unlockfile(lf)
> +    return
> +}
> +
> +addtask checklicense
> +do_checklicense[nostamp] = "1"
> +python do_checklicense() {
> +    import os
> +    import bb
> +    import shutil
> +    logpath = bb.data.getVar('LOG_DIR', d, 1)
> +    bb.utils.mkdirhier(logpath)
> +    pn = bb.data.getVar('PN',d,1)

pn = bb.data.getVar('PN', d, True)

Please try and maintain whitespace style and use boolean values where
appropriate.

> +    logfile = os.path.join(logpath, "missinglicense.csv")
> +    generic_directory = bb.data.getVar('COMMON_LICENSE_DIR', d, True)
> +    license_types = bb.data.getVar('LICENSE', d, True)
> +    for license_type in ((license_types.replace('+', '').replace('|', '&')
> +                          .replace('(', '').replace(')', '').replace(';', '')
> +                          .replace(',', '').replace(" ", "").split("&"))):
> +        if not os.path.isfile(os.path.join(generic_directory, license_type)):
> +            lf = bb.utils.lockfile(logfile + ".lock")
Maybe use string formatters here too:
+            lf = bb.utils.lockfile("%s.lock" % logfile)
> +            f = open(logfile,"a") 
> +            f.write("%s\t%s\t%s\n" % \
> +        		(pn,license_types,license_type))
> +            f.close()
> +            bb.utils.unlockfile(lf)
> +    return
> +}
> +
> +addtask checklicenseall after do_checklicense
> +do_checklicenseall[recrdeptask] = "do_checklicense"
> +do_checklicenseall[nostamp] = "1"
> +do_checklicenseall() {
> +	:
> +}
> +
> +

-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


