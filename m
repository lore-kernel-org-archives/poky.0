Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84FA44C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:19:27 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Mar 2011 17:19:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="667655543"
Received: from unknown (HELO localhost) ([10.255.12.146])
	by fmsmga002.fm.intel.com with ESMTP; 15 Mar 2011 17:19:27 -0700
Message-Id: <9ebc78fd215d51d427c0b30cadd392c198989ab4.1300234408.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1300234408.git.dvhart@linux.intel.com>
References: <cover.1300234408.git.dvhart@linux.intel.com>
Old-Date: Tue, 15 Mar 2011 16:16:30 -0700
Date: Tue, 15 Mar 2011 17:19:15 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/2] n450: add formfactor config
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
X-List-Received-Date: Wed, 16 Mar 2011 00:19:27 -0000

From: Darren Hart <dvhart@linux.intel.com>

Fixes [YOCTO #869] (1 of 2)

Add a formfactor config for the n450 to include a keyboard and no
touchscreen. Without defining HAVE_TOUCHSCREEN=0, the default was
to set it to 1, and the matchbox session disables the cursor in
the case of a touchscreen device.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 .../formfactor/formfactor/n450/machconfig          |    3 +++
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +++
 2 files changed, 6 insertions(+), 0 deletions(-)
 create mode 100644 meta-n450/recipes-bsp/formfactor/formfactor/n450/machconfig
 create mode 100644 meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend

diff --git a/meta-n450/recipes-bsp/formfactor/formfactor/n450/machconfig b/meta-n450/recipes-bsp/formfactor/formfactor/n450/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-n450/recipes-bsp/formfactor/formfactor/n450/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100644
index 0000000..4a41d48
--- /dev/null
+++ b/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+ 
+PRINC = "1"
-- 
1.7.1


