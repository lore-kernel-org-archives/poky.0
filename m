Return-Path: <jiajun.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92EF74C81110
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 02:03:52 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Dec 2010 00:03:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,254,1291622400"; d="scan'208";a="368387897"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by azsmga001.ch.intel.com with ESMTP; 31 Dec 2010 00:03:35 -0800
Message-Id: <c0a94487501ea578b7e67f3ecd663488eca41cae.1293783098.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1293783098.git.jiajun.xu@intel.com>
References: <cover.1293783098.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 13:57:04 +0800
Date: Fri, 31 Dec 2010 16:16:47 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/4] qemuimagetest: Add basic function check for zypper command
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
X-List-Received-Date: Fri, 31 Dec 2010 08:03:53 -0000

Add two cases for zypper sanity test.

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 scripts/qemuimage-tests/sanity/zypper_help         |   52 ++++++++++++++++++++
 scripts/qemuimage-tests/sanity/zypper_search       |   52 ++++++++++++++++++++
 .../scenario/qemuarm/poky-image-lsb                |    2 +
 .../scenario/qemuarm/poky-image-sato               |    2 +
 .../scenario/qemuarm/poky-image-sdk                |    2 +
 .../scenario/qemumips/poky-image-lsb               |    2 +
 .../scenario/qemumips/poky-image-sato              |    2 +
 .../scenario/qemumips/poky-image-sdk               |    2 +
 .../scenario/qemuppc/poky-image-lsb                |    2 +
 .../scenario/qemuppc/poky-image-sato               |    2 +
 .../scenario/qemuppc/poky-image-sdk                |    2 +
 .../scenario/qemux86-64/poky-image-lsb             |    2 +
 .../scenario/qemux86-64/poky-image-sato            |    2 +
 .../scenario/qemux86-64/poky-image-sdk             |    2 +
 .../scenario/qemux86/poky-image-lsb                |    2 +
 .../scenario/qemux86/poky-image-sato               |    2 +
 .../scenario/qemux86/poky-image-sdk                |    2 +
 scripts/qemuimage-tests/tools/zypper_test.sh       |   45 +++++++++++++++++
 18 files changed, 179 insertions(+), 0 deletions(-)
 create mode 100755 scripts/qemuimage-tests/sanity/zypper_help
 create mode 100755 scripts/qemuimage-tests/sanity/zypper_search
 create mode 100644 scripts/qemuimage-tests/tools/zypper_test.sh

