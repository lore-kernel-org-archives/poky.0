Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C24C94C80039
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 23:53:05 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2010 21:53:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,211,1291622400"; d="scan'208";a="639146288"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 21 Dec 2010 21:53:04 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 22 Dec 2010 13:52:38 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 22 Dec 2010 13:52:37 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "He, Qing" <qing.he@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 22 Dec 2010 13:52:20 +0800
Thread-Topic: [poky] [RFC 0/4] socketed based data connection
Thread-Index: AcuhNO/9zsIRCexmSKaSua7SYeAetwAZ13kA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F6A4425@shsmsx502.ccr.corp.intel.com>
References: <cover.1292950144.git.qing.he@intel.com>
	<20101221172520.GA29120@qhe2-db>
In-Reply-To: <20101221172520.GA29120@qhe2-db>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [RFC 0/4] socketed based data connection
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
X-List-Received-Date: Wed, 22 Dec 2010 05:53:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Qing He
>Sent: Wednesday, December 22, 2010 1:25 AM
>
>On Wed, 2010-12-22 at 00:49 +0800, He, Qing wrote:
>> This patch set enables remote data access in the exec'd task process.
>
>It's intended to be proof of concept to an alternative approach
>to work around the slowness introduced by exec bitbake-runtask.
>The patch is still WIP.
>
>http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dqhe/datasock

looks the change is not intrusive as I originally thought. :-)

>
>Thanks,
>Qing
>
>>
>> Some test data:
>> I've conducted a poky-image-minimal build on two different machines
>> with and without the patch, the result are as follow:
>>
>> 2 core weybridge: worker count=3D4, make -j4
>>   without patch
>>     real: 161min
>>     user: 237min
>>     sys:  56min
>>   with patch
>>     real: 138min
>>     user: 196min
>>     sys:  45min
>> 4 core nehalem: worker count=3D4, make -j4
>>   without patch
>>     real: 88min
>>     user: 218min
>>     sys:  37min
>>   with patch
>>     real: 83min
>>     user: 160min
>>     sys:  29min
>>
>> the user+sys has an improvement of around 20%~30%, however the
>> real runtime improvement is less significant. It's probably
>> because of the thread workload unbalance on multicore, or in another
>> word, some CPUs are not fully loaded during the build. e.g. when
>> do_rootfs_rpm is run, there is probably no other tasks running.
>>
>> Haven't done any test against single thread running, but it should
>> have a much more considerable impact.
>>
>>
>> Known problems:
>> 1. fetcher is not working at the moment, maybe bitbake needs an explicit
>> InheritFromOS(), but that produces some inconsistency in PATH in my prev=
ious
>> run
>> 2. do_rootfs_rpm has some problem in the first run
>>
>>
>> Next step and possible future usage:
>> 1. organize remote data to a separate class
>> 2. although we have reverted to fork for task running, a remote data mec=
hanism
>> would work for a more separate build (e.g. distributed build)
>> 3. the added code in bitbake-runtask is to run necessary initializations=
 for a
>> working environment, this is part of cooker. The current cooker seems to=
o heavy
>> and may be broken down into several pieces according to functionalitiies
>>
>> Thanks,
>> Qing
>>
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>   Branch: qhe/datasock
>>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dqhe/da=
tasock
>>
>> Thanks,
>>     Qing He
>> ---
>>
>>
>> Qing He (4):
>>   python method fix
>>   sstate.bbclass: workaround
>>   data_smart: remote data
>>   socket based worker data
>>
>>  bitbake/bin/bitbake-runtask  |   80
>+++++++++++++++++++++++++++++++++--------
>>  bitbake/lib/bb/data_smart.py |   25 ++++++++++++-
>>  bitbake/lib/bb/methodpool.py |    6 +++
>>  bitbake/lib/bb/parse/ast.py  |    2 +-
>>  bitbake/lib/bb/runqueue.py   |   68
>++++++++++++++++++++++++++++++++----
>>  meta/classes/sstate.bbclass  |    2 +-
>>  6 files changed, 157 insertions(+), 26 deletions(-)
>>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

