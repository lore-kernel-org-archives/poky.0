Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 780A34C810E6
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 20:57:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 18:57:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="580102223"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 18:57:47 -0800
Message-Id: <b4eed5185f3519a3d68be6b4b762fc865eab01d6.1291344572.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1291344572.git.nitin.a.kamble@intel.com>
References: <cover.1291344572.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Mon, 29 Nov 2010 09:09:44 -0800
To: poky@yoctoproject.org
Subject: [PATCH 6/6] distro_tracking_fields: update fields for devel/toolchain recipes
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
X-List-Received-Date: Fri, 03 Dec 2010 02:57:49 -0000

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   39 +++++++++-----------
 1 files changed, 18 insertions(+), 21 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 18e9996..9eb0d93 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -15,7 +15,7 @@ RECIPE_LATEST_VERIONS_pn-gccmakedep = "check"
 RECIPE_MAINTAINER_pn-gccmakedep = "Dexuan Cui <dexuan.cui@intel.com>"
 DISTRO_PN_ALIAS_pn-gccmakedep = "Mandriva=gccmakedep Ubuntu=xutils-dev"
 
-RECIPE_STATUS_pn-git = "red"
+RECIPE_STATUS_pn-git = "green"
 RECIPE_LATEST_VERIONS_pn-git = "1.7.3.2"
 RECIPE_MAINTAINER_pn-git = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
@@ -33,8 +33,8 @@ RECIPE_STATUS_pn-libsoup = "red"
 RECIPE_LATEST_VERIONS_pn-libsoup = "check"
 RECIPE_MAINTAINER_pn-libsoup = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-libtimedate-perl = "red"
-RECIPE_LATEST_VERIONS_pn-libtimedate-perl = "check"
+RECIPE_STATUS_pn-libtimedate-perl = "green"
+RECIPE_LATEST_VERIONS_pn-libtimedate-perl = "1.20"
 RECIPE_MAINTAINER_pn-libtimedate-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-libtimedate-perl = "Debian=libtimedate-perl Ubuntu=libtimedate-perl"
 
@@ -50,8 +50,8 @@ RECIPE_STATUS_pn-loudmouth = "red"
 RECIPE_LATEST_VERIONS_pn-loudmouth = "check"
 RECIPE_MAINTAINER_pn-loudmouth = "Dongxiao Xu <dongxiao.xu@intel.com"
 
-RECIPE_STATUS_pn-makedepend = "red"
-RECIPE_LATEST_VERIONS_pn-makedepend = "check"
+RECIPE_STATUS_pn-makedepend = "green"
+RECIPE_LATEST_VERIONS_pn-makedepend = "1.0.3"
 RECIPE_MAINTAINER_pn-makedepend = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-makedepend = "Mandriva=makedepend Ubuntu=xutils-dev"
 
@@ -75,8 +75,12 @@ RECIPE_LATEST_RELEASE_DATE_pn-minicom="2010/12/20"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-minicom="22 months"
 RECIPE_MAINTAINER_pn-minicom = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
+RECIPE_STATUS_pn-moblin-proto = "red"
+RECIPE_LATEST_VERIONS_pn-moblin-proto = "check"
+RECIPE_MAINTAINER_pn-moblin-proto = "Dexuan Cui <dexuan.cui@intel.com>"
+
 RECIPE_STATUS_pn-patch = "red"
-RECIPE_LATEST_VERIONS_pn-patch = "check"
+RECIPE_LATEST_VERIONS_pn-patch = "2.6.1"
 RECIPE_MAINTAINER_pn-patch = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-python-imaging = "green"
@@ -91,8 +95,8 @@ RECIPE_STATUS_pn-screen = "red"
 RECIPE_LATEST_VERIONS_pn-screen = "check"
 RECIPE_MAINTAINER_pn-screen = "Qing He <qing.he@intel.com>"
 
-RECIPE_STATUS_pn-subversion = "red"
-RECIPE_LATEST_VERIONS_pn-subversion = "check"
+RECIPE_STATUS_pn-subversion = "green"
+RECIPE_LATEST_VERIONS_pn-subversion = "1.6.13"
 RECIPE_MAINTAINER_pn-subversion = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-trace-cmd = "red"
