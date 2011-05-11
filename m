Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 613534C80A53
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:27 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 23:29:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="434107403"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 23:29:26 -0700
Message-Id: <01f4a203a856ed6a5709274c3cbe1aee19f007de.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 11:31:57 +0800
Date: Wed, 11 May 2011 14:26:50 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 04/24] gnome-vfs: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:27 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../gnome/gnome-vfs-2.24.4/gconftool-lossage.patch |    2 ++
 .../gnome-vfs-2.24.4/gnome-vfs-no-kerberos.patch   |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-gnome/gnome/gnome-vfs-2.24.4/gconftool-lossage.patch b/meta/recipes-gnome/gnome/gnome-vfs-2.24.4/gconftool-lossage.patch
index 3dbc130..0f52136 100644
--- a/meta/recipes-gnome/gnome/gnome-vfs-2.24.4/gconftool-lossage.patch
+++ b/meta/recipes-gnome/gnome/gnome-vfs-2.24.4/gconftool-lossage.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 --- gnome-vfs-2.6.0/configure.in~	2004-03-22 12:36:23.000000000 +0000
 +++ gnome-vfs-2.6.0/configure.in	2004-06-07 16:04:34.000000000 +0100
 @@ -154,7 +154,7 @@
diff --git a/meta/recipes-gnome/gnome/gnome-vfs-2.24.4/gnome-vfs-no-kerberos.patch b/meta/recipes-gnome/gnome/gnome-vfs-2.24.4/gnome-vfs-no-kerberos.patch
index e25ecdd..dabec32 100644
--- a/meta/recipes-gnome/gnome/gnome-vfs-2.24.4/gnome-vfs-no-kerberos.patch
+++ b/meta/recipes-gnome/gnome/gnome-vfs-2.24.4/gnome-vfs-no-kerberos.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 removes kerberos completely to avoid conflicts with installed kerberos
 --- configure.in.orig	2007-01-05 19:42:26.418541610 +0200
 +++ configure.in	2007-01-05 19:42:56.604261797 +0200
-- 
1.7.2


