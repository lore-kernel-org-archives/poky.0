Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 546644C810FF
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 07:50:43 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Dec 2010 05:50:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="632399914"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2010 05:50:42 -0800
Message-Id: <cda5313065f4e62b4cc51b613e774e1a6cdbd89d.1291296360.git.lei.mei@intel.com>
In-Reply-To: <cover.1291296360.git.lei.mei@intel.com>
References: <cover.1291296360.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 2 Dec 2010 21:12:29 +0800
To: poky@yoctoproject.org
Subject: [PATCH 6/8] eee-acpi-scripts:Add license checksum and update the GPL information
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
X-List-Received-Date: Thu, 02 Dec 2010 13:50:43 -0000

Add COPYING file checksum to bb file and update the "GPL" to "GPLv3" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
index 4c26504..2964d9f 100644
--- a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
+++ b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
@@ -1,7 +1,7 @@
 SECTION = "base"
 DESCRIPTION = "eeePC specific ACPI scripts"
-LICENSE="GPL"
-
+LICENSE="GPLv3"
+LIC_FILES_CHKSUM = "file://debian/copyright;md5=a6bebed654f6106373451901a279bac7"
 PV = "0.0+git${SRCREV}"
 PR = "r3"
 
-- 
1.6.3.3


