Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 617244C811D2;
	Mon, 17 Jan 2011 15:55:04 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0HLt0dH017296;
	Mon, 17 Jan 2011 13:55:02 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 17 Jan 2011 16:57:31 -0500
Message-Id: <133fad4800b7ff1a40a2d7fcae1cfd94b714ac6f.1295300980.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1295300980.git.bruce.ashfield@windriver.com>
References: <cover.1295300980.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295300980.git.bruce.ashfield@windriver.com>
References: <cover.1295300980.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/3] linux-yocto: streamline new BSP creation
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
X-List-Received-Date: Mon, 17 Jan 2011 21:55:04 -0000

By setting BOOTSTRAP to the branch that should be used for a
currently undefined BSP a build can be completed and an
environment for streamlining the BSP created.

With the appropriate machine.conf, and a defconfig any MACHINE
can be built against and inherit the configuration of the
standard yocto kernel.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass |   11 ++++++++---
 1 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index df2a8a4..88dcf32 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -24,7 +24,7 @@ python __anonymous () {
             bb.data.setVar("KMACHINE", "${MACHINE}", d)
             # track the global configuration on a bootstrapped BSP
             bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
-            bb.data.setVar("BOOTSTRAP", "t", d)
+            bb.data.setVar("BOOTSTRAP", bb.data.expand("${MACHINE}",d) + "-standard", d)
     else:
         # The branch for a build is:
         #    yocto/<kernel type>/${KMACHINE} or
@@ -44,10 +44,10 @@ python __anonymous () {
         bb.data.setVar('KMACHINE_' + bb.data.expand("${MACHINE}",d), kmachine, d)
 
         if mach == "UNDEFINED":
-            bb.data.setVar("KBRANCH", "yocto/standard/base", d)
             bb.data.setVar('KMACHINE_' + bb.data.expand("${MACHINE}",d), bb.data.expand("${MACHINE}",d), d)
+            bb.data.setVar("KBRANCH", "yocto/standard/base", d)
             bb.data.setVar("SRCREV_machine", "standard", d)
-            bb.data.setVar("BOOTSTRAP", "t", d)
+            bb.data.setVar("BOOTSTRAP", "yocto/standard/" + bb.data.expand("${MACHINE}",d), d)
 }
 
 do_patch() {
@@ -57,6 +57,11 @@ do_patch() {
 	fi
 
 	kbranch=${KBRANCH}
+	if [ -n "${BOOTSTRAP}" ]; then
+           # switch from a generic to a specific branch
+           kbranch=${BOOTSTRAP}
+	fi
+
 
 	# simply ensures that a branch of the right name has been created
 	createme ${ARCH} ${kbranch} ${defconfig}
-- 
1.7.0.4


