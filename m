Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 25CE14C811F9
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 10:46:50 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 08:46:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="686681067"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 08:46:49 -0800
Message-Id: <5eb6651b77d3d86db55711441de62b33eb1e73d7.1292258655.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1292258655.git.nitin.a.kamble@intel.com>
References: <cover.1292258655.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Tue, 7 Dec 2010 16:35:50 -0800
To: poky@yoctoproject.org
Subject: [PATCH 6/6] distro_tracking: update status for upgraded recipes
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
X-List-Received-Date: Mon, 13 Dec 2010 16:46:50 -0000

distro_tracking: chaning owner of python-pygtk
As the python-pygtk's version is tightly connected to the gtk+ recipe version.
changing the recipe ower to Edwin who is the gtk+ recipe owner.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   21 +++++++++----------
 1 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 7a88447..5ba28d1 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -79,7 +79,7 @@ RECIPE_STATUS_pn-moblin-proto = "red"
 RECIPE_LATEST_VERIONS_pn-moblin-proto = "check"
 RECIPE_MAINTAINER_pn-moblin-proto = "Dexuan Cui <dexuan.cui@intel.com>"
 
-RECIPE_STATUS_pn-patch = "red"
+RECIPE_STATUS_pn-patch = "green"
 RECIPE_LATEST_VERIONS_pn-patch = "2.6.1"
 RECIPE_MAINTAINER_pn-patch = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
@@ -2602,7 +2602,7 @@ RECIPE_STATUS_pn-gcc="green"
 RECIPE_LATEST_VERSION_pn-gcc="4.5.1"
 RECIPE_MAINTAINER_pn-gcc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-autoconf="red" 
+RECIPE_STATUS_pn-autoconf="green" 
 RECIPE_LATEST_VERSION_pn-autoconf="2.68"
 RECIPE_MAINTAINER_pn-autoconf = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
@@ -2631,8 +2631,7 @@ RECIPE_STATUS_pn-flex="green"
 RECIPE_LATEST_VERSION_pn-flex="2.5.35"
 RECIPE_MAINTAINER_pn-flex = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-fstests="red"  
-RECIPE_NO_UPDATE_REASON_pn-fstests="svnr266 is poky default"
+RECIPE_STATUS_pn-fstests="green"  
 RECIPE_LATEST_VERSION_pn-fstests="0.0+svnr426"
 DISTRO_PN_ALIAS_pn-fstests = "OpenedHand"
 RECIPE_MAINTAINER_pn-fstests = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -2695,15 +2694,15 @@ RECIPE_STATUS_pn-python-pycurl="green"
 RECIPE_LATEST_VERSION_pn-python-pycurl="7.19.0"
 RECIPE_MAINTAINER_pn-python-pycurl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-python-pygobject="red"
+RECIPE_STATUS_pn-python-pygobject="green"
 DISTRO_PN_ALIAS_pn-python-pygobject = "Meego=pygobject2 Fedora=pygobject2 Ubuntu=pygobject Debian=pygobject"
-RECIPE_LATEST_VERSION_pn-python-pygobject="2.21.1"
+RECIPE_LATEST_VERSION_pn-python-pygobject="2.27.0"
 RECIPE_MAINTAINER_pn-python-pygobject = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-python-pygtk="red"
 DISTRO_PN_ALIAS_pn-python-pygtk = "Debian=python-gtk2 Fedora=pygtk2 OpenSuSE=python-gtk"
 RECIPE_LATEST_VERSION_pn-python-pygtk="2.17.0"
-RECIPE_MAINTAINER_pn-python-pygtk = "Nitin A Kamble <nitin.a.kamble@intel.com>"
+RECIPE_MAINTAINER_pn-python-pygtk = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-python-pyrex="green"
 RECIPE_LATEST_VERSION_pn-python-pyrex="0.9.9"
@@ -2734,8 +2733,8 @@ RECIPE_STATUS_pn-unifdef="green" # poky local source files
 RECIPE_LATEST_VERSION_pn-unifdef="2.6.18+git"
 RECIPE_MAINTAINER_pn-unifdef = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-gnu-config="red" 
-RECIPE_LATEST_VERSION_pn-gnu-config="0.1+cvs20080123"
+RECIPE_STATUS_pn-gnu-config="green" 
+RECIPE_LATEST_VERSION_pn-gnu-config="0.0+git3155524"
 DISTRO_PN_ALIAS_pn-gnu-config = "OpenedHand"
 RECIPE_MAINTAINER_pn-gnu-config = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
@@ -2756,11 +2755,11 @@ RECIPE_STATUS_pn-byacc="green"
 RECIPE_LATEST_VERSION_pn-byacc="20100610"
 RECIPE_MAINTAINER_pn-byacc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-libconvert-asn1-perl="red" # 0.22 version does not build, so created a recipe for version 0.21
+RECIPE_STATUS_pn-libconvert-asn1-perl="green" # 0.22 version does not build, so created a recipe for version 0.21
 RECIPE_LATEST_VERSION_pn-libconvert-asn1-perl="0.22"
 RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-libxml-parser-perl="red" 
+RECIPE_STATUS_pn-libxml-parser-perl="green" 
 RECIPE_LATEST_VERSION_pn-libxml-parser-perl="2.36"
 RECIPE_MAINTAINER_pn-libxml-parser-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-- 
1.7.2.2


