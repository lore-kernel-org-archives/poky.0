Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3ED914C8109B
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 11:56:09 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2011 09:56:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="650582109"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2011 09:56:01 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 25 Jan 2011 01:56:00 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 25 Jan 2011 01:55:59 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Richard Purdie' <richard.purdie@linuxfoundation.org>
Date: Tue, 25 Jan 2011 01:55:58 +0800
Thread-Topic: [poky] [RFC: enhance toolchain bootstrap process: v3: 0/7]
	enhance the toolchain bootstrap process
Thread-Index: Acu74Jtp5CJGJGV+QOWGbSVHJbSGFAABeAOwAAGjyoA=
Message-ID: <1865303E0DED764181A9D882DEF65FB685DF60F3ED@shsmsx502.ccr.corp.intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
	<1295885045.14388.45539.camel@rex>
	<1865303E0DED764181A9D882DEF65FB685DF60F3EC@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685DF60F3EC@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [RFC: enhance toolchain bootstrap process: v3: 0/7] enhance the toolchain bootstrap process
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
X-List-Received-Date: Mon, 24 Jan 2011 17:56:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Cui, Dexuan wrote:
> Richard Purdie wrote:
>> Hi Dexuan,
>>=20
>> On Tue, 2011-01-18 at 21:57 +0800, Dexuan Cui wrote:
>>> Hi Richard and all,
>>>=20
>>> The patch set enhances the toolchain bootstrap process by installing
>>> a separate sysroot for each step of the process.
>>> The purpose is to avoid file overwriting in the current global
>>> sysroot, namely, to fix Bug 239:
>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D239
>>>=20
>>>=20
>>> The basic idea is straightforward:
>>> 1) For gcc-cross-initial and -intermediate, by changing
>>> MULTIMACH_TARGET_SYS to install the files into new locations; 2) Fix
>>> the build of eglibc-initial, eglibc by using the appropriate
>>> compilers, libs, headers; 3) Also make proper changes for the
>>> crosssdk/nativesdk version.=20
>>>=20
>>> I've split all the changes into small git commits and each commit
>>> should be basically self-explanatory. :-)
>>=20
>> I've had a look through this and experimented a little with the code
>> and I've some feedback:
> Hi Richard, thanks very much for the review and feedback!
> BTW: I was just about to send out my "RFC v5" patches and I saw the
> mail. :-)=20
>=20
> During the past days, I've been busy with testing and fixing &
> updating my patches.=20
> The v5 patches are at=20
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Ddcui/tcbp-v5
> (actually it's the same as dcui/tcbp-test currently) The attached
> v3-to-v5.diff shows the difference from v3 to v5: =20
>=20
> 1) fix several typos for  "_prepend_virtclass-nativesdk": previously
> I used the wrong "_virtclass-nativesdk_prepend"!=20
>=20
> 2) in eglibc-initial.inc, now the line is
> STAGING_BINDIR_TOOLCHAIN_prepend =3D
> "${STAGING_DIR_NATIVE}${bindir_native}/${BASEPKG_HOST_SYS}.gcc-cross-init=
ial:"
> Previously, I used HOST_SYS rather than BASEPKG_HOST_SYS.  Actually
> HOST_SYS is not ok because this breaks arm/ppc builds.=20
>=20
> 3) similarly,
> 	in eglibc.inc:
> 		STAGING_BINDIR_TOOLCHAIN_prepend: HOST_SYS --> BASEPKG_HOST_SYS
> 		CPPFLAGS_prepend: TARGET_SYS -> BASEPKG_TARGET_SYS
> 	in gcc-cross-intermediate.inc:
> 		GCC_CROSS_INTERMEDIATE_WITH_BUILD_SYSROOT: TARGET_SYS -->
> BASEPKG_TARGET_SYS=20
>=20
> 4)  in eglibc-initial.inc:
> 	use a "for t in ..." loop to replace the previous 3 statements.
>=20
> 5) add the code for glibc and glibc-initial similarly.
> 6) bump PRs accordingly.
>=20
> I'll send my current test results later.
My testing for tcbp-v5  is still not finished, but here I'd like to share t=
he current status:

The latest master (070b7ee3,  package_deb: Remove access to ...) is not sta=
ble: e.g,. pseudo issues, package-output.lock issue(this was fixed by RP 3 =
hours ago).
So I used a slightly old commit 740ea682(poky-init-build-env: unset BBPATH)=
 as a "Base Build"(without my patches), and also do new build with my patch=
es(My Build).

1) For all qemu targets(x86, x86-64, mips, ppc, arm) , My Build (bitbake po=
ky-image-sdk) can build fine and can boot to sato GUI (except ppc that has =
not GUI). I checked the list of files in each qemu target's rootfs and can =
verify the list is the same as  that in a Base Build; Inside qemu targets, =
I tried to run gcc/g++ to build simple C/C++ code and everything works fine=
.

2) I can also verify My Build(bitbake meta-toolchain-sdk) can build fine.
   A KNOWN issue: aftar "tar -jxf" the .bz2 file and "source environment-se=
tup-*, I got the error when running "${CC}":
[root@dcui-desktop 0.9+snapshot]# ${CC}
Inconsistency detected by ld.so: dynamic-link.h: 209: elf_get_dynamic_info:=
 Assertion `info[15] =3D=3D ((void *)0)' failed!

I'm trying to fix this asap -- looks eglibc-nativesdk is not built ok???

Thanks,
-- Dexuan

