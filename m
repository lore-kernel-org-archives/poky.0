Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B8EE4C80FD4
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:41:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 17:41:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="574541538"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 17:41:21 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:40:52 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 17 Nov 2010 09:40:51 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:40:50 +0800
Thread-Topic: [PATCH 12/12] Distro Tracking: update distro tracking field
	for recipes of Graphics libs
Thread-Index: AcuFpfKudH/IHJYDSGOHT9YmBrO0ZAAUoJ/A
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CC9@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
	<f69c2e0cadaf9d0b47dfec0c281f9d0d5fa903cc.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <f69c2e0cadaf9d0b47dfec0c281f9d0d5fa903cc.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 12/12] Distro Tracking: update distro tracking field for recipes of Graphics libs
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
X-List-Received-Date: Wed, 17 Nov 2010 01:41:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

They are:

damageproto
fixesproto
fontsproto
glproto
kbproto
randrproto
recordproto
scrnsaverproto
videoproto
xcmiscproto
xextproto

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   66 ++++++++++------=
----
 1 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/con=
f/distro/include/distro_tracking_fields.inc
index 372297a..3214270 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -3743,11 +3743,11 @@ RECIPE_MAINTAINER_pn-compositeproto =3D "Dexuan Cui=
 <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-damageproto =3D "green"
 DISTRO_PN_ALIAS_pn-damageproto =3D "Meego=3Dxorg-x11-proto-damageproto"
 DEPENDENCY_CHECK_pn-damageproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-damageproto =3D "1.2.0"
+RECIPE_LATEST_VERSION_pn-damageproto =3D "1.2.1"
 RECIPE_NO_OF_PATCHES_pn-damageproto =3D "0"
 RECIPE_INTEL_SECTION_pn-damageproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-damageproto =3D "2 years"
-RECIPE_LATEST_RELEASE_DATE_pn-damageproto =3D "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-damageproto =3D "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-damageproto =3D "Oct 29, 2010"
 RECIPE_COMMENTS_pn-damageproto =3D ""
 RECIPE_MAINTAINER_pn-damageproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
@@ -3765,11 +3765,11 @@ RECIPE_MAINTAINER_pn-dmxproto =3D "Dexuan Cui <dexu=
an.cui@intel.com>"
 RECIPE_STATUS_pn-fixesproto =3D "green"
 DISTRO_PN_ALIAS_pn-fixesproto =3D "Meego=3Dxorg-x11-proto-fixesproto"
 DEPENDENCY_CHECK_pn-fixesproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-fixesproto =3D "4.1.1"
+RECIPE_LATEST_VERSION_pn-fixesproto =3D "4.1.2"
 RECIPE_NO_OF_PATCHES_pn-fixesproto =3D "0"
 RECIPE_INTEL_SECTION_pn-fixesproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-fixesproto =3D "3 months"
-RECIPE_LATEST_RELEASE_DATE_pn-fixesproto =3D "10/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-fixesproto =3D "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-fixesproto =3D "Oct 29, 2010"
 RECIPE_COMMENTS_pn-fixesproto =3D ""
 RECIPE_MAINTAINER_pn-fixesproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
@@ -3787,22 +3787,22 @@ RECIPE_MAINTAINER_pn-fontcacheproto =3D "Dexuan Cui=
 <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-fontsproto =3D "green"
 DISTRO_PN_ALIAS_pn-fontsproto =3D "Meego=3Dxorg-x11-proto-fontsproto"
 DEPENDENCY_CHECK_pn-fontsproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-fontsproto =3D "2.1.0"
+RECIPE_LATEST_VERSION_pn-fontsproto =3D "2.1.1"
 RECIPE_NO_OF_PATCHES_pn-fontsproto =3D "0"
 RECIPE_INTEL_SECTION_pn-fontsproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-fontsproto =3D "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-fontsproto =3D "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-fontsproto =3D "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-fontsproto =3D "Oct 29, 2010"
 RECIPE_COMMENTS_pn-fontsproto =3D ""
 RECIPE_MAINTAINER_pn-fontsproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
 RECIPE_STATUS_pn-glproto =3D "green"
 DISTRO_PN_ALIAS_pn-glproto =3D "Meego=3Dxorg-x11-proto-glproto"
 DEPENDENCY_CHECK_pn-glproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-glproto =3D "1.4.11"
