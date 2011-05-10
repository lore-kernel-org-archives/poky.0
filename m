Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C1F7B4C8090C
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:01 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 01:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="744945465"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 01:56:00 -0700
Message-Id: <8ea9620f1436a5f3d22e2fffcebee1e0d92805a8.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 13:16:31 +0800
Date: Tue, 10 May 2011 17:01:29 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 05/39] libgsmd: add upstream status for gsm's patches.
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
X-List-Received-Date: Tue, 10 May 2011 08:56:02 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gsm/files/0001-Introduce-ports.patch           |    2 ++
 ...ending-commands-before-restarting-the-mod.patch |    2 ++
 ...-segment-incoming-usock-data-into-packets.patch |    2 ++
 .../0004-Handle-read-and-write-return-values.patch |    2 ++
 .../gsm/files/0005-Add-ask-ds-option-forSMS.patch  |    2 ++
 .../gsm/files/024_sms-text-in-bracket.patch        |    2 ++
 .../gsm/files/025_sms-status-report.patch          |    2 ++
 ...027_phonebook-find-and-read-range-support.patch |    2 ++
 ...ell-phonebook-find-and-read-range-support.patch |    2 ++
 .../gsm/files/fix_machine_init.patch               |    2 ++
 .../gsm/files/install-ts-headers.patch             |    2 ++
 .../gsm/files/lgsm_send_fix_return_value.patch     |    2 ++
 12 files changed, 24 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/gsm/files/0001-Introduce-ports.patch b/meta/recipes-connectivity/gsm/files/0001-Introduce-ports.patch
index b3ba3cb..2a954d6 100644
--- a/meta/recipes-connectivity/gsm/files/0001-Introduce-ports.patch
+++ b/meta/recipes-connectivity/gsm/files/0001-Introduce-ports.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 From 516d67c679101d1503dbd4c0613bcd6ff1b604e4 Mon Sep 17 00:00:00 2001
 From: Andrzej Zaborowski <balrog@zabor.org>
 Date: Wed, 19 Sep 2007 14:03:28 +0200
diff --git a/meta/recipes-connectivity/gsm/files/0002-Flush-all-pending-commands-before-restarting-the-mod.patch b/meta/recipes-connectivity/gsm/files/0002-Flush-all-pending-commands-before-restarting-the-mod.patch
index 3683596..51d50b9 100644
--- a/meta/recipes-connectivity/gsm/files/0002-Flush-all-pending-commands-before-restarting-the-mod.patch
+++ b/meta/recipes-connectivity/gsm/files/0002-Flush-all-pending-commands-before-restarting-the-mod.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 From 1078f7aced63c6216bffe649930b97c9ccf9a16e Mon Sep 17 00:00:00 2001
 From: Andrzej Zaborowski <balrog@zabor.org>
 Date: Wed, 19 Sep 2007 14:04:50 +0200
diff --git a/meta/recipes-connectivity/gsm/files/0003-Correctly-segment-incoming-usock-data-into-packets.patch b/meta/recipes-connectivity/gsm/files/0003-Correctly-segment-incoming-usock-data-into-packets.patch
index 984acc9..87aaf6b 100644
--- a/meta/recipes-connectivity/gsm/files/0003-Correctly-segment-incoming-usock-data-into-packets.patch
+++ b/meta/recipes-connectivity/gsm/files/0003-Correctly-segment-incoming-usock-data-into-packets.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 From 8af1bb4a0d0df9baa80859c5f7f56cbd7634aded Mon Sep 17 00:00:00 2001
 From: Andrzej Zaborowski <balrog@zabor.org>
 Date: Wed, 19 Sep 2007 14:06:19 +0200
diff --git a/meta/recipes-connectivity/gsm/files/0004-Handle-read-and-write-return-values.patch b/meta/recipes-connectivity/gsm/files/0004-Handle-read-and-write-return-values.patch
index f5e7a79..84a4aa1 100644
--- a/meta/recipes-connectivity/gsm/files/0004-Handle-read-and-write-return-values.patch
+++ b/meta/recipes-connectivity/gsm/files/0004-Handle-read-and-write-return-values.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 From 421b0fa14fefbd13a455c20380fecddda616b41a Mon Sep 17 00:00:00 2001
 From: Andrzej Zaborowski <balrog@zabor.org>
 Date: Wed, 19 Sep 2007 18:30:36 +0200
diff --git a/meta/recipes-connectivity/gsm/files/0005-Add-ask-ds-option-forSMS.patch b/meta/recipes-connectivity/gsm/files/0005-Add-ask-ds-option-forSMS.patch
index e9f49bd..faf0e8a 100644
--- a/meta/recipes-connectivity/gsm/files/0005-Add-ask-ds-option-forSMS.patch
+++ b/meta/recipes-connectivity/gsm/files/0005-Add-ask-ds-option-forSMS.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 diff --git a/include/gsmd/usock.h b/include/gsmd/usock.h
 index 236ad78..66cdf48 100644
 --- a/include/gsmd/usock.h
