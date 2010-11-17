Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6575F4C80B71
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:41:55 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 17:41:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="858372079"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 17:41:39 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:40:45 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:40:45 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 17 Nov 2010 09:40:38 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:40:37 +0800
Thread-Topic: [PATCH 11/12] xextproto: upgrade from 7.1.1 to the latest
	version 7.1.2
Thread-Index: AcuFpfC0ukCP3dxlSkWmEEnI9eXxVgAUn0JA
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CC8@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<11cbb33ddae469e372d4a76ff98995aef5583126.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <11cbb33ddae469e372d4a76ff98995aef5583126.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 11/12] xextproto: upgrade from 7.1.1 to the latest version 7.1.2
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
 .../{xextproto_7.1.1.bb =3D> xextproto_7.1.2.bb}     |    0
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{xextproto_7.1.1.bb =3D> xextproto=
_7.1.2.bb} (100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index e74a849..56ae237 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -104,9 +104,9 @@ PREFERRED_VERSION_xcmiscproto-native ?=3D "1.2.1"
 PREFERRED_VERSION_xcmiscproto-nativesdk ?=3D "1.2.1"
 PREFERRED_VERSION_xdpyinfo ?=3D "1.1.0"
 PREFERRED_VERSION_xev ?=3D "1.0.3"
-PREFERRED_VERSION_xextproto ?=3D "7.1.1"
-PREFERRED_VERSION_xextproto-native ?=3D "7.1.1"
-PREFERRED_VERSION_xextproto-nativesdk ?=3D "7.1.1"
+PREFERRED_VERSION_xextproto ?=3D "7.1.2"
+PREFERRED_VERSION_xextproto-native ?=3D "7.1.2"
+PREFERRED_VERSION_xextproto-nativesdk ?=3D "7.1.2"
 PREFERRED_VERSION_xf86bigfontproto ?=3D "1.2.0"
 PREFERRED_VERSION_xf86bigfontproto-native ?=3D "1.2.0"
 PREFERRED_VERSION_xf86bigfontproto-nativesdk ?=3D "1.2.0"
diff --git a/meta/recipes-graphics/xorg-proto/xextproto_7.1.1.bb b/meta/rec=
ipes-graphics/xorg-proto/xextproto_7.1.2.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-proto/xextproto_7.1.1.bb
rename to meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb
--=20
1.7.2


