Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C1074C810E3
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 01:13:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 23:13:12 -0800
Message-Id: <c6d829$pkivqr@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="860454753"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2010 23:13:11 -0800
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
X-List-Received-Date: Tue, 23 Nov 2010 07:13:12 -0000

DATE are referenced by patch_do_patch
TIME are referenced by do_distro_check/do_checkpkg
BBPATH/THISDIR/OEROOT/_ impacts the scenario when using different source path.
(OEROOT are brought in as a shell variable, included as dependency of shell tasks)
DL_DIR/SSTATE_DIR are listed as dependency too, by pstaging_fetch

Some tasks may not contribute to sstate packages, e.g. do_checkpkg. But for
safety all of them are whitelist this time.

How to handle preserved shell variables is still in progress, which contributes to
another large set of volatile dependencies bound to build system

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index 09e02b8..ae13d9a 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -144,4 +144,4 @@ require conf/distro/include/distro_tracking_fields.inc
 # Setup our hash policy
 BB_SIGNATURE_HANDLER = "basic"
 BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
-BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD"
+BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD TIME DATE BBPATH OEROOT DL_DIR SSTATE_DIR THISDIR _"
-- 
1.6.0.4


