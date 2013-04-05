Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A408DE0154E
	for <poky@yoctoproject.org>; Fri,  5 Apr 2013 12:00:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Apr 2013 11:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,416,1363158000"; d="scan'208";a="313019419"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 05 Apr 2013 12:00:06 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Fri,  5 Apr 2013 12:02:23 -0700
Message-Id: <ec31660cfa91feb98f0111a9b391ac8f560b6150.1365188372.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1365188372.git.dvhart@linux.intel.com>
References: <cover.1365188372.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1365188372.git.dvhart@linux.intel.com>
References: <cover.1365188372.git.dvhart@linux.intel.com>
Subject: [PATCH 1/2] linux-yocto-tiny: Add 3.8.4 recipe
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
X-List-Received-Date: Fri, 05 Apr 2013 19:00:15 -0000

Bring linux-yocto-tiny up to the latest linux-yocto 3.8.4 version.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb |   26 +++++++++++++++++++++
 1 files changed, 26 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb

diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb
new file mode 100644
index 0000000..07b620c
--- /dev/null
+++ b/meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb
@@ -0,0 +1,26 @@
+require recipes-kernel/linux/linux-yocto.inc
+
+# We need lzma (as CONFIG_KERNEL_LZMA=y)
+DEPENDS += "xz-native"
+
+KBRANCH_DEFAULT = "standard/tiny/base"
+KBRANCH = "${KBRANCH_DEFAULT}"
+LINUX_KERNEL_TYPE = "tiny"
+KCONFIG_MODE = "--allnoconfig"
+
+LINUX_VERSION ?= "3.8.4"
+
+KMETA = "meta"
+
+SRCREV_machine ?= "42ddf06111efe45f3c36012d5a04a1eeb9781f42"
+SRCREV_meta ?= "f86199dd4c142fae61517a993b3f7162bb6d4f94"
+
+PR = "${INC_PR}.0"
+PV = "${LINUX_VERSION}+git${SRCPV}"
+
+SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.8.git;protocol=git;bareclone=1;branch=${KBRANCH},meta;name=machine,meta"
+
+COMPATIBLE_MACHINE = "(qemux86)"
+
+# Functionality flags
+KERNEL_FEATURES = ""
-- 
1.7.5.4


