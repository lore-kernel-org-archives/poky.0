Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C13FE00300
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960382"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:14 -0700
Message-Id: <5eabb172025849dfa32563a8076b0f639978c338.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 02/17] python: add patch to fix cross compilation on host with linux-3.0
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:32 -0000

From: Martin Jansa <Martin.Jansa@gmail.com>

(From OE-Core rev: 4b7e7b004dacb698ed637f35661a60d2402c00cd)

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../python/python/07-linux3-regen-fix.patch        |   18 ++++++++++++++++++
 meta/recipes-devtools/python/python_2.6.6.bb       |    1 +
 2 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/python/python/07-linux3-regen-fix.patch

diff --git a/meta/recipes-devtools/python/python/07-linux3-regen-fix.patch b/meta/recipes-devtools/python/python/07-linux3-regen-fix.patch
new file mode 100644
index 0000000..d7fb313
--- /dev/null
+++ b/meta/recipes-devtools/python/python/07-linux3-regen-fix.patch
@@ -0,0 +1,18 @@
+Upstream-Status: Inappropriate [embedded specific]
+
+Without this patch it calls cross-compiled python if host is running linux-3.0
+python$EXE ../../Tools/scripts/h2py.py -i '(u_long)' /usr/include/netinet/in.h
+| ./regen: line 3: /OE/shr-core/tmp/work/armv4t-oe-linux-gnueabi/python-2.6.6-nk2.8/Python-2.6.6/python: cannot execute binary file
+
+diff -uNr Python-2.6.6.orig//Lib/plat-linux3/regen Python-2.6.6/Lib/plat-linux3/regen
+--- Python-2.6.6.orig//Lib/plat-linux3/regen	1970-01-01 01:00:00.000000000 +0100
++++ Python-2.6.6/Lib/plat-linux3/regen	2001-08-09 14:48:17.000000000 +0200
+@@ -0,0 +1,8 @@
++#! /bin/sh
++case `uname` in
++Linux*)	;;
++*)	echo Probably not on a Linux system 1>&2
++	exit 1;;
++esac
++set -v
++h2py -i '(u_long)' /usr/include/sys/types.h /usr/include/netinet/in.h /usr/include/dlfcn.h
diff --git a/meta/recipes-devtools/python/python_2.6.6.bb b/meta/recipes-devtools/python/python_2.6.6.bb
index 6553c8f..b0438fe 100644
--- a/meta/recipes-devtools/python/python_2.6.6.bb
+++ b/meta/recipes-devtools/python/python_2.6.6.bb
@@ -15,6 +15,7 @@ SRC_URI = "\
   file://05-enable-ctypes-cross-build.patch \
   file://06-ctypes-libffi-fix-configure.patch \
   file://06-avoid_usr_lib_termcap_path_in_linking.patch \
+  file://07-linux3-regen-fix.patch \
   file://99-ignore-optimization-flag.patch \
   ${DISTRO_SRC_URI} \
 "
-- 
1.7.7


