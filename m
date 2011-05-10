Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAEC74C805AF
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:04 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 01:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231503"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:56:04 -0700
Message-Id: <7b1d6da561016cfe4f0f93ba8c097f084c4878ef.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 13:24:18 +0800
Date: Tue, 10 May 2011 17:01:33 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 08/39] ppp: add upstream status for ppp's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:05 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../ppp/ppp-2.4.5/cifdefroute.patch                |    2 ++
 .../ppp/ppp-2.4.5/enable-ipv6.patch                |    2 ++
 .../makefile-remove-hard-usr-reference.patch       |    2 ++
 .../ppp/ppp-2.4.5/makefile.patch                   |    2 ++
 .../ppp/ppp-2.4.5/pppd-resolv-varrun.patch         |    2 ++
 5 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/ppp/ppp-2.4.5/cifdefroute.patch b/meta/recipes-connectivity/ppp/ppp-2.4.5/cifdefroute.patch
index 6473a08..db4dbc2 100644
--- a/meta/recipes-connectivity/ppp/ppp-2.4.5/cifdefroute.patch
+++ b/meta/recipes-connectivity/ppp/ppp-2.4.5/cifdefroute.patch
@@ -2,6 +2,8 @@ This patch comes from OpenEmbedded.
 The original patch is from Debian / SuSE to implement replacedefaultroute
 Rebased it to fit ppp-2.4.5. Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [debian/suse patches]
+
 diff -urN ppp-2.4.5-orig/pppd/ipcp.c ppp-2.4.5/pppd/ipcp.c
 --- ppp-2.4.5-orig/pppd/ipcp.c	2010-06-30 15:51:12.050166398 +0800
 +++ ppp-2.4.5/pppd/ipcp.c	2010-06-30 16:40:00.478716855 +0800
diff --git a/meta/recipes-connectivity/ppp/ppp-2.4.5/enable-ipv6.patch b/meta/recipes-connectivity/ppp/ppp-2.4.5/enable-ipv6.patch
index daa7f2e..e5fc3f4 100644
--- a/meta/recipes-connectivity/ppp/ppp-2.4.5/enable-ipv6.patch
+++ b/meta/recipes-connectivity/ppp/ppp-2.4.5/enable-ipv6.patch
@@ -1,5 +1,7 @@
 The patch comes from OpenEmbedded
 
+Upstream-Status: Inappropriate [enable feature]
+
 --- ppp-2.4.3/pppd/Makefile.linux.orig	2005-10-28 21:07:40.396359250 +0100
 +++ ppp-2.4.3/pppd/Makefile.linux	2005-10-28 21:07:54.217223000 +0100
 @@ -62,7 +62,7 @@
diff --git a/meta/recipes-connectivity/ppp/ppp-2.4.5/makefile-remove-hard-usr-reference.patch b/meta/recipes-connectivity/ppp/ppp-2.4.5/makefile-remove-hard-usr-reference.patch
index 9ba8688..8cc354a 100644
--- a/meta/recipes-connectivity/ppp/ppp-2.4.5/makefile-remove-hard-usr-reference.patch
+++ b/meta/recipes-connectivity/ppp/ppp-2.4.5/makefile-remove-hard-usr-reference.patch
@@ -1,6 +1,8 @@
 The patch comes from OpenEmbedded.
 Rebased for ppp-2.4.5. Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 diff -urN ppp-2.4.5-orig/pppd/Makefile.linux ppp-2.4.5/pppd/Makefile.linux
 --- ppp-2.4.5-orig/pppd/Makefile.linux	2010-06-30 15:51:12.043682063 +0800
 +++ ppp-2.4.5/pppd/Makefile.linux	2010-06-30 17:08:21.806363042 +0800
diff --git a/meta/recipes-connectivity/ppp/ppp-2.4.5/makefile.patch b/meta/recipes-connectivity/ppp/ppp-2.4.5/makefile.patch
index 94af5af..2d09baf 100644
--- a/meta/recipes-connectivity/ppp/ppp-2.4.5/makefile.patch
+++ b/meta/recipes-connectivity/ppp/ppp-2.4.5/makefile.patch
@@ -1,6 +1,8 @@
 The patch comes from OpenEmbedded
 Rebased for ppp-2.4.5. Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 diff -ruN ppp-2.4.5-orig/chat/Makefile.linux ppp-2.4.5/chat/Makefile.linux
 --- ppp-2.4.5-orig/chat/Makefile.linux	2010-06-30 15:51:12.050166398 +0800
 +++ ppp-2.4.5/chat/Makefile.linux	2010-06-30 15:51:30.450118446 +0800
diff --git a/meta/recipes-connectivity/ppp/ppp-2.4.5/pppd-resolv-varrun.patch b/meta/recipes-connectivity/ppp/ppp-2.4.5/pppd-resolv-varrun.patch
index c4e61fd..a72414f 100644
--- a/meta/recipes-connectivity/ppp/ppp-2.4.5/pppd-resolv-varrun.patch
+++ b/meta/recipes-connectivity/ppp/ppp-2.4.5/pppd-resolv-varrun.patch
@@ -1,6 +1,8 @@
 The patch comes from OpenEmbedded
 Rebased for ppp-2.4.5. Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [embedded specific]
+
 diff -ruN ppp-2.4.5-orig/pppd/ipcp.c ppp-2.4.5/pppd/ipcp.c
 --- ppp-2.4.5-orig/pppd/ipcp.c	2010-06-30 15:51:12.050166398 +0800
 +++ ppp-2.4.5/pppd/ipcp.c	2010-06-30 17:02:33.930393283 +0800
-- 
1.7.1


