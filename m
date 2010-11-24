Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 482E24C811FA
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 23:17:47 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Nov 2010 21:17:46 -0800
Message-Id: <c6d829$pkuj17@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,246,1288594800"; d="scan'208";a="860834859"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2010 21:17:46 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Wed, 24 Nov 2010 12:27:18 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/1] *.bbappend: don't expand FILESEXTRAPATHS immediately
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
X-List-Received-Date: Wed, 24 Nov 2010 05:17:47 -0000

There's no point to expand FILESEXTRAPATHS immediately, since the place where
it's referenced still use normal getVar(FILESEXTRAPATHS, d, True). This way
it doesn't help anything except adding one more breaking variable on sstate.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 documentation/bsp-guide/bsp.xml                    |    2 +-
 .../recipes/formfactor/formfactor_0.0.bbappend     |    2 +-
 .../recipes/linux/linux-yocto_git.bbappend         |    2 +-
 meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 9e25068..0d716a3 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -307,7 +307,7 @@ meta-bsp/packages/image-creator/image-creator-native_0.1.bb
                 The example below shows extra files contained in a folder called ${PN} (the package name).
             </para>
             <programlisting>
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS = "${THISDIR}/${PN}"
             </programlisting>
             <para>
             This technique allows the BSP to add machine-specific configuration files to the layer directory, 
diff --git a/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend b/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
index 4a41d48..a64f367 100644
--- a/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
+++ b/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS = "${THISDIR}/${PN}"
  
 PRINC = "1"
diff --git a/meta-emenlow/recipes/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
index 9fa2937..77c5223 100644
--- a/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
+++ b/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS = "${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "emenlow"
diff --git a/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend b/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
index fac0921..c6f81d4 100644
--- a/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
+++ b/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
@@ -1,3 +1,3 @@
-FILESPATH := "${FILESPATH}:${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESEXTRAPATH = "${THISDIR}/${PN}"
 SRC_URI += "file://defconfig"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
-- 
1.6.0.4


