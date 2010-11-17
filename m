Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B1504C80FAC
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:36:40 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2010 17:36:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="627526116"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2010 17:36:37 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:36:16 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:36:16 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 17 Nov 2010 09:36:15 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:36:14 +0800
Thread-Topic: [PATCH 01/12] damageproto: upgrade from 1.2.0 to the latest
	version 1.2.1
Thread-Index: AcuFpfG9n52ADZaWTV6zERJLzREVVAAUdqgg
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CBE@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<dc89fecd7422ab8817654fe0c20e30ccf367bf3c.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <dc89fecd7422ab8817654fe0c20e30ccf367bf3c.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 01/12] damageproto: upgrade from 1.2.0 to the latest version 1.2.1
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
X-List-Received-Date: Wed, 17 Nov 2010 01:36:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{damageproto_1.2.0.bb =3D> damageproto_1.2.1.bb} |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{damageproto_1.2.0.bb =3D> damagep=
roto_1.2.1.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 64dbadd..6f5b019 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -7,7 +7,7 @@ PREFERRED_VERSION_bigreqsproto ?=3D "1.1.0"
 PREFERRED_VERSION_bigreqsproto-native ?=3D "1.1.0"
 PREFERRED_VERSION_bigreqsproto-nativesdk ?=3D "1.1.0"
 PREFERRED_VERSION_compositeproto ?=3D "0.4"
-PREFERRED_VERSION_damageproto ?=3D "1.2.0"
+PREFERRED_VERSION_damageproto ?=3D "1.2.1"
 PREFERRED_VERSION_dmxproto ?=3D "2.3"
 PREFERRED_VERSION_evieext ?=3D "1.1.0"
 PREFERRED_VERSION_fixesproto ?=3D "4.1.1"
diff --git a/meta/recipes-graphics/xorg-proto/damageproto_1.2.0.bb b/meta/r=
ecipes-graphics/xorg-proto/damageproto_1.2.1.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/damageproto_1.2.0.bb
rename to meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
index af61d03..db92da3 100644
--- a/meta/recipes-graphics/xorg-proto/damageproto_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
@@ -5,5 +5,5 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd5f5a2de65c3a84c=
bde769f07a769608 \
                     file://damagewire.h;endline=3D23;md5=3D4a4501a592dbc7d=
e5ce89255e50d0296"
=20
 CONFLICTS =3D "damageext"
-PR =3D "r1"
+PR =3D "r0"
 PE =3D "1"
--=20
1.7.2


