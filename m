Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 642144C80A98
	for <poky@yoctoproject.org>; Wed, 11 May 2011 04:13:45 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 May 2011 02:13:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,352,1301900400"; 
   d="scan'208";a="208415"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by fmsmga002.fm.intel.com with ESMTP; 11 May 2011 02:13:44 -0700
Message-Id: <d6ef23d93260ecd5bcb413c1b73c1d4f54c8de53.1305105317.git.ke.yu@intel.com>
In-Reply-To: <cover.1305105317.git.ke.yu@intel.com>
References: <cover.1305105317.git.ke.yu@intel.com>
Old-Date: Wed, 27 Apr 2011 15:13:24 +0800
Date: Wed, 11 May 2011 17:20:00 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 3/8] xinetd: update Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 09:13:45 -0000

From: Yu Ke <ke.yu@intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 ...vices-from-inetd.conf-if-a-service-with-t.patch |    2 ++
 ...arious-fixes-from-the-previous-maintainer.patch |    2 ++
 ...uld-be-able-to-listen-on-IPv6-even-in-ine.patch |    2 ++
 3 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/xinetd/xinetd/Disable-services-from-inetd.conf-if-a-service-with-t.patch b/meta/recipes-extended/xinetd/xinetd/Disable-services-from-inetd.conf-if-a-service-with-t.patch
index 8602a88..cd6e6c1 100644
--- a/meta/recipes-extended/xinetd/xinetd/Disable-services-from-inetd.conf-if-a-service-with-t.patch
+++ b/meta/recipes-extended/xinetd/xinetd/Disable-services-from-inetd.conf-if-a-service-with-t.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending [from other distro Debian]
+
 From d588b6530e1382a624898b3f4307f636c72c80a9 Mon Sep 17 00:00:00 2001
 From: Pierre Habouzit <madcoder@debian.org>
 Date: Wed, 28 Nov 2007 10:13:08 +0100
diff --git a/meta/recipes-extended/xinetd/xinetd/Various-fixes-from-the-previous-maintainer.patch b/meta/recipes-extended/xinetd/xinetd/Various-fixes-from-the-previous-maintainer.patch
index d243692..8e59cdc 100644
--- a/meta/recipes-extended/xinetd/xinetd/Various-fixes-from-the-previous-maintainer.patch
+++ b/meta/recipes-extended/xinetd/xinetd/Various-fixes-from-the-previous-maintainer.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending [from other distro Debian]
+
 From a3410b0bc81ab03a889d9ffc14e351badf8372f1 Mon Sep 17 00:00:00 2001
 From: Pierre Habouzit <madcoder@debian.org>
 Date: Mon, 26 Nov 2007 16:02:04 +0100
diff --git a/meta/recipes-extended/xinetd/xinetd/xinetd-should-be-able-to-listen-on-IPv6-even-in-ine.patch b/meta/recipes-extended/xinetd/xinetd/xinetd-should-be-able-to-listen-on-IPv6-even-in-ine.patch
index 2b76fe3..2365ca1 100644
--- a/meta/recipes-extended/xinetd/xinetd/xinetd-should-be-able-to-listen-on-IPv6-even-in-ine.patch
+++ b/meta/recipes-extended/xinetd/xinetd/xinetd-should-be-able-to-listen-on-IPv6-even-in-ine.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending [from other distro Debian]
+
 From f44b218ccc779ab3f4aed072390ccf129d94b58d Mon Sep 17 00:00:00 2001
 From: David Madore <david@pleiades.stars>
 Date: Mon, 24 Mar 2008 12:45:36 +0100
-- 
1.7.0.4


