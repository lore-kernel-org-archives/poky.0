Return-Path: <paul.eggleton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE81C4C810FE
	for <poky@pokylinux.org>; Mon, 22 Nov 2010 10:27:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Nov 2010 08:27:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,236,1288594800"; d="scan'208";a="679878400"
Received: from unknown (HELO helios) ([10.255.16.138])
	by orsmga001.jf.intel.com with SMTP; 22 Nov 2010 08:26:58 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 22 Nov 2010 16:26:56 +0000
Message-Id: <8a1b03e53beef4537adab1dcdab062ad8e5bd742.1290442820.git.paul.eggleton@intel.com>
In-Reply-To: <cover.1290442820.git.paul.eggleton@intel.com>
References: <cover.1290442820.git.paul.eggleton@intel.com>
From: Paul Eggleton <paul.eggleton@intel.com>
Date: Mon, 22 Nov 2010 16:05:10 +0000
To: poky@pokylinux.org
Subject: [PATCH 1/1] sstate.bbclass: delete sstate files when doing cleanall
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
X-List-Received-Date: Mon, 22 Nov 2010 16:27:01 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"

This fixes the cleanall task to actually delete the sstage cache files. This
was not working correctly before due to attempting to use the current task's
hash in the package file name to be deleted, which of course is the hash of
the cleanall task when doing cleanall. The siginfo files are now deleted as
well.

Signed-off-by: Paul Eggleton <paul.eggleton@intel.com>
---
 meta/classes/sstate.bbclass |   12 ++++++++----
 1 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 3696a8c..0ba130c 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -6,7 +6,8 @@ SSTATE_MANFILEPREFIX = "${SSTATE_MANFILEBASE}${PN}"
 
 
 SSTATE_PKGARCH    = "${BASE_PACKAGE_ARCH}"
-SSTATE_PKGNAME    = "sstate-${PN}-${MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-${BB_TASKHASH}"
+SSTATE_PKGSPEC    = "sstate-${PN}-${MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-"
+SSTATE_PKGNAME    = "${SSTATE_PKGSPEC}${BB_TASKHASH}"
 SSTATE_PKG        = "${SSTATE_DIR}/${SSTATE_PKGNAME}"
 
 SSTATE_SCAN_CMD ?= "find ${SSTATE_BUILDDIR} \( -name "*.la" -o -name "*-config" \) -type f"
@@ -190,9 +191,12 @@ def sstate_installpkg(ss, d):
     return True
 
 def sstate_clean_cachefile(ss, d):
-    sstatepkg = bb.data.getVar('SSTATE_PKG', d, True) + '_' + ss['name'] + ".tgz"
-    bb.note("Removing %s" % sstatepkg)
-    oe.path.remove(sstatepkg)
+    import oe.path
+
+    sstatepkgdir = bb.data.getVar('SSTATE_DIR', d, True)
+    sstatepkgfile = sstatepkgdir + '/' + bb.data.getVar('SSTATE_PKGSPEC', d, True) + "*_" + ss['name'] + ".tgz*"
+    bb.note("Removing %s" % sstatepkgfile)
+    oe.path.remove(sstatepkgfile)
 
 def sstate_clean_cachefiles(d):
     for task in (bb.data.getVar('SSTATETASKS', d, True) or "").split():
-- 
1.7.3.1

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


