Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E7CC4C810C1
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 23:32:12 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 21:32:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="580136805"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 21:31:59 -0800
Message-Id: <8ba67b8a7382114e79371b048181551862104490.1291354553.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291354552.git.edwin.zhai@intel.com>
References: <cover.1291354552.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Tue, 30 Nov 2010 13:25:21 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/14] web: Update to svn r129
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
X-List-Received-Date: Fri, 03 Dec 2010 05:32:13 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-sato/web/web_svn.bb                   |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 015df5a..fb510af 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -160,7 +160,7 @@ SRCREV_pn-u-boot-omap3 ??= "f40f6db278f602b55820693634a7256b0b4e4b80"
 SRCREV_pn-ubootchart ??= "10"
 SRCREV_pn-webkit-gtk ??= "62027"
 SRCREV_pn-web-webkit ??= "110"
-SRCREV_pn-web ??= "97"
+SRCREV_pn-web ??= "129"
 SRCREV_pn-xcb-proto ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
 SRCREV_pn-xcb-proto-native ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
 SRCREV_pn-xf86-video-intel ??= "87ea531c5dc5b39809395b277c330854aaaaf019"
diff --git a/meta/recipes-sato/web/web_svn.bb b/meta/recipes-sato/web/web_svn.bb
index 09840ae..79838ce 100644
--- a/meta/recipes-sato/web/web_svn.bb
+++ b/meta/recipes-sato/web/web_svn.bb
@@ -10,7 +10,7 @@ SRC_URI = 	"svn://svn.o-hand.com/repos/${PN};module=trunk;proto=http \
 		file://owl-window-menu.patch \
 		"
 
-LIB_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 S = "${WORKDIR}/trunk"
 
-- 
1.7.0.4


