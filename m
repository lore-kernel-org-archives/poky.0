Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 497FA4C810EE
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jan 2011 04:15:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="647456160"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jan 2011 04:14:59 -0800
Message-Id: <5b25a8b9ae894260d46530ee18d7d818e797618b.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 11:21:23 +0800
Date: Sun, 16 Jan 2011 20:19:35 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/19] bigreqsproto: upgrade to 1.1.1
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:00 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    6 +++---
 ...bigreqsproto_1.1.0.bb => bigreqsproto_1.1.1.bb} |    6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{bigreqsproto_1.1.0.bb => bigreqsproto_1.1.1.bb} (59%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index ce6f9cf..a716281 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -3,9 +3,9 @@
 #
 
 PREFERRED_VERSION_applewmproto ?= "1.4.1"
-PREFERRED_VERSION_bigreqsproto ?= "1.1.0"
-PREFERRED_VERSION_bigreqsproto-native ?= "1.1.0"
-PREFERRED_VERSION_bigreqsproto-nativesdk ?= "1.1.0"
+PREFERRED_VERSION_bigreqsproto ?= "1.1.1"
+PREFERRED_VERSION_bigreqsproto-native ?= "1.1.1"
+PREFERRED_VERSION_bigreqsproto-nativesdk ?= "1.1.1"
 PREFERRED_VERSION_compositeproto ?= "0.4.2"
 PREFERRED_VERSION_damageproto ?= "1.2.1"
 PREFERRED_VERSION_dmxproto ?= "2.3"
diff --git a/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.0.bb b/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.1.bb
similarity index 59%
rename from meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.0.bb
rename to meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.1.bb
index 894c141..57d74ae 100644
--- a/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.1.bb
@@ -1,6 +1,6 @@
 require xorg-proto-common.inc
 
-PR = "r2"
+PR = "r0"
 PE = "1"
 
 DEPENDS += "gettext"
@@ -11,5 +11,5 @@ BBCLASSEXTEND = "native nativesdk"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=b12715630da6f268d0d3712ee1a504f4"
 
-SRC_URI[md5sum] = "d30c5dbf19ca6dffcd9788227ecff8c5"
-SRC_URI[sha256sum] = "4864e12d3c5a99b0a9ee4704822455299345e6c65b23c688a4e4bf11481107bd"
+SRC_URI[md5sum] = "6f6c24436c2b3ab235eb14a85b9aaacf"
+SRC_URI[sha256sum] = "1c3b85872b58d215e8fbfdc7c36bb397d10053324a5df8722227d35254fff09a"
-- 
1.7.0.4