@@ -2570,11 +2574,8 @@ RECIPE_STATUS_pn-binutils="green"
 RECIPE_LATEST_VERSION_pn-binutils="2.20.1"
 RECIPE_MAINTAINER_pn-binutils = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-gcc="red" 
+RECIPE_STATUS_pn-gcc="green" 
 RECIPE_LATEST_VERSION_pn-gcc="4.5.1"
-RECIPE_NO_OF_PATCHES_pn-gcc="8"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gcc="5 months"
-RECIPE_LATEST_RELEASE_DATE_pn-gcc="2010/03/03"
 RECIPE_MAINTAINER_pn-gcc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-autoconf="red" 
@@ -2624,7 +2625,7 @@ RECIPE_STATUS_pn-intltool="green"
 RECIPE_LATEST_VERSION_pn-intltool="0.40.6"
 RECIPE_MAINTAINER_pn-intltool = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-libtool="red" 
+RECIPE_STATUS_pn-libtool="green" 
 RECIPE_LATEST_VERSION_pn-libtool="2.4"
 RECIPE_MAINTAINER_pn-libtool = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
@@ -2705,7 +2706,7 @@ RECIPE_STATUS_pn-quilt="green"
 RECIPE_LATEST_VERSION_pn-quilt="0.48"
 RECIPE_MAINTAINER_pn-quilt = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-tcl="red"
+RECIPE_STATUS_pn-tcl="green"
 RECIPE_LATEST_VERSION_pn-tcl="8.5.9"
 RECIPE_MAINTAINER_pn-tcl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
@@ -2713,7 +2714,7 @@ RECIPE_STATUS_pn-unifdef="green" # poky local source files
 RECIPE_LATEST_VERSION_pn-unifdef="2.6.18+git"
 RECIPE_MAINTAINER_pn-unifdef = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-gnu-config="green" # upgraded
+RECIPE_STATUS_pn-gnu-config="red" 
 RECIPE_LATEST_VERSION_pn-gnu-config="0.1+cvs20080123"
 DISTRO_PN_ALIAS_pn-gnu-config = "OpenedHand"
 RECIPE_MAINTAINER_pn-gnu-config = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -2726,7 +2727,7 @@ RECIPE_STATUS_pn-gmp="green"
 RECIPE_LATEST_VERSION_pn-gmp="5.0.1"
 RECIPE_MAINTAINER_pn-gmp = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-libmpc="red"
+RECIPE_STATUS_pn-libmpc="green"
 RECIPE_LATEST_VERSION_pn-libmpc="0.8.2"
 RECIPE_MAINTAINER_pn-libmpc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-libmpc = "Fedora=libmpc OpenSuse=libmpc2"
@@ -2739,10 +2740,6 @@ RECIPE_STATUS_pn-libconvert-asn1-perl="red" # 0.22 version does not build, so cr
 RECIPE_LATEST_VERSION_pn-libconvert-asn1-perl="0.22"
 RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-libtimedate-perl="red" 
-RECIPE_LATEST_VERSION_pn-libtimedate-perl="1.20"
-RECIPE_MAINTAINER_pn-ilibtimedate-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
-
 RECIPE_STATUS_pn-libxml-parser-perl="red" 
 RECIPE_LATEST_VERSION_pn-libxml-parser-perl="2.36"
 RECIPE_MAINTAINER_pn-libxml-parser-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -2753,7 +2750,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-cmake-native="2010/11/03"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-cmake-native="4 month"
 RECIPE_MAINTAINER_pn-cmake-native = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-m4="red" 
+RECIPE_STATUS_pn-m4="green" 
 RECIPE_LATEST_VERSION_pn-m4="1.4.15"
 RECIPE_MAINTAINER_pn-m4="Nitin A Kamble <nitin.a.kamble@intel.com>"
 RECIPE_COMMENTS_pn-m4= "Dongxiao Xu <dongxiao.xu@intel.com> will own GPLv2 m4"
-- 
1.7.2.2


