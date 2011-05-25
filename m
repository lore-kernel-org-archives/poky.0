Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E21944C805BB
	for <poky@yoctoproject.org>; Wed, 25 May 2011 05:44:14 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2011 03:43:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,266,1304319600"; 
   d="scan'208";a="1292544"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.162])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2011 03:43:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 May 2011 11:42:53 +0100
Message-Id: <d93f1d05743293b4350fa8ee3c00a4bf941a0fd2.1306319204.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1306319204.git.paul.eggleton@linux.intel.com>
References: <cover.1306319204.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1306319204.git.paul.eggleton@linux.intel.com>
References: <cover.1306319204.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/4] clutter: remove obsolete 1.4 bbappend from meta-yocto
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
X-List-Received-Date: Wed, 25 May 2011 10:44:15 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../clutter/clutter-1.4_1.4.2.bbappend             |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)
 delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend

diff --git a/meta-yocto/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend b/meta-yocto/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
deleted file mode 100644
index c7cc683..0000000
--- a/meta-yocto/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-DEPENDS_atom-pc = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
-EXTRA_OECONF_atom-pc = "${BASE_CONF} --with-flavour=glx"
-PACKAGE_ARCH_atom-pc = "${MACHINE_ARCH}"
-
-- 
1.7.4.1


