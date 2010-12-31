Return-Path: <jiajun.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 280D94C811EB
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 02:03:41 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Dec 2010 00:03:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,254,1291622400"; d="scan'208";a="873266367"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by fmsmga001.fm.intel.com with ESMTP; 31 Dec 2010 00:03:40 -0800
Message-Id: <e02aa4a937c0753e25599f3d20054b9a4f5c215a.1293783098.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1293783098.git.jiajun.xu@intel.com>
References: <cover.1293783098.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Fri, 31 Dec 2010 16:06:45 +0800
Date: Fri, 31 Dec 2010 16:16:52 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/4] qemuimagetest: Add basic function check for connman
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
X-List-Received-Date: Fri, 31 Dec 2010 08:03:41 -0000

Add one case for connman sanity test. We check if connmand is running
in background after booting and if there is always one connmand process
running even connmand is executed by several times.

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 scripts/qemuimage-tests/sanity/connman             |   52 ++++++++++++++++++
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
 scripts/qemuimage-tests/tools/connman_test.sh      |   55 ++++++++++++++++++++
 17 files changed, 122 insertions(+), 0 deletions(-)
 create mode 100755 scripts/qemuimage-tests/sanity/connman
 create mode 100644 scripts/qemuimage-tests/tools/connman_test.sh

diff --git a/scripts/qemuimage-tests/sanity/connman b/scripts/qemuimage-tests/sanity/connman
new file mode 100755
index 0000000..8c5b7c5
--- /dev/null
+++ b/scripts/qemuimage-tests/sanity/connman
@@ -0,0 +1,52 @@
+#!/bin/bash
+# Conmman Check Test Case for Sanity Test
+# The case boot up the Qemu target with `poky-qemu qemuxxx`.
+# Then check if connman can work in target.
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
+# Check if connman can work in target
+if [ $RET -eq 0 -a -f $TOOLS/connman_test.sh ]; then
+	# Copy connman_test.sh into target
+	Test_Target_Pre ${TARGET_IPADDR} $TOOLS/connman_test.sh
+	if [ $? -eq 0 ]; then
+		# Run connman_test.sh to check if connman can work in target
+		Test_SSH ${TARGET_IPADDR} "sh $TARGET_TEST_DIR/connman_test.sh"
+		RET=$?
+	else
+		RET=1
+	fi
+fi
+
+if [ ${RET} -eq 0 ]; then
+	Test_Info "Connman Test PASS"
+	Test_Kill_Qemu
+	Test_Print_Result "connman" 0
+	exit 0
+else
+	Test_Info "Connman Test FAIL, Pls. check above error log"
+	Test_Kill_Qemu
+	Test_Print_Result "connman" 1
+	exit 1
+fi
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
index d18a9f7..3a8b129 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
@@ -7,3 +7,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity compiler
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
index d18a9f7..3a8b129 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
@@ -7,3 +7,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity compiler
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
index d18a9f7..3a8b129 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
@@ -7,3 +7,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity compiler
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
index d18a9f7..3a8b129 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
@@ -7,3 +7,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity compiler
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
index 32d2bd1..7b949a8 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity connman
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
index d18a9f7..3a8b129 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
@@ -7,3 +7,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity compiler
+sanity connman
diff --git a/scripts/qemuimage-tests/tools/connman_test.sh b/scripts/qemuimage-tests/tools/connman_test.sh
new file mode 100644
index 0000000..d7e63e7
--- /dev/null
+++ b/scripts/qemuimage-tests/tools/connman_test.sh
@@ -0,0 +1,55 @@
+#!/bin/bash
+# connman test script running in target
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
+	echo -e "\tTARGET: connman has issue when running, Pls. check the error log"
+	echo -e "\tTARGET: ##### Error Log #####"
+	$1
+	echo -e "\tTARGET: #####    End    #####"
+}
+
+# Check if connmand is in target
+if [ ! -f /usr/sbin/connmand ]; then
+	Target_Info "No connmand command found"
+	exit 1
+fi
+
+# Check if connmand is running in background
+count=`ps -eo cmd | cut -d " " -f 1 | grep -c connmand`
+
+if [ $count -ne 1 ]; then
+	Target_Info "connmand has issue when running in background, Pls, check the output of ps"
+	ps -ef cmd | grep connmand
+	exit 1
+fi
+
+# Check if there is always only one connmand running in background
+if [ connmand > /dev/null 2>&1 ]; then
+	Target_Info "connmand command run without problem"
+	count=`ps -eo cmd | cut -d " " -f 1 | grep -c connmand`
+	if [ $count -ne 1 ]; then
+		Target_Info "There are more than one connmand running in background, Pls, check the output of ps"
+		ps -ef cmd | grep connmand
+		exit 1
+	else
+		Target_Info "There is always one connmand running in background, test pass"
+		exit 0
+	fi
+else
+	Target_Err connmand
+	exit 1
+fi
+
+exit 0
-- 
1.7.1


