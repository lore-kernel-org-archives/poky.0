Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 53BF14C811D5
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:36:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 07:36:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="577893253"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2010 07:35:59 -0800
Message-Id: <defefd079015e8fdf1a6a52c9e07ebfc695a5900.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 16:54:44 +0800
To: poky@yoctoproject.org
Subject: [PATCH 08/14] console-tools:Add license checksum and update the GPL information
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
X-List-Received-Date: Fri, 26 Nov 2010 15:36:00 -0000

Add COPYING.kbd file checksum to bb file and update the "GPL" to "GPLv2" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../console-tools/console-tools_0.3.2.bb           |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/console-tools/console-tools_0.3.2.bb b/meta/recipes-core/console-tools/console-tools_0.3.2.bb
index 02ca5b9..907bf27 100644
--- a/meta/recipes-core/console-tools/console-tools_0.3.2.bb
+++ b/meta/recipes-core/console-tools/console-tools_0.3.2.bb
@@ -1,5 +1,6 @@
 SECTION = "base"
-LICENSE = "GPL"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING.kbd;md5=9b2d91511d3d80d4d20ac6e6b0137fe9"
 SUMMARY = "Allows you to set-up and manipulate the Linux console."
 DESCRIPTION = "Provides tools that enable the set-up and manipulation of the linux console and console-font files."
 DEPENDS = "gettext"
-- 
1.6.3.3


