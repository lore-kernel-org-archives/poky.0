Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6A714C811EC
	for <poky@pokylinux.org>; Tue, 18 Jan 2011 10:22:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2011 08:22:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="594090929"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2011 08:22:52 -0800
Message-Id: <9c516377e84d9251a50acc0750d42ce136b051af.1295368476.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1295368476.git.jiajun.xu@intel.com>
References: <cover.1295368476.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Wed, 19 Jan 2011 00:22:30 +0800
Date: Wed, 19 Jan 2011  0:36:31 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/1] qemuimagetest: Use same image during sanity testing instead of copying a new image for each case
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
X-List-Received-Date: Tue, 18 Jan 2011 16:22:54 -0000

To reduce the time on sanity testing, we remove variable SHARE_IMAGE and use
a new variable TEST_SERIALIZE in local.conf. It is by default set to 1. Poky
will copy and boot the to-be tested image for only once. It will not remove
or kill the image and test cases will be serialized executed against the same
image. If it is set to 0, image is always be copied for each cases, which takes
much time. I had a experiment that latest qemuppc sato only takes 7 minutes to
finish 9 sanity test cases, which takes more than 20 minutes before.

I also removed sanity case "boot" from sato/sdk/lsb because the other cases for
these targets already cover the check point of "boot".

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 meta/classes/imagetest-qemu.bbclass                |   33 +++++-
 meta/conf/local.conf.sample                        |   10 +-
 scripts/qemuimage-testlib                          |  110 ++++++++++++++------
 scripts/qemuimage-tests/sanity/compiler            |    2 +-
 scripts/qemuimage-tests/sanity/connman             |    2 +-
 scripts/qemuimage-tests/sanity/dmesg               |    2 +-
 scripts/qemuimage-tests/sanity/rpm_query           |    2 +-
 scripts/qemuimage-tests/sanity/scp                 |    2 +-
 scripts/qemuimage-tests/sanity/shutdown            |   11 +-
 scripts/qemuimage-tests/sanity/ssh                 |    2 +-
 scripts/qemuimage-tests/sanity/zypper_help         |    2 +-
 scripts/qemuimage-tests/sanity/zypper_search       |    2 +-
 .../scenario/qemuarm/poky-image-lsb                |    3 +-
 .../scenario/qemuarm/poky-image-sato               |    3 +-
 .../scenario/qemuarm/poky-image-sdk                |    3 +-
 .../scenario/qemumips/poky-image-lsb               |    3 +-
 .../scenario/qemumips/poky-image-sato              |    3 +-
 .../scenario/qemumips/poky-image-sdk               |    3 +-
 .../scenario/qemuppc/poky-image-lsb                |    3 +-
 .../scenario/qemuppc/poky-image-sato               |    3 +-
 .../scenario/qemuppc/poky-image-sdk                |    3 +-
 .../scenario/qemux86-64/poky-image-lsb             |    3 +-
 .../scenario/qemux86-64/poky-image-sato            |    3 +-
 .../scenario/qemux86-64/poky-image-sdk             |    3 +-
 .../scenario/qemux86/poky-image-lsb                |    3 +-
 .../scenario/qemux86/poky-image-sato               |    3 +-
 .../scenario/qemux86/poky-image-sdk                |    3 +-
 27 files changed, 138 insertions(+), 87 deletions(-)

diff --git a/meta/classes/imagetest-qemu.bbclass b/meta/classes/imagetest-qemu.bbclass
index 28bb218..8301df8 100644
--- a/meta/classes/imagetest-qemu.bbclass
+++ b/meta/classes/imagetest-qemu.bbclass
@@ -5,7 +5,9 @@ TEST_LOG ?= "${LOG_DIR}/qemuimagetests"
 TEST_RESULT ?= "${TEST_DIR}/result"
 TEST_TMP ?= "${TEST_DIR}/tmp"
 TEST_SCEN ?= "sanity"
