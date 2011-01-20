Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 777794C81110
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 05:42:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jan 2011 03:42:03 -0800
Message-Id: <b7da2f$q6go1q@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="879255614"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.19])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2011 03:42:02 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Thu, 20 Jan 2011 12:57:42 +0800
Date: Thu, 20 Jan 2011 19:23:58 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/3] bitbake.conf: add USERNAME to BB_HASHBASE_WHITELIST
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
X-List-Received-Date: Thu, 20 Jan 2011 11:42:03 -0000

previously only USER is in the whitelist, however both are possible on different distros

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/conf/bitbake.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 56b64f3..2c3f2fc 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -733,5 +733,5 @@ TRANSLATED_TARGET_ARCH ??= ${TARGET_ARCH}
 # Setup our default hash policy
 BB_SIGNATURE_HANDLER ?= "basic"
 BB_HASHTASK_WHITELIST ?= "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
-BB_HASHBASE_WHITELIST ?= "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER FILESPATH"
+BB_HASHBASE_WHITELIST ?= "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER FILESPATH USERNAME"
 
-- 
1.6.0.4


