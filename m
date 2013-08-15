Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B05FBE01575
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 05:06:41 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 15 Aug 2013 05:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,885,1367996400"; d="scan'208";a="282362992"
Received: from timevans-mobl.ger.corp.intel.com (HELO
	helios.ger.corp.intel.com) ([10.252.122.206])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Aug 2013 05:06:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 15 Aug 2013 13:06:30 +0100
Message-Id: <1376568390-3866-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] maintainers.inc: add entries for libav, x264 and yasm
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Aug 2013 12:06:41 -0000

These were recently added by me and I'm prepared to continue maintaining
them.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index d51ece9..ebd4d7a 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -277,6 +277,7 @@ RECIPE_MAINTAINER_pn-libarchive = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libart-lgpl = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libassuan = "Cristiana Voicu <cristiana.voicu@intel.com>"
 RECIPE_MAINTAINER_pn-libatomics-ops = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-libav = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libcap = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libcgroup = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libcheck = "Saul Wold <sgw@linux.intel.com>"
@@ -669,6 +670,7 @@ RECIPE_MAINTAINER_pn-wpa-supplicant = "Cristian Iorga <cristian.iorga@intel.com>
 RECIPE_MAINTAINER_pn-x11-common = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-x11perf = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-x11vnc = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
+RECIPE_MAINTAINER_pn-x264 = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-xauth = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xcb-proto = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xcb-util-image = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
@@ -722,6 +724,7 @@ RECIPE_MAINTAINER_pn-xvideo-tests = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-xvinfo = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xwininfo = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xz = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
+RECIPE_MAINTAINER_pn-yasm = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-zaurusd = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-zip = "Cristiana Voicu <cristiana.voicu@intel.com>"
 RECIPE_MAINTAINER_pn-zlib = "Cristiana Voicu <cristiana.voicu@intel.com>"
-- 
1.8.1.2


