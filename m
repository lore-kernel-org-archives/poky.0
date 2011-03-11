Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AEC54C80861
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:41:21 -0600 (CST)
Received: from localhost (unknown [209.216.169.162])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 6CD67308C2
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:41:16 -0500 (EST)
Message-Id: <19aa5b8305c55f26812fe0ad26c0662567125870.1299807513.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1299807513.git.scott.a.garman@intel.com>
References: <cover.1299807513.git.scott.a.garman@intel.com>
Old-Date: Sat, 5 Mar 2011 19:28:23 -0800
Date: Thu, 10 Mar 2011 17:41:13 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 6CD67308C2.D7AE6
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 3/7] task-poky-ssh.bb: new task for ssh services
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
X-List-Received-Date: Fri, 11 Mar 2011 01:41:21 -0000

From: Scott Garman <scott.a.garman@intel.com>

This task can then be used in image recipes to include a
configurable ssh server. Currently dropbear and openssh
are supported.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-core/tasks/task-poky-ssh.bb |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-poky-ssh.bb

diff --git a/meta/recipes-core/tasks/task-poky-ssh.bb b/meta/recipes-core/tasks/task-poky-ssh.bb
new file mode 100644
index 0000000..37a0241
--- /dev/null
+++ b/meta/recipes-core/tasks/task-poky-ssh.bb
@@ -0,0 +1,22 @@
+DESCRIPTION = "SSH tasks for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+PACKAGES = "\
+    task-poky-ssh-server \
+    task-poky-ssh-server-dbg \
+    task-poky-ssh-server-dev \
+    "
+
+ALLOW_EMPTY = "1"
+
+# Default to dropbear for historical reasons
+IMAGE_SSH_PROVIDER ?= "dropbear"
+
+RDEPENDS_task-poky-ssh-server = "${IMAGE_SSH_PROVIDER}" 
+
+RDEPENDS_task-poky-ssh-server-dbg = "${IMAGE_SSH_PROVIDER}-dbg"
+
+RDEPENDS_task-poky-ssh-server-dev = "${IMAGE_SSH_PROVIDER}-dev"
-- 
1.7.1


