Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E70034C80B77
	for <poky@yoctoproject.org>; Wed, 11 May 2011 04:14:07 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 May 2011 02:14:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,351,1301900400"; 
   d="scan'208";a="802641"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by fmsmga001.fm.intel.com with ESMTP; 11 May 2011 02:13:52 -0700
Message-Id: <a32f6fa8047a4928ec44ac6440667a4b06c8d174.1305105317.git.ke.yu@intel.com>
In-Reply-To: <cover.1305105317.git.ke.yu@intel.com>
References: <cover.1305105317.git.ke.yu@intel.com>
Old-Date: Wed, 11 May 2011 15:23:03 +0800
Date: Wed, 11 May 2011 17:20:08 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 7/8] xorg-app: update patch Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 09:14:08 -0000

From: Yu Ke <ke.yu@intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../xorg-app/xdpyinfo/disable-xkb.patch            |    2 ++
 .../xorg-app/xset/disable-xkb.patch                |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-app/xdpyinfo/disable-xkb.patch b/meta/recipes-graphics/xorg-app/xdpyinfo/disable-xkb.patch
index 24af21f..b10143d 100644
--- a/meta/recipes-graphics/xorg-app/xdpyinfo/disable-xkb.patch
+++ b/meta/recipes-graphics/xorg-app/xdpyinfo/disable-xkb.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- xdpyinfo-1.0.1/configure.ac.orig	2006-03-08 16:33:05.000000000 +0100
 +++ xdpyinfo-1.0.1/configure.ac	2006-03-08 16:41:59.000000000 +0100
 @@ -45,11 +45,15 @@
diff --git a/meta/recipes-graphics/xorg-app/xset/disable-xkb.patch b/meta/recipes-graphics/xorg-app/xset/disable-xkb.patch
index 2e728cf..97d13a3 100644
--- a/meta/recipes-graphics/xorg-app/xset/disable-xkb.patch
+++ b/meta/recipes-graphics/xorg-app/xset/disable-xkb.patch
@@ -1,5 +1,7 @@
 add "-disable-xkb" option
 
+Upstream-Status: Pending
+
 Rebase for 1.2.1 by: Yu Ke <ke.yu@intel.com>
 
 diff --git a/configure.ac b/configure.ac
-- 
1.7.0.4


