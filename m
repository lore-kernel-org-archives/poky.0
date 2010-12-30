Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id ADA164C81069
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:28:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Dec 2010 18:28:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="691842614"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 29 Dec 2010 18:28:32 -0800
Message-Id: <9459a554f90731b72e25194f91166b08e67ec38d.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Mon, 27 Dec 2010 16:57:29 +0800
Date: Thu, 30 Dec 2010 10:38:18 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/19] pulseaudio: upgrade to version 0.9.22
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
X-List-Received-Date: Thu, 30 Dec 2010 02:28:34 -0000

upgrade from 0.9.21 to 0.9.22

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/conf/distro/include/poky-fixed-revisions.inc  |    2 +-
 .../armv4+v5asm.patch                              |    0
 .../autoconf_version.patch                         |    0
 .../buildfix.patch                                 |    0
 .../configure_silent_rules.patch                   |    0
 .../gcc4-compile-fix.patch                         |    0
 .../tls_m4.patch                                   |    0
 .../volatiles.04_pulse                             |    0
 .../{pulseaudio_0.9.21.bb => pulseaudio_0.9.22.bb} |    4 ++--
 9 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/armv4+v5asm.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/autoconf_version.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/buildfix.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/configure_silent_rules.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/gcc4-compile-fix.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/tls_m4.patch (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio-0.9.21 => pulseaudio-0.9.22}/volatiles.04_pulse (100%)
 rename meta/recipes-multimedia/pulseaudio/{pulseaudio_0.9.21.bb => pulseaudio_0.9.22.bb} (76%)

diff --git a/meta/conf/distro/include/poky-fixed-revisions.inc b/meta/conf/distro/include/poky-fixed-revisions.inc
index cc47610..b7bd6f9 100644
--- a/meta/conf/distro/include/poky-fixed-revisions.inc
+++ b/meta/conf/distro/include/poky-fixed-revisions.inc
@@ -8,7 +8,7 @@ PREFERRED_VERSION_hal-info ?= "20091130"
 PREFERRED_VERSION_udev ?= "164"
 PREFERRED_VERSION_wpa-supplicant ?= "0.7.3"
 
-PULSEAUDIOVERSION ?= "0.9.21"
+PULSEAUDIOVERSION ?= "0.9.22"
 PULSEAUDIOVERSION_arm ?= "0.9.15"
 PREFERRED_VERSION_pulseaudio ?= "${PULSEAUDIOVERSION}"
 
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/armv4+v5asm.patch
similarity index 100%
rename from meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/armv4+v5asm.patch
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/autoconf_version.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/autoconf_version.patch
similarity index 100%
rename from meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/autoconf_version.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/autoconf_version.patch
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/buildfix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/buildfix.patch
similarity index 100%
rename from meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/buildfix.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/buildfix.patch
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/configure_silent_rules.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/configure_silent_rules.patch
similarity index 100%
rename from meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/configure_silent_rules.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/configure_silent_rules.patch
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/gcc4-compile-fix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/gcc4-compile-fix.patch
similarity index 100%
rename from meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/gcc4-compile-fix.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/gcc4-compile-fix.patch
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/tls_m4.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/tls_m4.patch
similarity index 100%
rename from meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/tls_m4.patch
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/tls_m4.patch
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/volatiles.04_pulse b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/volatiles.04_pulse
similarity index 100%
rename from meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/volatiles.04_pulse
rename to meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/volatiles.04_pulse
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.21.bb b/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.22.bb
similarity index 76%
rename from meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.21.bb
rename to meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.22.bb
index d2c21c4..0d2f328 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.21.bb
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.22.bb
@@ -24,5 +24,5 @@ do_compile_prepend() {
     cp ${STAGING_LIBDIR}/libltdl* ${S}/libltdl
 }
 
-SRC_URI[md5sum] = "76e623c4c72e2258bc8bdeb1599bad74"
-SRC_URI[sha256sum] = "94e22356ac70ee95388ae58da90d88c6b3186d1938618d21671627ff56cee254"
+SRC_URI[md5sum] = "ca85ab470669b05e100861654cf5eb3c"
+SRC_URI[sha256sum] = "c6019324395117a258c048a6db5e9734551cc2c61dc35b46403ff00d64be55f0"
-- 
1.6.3.3


