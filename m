Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F53E4C80BEF
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 13:55:56 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Dec 2010 11:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,325,1288594800"; d="scan'208";a="582557214"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.164])
	by orsmga002.jf.intel.com with ESMTP; 10 Dec 2010 11:55:55 -0800
Message-Id: <405331226d5cac74e426136acc65c8999b940b17.1292010816.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292010816.git.dvhart@linux.intel.com>
References: <cover.1292010816.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 10 Dec 2010 11:34:29 -0800
To: sgw@linux.intel.com,poky@yoctoproject.org
Subject: [PATCH 3/5] Correct LIC_FILES_CHKSUM typos
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
X-List-Received-Date: Fri, 10 Dec 2010 19:55:56 -0000

An investigation into undocumented variables uncovered a handful
of LIC_FILES_CHKSUM spelling errors

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-devtools/nasm/nasm_2.07.bb       |    2 +-
 meta/recipes-devtools/quilt/quilt.inc         |    2 +-
 meta/recipes-extended/groff/groff_1.18.1.4.bb |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/nasm/nasm_2.07.bb b/meta/recipes-devtools/nasm/nasm_2.07.bb
index b42196e..a1c0718 100644
--- a/meta/recipes-devtools/nasm/nasm_2.07.bb
+++ b/meta/recipes-devtools/nasm/nasm_2.07.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "General-purpose x86 assembler"
 SECTION = "devel"
 LICENSE = "simplifiedBSD"
-LIC_CHKSUM_FILES = "file://LICENSE;md5=d89d124974e487e5d64da6f1cd8acfbb"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=d89d124974e487e5d64da6f1cd8acfbb"
 COMPATIBLE_HOST = '(x86_64|i.86).*-(linux|freebsd.*)'
 
 PR = "r0"
diff --git a/meta/recipes-devtools/quilt/quilt.inc b/meta/recipes-devtools/quilt/quilt.inc
index 77d1bcf..4542511 100644
--- a/meta/recipes-devtools/quilt/quilt.inc
+++ b/meta/recipes-devtools/quilt/quilt.inc
@@ -2,7 +2,7 @@ DESCRIPTION = "Tool to work with series of patches."
 HOMEPAGE = "http://savannah.nongnu.org/projects/quilt/"
 SECTION = "devel"
 LICENSE = "GPLv2"
-LIC_CHKSUM_FILES = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 SRC_URI = "http://download.savannah.gnu.org/releases/quilt/quilt-${PV}.tar.gz \
         file://install.patch \
diff --git a/meta/recipes-extended/groff/groff_1.18.1.4.bb b/meta/recipes-extended/groff/groff_1.18.1.4.bb
index 0c4e1a6..02b484a 100644
--- a/meta/recipes-extended/groff/groff_1.18.1.4.bb
+++ b/meta/recipes-extended/groff/groff_1.18.1.4.bb
@@ -5,7 +5,7 @@ HOMEPAGE = "ftp://ftp.gnu.org/gnu/groff/"
 LICENSE = "GPLv2"
 PR = "r1"
 
-LIC_FILE_CHKSUM = "file://CORYING;md5=e43fc16fccd8519fba405f0a0ff6e8a3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=e43fc16fccd8519fba405f0a0ff6e8a3"
 
 SRC_URI = "ftp://ftp.gnu.org/gnu/groff/groff-${PV}.tar.gz \
           file://groff-1.18.1.4-remove-mom.patch;striplevel=1 \
-- 
1.7.1


