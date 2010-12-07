Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B89604C80A74
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 05:16:04 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 03:16:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684683270"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2010 03:15:56 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 19:15:04 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 7 Dec 2010
	19:15:03 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 19:15:01 +0800
Thread-Topic: [poky] [PATCH 0/3][RFC] Poky disk space size optimization
Thread-Index: AcuVuR/XbN3/DUrWTt+W9yFQRRBP8wARRIng
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D4776DBE9@shsmsx502.ccr.corp.intel.com>
References: <cover.1291683028.git.dongxiao.xu@intel.com>
	<4CFDA034.9050703@intel.com>
In-Reply-To: <4CFDA034.9050703@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/3][RFC] Poky disk space size optimization
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
X-List-Received-Date: Tue, 07 Dec 2010 11:16:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Saul Wold
>Sent: Tuesday, December 07, 2010 10:47 AM
>
>On 12/06/2010 04:50 PM, Dongxiao Xu wrote:
>> This RFC aims to reduce the poky disk space size.
>>
>> The optimization point is the duplicated file copies in WORKDIR and
>> sysroot directories. When installing, files will be copied from source
>> code package into the image folder; Then some files will be copied
>> from image folder to sysroot-destdir, and some other files will be
>> copied from image folder to package folder. While doing package split,
>> some files will be copied from package folder to packages-split folder,
>> etc.
>>
>There are a couple of concerns with this method, which may lead to
>problems, first is that using links and modifying permissions, it's
>possible that depending on the usage the permissions might be set
>differently.  This will could lead to a second problem: psuedo. It's
>unclear at this point how psuedo will handle this.
>
>I am sure you have been doing testing, just not sure of corner cases.
>
>I know we accepted the first change for the package split link to the
>deploy area, that one made sense as it was package level, this is file
>level and may have hidden problems.

I also agree with Saul here. There do have some difference among those dire=
ctories
for their own purpose, which finally result in some difference. For example=
, there're=20
different tweaks on libtool and pkgconfig files between sysroot and packagi=
ng. That's
why 'image' is copied to package and then sysroot-destdir, and then do nece=
ssary
tweaks independently. Here if you want to hard link image to sysroot-destdi=
r, you
need make sure it done after the copy from image to package. Or else you'll=
 end up
to have problem there.

But if you can make sure that given a copy path you're modifying, the
source and the destination are exactly same, and no other path refers to
the source directory, perhaps it's fine to do hard link.

Thanks
Kevin

>
>I am sure that Richard will correct me and add his comments as he
>recovers from his travels.
>
>Sau!
>
>> The thought is to use hard link to replace the direct copy.
>> The three commits do the work of:
>>
>> a) package.bbclass: hard link "image-->sysroot-destdir"
>> b) sstate.bbclass:  hard link "package-->packages-split"
>> c) staging.bbclass: hard link "sysroot-destdir-->sysroots".
>>
>> After testing with minimal/sato/sdk build, this approach could save
>> about 20% disk space.
>> (minimal: 23G ->  19G, sato: 44G ->  35G, sdk: 54G ->  44G).
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: dxu4/perf
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddxu4/=
perf
>>
>> Thanks,
>>      Dongxiao Xu<dongxiao.xu@intel.com>
>> ---
>>
>>
>> Dongxiao Xu (3):
>>    package.bbclass: Use hard link for package split instead of copy
>>    sstate.bbclass: Use hard link when staging files into sysroots
>>    staging.bbclass: use hardlink when staging files to sysroot-destdir
>>
>>   meta/classes/package.bbclass |    8 +++++---
>>   meta/classes/sstate.bbclass  |    2 +-
>>   meta/classes/staging.bbclass |   27 ++++++++++++++++++++++++++-
>>   meta/lib/oe/path.py          |   28 ++++++++++++++++++++++++++++
>>   4 files changed, 60 insertions(+), 5 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

