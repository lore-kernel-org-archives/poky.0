Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 706A64C80FBE
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 20:20:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 18:20:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="869156685"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 18:20:26 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 10:19:46 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 10:19:45 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 17 Dec 2010 10:19:44 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>
Date: Fri, 17 Dec 2010 10:19:43 +0800
Thread-Topic: [poky] Shared state prebuild copy bug report (bug #602)
Thread-Index: AcudkFXLEQNdhkm5QOqZ5/8O1A6O/wAACflQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
In-Reply-To: <4D0AC7D8.8080001@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
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
X-List-Received-Date: Fri, 17 Dec 2010 02:20:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Garman, Scott A
>Sent: Friday, December 17, 2010 10:16 AM
>
>On 12/16/2010 06:06 PM, Tian, Kevin wrote:
>>> From: Scott Garman
>>> Sent: Friday, December 17, 2010 9:39 AM
>>> To: poky@pokylinux.org
>>> Subject: [poky] Shared state prebuild copy bug report (bug #602)
>>>
>>> Hello,
>>>
>>> I did a build of poky-image-lsb from Poky master today and tried copyin=
g
>>> the shared state prebuilds (sstate-cache) to my laptop. Things looked
>>> good for a while as it populated my sysroot area from the prebuilds, bu=
t
>>> then it started building autoconf-native and ran into the following
>>> error during do_compile:
>>>
>>> Can't locate Data/Dumper.pm in @INC (@INC contains: ../lib
>>> /toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>>> /toastssd/poky/build/tmp/sysroots/x86_64-  linux/usr/lib/perl/5.8.8
>>> /toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>>> /toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl /toastssd/
>>> poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>>> /toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>>> /toastssd/poky/build/tmp/sysroots/x86_64-  linux/usr/lib/perl .) at
>>> ../lib/Autom4te/C4che.pm line 33.
>>>
>>> "/toastssd" is a path specific to the original build machine, but does
>>> not exist on my laptop.
>>>
>>> I have reported this as bug #602.
>>>
>>> Scott
>>>
>>
>> That's interesting. Does similar error if you try it on same machine?
>
>Do you mean rebuild poky-image-lsb from scratch on my laptop? I would
>imaging that error would not occur.

No, I mean you have to different builds pointing to same sstate_cache, with
the 1st build filling it first and then the 2nd build to reuse it. Ideally =
there
should be no hard dir encoded in the sstate package, or else it surely brea=
ks.

>
>I'm guessing Perl creates a configuration file somewhere in the sysroot
>which contains full pathnames to it's Perl module directories. That
>config file gets rolled into the prebuild package and cannot be used on
>another build directory.
>

I think so, just curious how it may be reproduced in my side. I just have o=
ne
linux box in front now. :/

Or could you search which file @INC actually points to and its content?

Thanks
Kevin

