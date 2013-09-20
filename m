Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F51DE0156A
	for <poky@yoctoproject.org>; Fri, 20 Sep 2013 02:29:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 20 Sep 2013 02:29:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,943,1371106800"; d="scan'208";a="398567278"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.123.234])
	by fmsmga001.fm.intel.com with ESMTP; 20 Sep 2013 02:29:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 20 Sep 2013 10:28:53 +0100
Message-Id: <1379669333-24716-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] conf/local.conf.sample: update for new testimage class
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Sep 2013 09:29:12 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample | 20 +++-----------------
 1 file changed, 3 insertions(+), 17 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 81fc121..31e7605 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -173,23 +173,9 @@ USER_CLASSES ?= "buildstats image-mklibs image-prelink"
 #
 # The build system can test booting virtual machine images under qemu (an emulator)
 # after any root filesystems are created and run tests against those images. To
-# enable this uncomment this line
-#IMAGETEST = "qemu"
-#
-# This variable controls which tests are run against virtual images if enabled
-# above. The following would enable bat, boot the test case under the sanity suite
-# and perform toolchain tests
-#TEST_SCEN = "sanity bat sanity:boot toolchain"
-#
-# Because of the QEMU booting slowness issue (see bug #646 and #618), the
-# autobuilder may suffer a timeout issue when running sanity tests. We introduce
-# the variable TEST_SERIALIZE here to reduce the time taken by the sanity tests.
-# It is set to 1 by default, which will boot the image and run cases in the same
-# image without rebooting or killing the machine instance. If it is set to 0, the
-# image will be copied and tested for each case, which will take longer but be
-# more precise.
-#TEST_SERIALIZE = "1"
-
+# enable this uncomment this line. See classes/testimage(-auto).bbclass for
+# further details.
+#TEST_IMAGE = "1"
 #
 # Interactive shell configuration
 #
-- 
1.8.1.2


