Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A781F4C811EA
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 02:03:39 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Dec 2010 00:03:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,254,1291622400"; d="scan'208";a="588595653"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by orsmga002.jf.intel.com with ESMTP; 31 Dec 2010 00:03:38 -0800
Message-Id: <51f0ae57fb04e9d820087d2fdebeb6dab816bfb4.1293783098.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1293783098.git.jiajun.xu@intel.com>
References: <cover.1293783098.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Fri, 31 Dec 2010 15:15:31 +0800
Date: Fri, 31 Dec 2010 16:16:50 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/4] qemuimagetest: Add basic function check for gcc/g++/make command in target
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
X-List-Received-Date: Fri, 31 Dec 2010 08:03:39 -0000

Add one case for compile tools sanity test in target, including gcc/g++/make.

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 scripts/qemuimage-tests/sanity/compiler            |   52 ++++++++
 .../scenario/qemuarm/poky-image-sdk                |    1 +
 .../scenario/qemumips/poky-image-sdk               |    1 +
 .../scenario/qemuppc/poky-image-sdk                |    1 +
 .../scenario/qemux86-64/poky-image-sdk             |    1 +
 .../scenario/qemux86/poky-image-sdk                |    1 +
 scripts/qemuimage-tests/tools/compiler_test.sh     |  137 ++++++++++++++++++++
 7 files changed, 194 insertions(+), 0 deletions(-)
 create mode 100755 scripts/qemuimage-tests/sanity/compiler
 create mode 100644 scripts/qemuimage-tests/tools/compiler_test.sh

