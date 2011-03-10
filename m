Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E803D4C800A3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 10:51:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Mar 2011 08:51:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,297,1297065600"; d="scan'208";a="895914524"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2011 08:51:39 -0800
Message-Id: <56fde9d6e6adfddc3ee3a01082f7013e6120da18.1299775598.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299775598.git.sgw@linux.intel.com>
References: <cover.1299775598.git.sgw@linux.intel.com>
Old-Date: Tue, 8 Mar 2011 18:50:02 -0600
Date: Thu, 10 Mar 2011  8:51:37 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 4/8] gcc-runtime: Ensure that gcc-runtime builds a debug package
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
X-List-Received-Date: Thu, 10 Mar 2011 16:51:51 -0000

From: Mark Hatle <mark.hatle@windriver.com>

The gcc-runtime package will now create the proper dbg package.  The
RRECOMMENDS change is required to deal with the default.  This is
documented in bug 824.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-devtools/gcc/gcc-package-runtime.inc |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-package-runtime.inc b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
index e8c9011..04c70c0 100644
--- a/meta/recipes-devtools/gcc/gcc-package-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
@@ -1,4 +1,5 @@
 PACKAGES = "\
+  ${PN}-dbg \
   libstdc++ \
   libstdc++-precompile-dev \
   libstdc++-dev \
@@ -11,6 +12,8 @@ PACKAGES = "\
   libmudflap \
   libmudflap-dev \
 "
+# The base package doesn't exist, so we clear the recommends.
+RRECOMMENDS_${PN}-dbg = ""
 
 FILES_libg2c = "${target_libdir}/libg2c.so.*"
 FILES_libg2c-dev = "\
-- 
1.7.1.1


