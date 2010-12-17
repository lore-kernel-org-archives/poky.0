Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F94B4C80FBE
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 20:07:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 18:07:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="869153547"
Received: from unknown (HELO pgsmsx602.gar.corp.intel.com) ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 18:07:26 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 10:06:57 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 17 Dec 2010 10:06:56 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>, "poky@pokylinux.org"
	<poky@pokylinux.org>
Date: Fri, 17 Dec 2010 10:06:54 +0800
Thread-Topic: [poky] Shared state prebuild copy bug report (bug #602)
Thread-Index: Acudizvxl/a/ogwdR/aCAlBeTzNi4AAA45zQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
References: <4D0ABF1C.6090706@intel.com>
In-Reply-To: <4D0ABF1C.6090706@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Shared state prebuild copy bug report (bug #602)
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
X-List-Received-Date: Fri, 17 Dec 2010 02:07:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Scott Garman
>Sent: Friday, December 17, 2010 9:39 AM
>To: poky@pokylinux.org
>Subject: [poky] Shared state prebuild copy bug report (bug #602)
>
>Hello,
>
>I did a build of poky-image-lsb from Poky master today and tried copying
>the shared state prebuilds (sstate-cache) to my laptop. Things looked
>good for a while as it populated my sysroot area from the prebuilds, but
>then it started building autoconf-native and ran into the following
>error during do_compile:
>
>Can't locate Data/Dumper.pm in @INC (@INC contains: ../lib
>/toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>/toastssd/poky/build/tmp/sysroots/x86_64-  linux/usr/lib/perl/5.8.8
>/toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>/toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl /toastssd/
>poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>/toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>/toastssd/poky/build/tmp/sysroots/x86_64-  linux/usr/lib/perl .) at
>../lib/Autom4te/C4che.pm line 33.
>
>"/toastssd" is a path specific to the original build machine, but does
>not exist on my laptop.
>
>I have reported this as bug #602.
>
>Scott
>

That's interesting. Does similar error if you try it on same machine?

Thanks
Kevin