-SHARE_IMAGE ?= "1"
+TEST_STATUS ?= "${TEST_TMP}/status"
+TARGET_IPSAVE ?= "${TEST_TMP}/target_ip"
+TEST_SERIALIZE ?= "1"
 
 python do_qemuimagetest() {
     qemuimagetest_main(d)
@@ -35,6 +37,17 @@ def qemuimagetest_main(d):
     machine = bb.data.getVar('MACHINE', d, 1)
     pname = bb.data.getVar('PN', d, 1)
     
+    """function to save test cases running status"""
+    def teststatus(test, status, index, length):
+        test_status = bb.data.getVar('TEST_STATUS', d, 1)
+        if not os.path.exists(test_status):
+            raise bb.build.FuncFailed("No test status file existing under TEST_TMP")
+
+        f = open(test_status, "w")
+        f.write("\t%-15s%-15s%-15s%-15s\n" % ("Case", "Status", "Number", "Total"))
+        f.write("\t%-15s%-15s%-15s%-15s\n" % (case, status, index, length))
+        f.close()
+
     """funtion to run each case under scenario"""
     def runtest(scen, case, fulltestpath):
         resultpath = bb.data.getVar('TEST_RESULT', d, 1)
@@ -56,11 +69,13 @@ def qemuimagetest_main(d):
         os.environ["DISPLAY"] = bb.data.getVar("DISPLAY", d, True)
         os.environ["POKYBASE"] = bb.data.getVar("POKYBASE", d, True)
         os.environ["TOPDIR"] = bb.data.getVar("TOPDIR", d, True)
-        os.environ["SHARE_IMAGE"] = bb.data.getVar("SHARE_IMAGE", d, True)
+        os.environ["TEST_STATUS"] = bb.data.getVar("TEST_STATUS", d, True)
+        os.environ["TARGET_IPSAVE"] = bb.data.getVar("TARGET_IPSAVE", d, True)
+        os.environ["TEST_SERIALIZE"] = bb.data.getVar("TEST_SERIALIZE", d, True)
 
         """run Test Case"""
         bb.note("Run %s test in scenario %s" % (case, scen))
-        os.system("%s | tee -a %s" % (fulltestpath, caselog))
+        os.system("%s" % fulltestpath)
     
     """Generate testcase list in runtime"""
     def generate_list(testlist):
@@ -119,7 +134,13 @@ def qemuimagetest_main(d):
 
     tmppath = bb.data.getVar('TEST_TMP', d, 1)
     bb.utils.mkdirhier(tmppath)
-    
+
+    """initialize test status file"""
+    test_status = bb.data.getVar('TEST_STATUS', d, 1)
+    if os.path.exists(test_status):
+        os.remove(test_status)
+    os.system("touch %s" % test_status)
+
     """initialize result file"""
     resultpath = bb.data.getVar('TEST_RESULT', d, 1)
     bb.utils.mkdirhier(resultpath)
@@ -142,9 +163,11 @@ def qemuimagetest_main(d):
     fulllist = generate_list(testlist)
 
     """Begin testing"""
-    for test in fulllist:
+    for index,test in enumerate(fulllist):
         (scen, case, fullpath) = test
+        teststatus(case, "running", index, (len(fulllist) - 1))
         runtest(scen, case, fullpath)
+        teststatus(case, "finished", index, (len(fulllist) - 1))
     
     """Print Test Result"""
     ret = 0
diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index cb0e548..4567a82 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -158,11 +158,11 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
 
 #Because of the QEMU booting slowness issue(see bug #646 and #618), autobuilder
 #may suffer a timeout issue when running sanity test. We introduce variable
-#SHARE_IMAGE here to fix the issue. It is by default set to 1. Poky will copy
-#latest built-out image and keep using it in sanity testing. If it is set to 0,
-#latest built-out image will be copied and tested for each case, which will take
-#much time.
-#SHARE_IMAGE = "1"
+#TEST_SERIALIZE here to reduce the time on sanity test. It is by default set 
+#to 1. Poky will start image and run cases in the same image without reboot 
+#or kill. If it is set to 0, the image will be copied and tested for each 
+#case, which will take much time.
+#TEST_SERIALIZE = "1"
 
 # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
 # wish to perform the time-consuming step of generating all LIBC locales.
diff --git a/scripts/qemuimage-testlib b/scripts/qemuimage-testlib
index b9afcf5..823cbfa 100644
--- a/scripts/qemuimage-testlib
+++ b/scripts/qemuimage-testlib
@@ -39,6 +39,19 @@ Test_Info()
 	echo -e "\tTest_Info: $*"
 }
 
