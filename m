Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B926F4C80A84
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:08 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 01:56:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231516"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:56:08 -0700
Message-Id: <cc977eb27033f104871de65842bd38dabb5e6fd1.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 13:27:50 +0800
Date: Tue, 10 May 2011 17:01:36 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 11/39] wireless-tools: add upstream status for wireless-tools's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:08 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../wireless-tools/wireless-tools/man.patch        |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/wireless-tools/wireless-tools/man.patch b/meta/recipes-connectivity/wireless-tools/wireless-tools/man.patch
index fd8cf42..8e16215 100644
--- a/meta/recipes-connectivity/wireless-tools/wireless-tools/man.patch
+++ b/meta/recipes-connectivity/wireless-tools/wireless-tools/man.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 --- wireless_tools.26/Makefile.orig	2003-06-18 03:38:58.000000000 +0200
 +++ wireless_tools.26/Makefile	2004-07-03 23:35:29.000000000 +0200
 @@ -57,8 +57,8 @@
-- 
1.7.1


