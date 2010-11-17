Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EE224C80B71
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:39:08 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 17:39:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="574541111"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 17:39:07 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:39:06 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:39:06 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 17 Nov 2010 09:39:04 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:39:04 +0800
Thread-Topic: [PATCH 05/12] kbproto: upgrade from 1.0.4 to the latest
	version 1.0.5
Thread-Index: AcuFpfFil6YSrfZaTEOYLAkkVF1ZrAAUkKwA
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CC2@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<b1195d883dd7d21ae1978c235e43cd7733e885e1.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <b1195d883dd7d21ae1978c235e43cd7733e885e1.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 05/12] kbproto: upgrade from 1.0.4 to the latest version 1.0.5
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
X-List-Received-Date: Wed, 17 Nov 2010 01:39:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    6 +++---
 .../{kbproto_1.0.4.bb =3D> kbproto_1.0.5.bb}         |    2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{kbproto_1.0.4.bb =3D> kbproto_1.0=
.5.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index ef95e6b..baec854 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -21,9 +21,9 @@ PREFERRED_VERSION_imake ?=3D "1.0.2"
 #PREFERRED_VERSION_inputproto ?=3D "2.0"
 #PREFERRED_VERSION_inputproto-native ?=3D "2.0"
 #PREFERRED_VERSION_inputproto-nativesdk ?=3D "2.0"
-PREFERRED_VERSION_kbproto ?=3D "1.0.4"
-PREFERRED_VERSION_kbproto-native ?=3D "1.0.4"
-PREFERRED_VERSION_kbproto-nativesdk ?=3D "1.0.4"
+PREFERRED_VERSION_kbproto ?=3D "1.0.5"
+PREFERRED_VERSION_kbproto-native ?=3D "1.0.5"
+PREFERRED_VERSION_kbproto-nativesdk ?=3D "1.0.5"
 PREFERRED_VERSION_libapplewm ?=3D "1.0.0"
 PREFERRED_VERSION_libdmx ?=3D "1.1.0"
 PREFERRED_VERSION_libfontenc ?=3D "1.0.5"
diff --git a/meta/recipes-graphics/xorg-proto/kbproto_1.0.4.bb b/meta/recip=
es-graphics/xorg-proto/kbproto_1.0.5.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/kbproto_1.0.4.bb
rename to meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
index b49d5a6..e98d3d6 100644
--- a/meta/recipes-graphics/xorg-proto/kbproto_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
@@ -4,7 +4,7 @@ LICENSE =3D "MIT-style"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D7dd6ea99e2a83a552c02c80963623c3=
8 \
                     file://XKBproto.h;beginline=3D2;endline=3D26;md5=3D574=
4eeff407aeb6e7a1346eebab486a2"
=20
-PR =3D "r2"
+PR =3D "r0"
 PE =3D "1"
=20
 DEPENDS +=3D "gettext"
--=20
1.7.2