+# function to update target ip address
+# $1 is the process id of the process, which starts the qemu target
+# $2 is the ip address of the target
+Test_Update_IPSAVE()
+{
+	local pid=$1
+	local ip_addr=$2
+
+	if [ "$TEST_SERIALIZE" -eq 1 ]; then
+		echo "$pid $ip_addr" > $TARGET_IPSAVE
+	fi
+}
+
 # function to copy files from host into target
 # $1 is the ip address of target
 # $2 is the files, which need to be copied into target
@@ -99,6 +112,11 @@ Test_SSH_UP()
 	local timeout=$2
 	local interval=0
 
+	# If TEST_SERIALIZE is set, use existing running qemu for testing
+	if [ ${TEST_SERIALIZE} -eq 1 -a -e ${TARGET_IPSAVE} ]; then
+		timeout=50
+	fi
+
 	while [ ${interval} -lt ${timeout} ]
 	do
 		Test_SSH ${ip_addr} "hostname"
@@ -106,13 +124,13 @@ Test_SSH_UP()
 			interval=`expr $interval + 10`
 			sleep 10
 		else
-			Test_Info "We can ssh on ${ip_addr} now"
+			Test_Info "We can ssh on ${ip_addr} within ${interval} seconds"
 			return 0
 		fi
 
 	done
 
-	Test_Info "We can not ssh on ${ip_addr} in ${timeout}"
+	Test_Info "We can not ssh on ${ip_addr} in ${timeout} seconds"
 	return 1
 }
 
@@ -162,6 +180,8 @@ Test_Kill_Qemu()
 	local ret=0
 	local ppid=0
 	local i=0
+	local index=0
+	local total=0
 	declare local pid
 
 	# Check if $1 pid exists and is a qemu process
@@ -186,16 +206,39 @@ Test_Kill_Qemu()
 			ret=$?
 		done
 
-		# Kill these children pids from the last one
-		while [ $i -ne 0 ]
-		do
-			i=$((i-1))
-			kill ${pid[$i]}
-			sleep 2
-		done
+		# When TEST_SERIALIZE is set, qemu process will not be
+		# killed until all the cases are finished
+		if [ ${TEST_SERIALIZE} -eq 1 -a -e ${TEST_STATUS} ]; then
+			index=`sed -n 2p ${TEST_STATUS} | awk '{print $3}'`
+			total=`sed -n 2p ${TEST_STATUS} | awk '{print $4}'`
+			if [ ${index} != ${total} ]; then
+				Test_Info "Do not kill the qemu process and use it for later testing"
+				Test_Update_IPSAVE $PID $TARGET_IPADDR
+			else
+				# If it is the last case, let's kill it
+				while [ $i -ne 0 ]
+				do
+					i=$((i-1))
+					kill ${pid[$i]}
+					sleep 2
+				done
+
+				# Kill the parent id
+				kill $PID
+			fi
 
-		# Kill the parent id
-		kill $PID
+		else
+			# Kill these children pids from the last one
+			while [ $i -ne 0 ]
+			do
+				i=$((i-1))
+				kill ${pid[$i]}
+				sleep 2
+			done
+
+			# Kill the parent id
+			kill $PID
+		fi
 	fi
 
 	return
@@ -209,7 +252,7 @@ Test_Check_Qemu_UP()
 		Test_Info "There is no Qemu process"
 		return 1
 	else
-		Test_Info "There is at least Qemu process running"
+		Test_Info "There is at least one Qemu process running"
 		return 0
 	fi
 }
@@ -384,31 +427,29 @@ Test_Create_Qemu()
 	
 	CP=`which cp`
 
-	# When SHARE_IMAGE is set, we use the existing image under tmp folder
-	if [ -e "$TEST_ROOTFS_IMAGE" ]; then
-		if [ ${SHARE_IMAGE} -eq 1 ]; then
-			ROOTFS_IMAGE="$TEST_ROOTFS_IMAGE"
-			TEST_ROOTFS_IMAGE="${TEST_TMP}/${QEMUTARGET}-${QEMUARCH}-shared-test.ext3"
-		fi
+	# When TEST_SERIALIZE is set, we use the existing image under tmp folder
+	if [ ${TEST_SERIALIZE} -eq 1 -a -e "$TARGET_IPSAVE" ]; then
+		# If TARGET_IPSAVE exists, check PID of the qemu process from it
+		PID=`awk '{print $1}' $TARGET_IPSAVE`
+		timeout=50
+	else
 		rm -rf $TEST_ROOTFS_IMAGE
