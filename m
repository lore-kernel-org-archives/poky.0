Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AFDCE00A21
	for <poky@yoctoproject.org>; Fri,  7 Mar 2014 02:20:54 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Mar 2014 02:20:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,607,1389772800"; d="scan'208";a="468311539"
Received: from lbhoopat-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.98])
	by orsmga001.jf.intel.com with ESMTP; 07 Mar 2014 02:20:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  7 Mar 2014 10:20:45 +0000
Message-Id: <d48c8835811de0167ddd14b12304726b9b91f5b7.1394187600.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <cover.1394187600.git.paul.eggleton@linux.intel.com>
References: <cover.1394187600.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1394187600.git.paul.eggleton@linux.intel.com>
References: <cover.1394187600.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] meta-yocto/conf/distro/include/*: update image/packagegroup entries
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
X-List-Received-Date: Fri, 07 Mar 2014 10:20:54 -0000

These files were somewhat out-of-date with regard to some of the changes
that have happened with packagegroups and images, so update them.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc | 15 +++------------
 meta-yocto/conf/distro/include/maintainers.inc  |  5 +++--
 2 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index d113606..629d1eb 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -51,31 +51,23 @@ DISTRO_PN_ALIAS_pn-connman = "Meego=connman"
 DISTRO_PN_ALIAS_pn-connman-conf = "OE-Core"
 DISTRO_PN_ALIAS_pn-connman-gnome = "Intel"
 DISTRO_PN_ALIAS_pn-console-tools = "Debian=console-tools Ubuntu=console-tools"
-DISTRO_PN_ALIAS_pn-core-console = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-base = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-image-basic = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-clutter = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-image-core = "OE-Core"
+DISTRO_PN_ALIAS_pn-core-image-directfb = "OE-Core"
+DISTRO_PN_ALIAS_pn-core-image-full-cmdline = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-lsb = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-lsb-dev = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-lsb-qt3 = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-lsb-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-minimal = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-minimal-dev = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-image-minimal-directdisk = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-minimal-initramfs = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-image-minimal-live = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-minimal-mtdutils = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-rt = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-rt-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato-dev = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-image-sato-directdisk = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-image-sato-live = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato-sdk = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-image-sato-sdk-directdisk = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-image-sato-sdk-live = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-image-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-weston = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-x11 = "OE-Core"
 DISTRO_PN_ALIAS_pn-cross-localedef = "OSPDT"
@@ -316,11 +308,10 @@ DISTRO_PN_ALIAS_pn-oprofileui-server = "Fedora=oprofileui Ubuntu=oprofile-gui De
 DISTRO_PN_ALIAS_pn-owl-video = "OpenedHand"
 DISTRO_PN_ALIAS_pn-packagegroup-base = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-basic = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-full-cmdline = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-boot = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-buildessential = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-clutter = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-console = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-device-devel = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-directfb = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-eclipse-debug = "OE-Core"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 75fc0e0..d3ac63f 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -95,8 +95,9 @@ RECIPE_MAINTAINER_pn-connman-gnome = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-consolekit = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-console-tools = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-core-image-base = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-core-image-basic = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-core-image-clutter = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-core-image-directfb = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-core-image-full-cmdline = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-core-image-lsb-dev = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-core-image-lsb = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-core-image-lsb-sdk = "Saul Wold <sgw@linux.intel.com>"
@@ -492,12 +493,12 @@ RECIPE_MAINTAINER_pn-oprofileui-server = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ossp-uuid = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-owl-video = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-base = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-packagegroup-core-basic = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-boot = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-buildessential = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-clutter = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-device-devel = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-directfb = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-full-cmdline = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-lsb = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-nfs = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-qt4e = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-- 
1.8.5.3


