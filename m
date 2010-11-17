Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 18E174C81174
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:38:17 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 17:38:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="858371322"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 17:38:16 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:38:10 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 17 Nov 2010 09:38:10 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:38:09 +0800
Thread-Topic: [PATCH 03/12] fontsproto: upgrade from 2.1.0 to the latest
	version 2.1.1
Thread-Index: AcuFpfDm6BAVwVoJQUqxu3bcNiRH5QAUiMEA
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CC0@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<dcb71f4b2a9ea6748484cc4c0c5e3aae8addae07.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <dcb71f4b2a9ea6748484cc4c0c5e3aae8addae07.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 03/12] fontsproto: upgrade from 2.1.0 to the latest version 2.1.1
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
X-List-Received-Date: Wed, 17 Nov 2010 01:38:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    4 ++--
 .../{fontsproto_2.1.0.bb =3D> fontsproto_2.1.1.bb}   |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{fontsproto_2.1.0.bb =3D> fontspro=
to_2.1.1.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 49ccbe8..c1b04b1 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -13,8 +13,8 @@ PREFERRED_VERSION_evieext ?=3D "1.1.0"
 PREFERRED_VERSION_fixesproto ?=3D "4.1.2"
 PREFERRED_VERSION_fontcacheproto ?=3D "0.1.3"
 PREFERRED_VERSION_fontcacheproto-native ?=3D "0.1.3"
-PREFERRED_VERSION_fontsproto ?=3D "2.1.0"
-PREFERRED_VERSION_fontsproto-native ?=3D "2.1.0"
+PREFERRED_VERSION_fontsproto ?=3D "2.1.1"
+PREFERRED_VERSION_fontsproto-native ?=3D "2.1.1"
 PREFERRED_VERSION_gccmakedep ?=3D "1.0.2"
 PREFERRED_VERSION_glproto ?=3D "1.4.11"
 PREFERRED_VERSION_imake ?=3D "1.0.2"
diff --git a/meta/recipes-graphics/xorg-proto/fontsproto_2.1.0.bb b/meta/re=
cipes-graphics/xorg-proto/fontsproto_2.1.1.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/fontsproto_2.1.0.bb
rename to meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
index 74b2fed..44f6a34 100644
--- a/meta/recipes-graphics/xorg-proto/fontsproto_2.1.0.bb
+++ b/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
@@ -4,7 +4,7 @@ LICENSE =3D "MIT-style"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dc3e48aa9ce868c8e90f0401db41c11a=
2 \
                     file://FSproto.h;endline=3D44;md5=3Dd2e58e27095e5ea7d4=
ad456ccb91986c"
=20
-PR =3D "r1"
+PR =3D "r0"
 PE =3D "1"
=20
 BBCLASSEXTEND =3D "native"
--=20
1.7.2