-	fi
+		$CP $ROOTFS_IMAGE $TEST_ROOTFS_IMAGE
+		if [ $? -ne 0 ]; then
+			Test_Info "Image ${ROOTFS_IMAGE} copy to ${TEST_ROOTFS_IMAGE} failed, return fail"
+			return $ret
+		fi
 
-	$CP $ROOTFS_IMAGE $TEST_ROOTFS_IMAGE
+		export MACHINE=$QEMUARCH
 
-	if [ $? -ne 0 ]; then
-		Test_Info "Image ${ROOTFS_IMAGE} copy to ${TEST_ROOTFS_IMAGE} failed, return fail"
-		return $ret
+		# Create Qemu in localhost VNC Port 1
+		echo "Running xterm -display ${DISPLAY} -e 'BUILDDIR=${TOPDIR} ${RUNQEMU} ${KERNEL} ${TEST_ROOTFS_IMAGE}' &"
+	    	xterm -display ${DISPLAY} -e "BUILDDIR=${TOPDIR} ${RUNQEMU} ${KERNEL} ${TEST_ROOTFS_IMAGE}" &
+	
+		# Get the pid of the xterm processor, which will be used in Test_Kill_Qemu
+		PID=$!
 	fi
 
-	export MACHINE=$QEMUARCH
-
-	# Create Qemu in localhost VNC Port 1
-	echo "Running xterm -display ${DISPLAY} -e 'BUILDDIR=${TOPDIR} ${RUNQEMU} ${KERNEL} ${TEST_ROOTFS_IMAGE}' &"
-    	xterm -display ${DISPLAY} -e "BUILDDIR=${TOPDIR} ${RUNQEMU} ${KERNEL} ${TEST_ROOTFS_IMAGE}" &
-
-	# Get the pid of the xterm processor, which will be used in Test_Kill_Qemu
-	PID=$!
-
 	while [ ${up_time} -lt 10 ]
 	do
 		Test_Check_Qemu_UP
@@ -437,7 +478,7 @@ Test_Create_Qemu()
 	do
 		Test_Check_IP_UP ${TARGET_IPADDR}
 		if [ $? -eq 0 ]; then
-			Test_Info "Qemu Network is up, ping with ${TARGET_IPADDR} is OK"
+			Test_Info "Qemu Network is up, ping with ${TARGET_IPADDR} is OK within ${up_time} seconds"
 			ret=0
 			break
 		else
@@ -451,7 +492,8 @@ Test_Create_Qemu()
 		Test_Info "Qemu and its network is up"
 		return $ret
 	else
-		Test_Info "Qemu or its network is not up in ${timeout}"
+		Test_Info "Qemu or its network is not up in ${timeout} seconds"
+		Test_Update_IPSAVE $PID $TARGET_IPADDR
 		return $ret
 	fi
 }
diff --git a/scripts/qemuimage-tests/sanity/compiler b/scripts/qemuimage-tests/sanity/compiler
index d3168a9..29dbfd9 100755
--- a/scripts/qemuimage-tests/sanity/compiler
+++ b/scripts/qemuimage-tests/sanity/compiler
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=200
+TIMEOUT=400
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/connman b/scripts/qemuimage-tests/sanity/connman
index 6e19b81..fca6a27 100755
--- a/scripts/qemuimage-tests/sanity/connman
+++ b/scripts/qemuimage-tests/sanity/connman
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=200
+TIMEOUT=400
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/dmesg b/scripts/qemuimage-tests/sanity/dmesg
index d98d7af..5ed31b7 100755
--- a/scripts/qemuimage-tests/sanity/dmesg
+++ b/scripts/qemuimage-tests/sanity/dmesg
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=200
+TIMEOUT=400
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/rpm_query b/scripts/qemuimage-tests/sanity/rpm_query
index 7663901..08017ff 100755
--- a/scripts/qemuimage-tests/sanity/rpm_query
+++ b/scripts/qemuimage-tests/sanity/rpm_query
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=200
+TIMEOUT=400
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/scp b/scripts/qemuimage-tests/sanity/scp
index ca19857..c72cdc9 100755
--- a/scripts/qemuimage-tests/sanity/scp
+++ b/scripts/qemuimage-tests/sanity/scp
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=200
+TIMEOUT=400
 RET=1
 SPID=0
 i=0
