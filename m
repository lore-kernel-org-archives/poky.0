Return-Path: <jiajun.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61A404C80039
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:13:20 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Dec 2010 07:13:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="639800747"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2010 07:13:19 -0800
Message-Id: <c688f476aa2664e160fb910ee51a29710b8d9204.1293117709.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1293117709.git.jiajun.xu@intel.com>
References: <cover.1293117709.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Thu, 23 Dec 2010 23:09:06 +0800
Date: Thu, 23 Dec 2010 23:26:20 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] qemuimage-testlib: Add check for existence of image and correctness of ip address
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
X-List-Received-Date: Thu, 23 Dec 2010 15:13:20 -0000

Fixes [BUGID #612, #611]

Add check for existence of image to be tested in qemuimage-testlib.
This ensures that sanity test returns failure immediatly when there is
no image found. And also add check for the correctness of ip address.
If the ip address returned by function Test_Fetch_Target_IP is 0, it
means qemu starts up failed and no valid ip address found.

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 scripts/qemuimage-testlib |   23 +++++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)

diff --git a/scripts/qemuimage-testlib b/scripts/qemuimage-testlib
index c2c394d..608c6f0 100644
--- a/scripts/qemuimage-testlib
+++ b/scripts/qemuimage-testlib
@@ -365,8 +365,21 @@ Test_Create_Qemu()
 	elif [ "$QEMUARCH" = "qemumips" ]; then
 		KERNEL=$(Test_Find_Image -l ${DEPLOY_DIR}/images -k vmlinux -a ${QEMUARCH})
 	fi
+
+	# If there is no kernel image found, return failed directly
+	if [ $? -eq 1 ]; then
+		Test_Info "No kernel image file found under ${DEPLOY_DIR}/images for ${QEMUARCH}, pls. have a check"
+		return $ret
+	fi
 	
 	ROOTFS_IMAGE=$(Test_Find_Image -l ${DEPLOY_DIR}/images -t ${QEMUTARGET} -a ${QEMUARCH})
+
+	# If there is no rootfs image found, return failed directly
+	if [ $? -eq 1 ]; then
+		Test_Info "No ${QEMUTARGET} rootfs image file found under ${DEPLOY_DIR}/images for ${QEMUARCH}, pls. have a check"
+		return $ret
+	fi
+
 	TEST_ROOTFS_IMAGE="${TEST_TMP}/${QEMUTARGET}-${QEMUARCH}-test.ext3"
 	
 	CP=`which cp`
@@ -375,6 +388,11 @@ Test_Create_Qemu()
 	fi
 	$CP $ROOTFS_IMAGE $TEST_ROOTFS_IMAGE
 
+	if [ $? -ne 0 ]; then
+		Test_Info "Image ${ROOTFS_IMAGE} copy to ${TEST_ROOTFS_IMAGE} failed, return fail"
+		return $ret
+	fi
+
 	export MACHINE=$QEMUARCH
 
 	# Create Qemu in localhost VNC Port 1
@@ -402,6 +420,11 @@ Test_Create_Qemu()
 	if [ ${up_time} -lt ${timeout} ]; then
 		sleep 5
 		TARGET_IPADDR=`Test_Fetch_Target_IP $PID`
+		# If IP address is 0, means there is no qemu process found
+		if [ ${TARGET_IPADDR} -eq 0 ]; then
+			Test_Info "There is no qemu process or qemu ip address found, return failed"
+			return $ret
+		fi
 	fi
 
 	while [ ${up_time} -lt ${timeout} ]
-- 
1.7.1