diff --git a/meta/recipes-connectivity/gsm/files/024_sms-text-in-bracket.patch b/meta/recipes-connectivity/gsm/files/024_sms-text-in-bracket.patch
index 32a1ca3..3aa13df 100644
--- a/meta/recipes-connectivity/gsm/files/024_sms-text-in-bracket.patch
+++ b/meta/recipes-connectivity/gsm/files/024_sms-text-in-bracket.patch
@@ -9,6 +9,8 @@ The patch introduces SMS message text in bracket and fixes a NULL pointer
 reference on mailformed "ss" commands.
 
 Signed-off-by: Jim Huang <jserv@openmoko.org>
+
+Upstream-Status: Inappropriate [not used]
 ---
  src/util/shell.c |   32 ++++++++++++++++++++++++++------
  1 file changed, 26 insertions(+), 6 deletions(-)
diff --git a/meta/recipes-connectivity/gsm/files/025_sms-status-report.patch b/meta/recipes-connectivity/gsm/files/025_sms-status-report.patch
index 560e72e..a0f466a 100644
--- a/meta/recipes-connectivity/gsm/files/025_sms-status-report.patch
+++ b/meta/recipes-connectivity/gsm/files/025_sms-status-report.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 From: Erin Yueh <erin_yueh@openmoko.com>
 Subject: [PATCH] SMS status report
 
diff --git a/meta/recipes-connectivity/gsm/files/027_phonebook-find-and-read-range-support.patch b/meta/recipes-connectivity/gsm/files/027_phonebook-find-and-read-range-support.patch
index ea0f12d..c94e4b2 100644
--- a/meta/recipes-connectivity/gsm/files/027_phonebook-find-and-read-range-support.patch
+++ b/meta/recipes-connectivity/gsm/files/027_phonebook-find-and-read-range-support.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 From: Sean Chiang <sean_chiang@openmoko.com>
 Subject: [PATCH] Improvement for find and read phonebooks in gsmd
 
diff --git a/meta/recipes-connectivity/gsm/files/028_shell-phonebook-find-and-read-range-support.patch b/meta/recipes-connectivity/gsm/files/028_shell-phonebook-find-and-read-range-support.patch
index db07a5d..a531fa8 100644
--- a/meta/recipes-connectivity/gsm/files/028_shell-phonebook-find-and-read-range-support.patch
+++ b/meta/recipes-connectivity/gsm/files/028_shell-phonebook-find-and-read-range-support.patch
@@ -8,6 +8,8 @@ phonebook.
 
 Signed-off-by: Jim Huang <jserv@openmoko.org>
 
+Upstream-Status: Inappropriate [not used]
+
 Index: gsm/src/util/shell.c
 ===================================================================
 --- gsm.orig/src/util/shell.c	2007-09-17 23:57:51.000000000 +0800
diff --git a/meta/recipes-connectivity/gsm/files/fix_machine_init.patch b/meta/recipes-connectivity/gsm/files/fix_machine_init.patch
index 9fb6466..1f135d5 100644
--- a/meta/recipes-connectivity/gsm/files/fix_machine_init.patch
+++ b/meta/recipes-connectivity/gsm/files/fix_machine_init.patch
@@ -2,6 +2,8 @@ Rebase the patch to latest version.
 
 By Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Pending
+
 diff -ruN gsm-orig/src/gsmd/gsmd.c gsm/src/gsmd/gsmd.c
 --- gsm-orig/src/gsmd/gsmd.c	2010-11-25 10:14:22.000000000 +0800
 +++ gsm/src/gsmd/gsmd.c	2010-11-25 10:14:52.000000000 +0800
diff --git a/meta/recipes-connectivity/gsm/files/install-ts-headers.patch b/meta/recipes-connectivity/gsm/files/install-ts-headers.patch
index 88e3b6d..b77b6d9 100644
--- a/meta/recipes-connectivity/gsm/files/install-ts-headers.patch
+++ b/meta/recipes-connectivity/gsm/files/install-ts-headers.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 Index: gsm/include/gsmd/Makefile.am
 ===================================================================
 --- gsm.orig/include/gsmd/Makefile.am	2007-10-29 21:05:57.000000000 +0100
diff --git a/meta/recipes-connectivity/gsm/files/lgsm_send_fix_return_value.patch b/meta/recipes-connectivity/gsm/files/lgsm_send_fix_return_value.patch
index 00ba3a4..9ff1c9d 100644
--- a/meta/recipes-connectivity/gsm/files/lgsm_send_fix_return_value.patch
+++ b/meta/recipes-connectivity/gsm/files/lgsm_send_fix_return_value.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- gsm/src/libgsmd/libgsmd.c.orig	2007-09-25 00:41:56.000000000 -0500
 +++ gsm/src/libgsmd/libgsmd.c	2007-09-25 00:43:44.000000000 -0500
 @@ -210,7 +210,7 @@
-- 
1.7.1


