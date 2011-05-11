Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BCDC4C81002
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:49 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 23:29:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; 
   d="scan'208";a="750780"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 23:29:48 -0700
Message-Id: <280f985d7081f9b15b8b6caa38b4aa3ab15fd110.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:45:00 +0800
Date: Wed, 11 May 2011 14:27:12 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 22/24] gnome-settings-daemon: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:49 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../gnome/gnome-settings-daemon/configurefix.patch |    2 ++
 .../gnome-settings-daemon/desktop-moblin.patch     |    2 ++
 ...-settings-daemon-2.24.0-catch-deviceadded.patch |    2 ++
 .../gnome-settings-daemon-fix-gthread.patch        |    2 ++
 .../gnome-settings-daemon/mojito-cleanup.patch     |    2 ++
 .../gnome/gnome-settings-daemon/mount-plugin.patch |    2 ++
 6 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch
index 01b4f64..892946f 100644
--- a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch
+++ b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: gnome-settings-daemon-2.26.1/configure.ac
 ===================================================================
 --- gnome-settings-daemon-2.26.1.orig/configure.ac	2009-09-16 22:57:31.000000000 +0100
diff --git a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.patch
index d3fd76c..b8f1661 100644
--- a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.patch
+++ b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 --- gnome-settings-daemon-2.26.1/data/gnome-settings-daemon.desktop.in.in~	2009-04-24 20:59:51.000000000 -0700
 +++ gnome-settings-daemon-2.26.1/data/gnome-settings-daemon.desktop.in.in	2009-04-24 20:59:51.000000000 -0700
 @@ -2,7 +2,7 @@
diff --git a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-2.24.0-catch-deviceadded.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-2.24.0-catch-deviceadded.patch
index 8e1d0ce..b9cf6e1 100644
--- a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-2.24.0-catch-deviceadded.patch
+++ b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-2.24.0-catch-deviceadded.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 ============================================================
  Listen for DeviceAdded in addition to DeviceEnabled
 
diff --git a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-fix-gthread.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-fix-gthread.patch
index d77063e..965da09 100644
--- a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-fix-gthread.patch
+++ b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-daemon-fix-gthread.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: gnome-settings-daemon-2.25.90/configure.ac
 ===================================================================
 --- gnome-settings-daemon-2.25.90.orig/configure.ac
diff --git a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.patch
index 1aff2d6..79f2871 100644
--- a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.patch
+++ b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 diff --git a/plugins/housekeeping/gsd-housekeeping-manager.c b/plugins/housekeeping/gsd-housekeeping-manager.c
 index f84cfad..e8f474a 100644
 --- a/plugins/housekeeping/gsd-housekeeping-manager.c
diff --git a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch
index 67f056b..25dc36e 100644
--- a/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch
+++ b/meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 diff --git a/configure.ac b/configure.ac
 index 135f2ce..ba737a5 100644
 --- a/configure.ac
-- 
1.7.2


