Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 382DC4C80B71
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:39:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 17:39:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="574541170"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 17:39:21 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:39:20 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:39:20 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 17 Nov 2010 09:39:18 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:39:17 +0800
Thread-Topic: [PATCH 06/12] randrproto: upgrade from 1.3.1 to the latest
	version 1.3.2
Thread-Index: AcuFpfEwXDhAD06JQSi6tkx7Cu7gWwAUk32w
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CC3@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<7dc3654620c4837debfa37f5ec4d568c20d4dfb3.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <7dc3654620c4837debfa37f5ec4d568c20d4dfb3.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 06/12] randrproto: upgrade from 1.3.1 to the latest version 1.3.2
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
X-List-Received-Date: Wed, 17 Nov 2010 01:39:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    4 ++--
 .../{randrproto_1.3.1.bb =3D> randrproto_1.3.2.bb}   |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{randrproto_1.3.1.bb =3D> randrpro=
to_1.3.2.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index baec854..341e994 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -85,8 +85,8 @@ PREFERRED_VERSION_makedepend ?=3D "1.0.2"
 PREFERRED_VERSION_makedepend-native ?=3D "1.0.2"
 PREFERRED_VERSION_pixman ?=3D "0.18.2"
 PREFERRED_VERSION_printproto ?=3D "1.0.4"
-PREFERRED_VERSION_randrproto ?=3D "1.3.1"
-PREFERRED_VERSION_randrproto-nativesdk ?=3D "1.3.1"
+PREFERRED_VERSION_randrproto ?=3D "1.3.2"
+PREFERRED_VERSION_randrproto-nativesdk ?=3D "1.3.2"
 PREFERRED_VERSION_recordproto ?=3D "1.14"
 PREFERRED_VERSION_renderproto ?=3D "0.11"
 PREFERRED_VERSION_renderproto-nativesdk ?=3D "0.11"
diff --git a/meta/recipes-graphics/xorg-proto/randrproto_1.3.1.bb b/meta/re=
cipes-graphics/xorg-proto/randrproto_1.3.2.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/randrproto_1.3.1.bb
rename to meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
index 725be1d..1e116d9 100644
--- a/meta/recipes-graphics/xorg-proto/randrproto_1.3.1.bb
+++ b/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D5fa3f85d9eefaa3a=
945071485be11343 \
                     file://randrproto.h;endline=3D30;md5=3D3885957c6048fdf=
3310ac8ba54ca2c3f"
=20
 CONFLICTS =3D "randrext"
-PR =3D "r1"
+PR =3D "r0"
 PE =3D "1"
=20
 BBCLASSEXTEND =3D "nativesdk"
--=20
1.7.2


