Return-Path: <cristiana.voicu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69520E008DF
	for <poky@yoctoproject.org>; Tue, 25 Feb 2014 05:27:06 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Feb 2014 05:27:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,540,1389772800"; d="scan'208";a="481452631"
Received: from cvoicu-vostro-460.rb.intel.com ([10.237.105.62])
	by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2014 05:27:03 -0800
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 25 Feb 2014 15:35:01 +0200
Message-Id: <1393335301-26357-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] meta-hob: this layer is not necessary
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Feb 2014 13:27:06 -0000

Meta-hob layer is not necessary, because the images can be
placed in the build directory. Patches for this are on the
bitbake-devel list.

[YOCTO #5118]
Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 meta-hob/COPYING.MIT     |   17 -----------------
 meta-hob/conf/layer.conf |   15 ---------------
 2 files changed, 32 deletions(-)
 delete mode 100644 meta-hob/COPYING.MIT
 delete mode 100644 meta-hob/conf/layer.conf

diff --git a/meta-hob/COPYING.MIT b/meta-hob/COPYING.MIT
deleted file mode 100644
index fb950dc..0000000
--- a/meta-hob/COPYING.MIT
+++ /dev/null
@@ -1,17 +0,0 @@
-Permission is hereby granted, free of charge, to any person obtaining a copy 
-of this software and associated documentation files (the "Software"), to deal 
-in the Software without restriction, including without limitation the rights 
-to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
-copies of the Software, and to permit persons to whom the Software is 
-furnished to do so, subject to the following conditions:
-
-The above copyright notice and this permission notice shall be included in 
-all copies or substantial portions of the Software.
-
-THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
-IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
-FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
-AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
-LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
-OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
-THE SOFTWARE.
diff --git a/meta-hob/conf/layer.conf b/meta-hob/conf/layer.conf
deleted file mode 100644
index 1785e65..0000000
--- a/meta-hob/conf/layer.conf
+++ /dev/null
@@ -1,15 +0,0 @@
-# We have a conf and classes directory, add to BBPATH
-BBPATH .= ":${LAYERDIR}"
-
-# We have recipes-* directories, add to BBFILES
-BBFILES += "${LAYERDIR}/recipes-*/*/*.bb"
-
-BBFILE_COLLECTIONS += "hob"
-BBFILE_PATTERN_hob = "^${LAYERDIR}/"
-BBFILE_PRIORITY_hob = "1"
-
-# This should only be incremented on significant changes that will
-# cause compatibility issues with other layers
-LAYERVERSION_hob = "1"
-
-LAYERDEPENDS_hob = "core"
-- 
1.7.9.5


