Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 072984C803D6
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:12:11 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 6C627304EF
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:12:06 -0400 (EDT)
Message-Id: <945a0bac5f7174fdb27b518b061cb8eabf640a78.1300230459.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1300230459.git.scott.a.garman@intel.com>
References: <cover.1300230459.git.scott.a.garman@intel.com>
Old-Date: Sat, 12 Mar 2011 22:24:49 -0800
Date: Tue, 15 Mar 2011 16:12:03 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 6C627304EF.783BA
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/7] task-poky-ssh-dropbear: new task recipe for dropbear ssh
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
X-List-Received-Date: Tue, 15 Mar 2011 23:12:11 -0000

From: Scott Garman <scott.a.garman@intel.com>

This task can be used when IMAGE_FEATURES is set to
ssh-server-dropbear.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-core/tasks/task-poky-ssh-dropbear.bb |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-poky-ssh-dropbear.bb

diff --git a/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb b/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
new file mode 100644
index 0000000..870d2d9
--- /dev/null
+++ b/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "Dropbear SSH task for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+PACKAGES = "\
+    task-poky-ssh-dropbear \
+    task-poky-ssh-dropbear-dbg \
+    task-poky-ssh-dropbear-dev \
+    "
+
+ALLOW_EMPTY = "1"
+
+RDEPENDS_task-poky-ssh-dropbear = "dropbear"
+RDEPENDS_task-poky-ssh-dropbear-dbg = "dropbear-dbg"
+RDEPENDS_task-poky-ssh-dropbear-dev = "dropbear-dev"
-- 
1.7.1


