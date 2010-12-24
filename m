Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 086C94C80FD4
	for <poky@pokylinux.org>; Fri, 24 Dec 2010 01:35:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 23:35:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,222,1291622400"; d="scan'208";a="586889350"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 23:35:26 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 24 Dec 2010 15:34:52 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 24 Dec 2010 15:34:51 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 24 Dec 2010 15:34:50 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Fri, 24 Dec 2010 15:34:49 +0800
Thread-Topic: --with-gxx-include-dir and sysroot
Thread-Index: AcujPQt2H9uiBks1RBS7iz9Ko6aesA==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: --with-gxx-include-dir and sysroot
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
X-List-Received-Date: Fri, 24 Dec 2010 07:35:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I got a confusion about the relationship between "--with-gxx-include-dir" a=
nd sysroot,=20
and consequently would like to discuss one issue it causes.

GCC installation manual is not very clear about how c++ header files are se=
arched when
there's no "--with-gxx-include-dir" but with "--sysroot":

--with-gxx-include-dir=3Ddirname
    Specify the installation directory for G++ header files. The default de=
pends on=20
other configuration options, and differs between cross and native configura=
tions.

My assumption is that ${sysroot}/usr/include/c++ will be searched which is =
why sysroot
option is there.

However currently Poky always specifies "--with-gxx-include-dir" explicitly=
:

gcc-configure-cross.inc:                    =20
 --with-gxx-include-dir=3D${STAGING_DIR_TARGET}/${target_includedir}/c++ \
--with-sysroot=3D${STAGING_DIR_TARGET} \

gcc-configure-runtime.inc:   =20
--with-gxx-include-dir=3D${includedir}/c++/ \
--with-sysroot=3D${STAGING_DIR_TARGET} \

gcc-configure-sdk.inc:                     =20
--with-gxx-include-dir=3D${SDKPATH}/sysroots/${TARGET_SYS}${target_included=
ir}/c++ \
--with-sysroot=3D${SDKPATH}/sysroots/${TARGET_SYS} \

gcc-configure-target.inc:   =20
--with-gxx-include-dir=3D${includedir}/c++/"

for cross/sdk, there's no difference from not using option if my assumption=
 is correct.
The only meaningful one is perhaps runtime.=20

I checked OE side, they don't have gcc-runtime (why???), and only add the o=
ption for
the target gcc (--with-gxx-include-dir=3D${includedir}/c++/{BINV}) which ma=
kes sense
since using BINV is different from normal convention.

So my question is whether it's necessary to explicitly set this option in P=
oky, upon which
we can then talk about the issue I'm seeing and the solution.

The major problem with hardcoded "with-gxx-include-dir" is that it makes th=
e toolchain
problematic when using in a separate build environment, because that hard c=
ode path
may be missing in the new environment. It's not relocatable.

Previous SDK multi-sysroot support is one example.

So does sstate, when you need to build some new C++ packages in the 2nd bui=
ld dir
while using toolchain built from another dir. I observed this when reusing =
a set of
sstate packages of a minimal image, and then started building a sato image =
and then
encountered libproxy error due to failing to find cstdio.

Machine specific sysroot also has this problem, because we end up to use th=
e toolchain
built for the 1st machine to build recipes for the 2nd machine. It will be =
generally
worked around because both sysroots exist and can be both accessed, but it'=
s still
a potential issue.

The workaround in my sstate case is a bit ugly. I have to use "-I" in CXXFL=
AGS in
bitbake.conf:

-I${STAGING_DIR_TARGET}/${target_includedir}/c++=20
-I${STAGING_DIR_TARGET}/${target_includedir}/c++/backward=20
-I${STAGING_DIR_TARGET}/${target_includedir}/c++/${TARGET_SYS}

If "with-gxx-include-dir" can be removed, we don't need do anything here. O=
r else
above simple workaround is not enough since "with-gxx-include-dir" is set d=
ifferently
for gcc variances like sdk/cross, and we need differentiate them at right p=
lace=20
instead of punching global CXXFLAGS.

comments?

Thanks
Kevin