diff --git a/scripts/qemuimage-tests/sanity/shutdown b/scripts/qemuimage-tests/sanity/shutdown
index dde03c9..bc08cf0 100755
--- a/scripts/qemuimage-tests/sanity/shutdown
+++ b/scripts/qemuimage-tests/sanity/shutdown
@@ -13,11 +13,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-if [ $SHARE_IMAGE -eq 0 ]; then
-	TIMEOUT=200
-elif [ $SHARE_IMAGE -eq 1 ]; then
-	TIMEOUT=500
-fi
+TIMEOUT=400
 
 RET=1
 i=0
@@ -66,6 +62,11 @@ fi
 if [ ${RET} -eq 0 ]; then
 	Test_Info "Shutdown Test PASS"
 	Test_Print_Result "shutdown" 0
+	
+	# Remove TARGET_IPSAVE since no existing qemu running now
+	if [ -e ${TARGET_IPSAVE} ]; then
+		rm -rf ${TARGET_IPSAVE}
+	fi
 	exit 0
 else
 	Test_Info "Shutdown Test FAIL"
diff --git a/scripts/qemuimage-tests/sanity/ssh b/scripts/qemuimage-tests/sanity/ssh
index e0ade72..2a0e934 100755
--- a/scripts/qemuimage-tests/sanity/ssh
+++ b/scripts/qemuimage-tests/sanity/ssh
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=200
+TIMEOUT=400
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/zypper_help b/scripts/qemuimage-tests/sanity/zypper_help
index 48e121c..1ab6d24 100755
--- a/scripts/qemuimage-tests/sanity/zypper_help
+++ b/scripts/qemuimage-tests/sanity/zypper_help
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=200
+TIMEOUT=400
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/zypper_search b/scripts/qemuimage-tests/sanity/zypper_search
index 9ae69eb..d6bcd27 100755
--- a/scripts/qemuimage-tests/sanity/zypper_search
+++ b/scripts/qemuimage-tests/sanity/zypper_search
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=200
+TIMEOUT=400
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
index 0eb1926..4fa6068 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
@@ -1,8 +1,7 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
index b60a89a..7a6353e 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -7,3 +5,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity connman
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
index 53c9ad5..42b8e19 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -8,3 +6,4 @@ sanity zypper_search
 sanity rpm_query
 sanity compiler
 sanity connman
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
index 0eb1926..4fa6068 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
@@ -1,8 +1,7 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
index b60a89a..7a6353e 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -7,3 +5,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity connman
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
index 53c9ad5..42b8e19 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -8,3 +6,4 @@ sanity zypper_search
 sanity rpm_query
 sanity compiler
 sanity connman
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
index 0eb1926..4fa6068 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
@@ -1,8 +1,7 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
index b60a89a..7a6353e 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -7,3 +5,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity connman
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
index 53c9ad5..42b8e19 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -8,3 +6,4 @@ sanity zypper_search
 sanity rpm_query
 sanity compiler
 sanity connman
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
index 0eb1926..4fa6068 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
@@ -1,8 +1,7 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
index b60a89a..7a6353e 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -7,3 +5,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity connman
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
index 53c9ad5..42b8e19 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -8,3 +6,4 @@ sanity zypper_search
 sanity rpm_query
 sanity compiler
 sanity connman
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
index 0eb1926..4fa6068 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
@@ -1,8 +1,7 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
index b60a89a..7a6353e 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -7,3 +5,4 @@ sanity zypper_help
 sanity zypper_search
 sanity rpm_query
 sanity connman
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
index 53c9ad5..42b8e19 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
@@ -1,5 +1,3 @@
-sanity shutdown
-sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
@@ -8,3 +6,4 @@ sanity zypper_search
 sanity rpm_query
 sanity compiler
 sanity connman
+sanity shutdown
-- 
1.7.1


