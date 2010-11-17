Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1A8C4C81146
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:37:47 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 17:37:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="858371135"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 17:37:46 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:37:46 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 17 Nov 2010 09:37:45 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:37:43 +0800
Thread-Topic: [PATCH 02/12] fixesproto: upgrade from 4.1.1 to the latest
	version 4.1.2
Thread-Index: AcuFpfFNDLGDk6IWTDCwYmeMZXlOjAAUhMBQ
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CBF@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<1796b7237144a86e75cd33b18f49bdfc26688845.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <1796b7237144a86e75cd33b18f49bdfc26688845.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 02/12] fixesproto: upgrade from 4.1.1 to the latest version 4.1.2
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
X-List-Received-Date: Wed, 17 Nov 2010 01:37:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-proto/fixesproto_4.1.1.bb                 |   11 -----------
 .../xorg-proto/fixesproto_4.1.2.bb                 |   11 +++++++++++
 3 files changed, 12 insertions(+), 12 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb
 create mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 6f5b019..49ccbe8 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -10,7 +10,7 @@ PREFERRED_VERSION_compositeproto ?=3D "0.4"
 PREFERRED_VERSION_damageproto ?=3D "1.2.1"
 PREFERRED_VERSION_dmxproto ?=3D "2.3"
 PREFERRED_VERSION_evieext ?=3D "1.1.0"
-PREFERRED_VERSION_fixesproto ?=3D "4.1.1"
+PREFERRED_VERSION_fixesproto ?=3D "4.1.2"
 PREFERRED_VERSION_fontcacheproto ?=3D "0.1.3"
 PREFERRED_VERSION_fontcacheproto-native ?=3D "0.1.3"
 PREFERRED_VERSION_fontsproto ?=3D "2.1.0"
diff --git a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb b/meta/re=
cipes-graphics/xorg-proto/fixesproto_4.1.1.bb
deleted file mode 100644
index cb709f7..0000000
--- a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-require xorg-proto-common.inc
-
-LICENSE =3D "MIT-style"
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dae2c93d7226d1ed33287c3924ca6181=
6 \
-                    file://xfixesproto.h;endline=3D41;md5=3Dfa6bf4d92ae4dd=
0c1cac511105e541d2"
-
-CONFLICTS =3D "fixesext"
-PR =3D "r1"
-PE =3D "1"
-
-BBCLASSEXTEND =3D "nativesdk"
diff --git a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb b/meta/re=
cipes-graphics/xorg-proto/fixesproto_4.1.2.bb
new file mode 100644
index 0000000..daf9c7a
--- /dev/null
+++ b/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
@@ -0,0 +1,11 @@
+require xorg-proto-common.inc
+
+LICENSE =3D "MIT & MIT-style"
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D3bd0f26ecf86d0f24922125195d5b70=
a \
+                    file://xfixesproto.h;endline=3D43;md5=3D27614675897bb1=
cdc611ba7de506cddc"
+
+CONFLICTS =3D "fixesext"
+PR =3D "r0"
+PE =3D "1"
+
+BBCLASSEXTEND =3D "nativesdk"
--=20
1.7.2


