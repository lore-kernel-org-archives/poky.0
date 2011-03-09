Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54E974C80578
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 04:44:11 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Mar 2011 02:44:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,289,1297065600"; d="scan'208";a="665455883"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga002.fm.intel.com with ESMTP; 09 Mar 2011 02:44:10 -0800
Message-Id: <7e099c60becca3bd44ccf868fcb4e7819399a78a.1299667162.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1299667162.git.dexuan.cui@intel.com>
References: <cover.1299667162.git.dexuan.cui@intel.com>
Old-Date: Wed, 9 Mar 2011 18:28:22 +0800
Date: Wed, 09 Mar 2011 18:42:47 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 1/2] oprofileui: upgrade to the latest version maintained by the Yocto project
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
X-List-Received-Date: Wed, 09 Mar 2011 10:44:11 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Oprofileui at http://labs.o-hand.com/oprofileui/ is not maintained now, so
we should change SRC_URI to the one maintained by the Yocto project. This
one includes new bugfixes.

This fixes [YOCTO #820]

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-kernel/oprofile/oprofileui-git.inc    |   10 ++++++++++
 meta/recipes-kernel/oprofile/oprofileui-svn.inc    |    9 ---------
 meta/recipes-kernel/oprofile/oprofileui_git.bb     |    2 ++
 meta/recipes-kernel/oprofile/oprofileui_svn.bb     |    2 --
 5 files changed, 13 insertions(+), 12 deletions(-)
 create mode 100644 meta/recipes-kernel/oprofile/oprofileui-git.inc
 delete mode 100644 meta/recipes-kernel/oprofile/oprofileui-svn.inc
 create mode 100644 meta/recipes-kernel/oprofile/oprofileui_git.bb
 delete mode 100644 meta/recipes-kernel/oprofile/oprofileui_svn.bb

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 36202a1..aee1749 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -146,7 +146,7 @@ SRCREV_pn-opkg-nogpg-native ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-nogpg-nativesdk ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-utils-native ??= "4747"
 SRCREV_pn-opkg-utils ??= "4747"
-SRCREV_pn-oprofileui ??= "197"
+SRCREV_pn-oprofileui ??= "e2d998d8a55dc1e49d1588841f83eff8e6809753"
 SRCREV_pn-tcf-agent ??= "1078"
 SRCREV_pn-osc-native ??= "9096"
 SRCREV_pn-owl-video ??= "394"
diff --git a/meta/recipes-kernel/oprofile/oprofileui-git.inc b/meta/recipes-kernel/oprofile/oprofileui-git.inc
new file mode 100644
index 0000000..b4a573b
--- /dev/null
+++ b/meta/recipes-kernel/oprofile/oprofileui-git.inc
@@ -0,0 +1,10 @@
+require oprofileui.inc
+
+PV = "0.0+git${SRCPV}"
+PR = "r2"
+
+S = "${WORKDIR}/git"
+
+# Oprofileui at http://labs.o-hand.com/oprofileui/ is not maintained now.
+SRC_URI = "git://git.pokylinux.org/oprofileui;protocol=git \
+           file://dso_linking_change_build_fix.patch "
diff --git a/meta/recipes-kernel/oprofile/oprofileui-svn.inc b/meta/recipes-kernel/oprofile/oprofileui-svn.inc
deleted file mode 100644
index 5d40914..0000000
--- a/meta/recipes-kernel/oprofile/oprofileui-svn.inc
+++ /dev/null
@@ -1,9 +0,0 @@
-require oprofileui.inc
-
-PV = "0.0+svnr${SRCPV}"
-PR = "r1"
-
-S = "${WORKDIR}/trunk"
-
-SRC_URI = "svn://svn.o-hand.com/repos/oprofileui;module=trunk;proto=http \
-           file://dso_linking_change_build_fix.patch "
diff --git a/meta/recipes-kernel/oprofile/oprofileui_git.bb b/meta/recipes-kernel/oprofile/oprofileui_git.bb
new file mode 100644
index 0000000..705f4e1
--- /dev/null
+++ b/meta/recipes-kernel/oprofile/oprofileui_git.bb
@@ -0,0 +1,2 @@
+require oprofileui-git.inc
+
diff --git a/meta/recipes-kernel/oprofile/oprofileui_svn.bb b/meta/recipes-kernel/oprofile/oprofileui_svn.bb
deleted file mode 100644
index 39e10b4..0000000
--- a/meta/recipes-kernel/oprofile/oprofileui_svn.bb
+++ /dev/null
@@ -1,2 +0,0 @@
-require oprofileui-svn.inc
-
-- 
1.7.2


