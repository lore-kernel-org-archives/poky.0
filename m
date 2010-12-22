Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C81FB4C811AA
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:50 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553071"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
Message-Id: <0f041979c07f51a88f6ebc82ba7a762f4119a710.1294099429.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Wed, 22 Dec 2010 09:16:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 14/59] Add split include script file
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:51 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 scripts/adt-installer/scripts/data_define    |   36 ++++++++++++++++
 scripts/adt-installer/scripts/extract_rootfs |   59 ++++++++++++++++++++++++++
 2 files changed, 95 insertions(+), 0 deletions(-)
 create mode 100644 scripts/adt-installer/scripts/data_define
 create mode 100755 scripts/adt-installer/scripts/extract_rootfs

diff --git a/scripts/adt-installer/scripts/data_define b/scripts/adt-installer/scripts/data_define
new file mode 100644
index 0000000..0f8e48b
--- /dev/null
+++ b/scripts/adt-installer/scripts/data_define
@@ -0,0 +1,36 @@
+#!/bin/bash
+
+# Yocto ADT Installer
+#
+# Copyright (C) 2010 Intel Corp.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+config_file="yocto_installer.conf"
+source $config_file
+
+LOCAL_OPKG_LOC="./opkg/build/opkg"
+LOCAL_OPKG_FOLDER="./opkg/build"
+LOCAL_OPKG_SOURCE_FILE="$LOCAL_OPKG_FOLDER/opkg-*.tar.gz"
+OPKG_LIBDIR="/var/lib"
+
+# List all supported root fs types and target types,
+# it will be used in user configuration validity checking
+YOCTOADT_SUPPORTED_ROOTFS="minimal sato sdk lsb"
+YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm powerpc mips"
+# Different host (32 bit or 64 bit) will have different opkg
+# configuration files
+YOCTOADT_OPKG_CONF_FILE_32="./opkg/conf/opkg-sdk-i586.conf"
+YOCTOADT_OPKG_CONF_FILE_64="./opkg/conf/opkg-sdk-x86_64.conf"
+INSTALL_FOLDER=/opt/poky/$YOCTOADT_VERSION
diff --git a/scripts/adt-installer/scripts/extract_rootfs b/scripts/adt-installer/scripts/extract_rootfs
new file mode 100755
index 0000000..5bb8506
--- /dev/null
+++ b/scripts/adt-installer/scripts/extract_rootfs
@@ -0,0 +1,59 @@
+#!/bin/bash
+
+# Yocto ADT Installer
+#
+# Copyright (C) 2010 Intel Corp.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+
+extract_rootfs()
+{
+
+  PSEUDO_LOCALSTATEDIR="$3/var/pseudo"
+  PSEUDO_COMMAND="$3/usr/bin/pseudo"
+  PSEUDO_OPTS="-P $3/usr"
+  TAR_OPTS="-xjf"
+  PSEUDO_OPTS="-P $3/usr"
+
+
+  rm -rf $PSEUDO_LOCALSTATEDIR
+
+  if [ -d "$2" ]; then
+    echo_info "[ADT_INST] Target sysroot location: $2, already exists! If you continue installation, this folder will be re-created."
+    confirm_install
+    rm -rf "$2"
+  fi
+
+  if [ ! -d "$2" ]; then
+    echo_info "[ADT_INST] Creating directory $2..."
+    mkdir -p "$2"
+  fi
+
+  mkdir -p "$PSEUDO_LOCALSTATEDIR"
+  touch "$PSEUDO_LOCALSTATEDIR/pseudo.pid"
+
+  $PSEUDO_COMMAND $PSEUDO_OPTS tar -C $2 "$TAR_OPTS" $LOCAL_DOWNLOAD/$1 &>> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+}
+
+#Main part
+. scripts/util
+
+#Parameter detail is listed below:
+#Param 5: POKY_NATIVE_SYSROOT
+#Param 3 4: user and group
+#Param 2: user defined rootfs extraction directory
+#param 1: sysroot image name
+extract_rootfs $1 $2 $3
-- 
1.7.0.4


