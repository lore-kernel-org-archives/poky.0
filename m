Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E64A4C80479
	for <poky@yoctoproject.org>; Wed,  8 Jun 2011 07:00:21 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p58C0KkZ013852
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 8 Jun 2011 05:00:20 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 8 Jun 2011 05:00:19 -0700
Message-ID: <6d4d6e0b58378e0a7070e6d9fc7e9085f061ee24.1307533714.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1307533714.git.xiaofeng.yan@windriver.com>
References: <cover.1307533714.git.xiaofeng.yan@windriver.com>
Old-Date: Wed, 8 Jun 2011 19:42:08 +0800
Date: Wed, 8 Jun 2011 19:57:25 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] Qt3: Add head file "cstddef" to Qt3
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
X-List-Received-Date: Wed, 08 Jun 2011 12:00:21 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Failed to compile Qt3 while building lsb image with the updated library libstdc++
and compilation tool. Qt3 reported data type "ptrdiff_t" doesn't name a type.
Actually "ptrdiff_t" is defined in head file "cstddef".

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch |   18 ++++++++++++++++++
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb          |    3 ++-
 2 files changed, 20 insertions(+), 1 deletions(-)
 create mode 100644 recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch

diff --git a/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch b/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch
new file mode 100644
index 0000000..9a8f4b4
--- /dev/null
+++ b/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch
@@ -0,0 +1,18 @@
+Qt3  will report "error: 'ptrdiff_t' does not name a type" while building lsb \
+image with the updated library libstdc++ and complication tool.
+The data type "ptrdiff_t" is defined in file cstddef.
+
+Upstream-Status: Pending
+
+Signed-off-by: xiaofeng.yan@windriver.com
+
+--- qt-x11-free-3.3.7/src/tools/qvaluelist.h	2006-10-19 22:25:01.000000000 +0800
++++ qt-x11-free-3.3.7/src/tools/qvaluelist.h.new	2011-06-07 14:57:06.288997350 +0800
+@@ -47,6 +47,7 @@
+ #ifndef QT_NO_STL
+ #include <iterator>
+ #include <list>
++#include <cstddef>
+ #endif
+ 
+ //#define QT_CHECK_VALUELIST_RANGE
diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
index 9a3bcf9..94486ed 100644
--- a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
+++ b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
@@ -9,7 +9,8 @@ LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=b07b0d5ac6b1822effe47173a1744433 \
 SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
 	   file://configure.patch \
 	   file://no-examples.patch \
-           file://gcc4_1-HACK.patch"
+           file://gcc4_1-HACK.patch \
+           file://qt3-cstddef.patch"
 
 require qt-x11-free-common.inc
 
-- 
1.7.0.4


