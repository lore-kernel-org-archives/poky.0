Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16E524C80AB3
	for <poky@yoctoproject.org>; Fri, 10 Jun 2011 12:43:57 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jun 2011 10:43:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,348,1304319600"; d="scan'208";a="16876714"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.133])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2011 10:43:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 10 Jun 2011 18:43:52 +0100
Message-Id: <d7189aeeb5376f12f4eb32f897c2cf020d8bb677.1307727577.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1307727577.git.paul.eggleton@linux.intel.com>
References: <cover.1307727577.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1307727577.git.paul.eggleton@linux.intel.com>
References: <cover.1307727577.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] meta-yocto: use FILESEXTRAPATHS_prepend := in all bbappends
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
X-List-Received-Date: Fri, 10 Jun 2011 17:43:57 -0000

Using FILESEXTRAPATHS is cleaner than the old FILESPATH-based method, and
as meta-intel layers are using FILESEXTRAPATHS their formfactor bbappends
will now work. In addition I have used FILESEXTRAPATHS_prepend which is
not absolutely necessary, but provides a good working example in case it
is copied by other layers that are intended to be used on top of it.

Fixes [YOCTO #1156]

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    4 +---
 .../recipes-core/netbase/netbase_4.45.bbappend     |    4 +---
 meta-yocto/recipes-core/uclibc/uclibc_git.bbappend |    4 +---
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    4 +---
 4 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend b/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
+++ b/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend b/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
+++ b/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-- 
1.7.4.1


