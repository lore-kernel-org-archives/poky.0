Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 718F14C80B71
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:41:07 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Nov 2010 17:41:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="574541472"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 17:41:01 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:40:13 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:40:13 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 17 Nov 2010 09:40:11 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:40:10 +0800
Thread-Topic: [PATCH 09/12] videoproto: upgrade from 2.3.0 to the latest
	version 2.3.1
Thread-Index: AcuFpfKHZ8+FHA59TXKonItZtWJ/ZAAUmouw
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CC6@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<c213a561a1b003ceb0614cac64fe4b8f8c5133e5.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <c213a561a1b003ceb0614cac64fe4b8f8c5133e5.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 09/12] videoproto: upgrade from 2.3.0 to the latest version 2.3.1
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
X-List-Received-Date: Wed, 17 Nov 2010 01:41:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{videoproto_2.3.0.bb =3D> videoproto_2.3.1.bb}   |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{videoproto_2.3.0.bb =3D> videopro=
to_2.3.1.bb} (93%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/co=
nf/distro/include/preferred-xorg-versions.inc
index b00dbc0..462727c 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -95,7 +95,7 @@ PREFERRED_VERSION_scrnsaverproto ?=3D "1.2.1"
 PREFERRED_VERSION_trapproto ?=3D "3.4.3"
 PREFERRED_VERSION_util-macros ?=3D "1.10.0"
 PREFERRED_VERSION_util-macros-native ?=3D "1.10.0"
-PREFERRED_VERSION_videoproto ?=3D "2.3.0"
+PREFERRED_VERSION_videoproto ?=3D "2.3.1"
 PREFERRED_VERSION_windowswmproto ?=3D "1.0.4"
 PREFERRED_VERSION_x11perf ?=3D "1.5"
 PREFERRED_VERSION_xauth ?=3D "1.0.5"
diff --git a/meta/recipes-graphics/xorg-proto/videoproto_2.3.0.bb b/meta/re=
cipes-graphics/xorg-proto/videoproto_2.3.1.bb
similarity index 93%
rename from meta/recipes-graphics/xorg-proto/videoproto_2.3.0.bb
rename to meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
index baedc28..83378b6 100644
--- a/meta/recipes-graphics/xorg-proto/videoproto_2.3.0.bb
+++ b/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
@@ -3,5 +3,5 @@ require xorg-proto-common.inc
 LICENSE =3D "MIT & MIT-style"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D59d089e37bf57b5206602da38f58ca5=
d"
=20
-PR =3D "r1"
+PR =3D "r0"
 PE =3D "1"
--=20
1.7.2


