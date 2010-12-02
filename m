Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6FC6B4C803A5
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 07:50:38 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Dec 2010 05:50:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="356079745"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 05:50:37 -0800
Message-Id: <3ce09de02b22a1b7fcd7ec51486917e2087a0b7c.1291296360.git.lei.mei@intel.com>
In-Reply-To: <cover.1291296360.git.lei.mei@intel.com>
References: <cover.1291296360.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 2 Dec 2010 18:59:47 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/8] initramfs-live-install:Add license checksum to bb file
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
X-List-Received-Date: Thu, 02 Dec 2010 13:50:38 -0000

Add COPYING.MIT file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../initrdscripts/initramfs-live-install_1.0.bb    |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb b/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
index b15621b..b3a16bd 100644
--- a/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
+++ b/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
@@ -1,6 +1,6 @@
 DESCRIPTON = "A live image init script"
 LICENSE = "MIT"
-
+LIC_FILES_CHKSUM = "file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 SRC_URI = "file://init-install.sh"
 
 PR = "r3"
-- 
1.6.3.3


