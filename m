Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3DED94C80A8C
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 03:10:15 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jun 2011 01:10:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,392,1304319600"; d="scan'208";a="15440787"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by azsmga001.ch.intel.com with ESMTP; 20 Jun 2011 01:10:13 -0700
From: Dexuan Cui <dexuan.cui@intel.com>
To: poky@yoctoproject.org
Date: Mon, 20 Jun 2011 16:09:56 +0800
Message-Id: <a9896afbdcdcd80eac44529eefdbab487a9200d0.1308553185.git.dexuan.cui@intel.com>
X-Mailer: git-send-email 1.7.2
In-Reply-To: <cover.1308553185.git.dexuan.cui@intel.com>
References: <cover.1308553185.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1308553185.git.dexuan.cui@intel.com>
References: <cover.1308553185.git.dexuan.cui@intel.com>
Subject: [PATCH 1/1][meta-intel]emenlow: fix some .bbappend files' names: poky -> core, etc.
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
X-List-Received-Date: Mon, 20 Jun 2011 08:10:15 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...k-gmae.bbappend => task-core-sdk-gmae.bbappend} |    0
 ... task-core-standalone-gmae-sdk-target.bbappend} |    0
 ..._4.7.2.bbappend => qt4-x11-free_4.7.3.bbappend} |    0
 3 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-emenlow/recipes-gnome/tasks/{task-poky-sdk-gmae.bbappend => task-core-sdk-gmae.bbappend} (100%)
 rename meta-emenlow/recipes-gnome/tasks/{task-poky-standalone-gmae-sdk-target.bbappend => task-core-standalone-gmae-sdk-target.bbappend} (100%)
 rename meta-emenlow/recipes-qt/qt4/{qt4-x11-free_4.7.2.bbappend => qt4-x11-free_4.7.3.bbappend} (100%)

diff --git a/meta-emenlow/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend b/meta-emenlow/recipes-gnome/tasks/task-core-sdk-gmae.bbappend
similarity index 100%
rename from meta-emenlow/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend
rename to meta-emenlow/recipes-gnome/tasks/task-core-sdk-gmae.bbappend
diff --git a/meta-emenlow/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend b/meta-emenlow/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend
similarity index 100%
rename from meta-emenlow/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend
rename to meta-emenlow/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend
diff --git a/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend b/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
similarity index 100%
rename from meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend
rename to meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
-- 
1.7.1


