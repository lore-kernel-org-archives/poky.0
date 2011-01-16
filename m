Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D8FB4C8086E
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 00:13:11 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Jan 2011 22:13:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,328,1291622400"; d="scan'208";a="375228371"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 15 Jan 2011 22:13:09 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 16 Jan 2011 14:13:08 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 16 Jan 2011 14:13:08 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sun, 16 Jan 2011 14:13:07 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Richard Purdie' <richard.purdie@linuxfoundation.org>, Koen Kooi
	<koen@dominion.thruhere.net>
Date: Sun, 16 Jan 2011 14:13:05 +0800
Thread-Topic: [poky] [PATCH 1/2] libgcc: use the new recipe (rather than
	gcc-runtime) to install libgcc_s.so* and crt*.o
Thread-Index: Acu1DNGZQcAXgkQASoilRo+9kuRTfwANeGsg
Message-ID: <1865303E0DED764181A9D882DEF65FB685AFA1B32B@shsmsx502.ccr.corp.intel.com>
References: <cover.1295089968.git.dexuan.cui@intel.com>
	<1fbef243a72576df8cac5fa1304569fddf9e9c4d.1295089968.git.dexuan.cui@intel.com>
	<2912EC4A-4B47-40DB-AC12-8C9DC27F3C25@dominion.thruhere.net>
	<1865303E0DED764181A9D882DEF65FB685AFA1B329@shsmsx502.ccr.corp.intel.com>
	<467D1FAB-0557-4C3F-BC6B-1D010DC18DD3@dominion.thruhere.net>
	<1295134450.14388.10147.camel@rex>
In-Reply-To: <1295134450.14388.10147.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] libgcc: use the new recipe (rather than gcc-runtime) to install libgcc_s.so* and crt*.o
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
X-List-Received-Date: Sun, 16 Jan 2011 06:13:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Sat, 2011-01-15 at 14:12 +0100, Koen Kooi wrote:
>> Op 15 jan 2011, om 12:55 heeft Cui, Dexuan het volgende geschreven:
>>=20
>>> Koen Kooi wrote:
>>>> Op 15 jan 2011, om 12:23 heeft Dexuan Cui het volgende geschreven:
>>>>=20
>>>>> Currently gcc-runtime installs the files, but actually
>>>>> gcc-runtime's do_configure checks if the files are available, so
>>>>> before we build gcc-runtime, we should have some recipe install
>>>>> the files first! -- currently gcc-cross-intermediate actually
>>>>> does that(gcc-cross also installs the files, but it installs into
>>>>> the gcc-build-internal* directory), but gcc-cross-intermediate
>>>>> will have its own sysroot in future, after that, gcc-runtime
>>>>> won't build. So let us add this new target recipe and move the
>>>>> installation of the files from gcc-runtime into it.=20
>>>>=20
>>>> I understand the problem, but...
>>>>=20
>>>>> diff --git a/meta/recipes-devtools/gcc/libgcc_4.5.1.bb
>>>>> b/meta/recipes-devtools/gcc/libgcc_4.5.1.bb
>>>>>=20
>>>>> +do_install () {
>>>>> +	target=3D`echo ${MULTIMACH_TARGET_SYS} | sed -e s#-nativesdk##` +
>>>>> +	# Install libgcc from our gcc-cross saved data
>>>>> +	install -d ${D}${base_libdir} ${D}${libdir}
>>>>> +	cp -fpPR ${STAGING_INCDIR_NATIVE}/gcc-build-internal-$target/*
>>>>> ${D}=20
>>>>=20
>>>> ... why can't gcc-cross create the libgcc(-dev) packages? You're
>>>> using the exact files gcc-cross installs, so why have an extra
>>>> recipe? It feels backwards to have one package grab files from
>>>> another package from sysroots and package those.
>>> I discussed this with Richard in the #yocto IRC channel several
>>> days ago.=20
>>> Richard thinks the packaging of the files should be in a target
>>> recipe rather than a cross one. Cc Richard for further explanation
>>> why doing the packaging in a gcc-cross is a mistake. :-)=20
>>=20
>> I know packaging files from gcc-cross leads to all kinds of problems,
>> but you're not using a target recipe, you are now indirectly
>> packaging files from gcc-cross instead of directly.
>=20
> Looking at the patch, isn't libgcc a target recipe?
>=20
> The underlying problem here, highlighted when we dived into the
> separate sysroots for the toolchain bootstrap is that gcc-runtime
> builds libstdc ++ against the gcc-cross-intermediate libgcc as its
> the one in the sysroot, not the one from gcc-cross as it should.
>=20
> I do think we should package things in the target recipe context and I
> think this is what Dexuan's patch is doing.
>=20
>> Since the files are exactly the same, why is this work around better
>> than just packaging them directly. Or the other options, just
>> building a new libgcc with a "real" recipe.
>=20
> Building libgcc by itself turns out to be quite horrible to do. I live
> in hope the gcc guys clean it up but until then...
>=20
> Cheers,
>=20
> Richard

Hi Richard,  Thanks a lot for the explanation!

BTW: after careful checking, I found the crt*.o files are actually not pack=
aged properly into the target image (the log is below) :-(
Looks my patch missed something? But looks the original gcc-runtime recipe =
also hasn't any special?
I'm debugging this. Any quick hint is appreciate!

NOTE: the following files were installed but not shipped in any package:
  /lib/libgcc_s.so
NOTE:   /lib/libgcc_s.so
  /usr/lib/i586-poky-linux/4.5.1/crtbeginS.o
NOTE:   /usr/lib/i586-poky-linux/4.5.1/crtbeginS.o
  /usr/lib/i586-poky-linux/4.5.1/crtfastmath.o
NOTE:   /usr/lib/i586-poky-linux/4.5.1/crtfastmath.o
  /usr/lib/i586-poky-linux/4.5.1/libgcc.a
NOTE:   /usr/lib/i586-poky-linux/4.5.1/libgcc.a
  /usr/lib/i586-poky-linux/4.5.1/libgcov.a
NOTE:   /usr/lib/i586-poky-linux/4.5.1/libgcov.a
  /usr/lib/i586-poky-linux/4.5.1/crtend.o
NOTE:   /usr/lib/i586-poky-linux/4.5.1/crtend.o
  /usr/lib/i586-poky-linux/4.5.1/crtbeginT.o
NOTE:   /usr/lib/i586-poky-linux/4.5.1/crtbeginT.o
  /usr/lib/i586-poky-linux/4.5.1/crtbegin.o
NOTE:   /usr/lib/i586-poky-linux/4.5.1/crtbegin.o
  /usr/lib/i586-poky-linux/4.5.1/crtendS.o
NOTE:   /usr/lib/i586-poky-linux/4.5.1/crtendS.o
  /usr/lib/i586-poky-linux/4.5.1/crtprec32.o
NOTE:   /usr/lib/i586-poky-linux/4.5.1/crtprec32.o
  /usr/lib/i586-poky-linux/4.5.1/libgcc_eh.a
NOTE:   /usr/lib/i586-poky-linux/4.5.1/libgcc_eh.a
  /usr/lib/i586-poky-linux/4.5.1/crtprec80.o
NOTE:   /usr/lib/i586-poky-linux/4.5.1/crtprec80.o
  /usr/lib/i586-poky-linux/4.5.1/crtprec64.o
NOTE:   /usr/lib/i586-poky-linux/4.5.1/crtprec64.o

Thanks,
-- Dexuan=

