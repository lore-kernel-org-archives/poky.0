Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id F05C64C800A2
	for <poky@yoctoproject.org>; Tue, 19 Apr 2011 19:02:47 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Apr 2011 17:02:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,242,1301900400"; d="scan'208";a="681245476"
Received: from unknown (HELO localhost) ([10.255.12.227])
	by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2011 17:02:46 -0700
Message-Id: <d8007bad296ddeefcaefe474dea655e0c4059621.1303257574.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1303257574.git.dvhart@linux.intel.com>
References: <cover.1303257574.git.dvhart@linux.intel.com>
Old-Date: Tue, 19 Apr 2011 16:54:38 -0700
Date: Tue, 19 Apr 2011 17:02:47 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/1] kernel-rt: use correct branch names and new git SRC_REV format
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
X-List-Received-Date: Wed, 20 Apr 2011 00:02:48 -0000

From: Darren Hart <dvhart@linux.intel.com>

The RT kernel recipe was not updated to reflect the new git SRC_REV format nor
to take advantage of the recent updates made to the underlying infrastructure.
These fixes bring it up to date with the other linux-yocto* recipes and fix
various build issues people were seeing.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb |   12 +++++-------
 1 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb b/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
index 547f8fe..cba1321 100644
--- a/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
+++ b/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
@@ -8,7 +8,10 @@ LINUX_VERSION ?= "2.6.34"
 LINUX_KERNEL_TYPE = "preempt_rt"
 LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE_EXTENSION}"
 
-PR = "r0"
+KMETA = wrs_meta
+KBRANCH = ${KMACHINE}-${LINUX_KERNEL_TYPE}
+
+PR = "r1"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 SRCREV_FORMAT = "meta_machine"
 
@@ -18,16 +21,11 @@ COMPATIBLE_MACHINE = "(qemux86-64|atom-pc)"
 python __anonymous () {
     import bb, re, string
 
-    rev = bb.data.getVar("SRCREV_machine", d, 1)
-    if rev == "standard":
-        bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
-
     kerntype = string.replace(bb.data.expand("${LINUX_KERNEL_TYPE}", d), "_", "-")
     bb.data.setVar("LINUX_KERNEL_TYPE_EXTENSION", kerntype, d)
 }
 
-SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
-           git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
+SRC_URI = "git://git.yoctoproject.org/linux-2.6-windriver.git;protocol=git;nocheckout=1;branch=${KBRANCH},wrs_meta;name=machine,meta"
 
 # Functionality flags
 KERNEL_REVISION_CHECKING ?= "t"
-- 
1.7.1


