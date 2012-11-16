Return-Path: <stefanx.stanacar@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 082D3E006B3
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 08:37:40 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2012 08:37:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,265,1352102400"; d="scan'208";a="248310424"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2012 08:37:36 -0800
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id 20AC22C8001;
	Fri, 16 Nov 2012 08:37:34 -0800 (PST)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: poky@yoctoproject.org
Date: Fri, 16 Nov 2012 18:37:27 +0200
Message-Id: <1353083847-6879-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.7.11.7
Subject: [PATCH v2] yocto-bsp: update qemu machine.conf template
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
X-List-Received-Date: Fri, 16 Nov 2012 16:37:41 -0000

Update the template with the changes from the last commits to meta/conf/machine/qemux86.conf
Building sato image for a machine created using yocto-bsp with qemux86/x86-64 templates fails because nothing RPROVIDES qemugl anymore so remove support from the template as well.
Also drop redundant glibc configure knobs (they are no longer optional and they don't exist in conf/machine/qemux86.conf anymore so for consistency the template shouldn't keep them).

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf    | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index d1f50c1..01e646d 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -44,11 +44,8 @@ XSERVER ?= "xserver-xorg \
            xf86-input-vmmouse \
            xf86-input-keyboard \
            xf86-input-evdev \
-           xf86-video-vmware \
-           qemugl"
+           xf86-video-vmware"
 require conf/machine/include/qemu.inc
-GLIBC_ADDONS = "nptl"
-GLIBC_EXTRA_OECONF = "--with-tls"
 
 {{ if qemuarch == "arm": }}
 KERNEL_IMAGETYPE = "zImage"
-- 
1.7.11.7


