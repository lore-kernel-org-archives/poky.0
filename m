Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1FBD4C811C4
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:36:04 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Dec 2010 11:36:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="635384975"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by fmsmga002.fm.intel.com with ESMTP; 11 Dec 2010 11:36:03 -0800
Message-Id: <b0d0a2444490f8b17a386c791499c8179e715500.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 17:01:25 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 08/13] task-poky-clutter: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:36:05 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 meta/recipes-graphics/tasks/task-poky-clutter.bb |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/tasks/task-poky-clutter.bb b/meta/recipes-graphics/tasks/task-poky-clutter.bb
index 844fb90..5e54f15 100644
--- a/meta/recipes-graphics/tasks/task-poky-clutter.bb
+++ b/meta/recipes-graphics/tasks/task-poky-clutter.bb
@@ -4,6 +4,9 @@
 
 DESCRIPTION = "Clutter Tasks for OpenedHand Poky"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
 PR = "r3"
 
 PACKAGES = "\
-- 
1.7.1.1


