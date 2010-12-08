Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDDDD4C811ED
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 10:46:45 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 08:46:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="686681031"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 08:46:45 -0800
Message-Id: <e4b7f313c3b0d087afbb7adf963769810b1a910c.1292258655.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1292258655.git.nitin.a.kamble@intel.com>
References: <cover.1292258655.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Tue, 7 Dec 2010 17:19:57 -0800
To: poky@yoctoproject.org
Subject: [PATCH 3/6] fstests: upgrade to svn revision #426
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
X-List-Received-Date: Mon, 13 Dec 2010 16:46:46 -0000

Also add license checksums, update PR & license fields

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-graphics/fstests/fstests_svn.bb       |    6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 81c39ab..1e74fb7 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -43,7 +43,7 @@ SRCREV_pn-eglibc-initial ??= "${EGLIBCREV}"
 SRCREV_pn-eglibc-nativesdk ??= "${EGLIBCREV}"
 SRCREV_pn-eglibc-initial-nativesdk ??= "${EGLIBCREV}"
 SRCREV_pn-exmap-console ??= "405"
-SRCREV_pn-fstests ??= "266"
+SRCREV_pn-fstests ??= "426"
 SRCREV_pn-gaku ??= "399"
 SRCREV_pn-gconf-dbus ??= "705"
 SRCREV_pn-gconf-dbus-native ??= "705"
diff --git a/meta/recipes-graphics/fstests/fstests_svn.bb b/meta/recipes-graphics/fstests/fstests_svn.bb
index 241d6b9..9d26e07 100644
--- a/meta/recipes-graphics/fstests/fstests_svn.bb
+++ b/meta/recipes-graphics/fstests/fstests_svn.bb
@@ -2,10 +2,9 @@ DESCRIPTION = "Various benchmarning tests for X"
 HOMEPAGE = "http://www.o-hand.com"
 SECTION = "devel"
 LICENSE = "ZLIB"
-LIC_FILES_CHKSUM = "file://test-pango-gdk.c;endline=24;md5=1ee74ec851ecda57eb7ac6cc180f7655"
 DEPENDS = "pango libxext libxft virtual/libx11 gtk+"
 PV = "0.0+svnr${SRCREV}"
-PR = "r1"
+PR = "r0"
 
 inherit autotools
 
@@ -17,3 +16,6 @@ do_install() {
     install -d ${D}${bindir}
     find . -name "test-*" -type f -perm -755 -exec install -m 0755 {} ${D}${bindir} \;   
 }
+
+
+LIC_FILES_CHKSUM = "file://test-pango-gdk.c;endline=24;md5=1ee74ec851ecda57eb7ac6cc180f7655"
-- 
1.7.2.2


