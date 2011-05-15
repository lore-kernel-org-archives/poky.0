Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42C0F4C800B6
	for <poky@yoctoproject.org>; Sat, 14 May 2011 22:36:56 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 May 2011 20:36:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,368,1301900400"; 
   d="scan'208";a="1808192"
Received: from unknown (HELO localhost) ([10.255.12.105])
	by fmsmga002.fm.intel.com with ESMTP; 14 May 2011 20:36:50 -0700
Message-Id: <92477bdb3d1f4a10cb30a261753cf959b52aab8a.1305415455.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305415455.git.tom.zanussi@intel.com>
References: <cover.1305415455.git.tom.zanussi@intel.com>
Old-Date: Sat, 14 May 2011 13:16:06 -0500
Date: Sat, 14 May 2011 22:36:10 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/4] crownbay: remove custom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Sun, 15 May 2011 03:36:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

PACKAGE_EXTRA_ARCHS in the conf file gets overwritten by the tune-atom
include following it, preventing the atom BASE_PACKAGE_ARCH from being
included in the final PACKAGE_ARCHS and causing do_rootfs to fail.
Remove the atom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS in the conf
file and allow the values in tune-atom to be used as intended.

Fixes [BUGID #986].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index b8f107b..bc09ada 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -5,12 +5,9 @@
 # i.e. E660 + EG20T
 
 TARGET_ARCH = "i586"
-PACKAGE_EXTRA_ARCHS = "x86 atom"
 
 include conf/machine/include/tune-atom.inc
 
-BASE_PACKAGE_ARCH="atom"
-
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
                     acpi serial usbgadget"
 
-- 
1.7.0.4


