Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E6F44C80887
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 09:17:54 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Apr 2011 07:17:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,219,1301900400"; d="scan'208";a="733869508"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by orsmga001.jf.intel.com with ESMTP; 15 Apr 2011 07:17:53 -0700
Message-Id: <0a83114532a9307543361fce7bab0a903bd62b7a.1302856116.git.lei.mei@intel.com>
In-Reply-To: <cover.1302856115.git.lei.mei@intel.com>
References: <cover.1302856115.git.lei.mei@intel.com>
Old-Date: Mon, 11 Apr 2011 16:10:52 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 1/5] libidn: upgrade from 1.19 to 1.20
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
Date: Fri, 15 Apr 2011 14:17:54 -0000
X-Original-Date: 五, 15  4月 2011 22:22:41 +0800
X-List-Received-Date: Fri, 15 Apr 2011 14:17:54 -0000

From: Mei Lei <lei.mei@intel.com>

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../libidn/{libidn_1.19.bb => libidn_1.20.bb}      |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)
 rename meta/recipes-extended/libidn/{libidn_1.19.bb => libidn_1.20.bb} (68%)

diff --git a/meta/recipes-extended/libidn/libidn_1.19.bb b/meta/recipes-extended/libidn/libidn_1.20.bb
similarity index 68%
rename from meta/recipes-extended/libidn/libidn_1.19.bb
rename to meta/recipes-extended/libidn/libidn_1.20.bb
index a90a739..fa8953b 100644
--- a/meta/recipes-extended/libidn/libidn_1.19.bb
+++ b/meta/recipes-extended/libidn/libidn_1.20.bb
@@ -5,16 +5,16 @@ SECTION = "libs"
 LICENSE = "LGPLv2.1+ & GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
                     file://COPYING.LIB;md5=a6f89e2100d9b6cdffcea4f398e37343 \
-                    file://lib/idna.h;firstline=6;endline=18;md5=643beb30bf98d8c4aed59a51b86fe9ea \
-                    file://src/idn.c;firstline=6;endline=18;md5=07a57d46977b38a2557aac446dda35dd"
+                    file://lib/idna.h;endline=21;md5=dbd4426bbc38846d5a6b94c3570fd756 \
+                    file://src/idn.c;endline=20;md5=e7bc77cab53f7367b7e381aaa546e76c"
 PR = "r0"
 
 inherit pkgconfig autotools gettext
 
 SRC_URI = "${GNU_MIRROR}/libidn/${P}.tar.gz"
 
-SRC_URI[md5sum] = "a45142126d28162014c995f969bdb5a8"
-SRC_URI[sha256sum] = "8ed2e936b1ae3e30b45b54ca3672deaa83ee0f4d20db5ad83dc1af7222d39f41"
+SRC_URI[md5sum] = "03996d474a696e59fdddbee87fc9519c"
+SRC_URI[sha256sum] = "e1bff472e8dce11064508ef5acbd6ac72371d0028f15c65f4a91ed157bfca8b1"
 
 # command tool is under GPLv3+, while libidn itself is under LGPLv2.1+
 # so package command into a separate package
-- 
1.6.3.3


