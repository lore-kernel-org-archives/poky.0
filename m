Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 728B74C81003
	for <poky@pokylinux.org>; Thu, 30 Dec 2010 03:06:15 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Dec 2010 01:06:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,248,1291622400"; d="scan'208";a="367992752"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 30 Dec 2010 01:06:13 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 30 Dec 2010 17:05:47 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 30 Dec 2010 17:05:46 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Thu, 30 Dec 2010 17:05:35 +0800
Thread-Topic: [poky] --with-gxx-include-dir and sysroot
Thread-Index: AcujeC7vLPJ2FqwSRn2bA/8ItThJHQB2iecAAKuAw4A=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D64C314AE@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
	<1293201465.17519.1428.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D64C30AAB@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D64C30AAB@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: CsXv DU+Q ED10 EO2c E481 HfSK IeBC JmBM L7cG MdKW M1Wq
	Sz4g TSsR UN5Q WliW W8ST; 2;
	cABvAGsAeQBAAHAAbwBrAHkAbABpAG4AdQB4AC4AbwByAGcAOwByAGkAYwBoAGEAcgBkAC4AcAB1AHIAZABpAGUAQABsAGkAbgB1AHgAZgBvAHUAbgBkAGEAdABpAG8AbgAuAG8AcgBnAA==;
	Sosha1_v1; 7; {12EAFAC2-3CBC-47FD-BA0A-6CF3016B0D7C};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Thu,
	30 Dec 2010 09:05:35 GMT;
	UgBFADoAIABbAHAAbwBrAHkAXQAgAC0ALQB3AGkAdABoAC0AZwB4AHgALQBpAG4AYwBsAHUAZABlAC0AZABpAHIAIABhAG4AZAAgAHMAeQBzAHIAbwBvAHQA
x-cr-puzzleid: {12EAFAC2-3CBC-47FD-BA0A-6CF3016B0D7C}
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: --with-gxx-include-dir and sysroot
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
X-List-Received-Date: Thu, 30 Dec 2010 09:06:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tian, Kevin
>Sent: Tuesday, December 28, 2010 11:25 AM
>
>>From: Richard Purdie [mailto:richard.purdie@linuxfoundation.org]
>>Sent: Friday, December 24, 2010 10:38 PM
>>
>>On Fri, 2010-12-24 at 15:34 +0800, Tian, Kevin wrote:
>>> I got a confusion about the relationship between "--with-gxx-include-di=
r" and sysroot,
>>> and consequently would like to discuss one issue it causes.
>>>
>>> GCC installation manual is not very clear about how c++ header files ar=
e searched when
>>> there's no "--with-gxx-include-dir" but with "--sysroot":
>>>
>>> --with-gxx-include-dir=3Ddirname
>>>     Specify the installation directory for G++ header files. The defaul=
t depends on
>>> other configuration options, and differs between cross and native confi=
gurations.
>>>
>>> My assumption is that ${sysroot}/usr/include/c++ will be searched which=
 is why
>sysroot
>>> option is there.
>>
>>This is a bad assumption I'm afraid. I had to go and take a look at the
>>code to determine this though.
>
>that's why I'm sending this mail to make it clear. :-)
>
>>
>>> However currently Poky always specifies "--with-gxx-include-dir" explic=
itly:
>>>
>>> gcc-configure-cross.inc:
>>>  --with-gxx-include-dir=3D${STAGING_DIR_TARGET}/${target_includedir}/c+=
+ \
>>> --with-sysroot=3D${STAGING_DIR_TARGET} \
>>>
>>> gcc-configure-runtime.inc:
>>> --with-gxx-include-dir=3D${includedir}/c++/ \
>>> --with-sysroot=3D${STAGING_DIR_TARGET} \
>>>
>>> gcc-configure-sdk.inc:
>>>
>>--with-gxx-include-dir=3D${SDKPATH}/sysroots/${TARGET_SYS}${target_includ=
edir}/c+
>+
>>\
>>> --with-sysroot=3D${SDKPATH}/sysroots/${TARGET_SYS} \
>>>
>>> gcc-configure-target.inc:
>>> --with-gxx-include-dir=3D${includedir}/c++/"
>>>
>>> for cross/sdk, there's no difference from not using option if my assump=
tion is correct.
>>> The only meaningful one is perhaps runtime.
>>>
>>> I checked OE side, they don't have gcc-runtime (why???), and only add t=
he option for
>>> the target gcc (--with-gxx-include-dir=3D${includedir}/c++/{BINV}) whic=
h makes sense
>>> since using BINV is different from normal convention.
>>
>>Whilst OE doesn't use this, if you read the configure code for this
>>option you'll see that it gets set to a default anyway so not specifying
>>it doesn't change much. In poky we dropped the BINV part of the path
>>which I believe is part of the default.
>
>yes, so far that default has nothing to do with the sysroot option. I made=
 an experiment