diff --git a/scripts/qemuimage-tests/sanity/compiler b/scripts/qemuimage-tests/sanity/compiler
new file mode 100755
index 0000000..0290540
--- /dev/null
+++ b/scripts/qemuimage-tests/sanity/compiler
@@ -0,0 +1,52 @@
+#!/bin/bash
+# Compiler Test Case for Sanity Test
+# The case boot up the Qemu target with `poky-qemu qemuxxx`.
+# Then check if gcc/g++/make command can work in target.
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
+# Check if gcc/g++/make can work in target
+if [ $RET -eq 0 -a -f $TOOLS/compiler_test.sh ]; then
+	# Copy compiler_test.sh into target
+	Test_Target_Pre ${TARGET_IPADDR} $TOOLS/compiler_test.sh
+	if [ $? -eq 0 ]; then
+		# Run compiler_test.sh to check if gcc/g++/make can work in target
+		Test_SSH ${TARGET_IPADDR} "sh $TARGET_TEST_DIR/compiler_test.sh"
+		RET=$?
+	else
+		RET=1
+	fi
+fi
+
+if [ ${RET} -eq 0 ]; then
+	Test_Info "Compiler Test PASS"
+	Test_Kill_Qemu
+	Test_Print_Result "compiler" 0
+	exit 0
+else
+	Test_Info "Compiler FAIL, Pls. check above error log"
+	Test_Kill_Qemu
+	Test_Print_Result "compiler" 1
+	exit 1
+fi
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
index 32d2bd1..d18a9f7 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity compiler
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
index 32d2bd1..d18a9f7 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity compiler
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
index 32d2bd1..d18a9f7 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity compiler
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
index 32d2bd1..d18a9f7 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity compiler
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
index 32d2bd1..d18a9f7 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
@@ -6,3 +6,4 @@ sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity compiler
diff --git a/scripts/qemuimage-tests/tools/compiler_test.sh b/scripts/qemuimage-tests/tools/compiler_test.sh
new file mode 100644
index 0000000..9c30d6d
--- /dev/null
+++ b/scripts/qemuimage-tests/tools/compiler_test.sh
@@ -0,0 +1,137 @@
+#!/bin/bash
+# compiler test script running in target
+#
+# Author: Jiajun Xu <jiajun.xu@intel.com>
+#
+# This file is licensed under the GNU General Public License,
+# Version 2.
+#
+
+# Prepare test folder for compiler test
+COMPILE_FOLDER="/opt/test/compile_test"
+TEST_FILE="$COMPILE_FOLDER/compile_test.c"
+EXECUTE_FILE="$COMPILE_FOLDER/compile_test"
+TEST_MAKEFILE="$COMPILE_FOLDER/makefile"
+TEST_LIST="gcc g++ make"
+
+if [ ! -d $COMPILE_FOLDER ]; then
+	mkdir -p $COMPILE_FOLDER
+fi
+
+Target_Info()
+{
+	echo -e "\tTARGET: $*"
+}
+
+Target_Err()
+{
+	echo -e "\tTARGET: ##### Error Log #####"
+	$@
+	echo -e "\tTARGET: #####    End    #####"
+}
+
+# Function to generate a c test file for compiler testing
+Gen_File()
+{
+	temp=`mktemp`
+
+	# Generate c/c++ test file for compiler testing
+	echo "#include <stdio.h>" >> $temp
+	echo "#include <math.h>" >> $temp
+	echo "" >> $temp
+	echo "double" >> $temp
+	echo "convert(long long l)" >> $temp
+	echo "{" >> $temp
+	echo "    return (double)l;    // or double(l)" >> $temp
+	echo "}" >> $temp
+	echo "" >> $temp
+	echo "int" >> $temp
+	echo "main(int argc, char * argv[])" >> $temp
+	echo "{" >> $temp
+	echo "    long long l = 10;" >> $temp
+	echo "    double f;" >> $temp
+	echo "" >> $temp
+	echo "    f = convert(l);" >> $temp
+	echo "    printf(\"convert: %lld => %f\n\", l, f);" >> $temp
+	echo "" >> $temp
+	echo "    f = 1234.67;" >> $temp
+	echo "    printf(\"floorf(%f) = %f\n\", f, floorf(f));" >> $temp
+	echo "    return 0;" >> $temp
+	echo "}" >> $temp
+	echo $temp
+}
+
+# Function to generate a makefile for compiler testing
+Gen_Makefile()
+{
+	temp=`mktemp`
+	basename=`basename $EXECUTE_FILE`
+
+	echo -e "$basename: $basename.o" >> $temp
+	echo -e "\tgcc -o $basename $basename.o -lm" >> $temp
+	echo -e "$basename.o: $basename.c" >> $temp
+	echo -e "\tgcc -c $basename.c" >> $temp
+
+	echo $temp
+}
+
+# Generate a c test file for compiler testing
+test_file=`Gen_File`
+
+MOVE=`which mv`
+$MOVE $test_file $TEST_FILE
+
+# Begin compiler test in target
+for cmd in $TEST_LIST
+do
+	which $cmd
+	if [ $? -ne 0 ]; then
+		Target_Info "No $cmd command found"
+		exit 1
+	fi
+
+	if [ "$cmd" == "make" ]; then
+		rm -rf $EXECUTE_FILE
+
+		# For makefile test, we need to generate a makefile and run with a c file
+		makefile=`Gen_Makefile`
+		$MOVE $makefile $TEST_MAKEFILE
+
+		cd `dirname $TEST_MAKEFILE`
+		make
+
+		if [ $? -ne 0 ]; then
+			Target_Info "$cmd running with error, Pls. check error in following"
+			Target_Err make
+			exit 1
+		fi
+	else
+		rm -rf $EXECUTE_FILE
+
+		# For gcc/g++, we compile a c test file and check the output
+		$cmd $TEST_FILE -o $EXECUTE_FILE -lm
+
+		if [ $? -ne 0 ]; then
+			Target_Info "$cmd running with error, Pls. check error in following"
+			Target_Err $cmd $TEST_FILE -o $EXECUTE_FILE -lm
+			exit 1
+		fi
+	fi
+
+		# Check if the binary file generated by $cmd can work without error
+		if [ -f $EXECUTE_FILE ]; then
+			$EXECUTE_FILE
+			if [ $? -ne 0 ]; then
+				Target_Info "$EXECUTE_FILE running with error, Pls. check error in following"
+				Target_Err $EXECUTE_FILE
+				exit 1
+			else
+				Target_Info "$cmd can work without problem in target"
+			fi
+		else
+			Target_Info "No executalbe file $EXECUTE_FILE found, Pls. check the error log"
+			exit 1
+		fi
+done
+
+exit 0
-- 
1.7.1


