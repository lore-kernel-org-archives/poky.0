Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAD694C811F7
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:28 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Nov 2010 02:07:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="576651208"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 23 Nov 2010 02:07:27 -0800
Message-Id: <ec36175ae334f9c6f7cb028452629418cdebf46f.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:30:26 +0800
To: poky@yoctoproject.org
Subject: [PATCH 15/25] acpid: Add license checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:29 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-bsp/acpid/acpid_1.0.6.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-bsp/acpid/acpid_1.0.6.bb b/meta/recipes-bsp/acpid/acpid_1.0.6.bb
index 364aa82..a95cb54 100644
--- a/meta/recipes-bsp/acpid/acpid_1.0.6.bb
+++ b/meta/recipes-bsp/acpid/acpid_1.0.6.bb
@@ -1,3 +1,3 @@
 require acpid.inc
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
 PR = "r5"
-- 
1.6.3.3


