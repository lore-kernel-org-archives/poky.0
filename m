Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 843664C80FEA
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 08:40:07 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Apr 2011 06:40:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,282,1299484800"; d="scan'208";a="727931945"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga001.jf.intel.com with ESMTP; 01 Apr 2011 06:40:06 -0700
Message-Id: <8d834327e2d84b8d4ad72b9c617d261ab8b206e2.1301664697.git.josh@linux.intel.com>
In-Reply-To: <cover.1301664697.git.josh@linux.intel.com>
References: <cover.1301664697.git.josh@linux.intel.com>
Old-Date: Wed, 30 Mar 2011 23:21:50 +0100
Date: Fri, 01 Apr 2011 14:40:04 +0100
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/7] elfutils: fix builds with gcc 4.6
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
X-List-Received-Date: Fri, 01 Apr 2011 13:40:07 -0000

From: Joshua Lock <josh@linux.intel.com>

gcc 4.6 (as used in Fedora 15) adds some extra warnings which are
included with Werror. The new unused-but-set variable warning causes
an error in libasm of elfutils. Work around this by removing
unused-but-set from Werror.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-devtools/elfutils/elfutils_0.148.bb |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
index b2f700e..c395be8 100644
--- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -40,6 +40,10 @@ SRC_URI += "\
 
 inherit autotools
 
+# GCC 4.6.0 raises an unused-but-set warning in libasm, for now remove
+# this warning from Werror
+CFLAGS_virtclass-native += "-Wno-error=unused-but-set-variable"
+
 EXTRA_OECONF = "--program-prefix=eu-"
 
 do_configure_prepend() {
-- 
1.7.4.1


