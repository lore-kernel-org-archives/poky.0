Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15AB14C80FA4
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 20:48:58 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 18:48:57 -0800
Message-Id: <5b55a1$ipq8f1@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="631054822"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 18:48:57 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Mon, 29 Nov 2010 10:23:57 +0800
To: poky@pokylinux.org
Subject: [PATCH 4/4] xproto: disable spec generation
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
X-List-Received-Date: Mon, 29 Nov 2010 02:48:59 -0000

it's simply broken with below errors:

| /usr/bin/xmlto: line 343: echo: write error: Broken pipe
| Making portrait pages on letter paper (215.9mmx279.4mm)
| Making portrait pages on letter paper (215.9mmx279.4mm)
| [warning] /usr/bin/fop: Unable to locate servlet-api in /usr/share/java
| [warning] /usr/bin/fop: Unable to locate servlet-api in /usr/share/java
| Nov 29, 2010 8:42:16 AM org.apache.fop.apps.FOURIResolver resolve
| SEVERE: Error with opening URL 'http://docbook.sourceforge.net/release/images/draft.png': No route to host

So temporarily disable it until we have a better solution for doc generation later

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb b/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb
index c145b60..866364e 100644
--- a/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb
+++ b/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb
@@ -3,7 +3,8 @@ require xorg-proto-common.inc
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=70c104816b85de375ba1fc09199d0e69"
 
-PR = "r0"
+PR = "r1"
 PE = "1"
 
+EXTRA_OECONF_append = "--enable-specs=no"
 BBCLASSEXTEND = "native nativesdk"
-- 
1.6.0.4


