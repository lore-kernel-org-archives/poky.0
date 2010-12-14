Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E71E4C81121
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 12:35:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Dec 2010 10:35:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,343,1288594800"; d="scan'208";a="583678412"
Received: from unknown (HELO helios) ([10.255.16.81])
	by orsmga002.jf.intel.com with SMTP; 14 Dec 2010 10:35:40 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 14 Dec 2010 18:35:37 +0000
Message-Id: <36f3ddf2d4e941dfac9167fe0920ef2b21283e3e.1292351445.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1292351445.git.paul.eggleton@linux.intel.com>
References: <cover.1292351445.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 14 Dec 2010 18:09:58 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] poky.conf: adjust variable whitelisting to fix sstate checksums
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
X-List-Received-Date: Tue, 14 Dec 2010 18:35:42 -0000

After some analysis of task dependencies I have adjusted the global whitelist
used to filter out variables that would otherwise cause unwanted changes in
task checksums for sstate packages.

The following changes have been made to BB_HASHBASE_WHITELIST:

 * Fix typo: FILESEXTRAPATHS not FILESEXTRPATHS
 * Add variables FILE_DIRNAME HOME LOGNAME SHELL TERM USER
 * Remove variables DATE and TIME (these are referred to by a number of tasks
   where they should affect the checksum, e.g. because they influence PV)
 * Remove variable _ (not found in dependencies)

Additionally DATE and SRCDATE are excluded but only explicitly for
patch_do_patch, which uses these only to provide a warning if patches are
out of date.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/conf/distro/poky.conf |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index 10b3165..95ca097 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -143,4 +143,5 @@ require conf/distro/include/world-broken.inc
 # Setup our hash policy
 BB_SIGNATURE_HANDLER = "basic"
 BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
-BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD BB_TASKHASH TIME DATE BBPATH DL_DIR SSTATE_DIR THISDIR _ FILESEXTRPATHS"
+BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER"
+patch_do_patch[vardepsexclude] = "DATE SRCDATE"
-- 
1.7.1


