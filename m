Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42BD64C8085F
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:12:14 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 5C824304F0
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:12:09 -0400 (EDT)
Message-Id: <884b721718214bafc945fa19472812aebb004599.1300230459.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1300230459.git.scott.a.garman@intel.com>
References: <cover.1300230459.git.scott.a.garman@intel.com>
Old-Date: Sat, 12 Mar 2011 22:54:30 -0800
Date: Tue, 15 Mar 2011 16:12:07 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 5C824304F0.0E286
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 3/7] task-poky-ssh-openssh: new task recipe for openssh ssh
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
X-List-Received-Date: Tue, 15 Mar 2011 23:12:14 -0000

From: Scott Garman <scott.a.garman@intel.com>

This task can be used when IMAGE_FEATURES is set to
ssh-server-openssh.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-core/tasks/task-poky-ssh-openssh.bb |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-poky-ssh-openssh.bb

diff --git a/meta/recipes-core/tasks/task-poky-ssh-openssh.bb b/meta/recipes-core/tasks/task-poky-ssh-openssh.bb
new file mode 100644
index 0000000..8df5d9b
--- /dev/null
+++ b/meta/recipes-core/tasks/task-poky-ssh-openssh.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "OpenSSH SSH task for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+PACKAGES = "\
+    task-poky-ssh-openssh \
+    task-poky-ssh-openssh-dbg \
+    task-poky-ssh-openssh-dev \
+    "
+
+ALLOW_EMPTY = "1"
+
+RDEPENDS_task-poky-ssh-openssh = "openssh"
+RDEPENDS_task-poky-ssh-openssh-dbg = "openssh-dbg"
+RDEPENDS_task-poky-ssh-openssh-dev = "openssh-dev"
-- 
1.7.1


