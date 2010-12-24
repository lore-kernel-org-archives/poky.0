Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8DEA4C80050
	for <poky@pokylinux.org>; Thu, 23 Dec 2010 19:03:03 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 17:02:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,221,1291622400"; d="scan'208";a="639963725"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2010 17:02:12 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 24 Dec 2010 09:01:58 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 24 Dec 2010 09:01:57 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Fri, 24 Dec 2010 09:01:54 +0800
Thread-Topic: [poky] about ${KERNEL_CC} and ${CC}
Thread-Index: AcuindIg8ONJPeRESlyZnPvISEyx0gAZeQHg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F72D428@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F6A48BD@shsmsx502.ccr.corp.intel.com>
	<1293097470.1588.567.camel@rex> <4D13401C.8080901@mlbassoc.com>
In-Reply-To: <4D13401C.8080901@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: about ${KERNEL_CC} and ${CC}
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
X-List-Received-Date: Fri, 24 Dec 2010 01:03:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas [mailto:gary@mlbassoc.com]
>Sent: Thursday, December 23, 2010 8:27 PM
>
>On 12/23/2010 02:44 AM, Richard Purdie wrote:
>> On Thu, 2010-12-23 at 14:11 +0800, Tian, Kevin wrote:
>>> I'm a bit confused why a specific ${KERNEL_CC} is introduced instead of
>>> reusing ${CC}, especially when two are defined differently:
>>>
>>> <kernel.bbclass>
>>> KERNEL_CC =3D "${CCACHE}${HOST_PREFIX}gcc${KERNEL_CCSUFFIX}
>${HOST_CC_KERNEL_ARCH}"
>>>
>>> <bitbake.conf>
>>> export CC =3D "${CCACHE}${HOST_PREFIX}gcc
>${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}"
>>> TOOLCHAIN_OPTIONS =3D " --sysroot=3D${STAGING_DIR_TARGET}"
>>>
>>> I'm not sure whether kernel build requires "--sysroot" option, but it l=
ooks that it works
>well
>>> so far even without that option (why?)
>>
>> The kernel doesn't link against system libraries or use system header
>> files so it really doesn't matter whether it sees the sysroot or not.

I thought about that point, but didn't realize no dependency at all. :-)

>>
>> We use a different CC for the kernel so the user has the option of using
>> a different compiler version for this. Whilst its a lot less common now,
>> there were once use cases where the kernel would be compiled with one
>> version of gcc and the userspace with a different version.

Good to know that.

>>
>>> However this causes one issue under sstate, if the whole toolchain is i=
nstalled from
>sstate
>>> packages which are built from another machine. In such case the default=
 path (decided
>at
>>> compilation time) of gcc also points to the path on another machine, wh=
ich is missing
>in
>>> current machine doing build. Perf compilation is:
>>>
>>> do_compile_perf() {
>>>          oe_runmake -C ${S}/tools/perf CC=3D"${KERNEL_CC}" LD=3D"${KERN=
EL_LD}"
>prefix=3D${prefix}
>>> }
>>>
>>> Without an explicit "--sysroot" options, perf compilation is broken due=
 to failing to check
>some
>>> header files like gnu/libc-version.h. I can workaround it by:
>>>
>>> do_compile_perf() {
>>>          oe_runmake -C ${S}/tools/perf CC=3D"${CC}" LD=3D"${LD}" AR=3D"=
${AR}"
>prefix=3D${prefix}
>>> }
>>
>> Perf should be compiled with the userspace toolchain, not the kernel
>> one. I'd say this fix is therefore correct.
>>
>> Adding TOOLCHAIN_OPTIONS to KERNEL_CC would also probably be a good idea
>> too.
>
>Perfect idea!  I added this and I'm now able to rebuild my
>kernel package using a sstate-cache based toolchain.  This
>should close bug #605
>
>Patch attached for review.
>

It's good to know that this fix solves your problem. So your own kernel add=
s some
new bits depending on system libraries like libgcc.so, does it?

BTW, if you could try some simple experiments like what I asked earlier (tr=
y normal=20
yocto kernel, or try other recipes), your issue can be narrowed down earlie=
r...
Fortunately here I encountered a similar issue on perf. :-)

Thanks
Kevin

