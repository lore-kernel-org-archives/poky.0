Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 50DDA4C81200
	for <poky@pokylinux.org>; Mon, 29 Nov 2010 07:01:12 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PN3J0-00069O-Sp
	for poky@pokylinux.org; Mon, 29 Nov 2010 04:58:06 -0800
Received: by rex (Postfix, from userid 1000)
	id D43D323204; Mon, 29 Nov 2010 05:00:54 -0800 (PST)
Message-Id: <a3ec07a2417519432c4dc9d64f6f1b0df1169fa4.1291035335.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1291035335.git.rpurdie@linux.intel.com>
References: <cover.1291035335.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 14:45:31 +0000
To: poky@pokylinux.org
Subject: [PATCH 1/3] imagetest-qemu: Allow the task to run after any rootfs is created and also standalone
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
X-List-Received-Date: Mon, 29 Nov 2010 13:01:13 -0000

One bitbake invocation can cause multiple images to be generated. We should test
each one and we cna do this by running after the rootfs task. Running the tests
standlone is also still possible with a new separate standlone task.

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/classes/imagetest-qemu.bbclass |   19 ++++++++++++++-----
 1 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/meta/classes/imagetest-qemu.bbclass b/meta/classes/imagetest-qemu.bbclass
index 07bdf01..3c1586e 100644
--- a/meta/classes/imagetest-qemu.bbclass
+++ b/meta/classes/imagetest-qemu.bbclass
@@ -1,8 +1,3 @@
-addtask qemuimagetest before do_build
-# after do_rootfs
-do_qemuimagetest[nostamp] = "1"
-do_qemuimagetest[depends] += "qemu-native:do_populate_sysroot"
-
 # Test related variables
 # By default, TEST_DIR is created under WORKDIR
 TEST_DIR ?= "${WORKDIR}/qemuimagetest"
@@ -12,6 +7,20 @@ TEST_TMP ?= "${TEST_DIR}/tmp"
 TEST_SCEN ?= "sanity"
 
 python do_qemuimagetest() {
+    qemuimagetest_main(d)
+}
+addtask qemuimagetest before do_build after do_rootfs
+do_qemuimagetest[nostamp] = "1"
+do_qemuimagetest[depends] += "qemu-native:do_populate_sysroot"
+
+python do_qemuimagetest_standalone() {
+    qemuimagetest_main(d)
+}
+addtask qemuimagetest_standalone
+do_qemuimagetest_standalone[nostamp] = "1"
+do_qemuimagetest_standalone[depends] += "qemu-native:do_populate_sysroot"
+
+python qemuimagetest_main(d) {
     import sys
     import re
     import os
-- 
1.7.0.4


