Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2D234C81003
	for <poky@pokylinux.org>; Thu, 30 Dec 2010 03:42:58 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Dec 2010 01:42:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,248,1291622400"; d="scan'208";a="641721808"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2010 01:42:57 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 30 Dec 2010 17:42:55 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 30 Dec 2010 17:42:54 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 30 Dec 2010 17:42:53 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 30 Dec 2010 17:42:51 +0800
Thread-Topic: [poky] --with-gxx-include-dir and sysroot
Thread-Index: AcujeC7vLPJ2FqwSRn2bA/8ItThJHQB2iecAAKuAw4AAAKl/cA==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1DC19AA448@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
	<1293201465.17519.1428.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D64C30AAB@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C314AE@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D64C314AE@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
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
X-List-Received-Date: Thu, 30 Dec 2010 09:42:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Tian, Kevin wrote on 2010-12-30:
>> From: Tian, Kevin
>> Sent: Tuesday, December 28, 2010 11:25 AM
>>=20
>>> From: Richard Purdie [mailto:richard.purdie@linuxfoundation.org]
>>> Sent: Friday, December 24, 2010 10:38 PM
>>>=20
>>> On Fri, 2010-12-24 at 15:34 +0800, Tian, Kevin wrote:
>>>> I got a confusion about the relationship between
>>>> "--with-gxx-include-dir" and sysroot, and consequently would like to
>>>> discuss one issue it causes.
>>>>=20
>>>> GCC installation manual is not very clear about how c++ header
>>>> files are searched when there's no "--with-gxx-include-dir" but with "=
--sysroot":
>>>>=20
>>>> --with-gxx-include-dir=3Ddirname
>>>>     Specify the installation directory for G++ header files. The
>>>> default depends on other configuration options, and differs between
>>>> cross and native configurations.
>>>>=20
>>>> My assumption is that ${sysroot}/usr/include/c++ will be searched
>>>> which is why sysroot option is there.
>>>=20
>>> This is a bad assumption I'm afraid. I had to go and take a look at
>>> the code to determine this though.
>>=20
>> that's why I'm sending this mail to make it clear. :-)
>>=20
>>>=20
>>>> However currently Poky always specifies "--with-gxx-include-dir" expli=
citly:
>>>>=20
>>>> gcc-configure-cross.inc:
>>>>=20
>>>> --with-gxx-include-dir=3D${STAGING_DIR_TARGET}/${target_includedir}/
>>>> c+
>>>> + \ --with-sysroot=3D${STAGING_DIR_TARGET} \
>>>>=20
>>>> gcc-configure-runtime.inc:
>>>> --with-gxx-include-dir=3D${includedir}/c++/ \
>>>> --with-sysroot=3D${STAGING_DIR_TARGET} \
>>>>=20
>>>> gcc-configure-sdk.inc:
>>>>=20
>>> --with-gxx-include-dir=3D${SDKPATH}/sysroots/${TARGET_SYS}${target_inc
>>> lu dedir}/c+ + \
>>>> --with-sysroot=3D${SDKPATH}/sysroots/${TARGET_SYS} \
>>>>=20
>>>> gcc-configure-target.inc:
>>>> --with-gxx-include-dir=3D${includedir}/c++/"
>>>>=20
>>>> for cross/sdk, there's no difference from not using option if my
>>>> assumption is correct. The only meaningful one is perhaps runtime.
>>>>=20
>>>> I checked OE side, they don't have gcc-runtime (why???), and only
>>>> add the option for the target gcc
>>>> (--with-gxx-include-dir=3D${includedir}/c++/{BINV}) which makes
>>>> sense since
> using BINV is different from normal convention.
>>>=20
>>> Whilst OE doesn't use this, if you read the configure code for this
>>> option you'll see that it gets set to a default anyway so not
>>> specifying it doesn't change much. In poky we dropped the BINV part
>>> of the path which I believe is part of the default.
>>=20
>> yes, so far that default has nothing to do with the sysroot option. I
>> made an experiment just now. The default path ends up pointing to:
>>=20
>> ${STAGING_DIR_NATIVE}/usr/${TARGET_SYS}/include/c++/${BINV}
>>=20
>> which is based on ${libdir}.
>>=20
>> So as you said, this doesn't change anything in this point.
>>=20
>> BTW is there any other impact of this difference between OE and Poky?
>> I mean installing to native/sdk sysroot(OE) and to target sysroot (poky)=
...
>>=20
>>>=20
>>>> So my question is whether it's necessary to explicitly set this
>>>> option in Poky, upon which we can then talk about the issue I'm
>>>> seeing and
> the solution.
>>>=20
>>> Looking at the code I don't think it will actually make any
>>> difference whether we set it or not.
>>=20
>> Yep
>>=20
>>>=20
>>>> The major problem with hardcoded "with-gxx-include-dir" is that it
>>>> makes the toolchain problematic when using in a separate build
>>>> environment, because that hard code path may be missing in the new
>>>> environment. It's not relocatable.
>>>>=20
>>>> Previous SDK multi-sysroot support is one example.
>>>>=20
>>>> So does sstate, when you need to build some new C++ packages in the
>>>> 2nd build dir while using toolchain built from another dir. I
>>>> observed this when reusing a set of sstate packages of a minimal
>>>> image, and then started building a sato image and then encountered
>>>> libproxy error due to failing to find cstdio.
>>>>=20
>>>> Machine specific sysroot also has this problem, because we end up
>>>> to use the toolchain built for the 1st machine to build recipes
>>>> for the 2nd machine. It will be generally worked around because
>>>> both sysroots exist and can be both accessed, but it's still a potenti=
al issue.
>>>>=20
>>>> The workaround in my sstate case is a bit ugly. I have to use "-I"
>>>> in CXXFLAGS in
>>>> bitbake.conf:
>>>>=20
>>>> -I${STAGING_DIR_TARGET}/${target_includedir}/c++
>>>> -I${STAGING_DIR_TARGET}/${target_includedir}/c++/backward
>>>> -I${STAGING_DIR_TARGET}/${target_includedir}/c++/${TARGET_SYS}
>>>>=20
>>>> If "with-gxx-include-dir" can be removed, we don't need do anything he=
re.
>>>=20
>>> I really don't think its this simple.
>>>=20
>>> Looking at the gcc code, I propose we patch cppdefault.c so instead
>>> of
>>>=20
>>> GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 0, 0
>>>=20
>>> is says
>>>=20
>>> GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 1, 0
>>>=20
>>> and then we only ever specify:
>>>=20
>>> --with-gxx-include-dir=3D${includedir}/c++/ to build the compiler.
>>>=20
>>> Since we set always set --sysroot for the compiler correctly, this
>>> should then fix all the problems in a clean and simple way.
>>>=20
>>> Why? Changing the 0 -> 1 above will cause c++ to add the sysroot to
>>> GPLUSPLUS_INCLUDE_DIR and in turn this means it should start to
>>> behave sanely.
>>>=20
>>> I don't like patching gcc like this but in this case I believe the
>>> standard settings are just plain wrong and with that simple change,
>>> things will just work as they should...
>>>=20
>>> Of course I've not tested this so I'd appreciate feedback but I
>>> think it will solve the problem in the simplest way :)
>>>=20
>>=20
>> That's a good and simple idea! I'll try it, but the test may take
>> time... :-)
>>=20
>=20
> I've at least verified this change working in one of my sstate build,
> where c++ include dir could be searched successfully relative to sysroot.
>=20
> Lianhao is helping me test SDK multiple sysroot scenario, and I'm
> testing more archs to ensure it not breaking normal build.

The simple helloworld CPP can be built successfully by Kevin's new cross-ca=
ndian-gcc now. But another complex CPP project Sudoku still have the buildi=
ng problems, complaining about not finding c++ header "#include <algorithm>=
". The strace output shows that the failure is caused by not finding the al=
gorithm.gch on the target.

> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dtk/cplusplu =
s
>=20

Best Regards,
Lianhao