>just now. The default path ends up pointing to:
>
>${STAGING_DIR_NATIVE}/usr/${TARGET_SYS}/include/c++/${BINV}
>
>which is based on ${libdir}.
>
>So as you said, this doesn't change anything in this point.
>
>BTW is there any other impact of this difference between OE and Poky? I me=
an installing
>to native/sdk sysroot(OE) and to target sysroot (poky)...
>
>>
>>> So my question is whether it's necessary to explicitly set this option =
in Poky, upon which
>>> we can then talk about the issue I'm seeing and the solution.
>>
>>Looking at the code I don't think it will actually make any difference
>>whether we set it or not.
>
>Yep
>
>>
>>> The major problem with hardcoded "with-gxx-include-dir" is that it make=
s the toolchain
>>> problematic when using in a separate build environment, because that ha=
rd code path
>>> may be missing in the new environment. It's not relocatable.
>>>
>>> Previous SDK multi-sysroot support is one example.
>>>
>>> So does sstate, when you need to build some new C++ packages in the 2nd=
 build dir
>>> while using toolchain built from another dir. I observed this when reus=
ing a set of
>>> sstate packages of a minimal image, and then started building a sato im=
age and then
>>> encountered libproxy error due to failing to find cstdio.
>>>
>>> Machine specific sysroot also has this problem, because we end up to us=
e the toolchain
>>> built for the 1st machine to build recipes for the 2nd machine. It will=
 be generally
>>> worked around because both sysroots exist and can be both accessed, but=
 it's still
>>> a potential issue.
>>>
>>> The workaround in my sstate case is a bit ugly. I have to use "-I" in C=
XXFLAGS in
>>> bitbake.conf:
>>>
>>> -I${STAGING_DIR_TARGET}/${target_includedir}/c++
>>> -I${STAGING_DIR_TARGET}/${target_includedir}/c++/backward
>>> -I${STAGING_DIR_TARGET}/${target_includedir}/c++/${TARGET_SYS}
>>>
>>> If "with-gxx-include-dir" can be removed, we don't need do anything her=
e.
>>
>>I really don't think its this simple.
>>
>>Looking at the gcc code, I propose we patch cppdefault.c so instead of
>>
>>GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 0, 0
>>
>>is says
>>
>>GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 1, 0
>>
>>and then we only ever specify:
>>
>>--with-gxx-include-dir=3D${includedir}/c++/ to build the compiler.
>>
>>Since we set always set --sysroot for the compiler correctly, this
>>should then fix all the problems in a clean and simple way.
>>
>>Why? Changing the 0 -> 1 above will cause c++ to add the sysroot to
>>GPLUSPLUS_INCLUDE_DIR and in turn this means it should start to behave
>>sanely.
>>
>>I don't like patching gcc like this but in this case I believe the
>>standard settings are just plain wrong and with that simple change,
>>things will just work as they should...
>>
>>Of course I've not tested this so I'd appreciate feedback but I think it
>>will solve the problem in the simplest way :)
>>
>
>That's a good and simple idea! I'll try it, but the test may take time... =
:-)
>

I've at least verified this change working in one of my sstate build, where=
 c++
include dir could be searched successfully relative to sysroot.=20

Lianhao is helping me test SDK multiple sysroot scenario, and I'm testing m=
ore
archs to ensure it not breaking normal build.

http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dtk/cplusplus

Thanks
Kevin

