Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1F8944C80039
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:07:42 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Dec 2010 07:07:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="365835411"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by azsmga001.ch.intel.com with ESMTP; 23 Dec 2010 07:07:34 -0800
Message-Id: <7c4ca83b47b99b52b2a25577b444a6b0435faf43.1293116649.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293116649.git.sgw@linux.intel.com>
References: <cover.1293116649.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 07:02:00 -0800
Date: Thu, 23 Dec 2010  7:07:33 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/4] cross-localedef: add LIC_FILES_CHKCSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 15:07:42 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../eglibc/cross-localedef-native_2.12.bb          |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/eglibc/cross-localedef-native_2.12.bb b/meta/recipes-core/eglibc/cross-localedef-native_2.12.bb
index e2247dc..096c082 100644
--- a/meta/recipes-core/eglibc/cross-localedef-native_2.12.bb
+++ b/meta/recipes-core/eglibc/cross-localedef-native_2.12.bb
@@ -4,6 +4,13 @@ SECTION = "libs"
 PRIORITY = "required"
 LICENSE = "LGPL"
 
+LIC_DIR = "${WORKDIR}/${EGLIBC_BRANCH}/libc"
+LIC_FILES_CHKSUM = "file://${LIC_DIR}/LICENSES;md5=07a394b26e0902b9ffdec03765209770 \
+      file://${LIC_DIR}/COPYING;md5=393a5ca445f6965873eca0259a17f833 \
+      file://${LIC_DIR}/posix/rxspencer/COPYRIGHT;md5=dc5485bb394a13b2332ec1c785f5d83a \
+      file://${LIC_DIR}/COPYING.LIB;md5=bbb461211a33b134d42ed5ee802b37ff "
+
+
 inherit native
 inherit autotools
 
-- 
1.7.2.3


