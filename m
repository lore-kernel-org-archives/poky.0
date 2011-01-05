Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0BE184C811EC
	for <poky@pokylinux.org>; Wed,  5 Jan 2011 05:59:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 03:59:47 -0800
Message-Id: <b9dded$hinok7@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="590078616"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 03:59:41 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Wed, 5 Jan 2011 14:50:33 +0800
Date: Wed, 05 Jan 2011 19:42:28 +0800
To: poky@pokylinux.org
Subject: [PATCH 4/4] perl: use ${CCLD} instead of its own LD definition
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
X-List-Received-Date: Wed, 05 Jan 2011 11:59:48 -0000

perl explicitly assigns LD to a bogus value:
    oe_runmake perl LD="${TARGET_SYS}-gcc"
which breaks sstate-based build when toolchain is not generated locally,
due to lacking of --sysroot option. Use ${CCLD} instead to make this
relocatable.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-devtools/perl/perl_5.8.8.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl_5.8.8.bb b/meta/recipes-devtools/perl/perl_5.8.8.bb
index 8e2f0c0..5cd4d4f 100644
--- a/meta/recipes-devtools/perl/perl_5.8.8.bb
+++ b/meta/recipes-devtools/perl/perl_5.8.8.bb
@@ -11,7 +11,7 @@ PRIORITY = "optional"
 # We need gnugrep (for -I)
 DEPENDS = "virtual/db perl-native grep-native"
 DEPENDS += "gdbm"
-PR = "r21"
+PR = "r22"
 
 # Major part of version
 PVM = "5.8"
@@ -114,7 +114,7 @@ do_compile() {
             sed -i -e 's|/usr/include|${STAGING_INCDIR}|g' ext/Errno/Errno_pm.PL
         fi
         cd Cross
-        oe_runmake perl LD="${TARGET_SYS}-gcc"
+        oe_runmake perl LD="${CCLD}"
 }
 
 do_install() {
-- 
1.6.0.4


