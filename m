Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E40B4C80B71
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:41:55 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 17:41:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="858372074"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 17:41:37 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:40:25 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:40:25 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 17 Nov 2010 09:40:24 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:40:24 +0800
Thread-Topic: [PATCH 10/12] xcmiscproto: upgrade from 1.2.0 to the latest
	version 1.2.1
Thread-Index: AcuFpfEFBoiyTzQHTJuonXTgZ/XeqgAUnX4Q
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CC7@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<58af75a9a184926ccdc13d8bf5753bc555a7b4ae.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <58af75a9a184926ccdc13d8bf5753bc555a7b4ae.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 10/12] xcmiscproto: upgrade from 1.2.0 to the latest version 1.2.1
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
X-List-Received-Date: Wed, 17 Nov 2010 01:41:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    6 +++---
 .../{xcmiscproto_1.2.0.bb =3D> xcmiscproto_1.2.1.bb} |    2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{xcmiscproto_1.2.0.bb =3D> xcmiscp=
roto_1.2.1.bb} (95%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 462727c..e74a849 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -99,9 +99,9 @@ PREFERRED_VERSION_videoproto ?=3D "2.3.1"
 PREFERRED_VERSION_windowswmproto ?=3D "1.0.4"
 PREFERRED_VERSION_x11perf ?=3D "1.5"
 PREFERRED_VERSION_xauth ?=3D "1.0.5"
-PREFERRED_VERSION_xcmiscproto ?=3D "1.2.0"
-PREFERRED_VERSION_xcmiscproto-native ?=3D "1.2.0"
-PREFERRED_VERSION_xcmiscproto-nativesdk ?=3D "1.2.0"
+PREFERRED_VERSION_xcmiscproto ?=3D "1.2.1"
+PREFERRED_VERSION_xcmiscproto-native ?=3D "1.2.1"
+PREFERRED_VERSION_xcmiscproto-nativesdk ?=3D "1.2.1"
 PREFERRED_VERSION_xdpyinfo ?=3D "1.1.0"
 PREFERRED_VERSION_xev ?=3D "1.0.3"
 PREFERRED_VERSION_xextproto ?=3D "7.1.1"
diff --git a/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.0.bb b/meta/r=
ecipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
similarity index 95%
rename from meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.0.bb
rename to meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
index 1ed5a5f..fbd5284 100644
--- a/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
@@ -3,7 +3,7 @@ require xorg-proto-common.inc
 LICENSE =3D "MIT-style"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D09d83047c15994e05db29b423ed6662=
e"
=20
-PR =3D "r2"
+PR =3D "r0"
 PE =3D "1"
=20
 DEPENDS +=3D "gettext"
--=20
1.7.2