+RECIPE_LATEST_VERSION_pn-glproto =3D "1.4.12"
 RECIPE_NO_OF_PATCHES_pn-glproto =3D "0"
 RECIPE_INTEL_SECTION_pn-glproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glproto =3D "8 months"
-RECIPE_LATEST_RELEASE_DATE_pn-glproto =3D "01/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glproto =3D "7 months"
+RECIPE_LATEST_RELEASE_DATE_pn-glproto =3D "Aug 10, 2010"
 RECIPE_COMMENTS_pn-glproto =3D ""
 RECIPE_MAINTAINER_pn-glproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
@@ -3820,11 +3820,11 @@ RECIPE_MAINTAINER_pn-inputproto =3D "Dexuan Cui <de=
xuan.cui@intel.com>"
 RECIPE_STATUS_pn-kbproto =3D "green"
 DISTRO_PN_ALIAS_pn-kbproto =3D "Meego=3Dxorg-x11-proto-kbproto Ubuntu=3Dx1=
1proto-kb-dev Debian=3Dx11proto-kb-dev"
 DEPENDENCY_CHECK_pn-kbproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-kbproto =3D "1.0.4"
+RECIPE_LATEST_VERSION_pn-kbproto =3D "1.0.5"
 RECIPE_NO_OF_PATCHES_pn-kbproto =3D "0"
 RECIPE_INTEL_SECTION_pn-kbproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-kbproto =3D "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-kbproto =3D "10/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-kbproto =3D "10 months"
+RECIPE_LATEST_RELEASE_DATE_pn-kbproto =3D "Aug 10, 2010"
 RECIPE_COMMENTS_pn-kbproto =3D ""
 RECIPE_MAINTAINER_pn-kbproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
@@ -3905,22 +3905,22 @@ RECIPE_MAINTAINER_pn-printproto =3D "Dexuan Cui <de=
xuan.cui@intel.com>"
 RECIPE_STATUS_pn-randrproto =3D "green"
 DISTRO_PN_ALIAS_pn-randrproto =3D "Meego=3Dxorg-x11-proto-randrproto"
 DEPENDENCY_CHECK_pn-randrproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-randrproto =3D "1.3.1"
+RECIPE_LATEST_VERSION_pn-randrproto =3D "1.3.2"
 RECIPE_NO_OF_PATCHES_pn-randrproto =3D "0"
 RECIPE_INTEL_SECTION_pn-randrproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-randrproto =3D "2 years"
-RECIPE_LATEST_RELEASE_DATE_pn-randrproto =3D "07/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-randrproto =3D "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-randrproto =3D "Oct 29, 2010"
 RECIPE_COMMENTS_pn-randrproto =3D ""
 RECIPE_MAINTAINER_pn-randrproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
 RECIPE_STATUS_pn-recordproto =3D "green"
 DISTRO_PN_ALIAS_pn-recordproto =3D "Meego=3Dxorg-x11-proto-recordproto"
 DEPENDENCY_CHECK_pn-recordproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-recordproto =3D "1.14"
+RECIPE_LATEST_VERSION_pn-recordproto =3D "1.14.1"
 RECIPE_NO_OF_PATCHES_pn-recordproto =3D "0"
 RECIPE_INTEL_SECTION_pn-recordproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-recordproto =3D "2 months"
-RECIPE_LATEST_RELEASE_DATE_pn-recordproto =3D "10/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-recordproto =3D "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-recordproto =3D "Oct 29, 2010"
 RECIPE_COMMENTS_pn-recordproto =3D ""
 RECIPE_MAINTAINER_pn-recordproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
@@ -3949,11 +3949,11 @@ RECIPE_MAINTAINER_pn-resourceproto =3D "Dexuan Cui =
<dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-scrnsaverproto =3D "green"
 DISTRO_PN_ALIAS_pn-scrnsaverproto =3D "Meego=3Dxorg-x11-proto-scrnsaverpro=
