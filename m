Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B07D74C811D5
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:35:59 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Nov 2010 07:35:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="353579542"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 26 Nov 2010 07:35:56 -0800
Message-Id: <c04504281d083101f9af16fc6b0dbac3fb949d5c.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 16:07:14 +0800
To: poky@yoctoproject.org
Subject: [PATCH 06/14] consolekit:Add license checksum to bb file
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
X-List-Received-Date: Fri, 26 Nov 2010 15:35:59 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../recipes-support/consolekit/consolekit_0.3.0.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-support/consolekit/consolekit_0.3.0.bb b/meta/recipes-support/consolekit/consolekit_0.3.0.bb
index fcd735d..0d0dfea 100644
--- a/meta/recipes-support/consolekit/consolekit_0.3.0.bb
+++ b/meta/recipes-support/consolekit/consolekit_0.3.0.bb
@@ -1,5 +1,6 @@
 DESCRIPTION = "ConsoleKit is a framework for defining and tracking users, login sessions, and seats."
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 DEPENDS = "dbus"
 
 inherit gnome
-- 
1.6.3.3


