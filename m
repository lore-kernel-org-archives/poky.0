Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB0DF4C80A70
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:03 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 01:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="690558015"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2011 01:56:03 -0700
Message-Id: <33380a75cc1a0de354985f6c3aa9fa28216aff5e.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 13:19:41 +0800
Date: Tue, 10 May 2011 17:01:31 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 07/39] libpcap: add upstream status for libpcap's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:03 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../libpcap/libpcap-1.1.1/aclocal.patch            |    2 ++
 .../libpcap/libpcap-1.1.1/ieee80215-arphrd.patch   |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/libpcap/libpcap-1.1.1/aclocal.patch b/meta/recipes-connectivity/libpcap/libpcap-1.1.1/aclocal.patch
index 71fd8b9..469d122 100644
--- a/meta/recipes-connectivity/libpcap/libpcap-1.1.1/aclocal.patch
+++ b/meta/recipes-connectivity/libpcap/libpcap-1.1.1/aclocal.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 diff -ruN libpcap-1.1.1-orig/aclocal.m4 libpcap-1.1.1/aclocal.m4
 --- libpcap-1.1.1-orig/aclocal.m4	2010-06-29 10:46:32.815117569 +0800
 +++ libpcap-1.1.1/aclocal.m4	2010-06-29 10:49:17.150149949 +0800
diff --git a/meta/recipes-connectivity/libpcap/libpcap-1.1.1/ieee80215-arphrd.patch b/meta/recipes-connectivity/libpcap/libpcap-1.1.1/ieee80215-arphrd.patch
index f29c7cb..8041d7a 100644
--- a/meta/recipes-connectivity/libpcap/libpcap-1.1.1/ieee80215-arphrd.patch
+++ b/meta/recipes-connectivity/libpcap/libpcap-1.1.1/ieee80215-arphrd.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: libpcap-1.0.0/pcap-linux.c
 ===================================================================
 --- libpcap-1.0.0.orig/pcap-linux.c	2009-01-28 11:58:54.000000000 +0300
-- 
1.7.1


