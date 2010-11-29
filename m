Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42C964C80039
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 01:19:14 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2010 23:19:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,275,1288594800"; d="scan'208";a="578486511"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2010 23:19:12 -0800
Message-Id: <4fd452f537322d976712ca047b894682e4a0fc99.1291014682.git.lei.mei@intel.com>
In-Reply-To: <cover.1291014682.git.lei.mei@intel.com>
References: <cover.1291014682.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Mon, 29 Nov 2010 15:06:20 +0800
To: poky@yoctoproject.org
Subject: [PATCH 4/6] eee-acpi-scripts:Add license checksum 'n/a' for this local recipe
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
X-List-Received-Date: Mon, 29 Nov 2010 07:19:14 -0000

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
index 4c26504..1c893da 100644
--- a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
+++ b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
@@ -1,7 +1,7 @@
 SECTION = "base"
 DESCRIPTION = "eeePC specific ACPI scripts"
 LICENSE="GPL"
-
+LIC_FILES_CHKSUM = "n/a"
 PV = "0.0+git${SRCREV}"
 PR = "r3"
 
-- 
1.6.3.3


