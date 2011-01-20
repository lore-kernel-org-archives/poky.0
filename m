Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 314334C81110
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 03:30:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="594758372"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pfqko-0001xw-P3; Thu, 20 Jan 2011 17:24:30 +0800
Message-Id: <d2601d154d4f52788d5f5c3327afed252cf9dd5e.1295515302.git.qing.he@intel.com>
In-Reply-To: <cover.1295515302.git.qing.he@intel.com>
References: <cover.1295515302.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 20 Jan 2011 14:01:08 +0800
Date: Thu, 20 Jan 2011 17:24:30 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/7] coreutils: upgrade to version 8.9
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
X-List-Received-Date: Thu, 20 Jan 2011 09:30:27 -0000

from 8.5

coreutils now depends on gmp

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    8 +++++---
 .../{coreutils_8.5.bb => coreutils_8.9.bb}         |    9 +++++----
 2 files changed, 10 insertions(+), 7 deletions(-)
 rename meta/recipes-core/coreutils/{coreutils_8.5.bb => coreutils_8.9.bb} (90%)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 0256ef0..be37b76 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1022,10 +1022,12 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-shadow = "2 months"
 RECIPE_LATEST_RELEASE_DATE_pn-shadow = "07/2009"
 RECIPE_COMMENTS_pn-formfactor = ""
 
-RECIPE_STATUS_pn-coreutils = "red"
-RECIPE_LAST_UPDATE_pn-coreutils = "Aug 26, 2010"
+RECIPE_STATUS_pn-coreutils = "green"
+RECIPE_LAST_UPDATE_pn-coreutils = "Jan 20, 2011"
 RECIPE_MAINTAINER_pn-coreutils = "Qing He <qing.he@intel.com>"
-RECIPE_LATEST_VERSION_pn-coreutils = "8.5"
+RECIPE_INTEL_SECTION_pn-coreutils = "base utils"
+RECIPE_LATEST_VERSION_pn-coreutils = "8.9"
+RECIPE_LATEST_RELEASE_DATE_pn-coreutils = "01/2011"
 
 RECIPE_STATUS_pn-libuser = "green"
 RECIPE_LAST_UPDATE_pn-libuser = "Nov 19, 2010"
diff --git a/meta/recipes-core/coreutils/coreutils_8.5.bb b/meta/recipes-core/coreutils/coreutils_8.9.bb
similarity index 90%
rename from meta/recipes-core/coreutils/coreutils_8.5.bb
rename to meta/recipes-core/coreutils/coreutils_8.9.bb
index 3944e34..4b9a655 100644
--- a/meta/recipes-core/coreutils/coreutils_8.5.bb
+++ b/meta/recipes-core/coreutils/coreutils_8.9.bb
@@ -6,16 +6,17 @@ HOMEPAGE = "http://www.gnu.org/software/coreutils/"
 BUGTRACKER = "http://debbugs.gnu.org/coreutils"
 LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504\
-                    file://src/ls.c;startline=5;endline=16;md5=bb14ed3c4cda583abc85401304b5cd4e"
+                    file://src/ls.c;startline=5;endline=16;md5=e1a509558876db58fb6667ba140137ad"
 PR = "r0"
-DEPENDS = "perl-native"
+DEPENDS = "perl-native gmp"
+DEPENDS_virtclass-native = "perl-native gmp-native"
 
 inherit autotools gettext
 
 SRC_URI = "http://ftp.gnu.org/gnu/coreutils/${BP}.tar.gz"
 
-SRC_URI[md5sum] = "c1ffe586d001e87d66cd80c4536ee823"
-SRC_URI[sha256sum] = "dd243e2ac7d0ed203b170ecfb8299643779e7501fec2b45ae1cea8a450fa8ca0"
+SRC_URI[md5sum] = "36909ae68840d73a800120cf74af794a"
+SRC_URI[sha256sum] = "aa991fa4296b22ff929a31a5cb5528bb783c84cdef4503c4ff311cfbeaebf50a"
 
 # [ gets a special treatment and is not included in this
 bindir_progs = "base64 basename chcon cksum comm csplit cut dir dircolors dirname du \
-- 
1.7.0


