Return-Path: <jiajun.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4963A4C810AF
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 19:36:38 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jan 2011 17:36:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,315,1291622400"; d="scan'208";a="646403837"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jan 2011 17:36:37 -0800
Message-Id: <b003b26ef3fc687b4e243773c8336f289b3abb65.1294883271.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1294883271.git.jiajun.xu@intel.com>
References: <cover.1294883271.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Thu, 13 Jan 2011 09:46:14 +0800
Date: Thu, 13 Jan 2011  9:50:08 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] qemuimagetest: Use the same image in sanity testing to fix the timeout issue on autobuilder
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
X-List-Received-Date: Thu, 13 Jan 2011 01:36:38 -0000

Fixes [BUGID #595]

Because of the QEMU booting slowness issue(see bug #646 and #618), autobuilder
may suffer a timeout issue when running sanity test. We introduce variable
SHARE_IMAGE here to fix the issue. It is by default set to 1. Poky will copy
latest built-out image and keep using it in sanity testing. If it is set to 0,
latest built-out image will be copied and tested for each case, which will take
much time.

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 meta/classes/imagetest-qemu.bbclass                |   22 +++++++++++++++++--
 meta/conf/local.conf.sample                        |    8 +++++++
 scripts/qemuimage-testlib                          |    7 ++++++
 scripts/qemuimage-tests/sanity/compiler            |    2 +-
 scripts/qemuimage-tests/sanity/connman             |    2 +-
 scripts/qemuimage-tests/sanity/dmesg               |    2 +-
 scripts/qemuimage-tests/sanity/rpm_query           |    2 +-
 scripts/qemuimage-tests/sanity/scp                 |    2 +-
 scripts/qemuimage-tests/sanity/shutdown            |    7 +++++-
 scripts/qemuimage-tests/sanity/ssh                 |    2 +-
 scripts/qemuimage-tests/sanity/zypper_help         |    2 +-
 scripts/qemuimage-tests/sanity/zypper_search       |    2 +-
 .../scenario/qemuarm/poky-image-lsb                |    2 +-
 .../scenario/qemuarm/poky-image-sato               |    2 +-
 .../scenario/qemuarm/poky-image-sdk                |    2 +-
 .../scenario/qemumips/poky-image-lsb               |    2 +-
 .../scenario/qemumips/poky-image-sato              |    2 +-
 .../scenario/qemumips/poky-image-sdk               |    2 +-
 .../scenario/qemuppc/poky-image-lsb                |    2 +-
 .../scenario/qemuppc/poky-image-sato               |    2 +-
 .../scenario/qemuppc/poky-image-sdk                |    2 +-
 .../scenario/qemux86-64/poky-image-lsb             |    2 +-
 .../scenario/qemux86-64/poky-image-sato            |    2 +-
 .../scenario/qemux86-64/poky-image-sdk             |    2 +-
 .../scenario/qemux86/poky-image-lsb                |    2 +-
 .../scenario/qemux86/poky-image-sato               |    2 +-
 .../scenario/qemux86/poky-image-sdk                |    2 +-
 27 files changed, 63 insertions(+), 27 deletions(-)

diff --git a/meta/classes/imagetest-qemu.bbclass b/meta/classes/imagetest-qemu.bbclass
index bcae10d..28bb218 100644
--- a/meta/classes/imagetest-qemu.bbclass
+++ b/meta/classes/imagetest-qemu.bbclass
@@ -5,6 +5,7 @@ TEST_LOG ?= "${LOG_DIR}/qemuimagetests"
 TEST_RESULT ?= "${TEST_DIR}/result"
 TEST_TMP ?= "${TEST_DIR}/tmp"
 TEST_SCEN ?= "sanity"
+SHARE_IMAGE ?= "1"
 
 python do_qemuimagetest() {
     qemuimagetest_main(d)
@@ -37,7 +38,7 @@ def qemuimagetest_main(d):
     """funtion to run each case under scenario"""
     def runtest(scen, case, fulltestpath):
         resultpath = bb.data.getVar('TEST_RESULT', d, 1)
-        testpath = bb.data.getVar('TEST_DIR', d, 1)
+        tmppath = bb.data.getVar('TEST_TMP', d, 1)
 
         """initialize log file for testcase"""
         logpath = bb.data.getVar('TEST_LOG', d, 1)
@@ -45,10 +46,9 @@ def qemuimagetest_main(d):
         caselog = os.path.join(logpath, "%s/log_%s.%s" % (scen, case, bb.data.getVar('DATETIME', d, 1)))
         os.system("touch %s" % caselog)
         
-
         """export TEST_TMP, TEST_RESULT, DEPLOY_DIR and QEMUARCH"""
         os.environ["PATH"] = bb.data.getVar("PATH", d, True)
-        os.environ["TEST_TMP"] = testpath
+        os.environ["TEST_TMP"] = tmppath
         os.environ["TEST_RESULT"] = resultpath
         os.environ["DEPLOY_DIR"] = bb.data.getVar("DEPLOY_DIR", d, True)
         os.environ["QEMUARCH"] = machine
@@ -56,6 +56,7 @@ def qemuimagetest_main(d):
         os.environ["DISPLAY"] = bb.data.getVar("DISPLAY", d, True)
         os.environ["POKYBASE"] = bb.data.getVar("POKYBASE", d, True)
         os.environ["TOPDIR"] = bb.data.getVar("TOPDIR", d, True)
+        os.environ["SHARE_IMAGE"] = bb.data.getVar("SHARE_IMAGE", d, True)
 
         """run Test Case"""
         bb.note("Run %s test in scenario %s" % (case, scen))
@@ -97,6 +98,18 @@ def qemuimagetest_main(d):
                        list.append((item, casefile, fulltestcase))
         return list
 
+    """Clean tmp folder for testing"""
+    def clean_tmp():
+        tmppath = bb.data.getVar('TEST_TMP', d, 1)
+
+        if os.path.isdir(tmppath):
+            for f in os.listdir(tmppath):
+                tmpfile = os.path.join(tmppath, f)
+                os.remove(tmpfile)
+
+    """Before running testing, clean temp folder first"""
+    clean_tmp()
+
     """check testcase folder and create test log folder"""
     testpath = bb.data.getVar('TEST_DIR', d, 1)
     bb.utils.mkdirhier(testpath)
@@ -150,6 +163,9 @@ def qemuimagetest_main(d):
             bb.note(line)
     f.close()
 
+    """Clean temp files for testing"""
+    clean_tmp()
+
     if ret != 0:
         raise bb.build.FuncFailed("Some testcases fail, pls. check test result and test log!!!")
 
diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index 9c58e6b..cb0e548 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -156,6 +156,14 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
 # list them like following.
 #TEST_SCEN = "sanity bat sanity:boot"
 
+#Because of the QEMU booting slowness issue(see bug #646 and #618), autobuilder
+#may suffer a timeout issue when running sanity test. We introduce variable
+#SHARE_IMAGE here to fix the issue. It is by default set to 1. Poky will copy
+#latest built-out image and keep using it in sanity testing. If it is set to 0,
+#latest built-out image will be copied and tested for each case, which will take
+#much time.
+#SHARE_IMAGE = "1"
+
 # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
 # wish to perform the time-consuming step of generating all LIBC locales.
 # NOTE: If removing en_US.UTF-8 you will also need to uncomment, and set
diff --git a/scripts/qemuimage-testlib b/scripts/qemuimage-testlib
index e2c2d24..b9afcf5 100644
--- a/scripts/qemuimage-testlib
+++ b/scripts/qemuimage-testlib
@@ -383,9 +383,16 @@ Test_Create_Qemu()
 	TEST_ROOTFS_IMAGE="${TEST_TMP}/${QEMUTARGET}-${QEMUARCH}-test.ext3"
 	
 	CP=`which cp`
+
+	# When SHARE_IMAGE is set, we use the existing image under tmp folder
 	if [ -e "$TEST_ROOTFS_IMAGE" ]; then
+		if [ ${SHARE_IMAGE} -eq 1 ]; then
+			ROOTFS_IMAGE="$TEST_ROOTFS_IMAGE"
+			TEST_ROOTFS_IMAGE="${TEST_TMP}/${QEMUTARGET}-${QEMUARCH}-shared-test.ext3"
+		fi
 		rm -rf $TEST_ROOTFS_IMAGE
 	fi
+
 	$CP $ROOTFS_IMAGE $TEST_ROOTFS_IMAGE
 
 	if [ $? -ne 0 ]; then
diff --git a/scripts/qemuimage-tests/sanity/compiler b/scripts/qemuimage-tests/sanity/compiler
index 0290540..d3168a9 100755
--- a/scripts/qemuimage-tests/sanity/compiler
+++ b/scripts/qemuimage-tests/sanity/compiler
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=360
+TIMEOUT=200
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/connman b/scripts/qemuimage-tests/sanity/connman
index 8c5b7c5..6e19b81 100755
--- a/scripts/qemuimage-tests/sanity/connman
+++ b/scripts/qemuimage-tests/sanity/connman
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=360
+TIMEOUT=200
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/dmesg b/scripts/qemuimage-tests/sanity/dmesg
index 36813dc..d98d7af 100755
--- a/scripts/qemuimage-tests/sanity/dmesg
+++ b/scripts/qemuimage-tests/sanity/dmesg
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=360
+TIMEOUT=200
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/rpm_query b/scripts/qemuimage-tests/sanity/rpm_query
index 9962115..7663901 100755
--- a/scripts/qemuimage-tests/sanity/rpm_query
+++ b/scripts/qemuimage-tests/sanity/rpm_query
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=360
+TIMEOUT=200
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/scp b/scripts/qemuimage-tests/sanity/scp
index ce3489d..ca19857 100755
--- a/scripts/qemuimage-tests/sanity/scp
+++ b/scripts/qemuimage-tests/sanity/scp
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=360
+TIMEOUT=200
 RET=1
 SPID=0
 i=0
diff --git a/scripts/qemuimage-tests/sanity/shutdown b/scripts/qemuimage-tests/sanity/shutdown
index e36b4a9..dde03c9 100755
--- a/scripts/qemuimage-tests/sanity/shutdown
+++ b/scripts/qemuimage-tests/sanity/shutdown
@@ -13,7 +13,12 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=360
+if [ $SHARE_IMAGE -eq 0 ]; then
+	TIMEOUT=200
+elif [ $SHARE_IMAGE -eq 1 ]; then
+	TIMEOUT=500
+fi
+
 RET=1
 i=0
 
diff --git a/scripts/qemuimage-tests/sanity/ssh b/scripts/qemuimage-tests/sanity/ssh
index 084530a..e0ade72 100755
--- a/scripts/qemuimage-tests/sanity/ssh
+++ b/scripts/qemuimage-tests/sanity/ssh
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=360
+TIMEOUT=200
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/zypper_help b/scripts/qemuimage-tests/sanity/zypper_help
index e052501..48e121c 100755
--- a/scripts/qemuimage-tests/sanity/zypper_help
+++ b/scripts/qemuimage-tests/sanity/zypper_help
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=360
+TIMEOUT=200
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/sanity/zypper_search b/scripts/qemuimage-tests/sanity/zypper_search
index b756db8..9ae69eb 100755
--- a/scripts/qemuimage-tests/sanity/zypper_search
+++ b/scripts/qemuimage-tests/sanity/zypper_search
@@ -11,7 +11,7 @@
 
 . $POKYBASE/scripts/qemuimage-testlib
 
-TIMEOUT=360
+TIMEOUT=200
 RET=1
 
 # Start qemu and check its network
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
index 32d2bd1..0eb1926 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
index 7b949a8..b60a89a 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
index 3a8b129..53c9ad5 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
@@ -1,8 +1,8 @@
+sanity shutdown
 sanity boot
 sanity ssh
 sanity scp
 sanity dmesg
-sanity shutdown
 sanity zypper_help
 sanity zypper_search
 sanity rpm_query
-- 
1.7.1


