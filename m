Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 77A494C8110E
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 02:03:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 31 Dec 2010 00:03:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,254,1291622400"; d="scan'208";a="692226568"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by orsmga001.jf.intel.com with ESMTP; 31 Dec 2010 00:03:37 -0800
Message-Id: <c1a54f3ad8130f7565b0097079243bb831e0083a.1293783098.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1293783098.git.jiajun.xu@intel.com>
References: <cover.1293783098.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Fri, 31 Dec 2010 13:35:21 +0800
Date: Fri, 31 Dec 2010 16:16:49 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/4] qemuimagetest: Add basic function check for rpm command
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
X-List-Received-Date: Fri, 31 Dec 2010 08:03:38 -0000

Add one case for rpm query sanity test.

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 scripts/qemuimage-tests/sanity/rpm_query           |   52 ++++++++++++++++++++
 .../scenario/qemuarm/poky-image-lsb                |    1 +
 .../scenario/qemuarm/poky-image-sato               |    1 +
 .../scenario/qemuarm/poky-image-sdk                |    1 +
 .../scenario/qemumips/poky-image-lsb               |    1 +
 .../scenario/qemumips/poky-image-sato              |    1 +
 .../scenario/qemumips/poky-image-sdk               |    1 +
 .../scenario/qemuppc/poky-image-lsb                |    1 +
 .../scenario/qemuppc/poky-image-sato               |    1 +
 .../scenario/qemuppc/poky-image-sdk                |    1 +
 .../scenario/qemux86-64/poky-image-lsb             |    1 +
 .../scenario/qemux86-64/poky-image-sato            |    1 +
 .../scenario/qemux86-64/poky-image-sdk             |    1 +
 .../scenario/qemux86/poky-image-lsb                |    1 +
 .../scenario/qemux86/poky-image-sato               |    1 +
 .../scenario/qemux86/poky-image-sdk                |    1 +
 scripts/qemuimage-tests/tools/rpm_test.sh          |   45 +++++++++++++++++
 17 files changed, 112 insertions(+), 0 deletions(-)
 create mode 100755 scripts/qemuimage-tests/sanity/rpm_query
 create mode 100644 scripts/qemuimage-tests/tools/rpm_test.sh

diff --git a/scripts/qemuimage-tests/sanity/rpm_query b/scripts/qemuimage-tests/sanity/rpm_query
new file mode 100755
index 0000000..9962115
--- /dev/null
+++ b/scripts/qemuimage-tests/sanity/rpm_query
@@ -0,0 +1,52 @@
+#!/bin/bash
+# RPM Check Test Case for Sanity Test
+# The case boot up the Qemu target with `poky-qemu qemuxxx`.
+# Then check if rpm command can work in target.
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
+# Check if rpm query can work in target
+if [ $RET -eq 0 -a -f $TOOLS/rpm_test.sh ]; then
+	# Copy rpm_test.sh into target
+	Test_Target_Pre ${TARGET_IPADDR} $TOOLS/rpm_test.sh
+	if [ $? -eq 0 ]; then
+		# Run rpm_test.sh to check if rpm query can work in target
+		Test_SSH ${TARGET_IPADDR} "sh $TARGET_TEST_DIR/rpm_test.sh -qa"
+		RET=$?
+	else
+		RET=1
+	fi
+fi
+
+if [ ${RET} -eq 0 ]; then
+	Test_Info "rpm query Test PASS"
+	Test_Kill_Qemu
+	Test_Print_Result "rpm_query" 0
+	exit 0
+else
+	Test_Info "rpm query FAIL, Pls. check above error log"
+	Test_Kill_Qemu
+	Test_Print_Result "rpm_query" 1
+	exit 1
+fi
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
index 9ec452b..32d2bd1 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
@@ -5,3 +5,4 @@ sanity dmesg
 sanity shutdown
 sanity zypper_help
 sanity zypper_search
+sanity rpm_query
diff --git a/scripts/qemuimage-tests/tools/rpm_test.sh b/scripts/qemuimage-tests/tools/rpm_test.sh
new file mode 100644
index 0000000..6e6f911
--- /dev/null
+++ b/scripts/qemuimage-tests/tools/rpm_test.sh
@@ -0,0 +1,45 @@
+#!/bin/bash
+# rpm test script running in target
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
+	echo -e "\tTARGET: rpm command has issue when running, Pls. check the error log"
+	echo -e "\tTARGET: ##### Error Log #####"
+	$1
+	echo -e "\tTARGET: #####    End    #####"
+}
+
+which rpm
+if [ $? -ne 0 ]; then
+	Target_Info "No rpm command found"
+	exit 1
+fi
+
+if [ rpm > /dev/null 2>&1 ]; then
+	Target_Info "rpm command run without problem"
+else
+	Target_Err rpm
+	exit 1
+fi
+
+# run rpm with specific command parsed to rpm_test.sh
+rpm $* > /dev/null 2>&1
+
+if [ $? -eq 0 ]; then
+	Target_Info "rpm $* work without problem"
+	exit 0
+else
+	Target_Err rpm $*
+	exit 1
+fi
-- 
1.7.1


