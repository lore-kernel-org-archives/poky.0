Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 37FA24C8115C
	for <poky@pokylinux.org>; Thu, 23 Dec 2010 00:12:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Dec 2010 22:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,218,1291622400"; d="scan'208";a="586542390"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 22 Dec 2010 22:12:21 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 23 Dec 2010 14:11:29 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 23 Dec 2010 14:11:28 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 23 Dec 2010 14:11:19 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Thu, 23 Dec 2010 14:11:17 +0800
Thread-Topic: about ${KERNEL_CC} and ${CC}
Thread-Index: AcuiaDYEUpex73H/RAGdQPE5mwgrTQ==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F6A48BD@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: about ${KERNEL_CC} and ${CC}
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
X-List-Received-Date: Thu, 23 Dec 2010 06:12:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm a bit confused why a specific ${KERNEL_CC} is introduced instead of
reusing ${CC}, especially when two are defined differently:

<kernel.bbclass>
KERNEL_CC =3D "${CCACHE}${HOST_PREFIX}gcc${KERNEL_CCSUFFIX} ${HOST_CC_KERNE=
L_ARCH}"

<bitbake.conf>
export CC =3D "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}${TOOLCHAIN_OPTION=
S}"
TOOLCHAIN_OPTIONS =3D " --sysroot=3D${STAGING_DIR_TARGET}"

I'm not sure whether kernel build requires "--sysroot" option, but it looks=
 that it works well
so far even without that option (why?)

However this causes one issue under sstate, if the whole toolchain is insta=
lled from sstate
packages which are built from another machine. In such case the default pat=
h (decided at
compilation time) of gcc also points to the path on another machine, which =
is missing in
current machine doing build. Perf compilation is:

do_compile_perf() {
        oe_runmake -C ${S}/tools/perf CC=3D"${KERNEL_CC}" LD=3D"${KERNEL_LD=
}" prefix=3D${prefix}
}

Without an explicit "--sysroot" options, perf compilation is broken due to =
failing to check some=20
header files like gnu/libc-version.h. I can workaround it by:

do_compile_perf() {
        oe_runmake -C ${S}/tools/perf CC=3D"${CC}" LD=3D"${LD}" AR=3D"${AR}=
" prefix=3D${prefix}
}

Before going with that fix, I'd like to understand the difference between {=
KERNEL_CC} and
${CC} first, e.g. another option Is to simply attach TOOLCHAIN_OPTIONS to K=
ERNEL_CC..

Thanks
Kevin

