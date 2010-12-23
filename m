Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 680964C81207
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 06:27:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="586663213"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 06:27:17 -0800
Message-Id: <e0711e2a3b7157edca87e1228accb1b8678d2c09.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 17:32:19 -0800
Date: Thu, 23 Dec 2010  6:27:17 -0800
To: poky@yoctoproject.org
Subject: [PATCH 19/28] icon-naming-utils: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:18 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../icon-naming-utils-native_0.8.7.bb              |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/icon-naming-utils/icon-naming-utils-native_0.8.7.bb b/meta/recipes-devtools/icon-naming-utils/icon-naming-utils-native_0.8.7.bb
index ef41c53..18aa374 100644
--- a/meta/recipes-devtools/icon-naming-utils/icon-naming-utils-native_0.8.7.bb
+++ b/meta/recipes-devtools/icon-naming-utils/icon-naming-utils-native_0.8.7.bb
@@ -2,6 +2,8 @@ LICENSE = "GPLv2"
 DEPENDS = "libxml-simple-perl-native"
 PR = "r1"
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
 SRC_URI = "http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz"
 
 S = "${WORKDIR}/icon-naming-utils-${PV}"
-- 
1.7.2.3


