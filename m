Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64057E004E0
	for <poky@yoctoproject.org>; Thu, 15 Sep 2011 02:51:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Sep 2011 02:51:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,386,1312182000"; d="scan'208";a="51698898"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.100])
	by fmsmga001.fm.intel.com with ESMTP; 15 Sep 2011 02:51:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org,
	rpurdie@rpsys.net
Date: Thu, 15 Sep 2011 10:51:09 +0100
Message-Id: <ed958b1ebb8503d52aebf52e9d7fe4563be9d338.1316013940.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1316013940.git.paul.eggleton@linux.intel.com>
References: <cover.1316013940.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1316013940.git.paul.eggleton@linux.intel.com>
References: <cover.1316013940.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/3] qt4-x11-free: remove emenlow reference from meta-yocto bbappend
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
X-List-Received-Date: Thu, 15 Sep 2011 09:51:20 -0000

This is already in meta-emenlow within meta-intel.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend     |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend b/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
index e5911e3..0c948bc 100644
--- a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
+++ b/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
@@ -1,3 +1,2 @@
 QT_GLFLAGS_atom-pc = "-opengl"
 QT_GLFLAGS_mpc8315e-rdb = "-opengl"
-QT_GLFLAGS_emenlow = "-opengl"
-- 
1.7.4.1


