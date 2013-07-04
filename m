Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 258D3E0140D
	for <poky@yoctoproject.org>; Thu,  4 Jul 2013 06:17:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 04 Jul 2013 06:17:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,995,1363158000"; d="scan'208";a="360496283"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.242])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2013 06:18:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  4 Jul 2013 14:17:43 +0100
Message-Id: <1372943863-15941-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] poky.conf: move libdir QA check to WARN_QA
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Jul 2013 13:17:48 -0000

The libdir check was broken, and having been fixed it is throwing up a
number of issues, so it seems that we're not yet ready to have this set
to error. Switch it back to a warning instead.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 14919f2..7be7d92 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -100,11 +100,11 @@ OELAYOUT_ABI = "8"
 INHERIT += "poky-sanity"
 
 # QA check settings - a little stricter than the OE-Core defaults
-WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi"
+WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi libdir"
 ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
             useless-rpaths rpaths staticdev ldflags pkgvarcheck already-stripped \
             compile-host-path dep-cmp installed-vs-shipped install-host-path \
-            libdir packages-list perm-config perm-line perm-link pkgv-undefined \
+            packages-list perm-config perm-line perm-link pkgv-undefined \
             pn-overrides split-strip var-undefined"
 
 include conf/distro/include/seperatebuilddir.inc
-- 
1.8.1.2


