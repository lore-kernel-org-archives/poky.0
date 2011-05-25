Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05D844C80A72
	for <poky@yoctoproject.org>; Wed, 25 May 2011 05:44:15 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2011 03:44:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,266,1304319600"; 
   d="scan'208";a="1292561"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.162])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2011 03:44:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 May 2011 11:42:55 +0100
Message-Id: <f3fb72ece81e038a43bed0b418f73a24521e8661.1306319204.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1306319204.git.paul.eggleton@linux.intel.com>
References: <cover.1306319204.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1306319204.git.paul.eggleton@linux.intel.com>
References: <cover.1306319204.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 3/4] task-poky-sdk-gmae: rename bbappends to task-core-sdk-gmae in meta-yocto
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
X-List-Received-Date: Wed, 25 May 2011 10:44:16 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 ...k-gmae.bbappend => task-core-sdk-gmae.bbappend} |    0
 ... task-core-standalone-gmae-sdk-target.bbappend} |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-gnome/tasks/{task-poky-sdk-gmae.bbappend => task-core-sdk-gmae.bbappend} (100%)
 rename meta-yocto/recipes-gnome/tasks/{task-poky-standalone-gmae-sdk-target.bbappend => task-core-standalone-gmae-sdk-target.bbappend} (100%)

diff --git a/meta-yocto/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend b/meta-yocto/recipes-gnome/tasks/task-core-sdk-gmae.bbappend
similarity index 100%
rename from meta-yocto/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend
rename to meta-yocto/recipes-gnome/tasks/task-core-sdk-gmae.bbappend
diff --git a/meta-yocto/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend b/meta-yocto/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend
similarity index 100%
rename from meta-yocto/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend
rename to meta-yocto/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend
-- 
1.7.4.1