diff --git a/scripts/qemuimage-tests/sanity/zypper_help b/scripts/qemuimage-tests/sanity/zypper_help
new file mode 100755
index 0000000..e052501
--- /dev/null
+++ b/scripts/qemuimage-tests/sanity/zypper_help
@@ -0,0 +1,52 @@
+#!/bin/bash
+# Zypper Check Test Case for Sanity Test
+# The case boot up the Qemu target with `poky-qemu qemuxxx`.
+# Then check if zypper command can work in target.
+#
+# Author: Jiajun Xu <jiajun.xu@intel.com>
+#
+# This file is licensed under the GNU General Public License,
+# Version 2.
+#
+
+. $POKYBASE/scripts/qemuimage-testlib
+
+TIMEOUT=360
+RET=1
+
+# Start qemu and check its network
+Test_Create_Qemu ${TIMEOUT}
+
+# If qemu network is up, check ssh service in qemu
+if [ $? -eq 0 ]; then
+	Test_Info "Begin to Test SSH Service in Qemu"
+	Test_SSH_UP ${TARGET_IPADDR} ${TIMEOUT}
+	RET=$?
+else
+	RET=1
+fi
+
+# Check if zypper help can work in target
+if [ $RET -eq 0 -a -f $TOOLS/zypper_test.sh ]; then
+	# Copy zypper_test.sh into target
+	Test_Target_Pre ${TARGET_IPADDR} $TOOLS/zypper_test.sh
+	if [ $? -eq 0 ]; then
+		# Run zypper_test.sh to check if zypper help can work in target
+		Test_SSH ${TARGET_IPADDR} "sh $TARGET_TEST_DIR/zypper_test.sh help"
+		RET=$?
+	else
+		RET=1
+	fi
+fi
+
+if [ ${RET} -eq 0 ]; then
+	Test_Info "zypper help Test PASS"
+	Test_Kill_Qemu
+	Test_Print_Result "zypper_help" 0
+	exit 0
+else
+	Test_Info "zypper help FAIL, Pls. check above error log"
+	Test_Kill_Qemu
+	Test_Print_Result "zypper_help" 1
+	exit 1
+fi
diff --git a/scripts/qemuimage-tests/sanity/zypper_search b/scripts/qemuimage-tests/sanity/zypper_search
new file mode 100755
index 0000000..b756db8
--- /dev/null
+++ b/scripts/qemuimage-tests/sanity/zypper_search
@@ -0,0 +1,52 @@
+#!/bin/bash
+# Zypper Check Test Case for Sanity Test
+# The case boot up the Qemu target with `poky-qemu qemuxxx`.
+# Then check if zypper command can work in target.
+#
+# Author: Jiajun Xu <jiajun.xu@intel.com>
+#
+# This file is licensed under the GNU General Public License,
+# Version 2.
+#
+
+. $POKYBASE/scripts/qemuimage-testlib
+
+TIMEOUT=360
+RET=1
+
+# Start qemu and check its network
+Test_Create_Qemu ${TIMEOUT}
+
+# If qemu network is up, check ssh service in qemu
+if [ $? -eq 0 ]; then
+	Test_Info "Begin to Test SSH Service in Qemu"
+	Test_SSH_UP ${TARGET_IPADDR} ${TIMEOUT}
+	RET=$?
+else
+	RET=1
+fi
+
+# Check if zypper search can work in target
+if [ $RET -eq 0 -a -f $TOOLS/zypper_test.sh ]; then
+	# Copy zypper_test.sh into target
+	Test_Target_Pre ${TARGET_IPADDR} $TOOLS/zypper_test.sh
+	if [ $? -eq 0 ]; then
+		# Run zypper_test.sh to check if zypper search can work in target
+		Test_SSH ${TARGET_IPADDR} "sh $TARGET_TEST_DIR/zypper_test.sh search avahi"
+		RET=$?
+	else
+		RET=1
+	fi
+fi
+
+if [ ${RET} -eq 0 ]; then
+	Test_Info "zypper search package avahi Test PASS"
+	Test_Kill_Qemu
+	Test_Print_Result "zypper_search" 0
+	exit 0
+else
+	Test_Info "zypper search package avahi FAIL, Pls. check above error log"
+	Test_Kill_Qemu
+	Test_Print_Result "zypper_search" 1
+	exit 1
+fi
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
index b8e9847..9ec452b 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
@@ -3,3 +3,5 @@ sanity ssh
 sanity scp
 sanity dmesg
 sanity shutdown
+sanity zypper_help
+sanity zypper_search
diff --git a/scripts/qemuimage-tests/tools/zypper_test.sh b/scripts/qemuimage-tests/tools/zypper_test.sh
new file mode 100644
index 0000000..5e8e7aa
--- /dev/null
+++ b/scripts/qemuimage-tests/tools/zypper_test.sh
@@ -0,0 +1,45 @@
+#!/bin/bash
+# zypper test script running in target
+#
+# Author: Jiajun Xu <jiajun.xu@intel.com>
+#
+# This file is licensed under the GNU General Public License,
+# Version 2.
+#
+
+Target_Info()
+{
+	echo -e "\tTARGET: $*"
+}
+
+Target_Err()
+{
+	echo -e "\tTARGET: zypper command has issue when running, Pls. check the error log"
+	echo -e "\tTARGET: ##### Error Log #####"
+	$1
+	echo -e "\tTARGET: #####    End    #####"
+}
+
+which zypper
+if [ $? -ne 0 ]; then
+	Target_Info "No zypper command found"
+	exit 1
+fi
+
+if [ zypper > /dev/null 2>&1 ]; then
+	Target_Info "zypper command run without problem"
+else
+	Target_Err zypper
+	exit 1
+fi
+
+# run zypper with specific command parsed to zypper_test.sh
+zypper $* > /dev/null 2>&1
+
+if [ $? -eq 0 ]; then
+	Target_Info "zypper $* work without problem"
+	exit 0
+else
+	Target_Err zypper $*
+	exit 1
+fi
-- 
1.7.1


