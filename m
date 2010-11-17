Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCB854C811A5
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:38:46 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2010 17:38:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="858371453"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 17:38:46 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:38:45 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 17 Nov 2010 09:38:44 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:38:43 +0800
Thread-Topic: [PATCH 04/12] glproto: upgrade from 1.4.11 to the latest
	version 1.4.12
Thread-Index: AcuFpfDrhTkKfw/vTz2BRdmvx3moCAAUiw8Q
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CC1@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<82d7605dfffdbaba352cfc6307aab474c5cd6cf5.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <82d7605dfffdbaba352cfc6307aab474c5cd6cf5.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 04/12] glproto: upgrade from 1.4.11 to the latest version 1.4.12
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
X-List-Received-Date: Wed, 17 Nov 2010 01:38:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{glproto_1.4.11.bb =3D> glproto_1.4.12.bb}       |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{glproto_1.4.11.bb =3D> glproto_1.=
4.12.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index c1b04b1..ef95e6b 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -16,7 +16,7 @@ PREFERRED_VERSION_fontcacheproto-native ?=3D "0.1.3"
 PREFERRED_VERSION_fontsproto ?=3D "2.1.1"
 PREFERRED_VERSION_fontsproto-native ?=3D "2.1.1"
 PREFERRED_VERSION_gccmakedep ?=3D "1.0.2"
-PREFERRED_VERSION_glproto ?=3D "1.4.11"
+PREFERRED_VERSION_glproto ?=3D "1.4.12"
 PREFERRED_VERSION_imake ?=3D "1.0.2"
 #PREFERRED_VERSION_inputproto ?=3D "2.0"
 #PREFERRED_VERSION_inputproto-native ?=3D "2.0"
diff --git a/meta/recipes-graphics/xorg-proto/glproto_1.4.11.bb b/meta/reci=
pes-graphics/xorg-proto/glproto_1.4.12.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/glproto_1.4.11.bb
rename to meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
index c1ade41..90076d9 100644
--- a/meta/recipes-graphics/xorg-proto/glproto_1.4.11.bb
+++ b/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
@@ -4,7 +4,7 @@ LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D4641deddaa80fe7ca88e944e1fd94a9=
4 \
                     file://glxproto.h;beginline=3D4;endline=3D32;md5=3D6b7=
9c570f644363b356456e7d44471d9"
=20
-PR =3D "r1"
+PR =3D "r0"
 PE =3D "1"
=20
 BBCLASSEXTEND =3D "nativesdk"
--=20
1.7.2


