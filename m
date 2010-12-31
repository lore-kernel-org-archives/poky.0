Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE3A24C81003
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 21:22:05 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Dec 2010 19:22:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,253,1291622400"; d="scan'208";a="641990922"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2010 19:22:05 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PYVTQ-0001gy-GU; Fri, 31 Dec 2010 11:16:12 +0800
Message-Id: <efd438fbab898e45a91f01d60337255164ddaf08.1293765141.git.qing.he@intel.com>
In-Reply-To: <cover.1293765141.git.qing.he@intel.com>
References: <cover.1293765141.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Fri, 31 Dec 2010 11:07:52 +0800
Date: Fri, 31 Dec 2010 11:16:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 6/6] lzo: upgrade to version 2.04
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
X-List-Received-Date: Fri, 31 Dec 2010 03:22:06 -0000

from 2.03

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-support/lzo/lzo-2.03/autofoo.patch    |   17 -----------------
 .../lzo/{lzo-2.03 => lzo-2.04}/acinclude.m4        |    0
 meta/recipes-support/lzo/lzo-2.04/autoconf.patch   |   19 +++++++++++++++++++
 .../lzo/{lzo_2.03.bb => lzo_2.04.bb}               |    9 +++++----
 4 files changed, 24 insertions(+), 21 deletions(-)
 delete mode 100644 meta/recipes-support/lzo/lzo-2.03/autofoo.patch
 rename meta/recipes-support/lzo/{lzo-2.03 => lzo-2.04}/acinclude.m4 (100%)
 create mode 100644 meta/recipes-support/lzo/lzo-2.04/autoconf.patch
 rename meta/recipes-support/lzo/{lzo_2.03.bb => lzo_2.04.bb} (72%)

diff --git a/meta/recipes-support/lzo/lzo-2.03/autofoo.patch b/meta/recipes-support/lzo/lzo-2.03/autofoo.patch
deleted file mode 100644
index 5762f4c..0000000
--- a/meta/recipes-support/lzo/lzo-2.03/autofoo.patch
+++ /dev/null
@@ -1,17 +0,0 @@
----
- configure.ac |    2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-Index: lzo-2.02/configure.ac
-===================================================================
---- lzo-2.02.orig/configure.ac	2007-08-08 15:28:14.000000000 +0100
-+++ lzo-2.02/configure.ac	2007-08-08 15:28:21.000000000 +0100
-@@ -47,7 +47,7 @@ AC_CANONICAL_TARGET
- AM_MAINTAINER_MODE
- 
- if test -z "$ac_abs_top_srcdir"; then
--    _AC_SRCPATHS(.)
-+    _AC_SRCDIRS(.)
- fi
- if test -r .Conf.settings1; then
-     . ./.Conf.settings1
diff --git a/meta/recipes-support/lzo/lzo-2.03/acinclude.m4 b/meta/recipes-support/lzo/lzo-2.04/acinclude.m4
similarity index 100%
rename from meta/recipes-support/lzo/lzo-2.03/acinclude.m4
rename to meta/recipes-support/lzo/lzo-2.04/acinclude.m4
diff --git a/meta/recipes-support/lzo/lzo-2.04/autoconf.patch b/meta/recipes-support/lzo/lzo-2.04/autoconf.patch
new file mode 100644
index 0000000..c342387
--- /dev/null
+++ b/meta/recipes-support/lzo/lzo-2.04/autoconf.patch
@@ -0,0 +1,19 @@
+Date: 12/31/2010
+Didn't find 2.67 specific features, so lower the requirement
+to pass build
+
+Signed-off-by: Qing He <qing.he@intel.com>
+---
+diff --git a/configure.ac b/configure.ac
+index 650749a..2a78845 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -36,7 +36,7 @@ All Rights Reserved.
+ This configure script may be copied, distributed and modified under the
+ terms of the GNU General Public License; see COPYING for more details.])
+ 
+-AC_PREREQ(2.67)
++AC_PREREQ(2.65)
+ AC_INIT([LZO],[2.04],[markus@oberhumer.com],[lzo],[http://www.oberhumer.com/opensource/lzo/])
+ AC_MSG_NOTICE([Configuring LZO $PACKAGE_VERSION])
+ AC_CONFIG_SRCDIR(src/lzo_init.c)
diff --git a/meta/recipes-support/lzo/lzo_2.03.bb b/meta/recipes-support/lzo/lzo_2.04.bb
similarity index 72%
rename from meta/recipes-support/lzo/lzo_2.03.bb
rename to meta/recipes-support/lzo/lzo_2.04.bb
index 05b10ee..b70aeea 100644
--- a/meta/recipes-support/lzo/lzo_2.03.bb
+++ b/meta/recipes-support/lzo/lzo_2.04.bb
@@ -8,11 +8,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=8cad52263e636e25377bc18420118101 \
 PR = "r0"
 
 SRC_URI = "http://www.oberhumer.com/opensource/lzo/download/lzo-${PV}.tar.gz \
-           file://autofoo.patch \
-           file://acinclude.m4"
+           file://autoconf.patch \
+           file://acinclude.m4 \
+           "
 
-SRC_URI[md5sum] = "0c3d078c2e8ea5a88971089a2f02a726"
-SRC_URI[sha256sum] = "8b1b0da8f757b9ac318e1c15a0eac8bdb56ca902a2dd25beda06c0f265f22591"
+SRC_URI[md5sum] = "a383c7055a310e2a71b9ecd19cfea238"
+SRC_URI[sha256sum] = "4ee3a040facf39561f13e4ef2ab99a886fd68251a35d612486ed0625cc6ab428"
 
 inherit autotools
 
-- 
1.7.0


