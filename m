Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DD324C810B6
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 09:18:01 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Apr 2011 07:18:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,219,1301900400"; d="scan'208";a="679542578"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2011 07:18:01 -0700
Message-Id: <f27089d9c517014a12d18bbdadebdbdfde3d4814.1302856116.git.lei.mei@intel.com>
In-Reply-To: <cover.1302856115.git.lei.mei@intel.com>
References: <cover.1302856115.git.lei.mei@intel.com>
Old-Date: Tue, 12 Apr 2011 10:56:36 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 4/5] libffi: Upgrade from 3.0.9 to 3.0.10rc0
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
Date: Fri, 15 Apr 2011 14:18:01 -0000
X-Original-Date: 五, 15  4月 2011 22:22:49 +0800
X-List-Received-Date: Fri, 15 Apr 2011 14:18:01 -0000

From: Mei Lei <lei.mei@intel.com>

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../{libffi_3.0.9.bb => libffi_3.0.10rc0.bb}       |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-gnome/libffi/{libffi_3.0.9.bb => libffi_3.0.10rc0.bb} (79%)

diff --git a/meta/recipes-gnome/libffi/libffi_3.0.9.bb b/meta/recipes-gnome/libffi/libffi_3.0.10rc0.bb
similarity index 79%
rename from meta/recipes-gnome/libffi/libffi_3.0.9.bb
rename to meta/recipes-gnome/libffi/libffi_3.0.10rc0.bb
index b6c7c13..ddb2582 100644
--- a/meta/recipes-gnome/libffi/libffi_3.0.9.bb
+++ b/meta/recipes-gnome/libffi/libffi_3.0.10rc0.bb
@@ -7,10 +7,10 @@ library really only provides the lowest, machine dependent layer of a fully feat
 A layer must exist above `libffi' that handles type conversions for values passed between the two languages."
 SRC_URI = "ftp://sourceware.org/pub/libffi/${BPN}-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "1f300a7a7f975d4046f51c3022fa5ff1"
-SRC_URI[sha256sum] = "589d25152318bc780cd8919b14670793f4971d9838dab46ed38c32b3ee92c452"
+SRC_URI[md5sum] = "621da748b995428b9d40f5fb830f600a"
+SRC_URI[sha256sum] = "b5797fde9f3543d91af054bfd736136c319986d0a44f1a591bada28642acb732"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=fa09cb778aaba64dc9eac37ab7e4e5d8"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0caa055e49a3fb6c57780595e995e2ab"
 inherit autotools
 
 BBCLASSEXTEND = "native"
-- 
1.6.3.3


