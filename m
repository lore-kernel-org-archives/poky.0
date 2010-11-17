Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C76804C80B71
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:40:07 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Nov 2010 17:40:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="574541304"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 17:40:06 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:39:34 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:39:34 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 17 Nov 2010 09:39:33 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:39:32 +0800
Thread-Topic: [PATCH 07/12] recordproto: upgrade from 1.14 to the latest
	version 1.14.1
Thread-Index: AcuFpfDTj7iyzCwwQKijFge5ha6SnwAUlaZA
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CC4@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<f696678cf79f8781867bb59cd88087d9620a6903.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <f696678cf79f8781867bb59cd88087d9620a6903.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 07/12] recordproto: upgrade from 1.14 to the latest version 1.14.1
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
X-List-Received-Date: Wed, 17 Nov 2010 01:40:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{recordproto_1.14.bb =3D> recordproto_1.14.1.bb} |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{recordproto_1.14.bb =3D> recordpr=
oto_1.14.1.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index 341e994..98b04a8 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -87,7 +87,7 @@ PREFERRED_VERSION_pixman ?=3D "0.18.2"
 PREFERRED_VERSION_printproto ?=3D "1.0.4"
 PREFERRED_VERSION_randrproto ?=3D "1.3.2"
 PREFERRED_VERSION_randrproto-nativesdk ?=3D "1.3.2"
-PREFERRED_VERSION_recordproto ?=3D "1.14"
+PREFERRED_VERSION_recordproto ?=3D "1.14.1"
 PREFERRED_VERSION_renderproto ?=3D "0.11"
 PREFERRED_VERSION_renderproto-nativesdk ?=3D "0.11"
 PREFERRED_VERSION_resourceproto ?=3D "1.1.0"
diff --git a/meta/recipes-graphics/xorg-proto/recordproto_1.14.bb b/meta/re=
cipes-graphics/xorg-proto/recordproto_1.14.1.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/recordproto_1.14.bb
rename to meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
index abb91d7..0ba3d65 100644
--- a/meta/recipes-graphics/xorg-proto/recordproto_1.14.bb
+++ b/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
@@ -5,5 +5,5 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D575827a0f554bbed=
332542976d5f3d40 \
                     file://recordproto.h;endline=3D19;md5=3D1cbb0dd45a0b06=
0ff833901620a3e738"
=20
 CONFLICTS =3D "recordext"
-PR =3D "r1"
+PR =3D "r0"
 PE =3D "1"
--=20
1.7.2


