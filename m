Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA08DE006BA
	for <poky@yoctoproject.org>; Tue, 15 Nov 2011 16:16:04 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Nov 2011 16:16:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,517,1315206000"; d="scan'208";a="75377951"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.12.41])
	by azsmga001.ch.intel.com with ESMTP; 15 Nov 2011 16:16:03 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 15 Nov 2011 16:16:02 -0800
Message-Id: <7c8386ea75beeecb76ba507a6d42cc78a23758e6.1321402302.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.1
In-Reply-To: <cover.1321402302.git.josh@linux.intel.com>
References: <cover.1321402302.git.josh@linux.intel.com>
In-Reply-To: <cover.1321402302.git.josh@linux.intel.com>
References: <cover.1321402302.git.josh@linux.intel.com>
Subject: [RFC PATCH 1/1] clutter: drop unneeded bbappends
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
X-List-Received-Date: Wed, 16 Nov 2011 00:16:04 -0000

The --with-flavour-glx option is the default in clutter.inc now

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../clutter/clutter-1.6_1.6.18.bbappend            |    4 ----
 .../clutter/clutter-1.8_1.8.0.bbappend             |    4 ----
 .../recipes-graphics/clutter/clutter_git.bbappend  |    4 ----
 3 files changed, 0 insertions(+), 12 deletions(-)
 delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
 delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend
 delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter_git.bbappend

diff --git a/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend b/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
deleted file mode 100644
index c7cc683..0000000
--- a/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-DEPENDS_atom-pc = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
-EXTRA_OECONF_atom-pc = "${BASE_CONF} --with-flavour=glx"
-PACKAGE_ARCH_atom-pc = "${MACHINE_ARCH}"
-
diff --git a/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend b/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend
deleted file mode 100644
index c7cc683..0000000
--- a/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-DEPENDS_atom-pc = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
-EXTRA_OECONF_atom-pc = "${BASE_CONF} --with-flavour=glx"
-PACKAGE_ARCH_atom-pc = "${MACHINE_ARCH}"
-
diff --git a/meta-yocto/recipes-graphics/clutter/clutter_git.bbappend b/meta-yocto/recipes-graphics/clutter/clutter_git.bbappend
deleted file mode 100644
index c7cc683..0000000
--- a/meta-yocto/recipes-graphics/clutter/clutter_git.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-DEPENDS_atom-pc = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
-EXTRA_OECONF_atom-pc = "${BASE_CONF} --with-flavour=glx"
-PACKAGE_ARCH_atom-pc = "${MACHINE_ARCH}"
-
-- 
1.7.7.1


