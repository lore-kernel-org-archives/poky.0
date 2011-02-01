Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A21EF4C8006D
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 16:43:34 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2011 14:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,412,1291622400"; d="scan'208";a="883384697"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2011 14:43:34 -0800
Message-Id: <b396f76aac07b1f16a369fef69a52180237fd99b.1296600047.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1296600047.git.nitin.a.kamble@intel.com>
References: <cover.1296600047.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 26 Jan 2011 18:36:16 -0800
Date: Tue, 01 Feb 2011 14:43:34 -0800
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 2/6] elfutils: add a missing depedancy
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
X-List-Received-Date: Tue, 01 Feb 2011 22:43:35 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

while implementing the mklibs optimization, found out that an executable from
elfutils package, viz eu-findtextrel is dynamically linked to libbz2.so
library. But the poky-image-minimal did not have that library.
  adding the depedency to the bzip2 to get that library for eu-fundtextrel
executable.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/elfutils/elfutils_0.148.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
index 44b3c52..14060e6 100644
--- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -5,8 +5,9 @@ LICENSE = "GPLv2 with exceptions"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3\
                     file://EXCEPTION;md5=570adcb0c1218ab57f2249c67d0ce417"
 DEPENDS = "libtool zlib"
+RDEPENDS = "bzip2"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "https://fedorahosted.org/releases/e/l/elfutils/elfutils-${PV}.tar.bz2"
 
-- 
1.7.3.4


