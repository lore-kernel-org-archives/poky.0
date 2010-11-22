Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9BBE74C81206
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 21:06:04 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2010 19:06:02 -0800
Message-Id: <b9dded$h7k7jr@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="578428543"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2010 19:06:01 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Mon, 22 Nov 2010 19:21:50 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/5] poky.conf: add more hash whitelist
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
X-List-Received-Date: Mon, 29 Nov 2010 03:06:04 -0000

DATE are referenced by patch_do_patch
TIME are referenced by do_distro_check/do_checkpkg
BBPATH/THISDIR/_ impacts the scenario when using different source path.
DL_DIR/SSTATE_DIR are listed as dependency too, by pstaging_fetch
FILESEXTRPATHS is referenced by .bbappend files

Some tasks may not contribute to sstate packages, e.g. do_checkpkg. But for
safety all of them are whitelist this time.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index dcb21f7..a4c5991 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -143,4 +143,4 @@ require conf/distro/include/world-broken.inc
 # Setup our hash policy
 BB_SIGNATURE_HANDLER = "basic"
 BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
-BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD"
+BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD TIME DATE BBPATH DL_DIR SSTATE_DIR THISDIR _ FILESEXTRPATHS"
-- 
1.6.0.4


