Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3FCF14C80ACD
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:23:53 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Apr 2011 03:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,217,1301900400"; d="scan'208";a="679464866"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2011 03:23:52 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QAg4a-0006GQ-Gm; Fri, 15 Apr 2011 18:16:20 +0800
Message-Id: <8a1fc420a35f9abea02904bf159ac292a9a053e1.1302862307.git.qing.he@intel.com>
In-Reply-To: <cover.1302862307.git.qing.he@intel.com>
References: <cover.1302862307.git.qing.he@intel.com>
Old-Date: Fri, 15 Apr 2011 13:32:49 +0800
Date: Fri, 15 Apr 2011 18:16:20 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 1/4] libexif: upgrade to 0.6.20
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
X-List-Received-Date: Fri, 15 Apr 2011 10:23:53 -0000

From: Qing He <qing.he@intel.com>

[YOCTO #977]

fixes CVE-2007-6351, CVE-2007-6352, CVE-2009-3895

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../{libexif_0.6.16.bb => libexif_0.6.20.bb}       |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-support/libexif/{libexif_0.6.16.bb => libexif_0.6.20.bb} (61%)

diff --git a/meta/recipes-support/libexif/libexif_0.6.16.bb b/meta/recipes-support/libexif/libexif_0.6.20.bb
similarity index 61%
rename from meta/recipes-support/libexif/libexif_0.6.16.bb
rename to meta/recipes-support/libexif/libexif_0.6.20.bb
index d9d1c5e..f233d3f 100644
--- a/meta/recipes-support/libexif/libexif_0.6.16.bb
+++ b/meta/recipes-support/libexif/libexif_0.6.20.bb
@@ -2,12 +2,12 @@ DESCRIPTION = "Library to read the extended image information (EXIF) from JPEG p
 HOMEPAGE = "http://sourceforge.net/projects/libexif"
 SECTION = "libs"
 LICENSE = "LGPLv2.1"
-LIC_FILES_CHKSUM = "file://COPYING;md5=0448d3676bc0de00406af227d341a4d1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=243b725d71bb5df4a1e5920b344b86ad"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/libexif/libexif-${PV}.tar.bz2"
 
-SRC_URI[md5sum] = "deee153b1ded5a944ea05d041d959eca"
-SRC_URI[sha256sum] = "db6885d5e40e3a273ff8bb9708ab739c8ace3c5abdd75509eec8ea31a31aac43"
+SRC_URI[md5sum] = "19844ce6b5d075af16f0d45de1e8a6a3"
+SRC_URI[sha256sum] = "a772d20bd8fb9802d7f0d70fde6ac8872f87d0c66c52b0d14026dafcaa83d715"
 
 inherit autotools gettext
 
-- 
1.7.0