to Ubuntu=3Dx11proto-scrnsaver-dev Debian=3Dx11proto-scrnsaver-dev"
 DEPENDENCY_CHECK_pn-scrnsaverproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-scrnsaverproto =3D "1.2.0"
+RECIPE_LATEST_VERSION_pn-scrnsaverproto =3D "1.2.1"
 RECIPE_NO_OF_PATCHES_pn-scrnsaverproto =3D "0"
 RECIPE_INTEL_SECTION_pn-scrnsaverproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-scrnsaverproto =3D "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-scrnsaverproto =3D "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-scrnsaverproto =3D "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-scrnsaverproto =3D "Oct 29, 2010"
 RECIPE_COMMENTS_pn-scrnsaverproto =3D ""
 RECIPE_MAINTAINER_pn-scrnsaverproto =3D "Dexuan Cui <dexuan.cui@intel.com>=
"
=20
@@ -3971,22 +3971,22 @@ RECIPE_MAINTAINER_pn-trapproto =3D "Dexuan Cui <dex=
uan.cui@intel.com>"
 RECIPE_STATUS_pn-videoproto =3D "green"
 DISTRO_PN_ALIAS_pn-videoproto =3D "Meego=3Dxorg-x11-proto-videoproto"
 DEPENDENCY_CHECK_pn-videoproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-videoproto =3D "2.3.0"
+RECIPE_LATEST_VERSION_pn-videoproto =3D "2.3.1"
 RECIPE_NO_OF_PATCHES_pn-videoproto =3D "0"
 RECIPE_INTEL_SECTION_pn-videoproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-videoproto =3D "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-videoproto =3D "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-videoproto =3D "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-videoproto =3D "Aug 10, 2010"
 RECIPE_COMMENTS_pn-videoproto =3D ""
 RECIPE_MAINTAINER_pn-videoproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
 RECIPE_STATUS_pn-xcmiscproto =3D "green"
 DISTRO_PN_ALIAS_pn-xcmiscproto =3D "Meego=3Dxorg-x11-proto-xcmiscproto"
 DEPENDENCY_CHECK_pn-xcmiscproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-xcmiscproto =3D "1.2.0"
+RECIPE_LATEST_VERSION_pn-xcmiscproto =3D "1.2.1"
 RECIPE_NO_OF_PATCHES_pn-xcmiscproto =3D "0"
 RECIPE_INTEL_SECTION_pn-xcmiscproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xcmiscproto =3D "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-xcmiscproto =3D "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xcmiscproto =3D "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-xcmiscproto =3D "Oct 30, 2010"
 RECIPE_COMMENTS_pn-xcmiscproto =3D ""
 RECIPE_MAINTAINER_pn-xcmiscproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
@@ -4080,11 +4080,11 @@ RECIPE_MAINTAINER_pn-xcb-proto =3D "Dexuan Cui <dex=
uan.cui@intel.com>"
 RECIPE_STATUS_pn-xextproto =3D "green"
 DISTRO_PN_ALIAS_pn-xextproto =3D "Meego=3Dxorg-x11-proto-xextproto"
 DEPENDENCY_CHECK_pn-xextproto =3D "not done"
-RECIPE_LATEST_VERSION_pn-xextproto =3D "7.1.1"
+RECIPE_LATEST_VERSION_pn-xextproto =3D "7.1.2"
 RECIPE_NO_OF_PATCHES_pn-xextproto =3D "0"
 RECIPE_INTEL_SECTION_pn-xextproto =3D "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xextproto =3D "20 days"
-RECIPE_LATEST_RELEASE_DATE_pn-xextproto =3D "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xextproto =3D "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-xextproto =3D "Aug 10, 2010"
 RECIPE_COMMENTS_pn-xextproto =3D ""
 RECIPE_MAINTAINER_pn-xextproto =3D "Dexuan Cui <dexuan.cui@intel.com>"
=20
--=20
1.7.2


