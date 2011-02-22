Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 300B44C8009C
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:56:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Feb 2011 07:55:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="605336372"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 22 Feb 2011 07:55:59 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 23 Feb 2011 00:00:55 +0800
Message-Id: <cdf118155b97a7f445c20edb75eba29cfc1c07fb.1298390312.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1298390312.git.ke.yu@intel.com>
References: <cover.1298390312.git.ke.yu@intel.com>
Subject: [PATCH 1/2] xf86-video-intel: add config option to support rootless X
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
X-List-Received-Date: Tue, 22 Feb 2011 15:56:00 -0000

- add global config option ROOTLESS_X to control if enable
  rootless X for the machine. ROOTLESS_X requires graphics
  driver supporting KMS (kernel mode setting), so far, only
  atom_pc support this. so enable ROOTLESS_X for atom_pc machine

- add config options for xf86-video-intel to support rootless X

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/conf/machine/atom-pc.conf                     |    2 ++
 .../xorg-driver/xf86-video-intel_2.14.0.bb         |    5 +++++
 2 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/meta/conf/machine/atom-pc.conf b/meta/conf/machine/atom-pc.conf
index 58c9b0d..b94deb2 100644
--- a/meta/conf/machine/atom-pc.conf
+++ b/meta/conf/machine/atom-pc.conf
@@ -42,3 +42,5 @@ GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
+
+ROOTLESS_X = "1"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
index 017a2e0..099cf9d 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
@@ -9,8 +9,13 @@ Infrastructure (DRI)."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=8730ad58d11c7bbad9a7066d69f7808e"
 
+PR = "r1"
+
 EXTRA_OECONF += "--disable-xvmc"
 
+# --enable-kms-only option is required by ROOTLESS_X
+EXTRA_OECONF += '${@base_conditional( "ROOTLESS_X", "1", " --enable-kms-only", "", d )}'
+
 DEPENDS += "virtual/libx11 libxvmc drm xf86driproto glproto \
 	    virtual/libgl xineramaproto xf86driproto libpciaccess"
 
-- 
1.7.0.4


