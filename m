Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E2404C811E5
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 00:20:01 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2010 22:20:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="358633404"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2010 22:20:00 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 14:19:14 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 14:19:14 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 8 Dec 2010
	14:19:13 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Date: Wed, 8 Dec 2010 14:19:12 +0800
Thread-Topic: [poky] [PATCH 0/3][RFC] Poky disk space size optimization
Thread-Index: AcuVuR/XbN3/DUrWTt+W9yFQRRBP8wARRIngACXVRNA=
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F2A1A@shsmsx501.ccr.corp.intel.com>
References: <cover.1291683028.git.dongxiao.xu@intel.com>
	<4CFDA034.9050703@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D4776DBE9@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D4776DBE9@shsmsx502.ccr.corp.intel.com>
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
X-List-Received-Date: Wed, 08 Dec 2010 06:20:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for your review.
Some comments from me, see inline.

Tian, Kevin wrote:
>> From: Saul Wold
>> Sent: Tuesday, December 07, 2010 10:47 AM
>>=20
>> On 12/06/2010 04:50 PM, Dongxiao Xu wrote:
>>> This RFC aims to reduce the poky disk space size.
>>>=20
>>> The optimization point is the duplicated file copies in WORKDIR and
>>> sysroot directories. When installing, files will be copied from
>>> source code package into the image folder; Then some files will be
>>> copied from image folder to sysroot-destdir, and some other files
>>> will be copied from image folder to package folder. While doing
>>> package split, some files will be copied from package folder to
>>> packages-split folder, etc.=20
>>>=20
>> There are a couple of concerns with this method, which may lead to
>> problems, first is that using links and modifying permissions, it's
>> possible that depending on the usage the permissions might be set
>> differently.  This will could lead to a second problem: psuedo. It's
>> unclear at this point how psuedo will handle this.

For normal files, the file name is a hard link to the disk storage. Therefo=
re if we use hard link instead of copy, what we present to pseudo doesn't c=
hange.

For file permissions, could you give some example on permission change?
Per my understanding, file permissions are determined while do_install, whi=
ch is beyond the following process. (package.bbclass will also do some file=
 permission operations, but it is done before the hard link.)

hard link "image-->sysroot-destdir"
hard link "package-->packages-split"
hard link "sysroot-destdir-->sysroots".

After these hardlink is done, I am not aware there is file permission chang=
e. (Postinst is an exception, which is run in target system and not related=
 with our build process).

>>=20
>> I am sure you have been doing testing, just not sure of corner cases.
>>=20
>> I know we accepted the first change for the package split link to the
>> deploy area, that one made sense as it was package level, this is
>> file level and may have hidden problems.

Actually this is also file level link. But it doesn't matter since package-=
->packages-split doesn't change any file.

>=20
> I also agree with Saul here. There do have some difference among
> those directories for their own purpose, which finally result in some
> difference. For example, there're different tweaks on libtool and
> pkgconfig files between sysroot and packaging. That's why 'image' is
> copied to package and then sysroot-destdir, and then do necessary
> tweaks independently. Here if you want to hard link image to
> sysroot-destdir, you need make sure it done after the copy from image
> to package. Or else you'll end up to have problem there.      =20

For those ".la" files,
In "image-->sysroot-destdir" process, dependency_libs will be modified in i=
mage folder before hard link.
In "package-->packages-split", dependency_libs are the same and it is modif=
ied after "image-->package" copies is done.

No matter which runs first, they will modify dependency_libs for their own =
copy, since files within "sysroot-destdir" and "package" are NOT hardlink. =
They maintain separate copies.

I think there should be no problem.

Anyway we hope Richard could give us a comment in case we missed something.

Thanks,
Dongxiao

>=20
> But if you can make sure that given a copy path you're modifying, the
> source and the destination are exactly same, and no other path refers
> to the source directory, perhaps it's fine to do hard link. =20
>=20
> Thanks
> Kevin
>=20
>>=20
>> I am sure that Richard will correct me and add his comments as he
>> recovers from his travels.=20
>>=20
>> Sau!
>>=20
>>> The thought is to use hard link to replace the direct copy.
>>> The three commits do the work of:
>>>=20
>>> a) package.bbclass: hard link "image-->sysroot-destdir"
>>> b) sstate.bbclass:  hard link "package-->packages-split"
>>> c) staging.bbclass: hard link "sysroot-destdir-->sysroots".
>>>=20
>>> After testing with minimal/sato/sdk build, this approach could save
>>> about 20% disk space. (minimal: 23G ->  19G, sato: 44G ->  35G,
>>> sdk: 54G ->  44G).=20
>>>=20
>>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>>    Branch: dxu4/perf
>>>    Browse:
>>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddxu4/perf
>>>=20
>>> Thanks,
>>>      Dongxiao Xu<dongxiao.xu@intel.com>
>>> ---
>>>=20
>>>=20
>>> Dongxiao Xu (3):
>>>    package.bbclass: Use hard link for package split instead of copy
>>>    sstate.bbclass: Use hard link when staging files into sysroots
>>>    staging.bbclass: use hardlink when staging files to
>>> sysroot-destdir=20
>>>=20
>>>   meta/classes/package.bbclass |    8 +++++---
>>>   meta/classes/sstate.bbclass  |    2 +-
>>>   meta/classes/staging.bbclass |   27 ++++++++++++++++++++++++++-
>>>   meta/lib/oe/path.py          |   28 ++++++++++++++++++++++++++++
>>>   4 files changed, 60 insertions(+), 5 deletions(-)
>>>=20
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>=20
>>=20
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky


