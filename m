Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2DB094C80580
	for <poky@yoctoproject.org>; Sat, 14 May 2011 22:36:58 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 May 2011 20:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,368,1301900400"; d="scan'208";a="436256183"
Received: from unknown (HELO localhost) ([10.255.12.105])
	by azsmga001.ch.intel.com with ESMTP; 14 May 2011 20:36:53 -0700
Message-Id: <63f535fa0a8d743c95f88ccbd7aca83d1463c198.1305415455.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305415455.git.tom.zanussi@intel.com>
References: <cover.1305415455.git.tom.zanussi@intel.com>
Old-Date: Sat, 14 May 2011 13:42:08 -0500
Date: Sat, 14 May 2011 22:36:13 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 3/4] fishriver: remove custom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Sun, 15 May 2011 03:36:58 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

PACKAGE_EXTRA_ARCHS in the conf file gets overwritten by the tune-atom
include following it, preventing the atom BASE_PACKAGE_ARCH from being
included in the final PACKAGE_ARCHS and causing do_rootfs to fail.
Remove the atom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS in the conf
file and allow the values in tune-atom to be used as intended.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fishriver/conf/machine/fishriver.conf |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index a88c205..2c81a79 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -5,12 +5,9 @@
 # i.e. Z530/E660 + EG20T
 
 TARGET_ARCH = "i586"
-PACKAGE_EXTRA_ARCHS = "x86 atom"
 
 include conf/machine/include/tune-atom.inc
 
-BASE_PACKAGE_ARCH="atom"
-
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
                     acpi serial usbgadget"
 
-- 
1.7.0.4


