Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6804CE01409
	for <poky@yoctoproject.org>; Fri, 28 Jun 2013 08:12:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Jun 2013 08:12:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,958,1363158000"; d="scan'208";a="361150695"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.97])
	by orsmga002.jf.intel.com with ESMTP; 28 Jun 2013 08:12:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Jun 2013 16:12:22 +0100
Message-Id: <eb7b49990481eee6bb917b017c10ac8b87b6167b.1372432284.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1372432284.git.paul.eggleton@linux.intel.com>
References: <cover.1372432284.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1372432284.git.paul.eggleton@linux.intel.com>
References: <cover.1372432284.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] poky.conf: fix WARN_QA and ERROR_QA settings
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
X-List-Received-Date: Fri, 28 Jun 2013 15:12:37 -0000

In OE-Core master revision 8f5675e6d3eb the bug that tests we did not
mention in ERROR_QA were being shown as warnings even if they weren't in
WARN_QA was fixed; however a number of warnings we want to be enabled
weren't in Poky's WARN_QA and thus were not shown after that change;
additionally some of these were set in the default value of ERROR_QA in
insane.bbclass (i.e. OE-Core's default) but would have previously shown
up as warnings in Poky because they weren't in ERROR_QA there.

To fix this, put the appropriate values back into WARN_QA / ERROR_QA
with a lean towards ERROR_QA - we want to be strict so that we keep
OE-Core clean of QA issues during recipe maintenance.

Fixes [YOCTO #4752].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 0968a0c..14919f2 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -99,8 +99,12 @@ OELAYOUT_ABI = "8"
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
 
-#WARN_QA = "unsafe-references-in-binaries unsafe-references-in-scripts"
-WARN_QA = "textrel pkgvarcheck"
-ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms useless-rpaths rpaths staticdev ldflags"
+# QA check settings - a little stricter than the OE-Core defaults
+WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi"
+ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
+            useless-rpaths rpaths staticdev ldflags pkgvarcheck already-stripped \
+            compile-host-path dep-cmp installed-vs-shipped install-host-path \
+            libdir packages-list perm-config perm-line perm-link pkgv-undefined \
+            pn-overrides split-strip var-undefined"
 
 include conf/distro/include/seperatebuilddir.inc
-- 
1.8.1.2


