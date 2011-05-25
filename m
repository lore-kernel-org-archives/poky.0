Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65A2C4C806F9
	for <poky@yoctoproject.org>; Wed, 25 May 2011 05:44:15 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2011 03:44:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,266,1304319600"; 
   d="scan'208";a="1292547"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.162])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2011 03:44:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 May 2011 11:42:54 +0100
Message-Id: <32252dad9a1b922a47d02a95c91afe25f97019ca.1306319204.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1306319204.git.paul.eggleton@linux.intel.com>
References: <cover.1306319204.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1306319204.git.paul.eggleton@linux.intel.com>
References: <cover.1306319204.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/4] qt4: remove obsolete 4.6.3 bbappend from meta-yocto
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
 .../recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend     |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)
 delete mode 100644 meta-yocto/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend

diff --git a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend b/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
deleted file mode 100644
index 076ade2..0000000
--- a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-QT_GLFLAGS_atom-pc = "-opengl"
-
-- 
1.7.4.1


