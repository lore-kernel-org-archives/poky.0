Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECFB74C80FFE
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 02:53:11 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Dec 2010 00:53:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,323,1288594800"; d="scan'208";a="359789118"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by azsmga001.ch.intel.com with ESMTP; 10 Dec 2010 00:53:10 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PQydz-00039P-83; Fri, 10 Dec 2010 16:47:59 +0800
Message-Id: <a92bd524a04c4d9fcb8ced9d4d38a85fda67d68f.1291970759.git.qing.he@intel.com>
In-Reply-To: <cover.1291970759.git.qing.he@intel.com>
References: <cover.1291970759.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 10 Dec 2010 15:58:02 +0800
To: poky@yoctoproject.org
Subject: [PATCH 4/8] diffutils: upgrade to version 3.0
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
X-List-Received-Date: Fri, 10 Dec 2010 08:53:12 -0000

original version 2.8.1 is reserved for GPLv2

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-extended/diffutils/diffutils_3.0.bb |   25 ++++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/diffutils/diffutils_3.0.bb

diff --git a/meta/recipes-extended/diffutils/diffutils_3.0.bb b/meta/recipes-extended/diffutils/diffutils_3.0.bb
new file mode 100644
index 0000000..427efdf
--- /dev/null
+++ b/meta/recipes-extended/diffutils/diffutils_3.0.bb
@@ -0,0 +1,25 @@
+DESCRIPTION = "Diffutils contains the GNU diff, diff3, \
+sdiff, and cmp utilities. These programs are usually \
+used for creating patch files."
+SECTION = "base"
+LICENSE = "GPLv3+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+PR = "r0"
+
+SRC_URI = "${GNU_MIRROR}/diffutils/diffutils-${PV}.tar.gz"
+
+inherit autotools update-alternatives gettext
+
+# diffutils assumes non-glibc compilation with uclibc and
+# this causes it to generate its own implementations of
+# standard functionality.  regex.c actually breaks compilation
+# because it uses __mempcpy, there are other things (TBD:
+# see diffutils.mk in buildroot)
+EXTRA_OECONF_linux-uclibc = "--without-included-regex"
+
+ALTERNATIVE_LINKS = "${bindir}/diff ${bindir}/cmp"
+ALTERNATIVE_PRIORITY = "100"
+
+SRC_URI[md5sum] = "684aaba1baab743a2a90e52162ff07da"
+SRC_URI[sha256sum] = "2fb91f65bbae3c6043b85ba23967f27235b12928da8e406dc91b48b0a589e809"
-- 
1.7.0


