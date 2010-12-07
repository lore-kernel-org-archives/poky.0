Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id C074F4C810AF
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 02:52:13 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B6363304F0
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 03:52:07 -0500 (EST)
Message-Id: <01da08097a6d193a4515d0b8166612b82c81964b.1291711822.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1291711822.git.scott.a.garman@intel.com>
References: <cover.1291711822.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 7 Dec 2010 00:48:03 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B6363304F0.83DC7
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/2] Add sanity test scenarios for -lsb images
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
X-List-Received-Date: Tue, 07 Dec 2010 08:52:13 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../scenario/qemuarm/poky-image-lsb                |    5 +++++
 .../scenario/qemumips/poky-image-lsb               |    5 +++++
 .../scenario/qemuppc/poky-image-lsb                |    5 +++++
 .../scenario/qemux86-64/poky-image-lsb             |    5 +++++
 .../scenario/qemux86/poky-image-lsb                |    5 +++++
 5 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
 create mode 100644 scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
 create mode 100644 scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
 create mode 100644 scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
 create mode 100644 scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb

diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
new file mode 100644
index 0000000..b8e9847
--- /dev/null
+++ b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-lsb
@@ -0,0 +1,5 @@
+sanity boot
+sanity ssh
+sanity scp
+sanity dmesg
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
new file mode 100644
index 0000000..b8e9847
--- /dev/null
+++ b/scripts/qemuimage-tests/scenario/qemumips/poky-image-lsb
@@ -0,0 +1,5 @@
+sanity boot
+sanity ssh
+sanity scp
+sanity dmesg
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
new file mode 100644
index 0000000..b8e9847
--- /dev/null
+++ b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-lsb
@@ -0,0 +1,5 @@
+sanity boot
+sanity ssh
+sanity scp
+sanity dmesg
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
new file mode 100644
index 0000000..b8e9847
--- /dev/null
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-lsb
@@ -0,0 +1,5 @@
+sanity boot
+sanity ssh
+sanity scp
+sanity dmesg
+sanity shutdown
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
new file mode 100644
index 0000000..b8e9847
--- /dev/null
+++ b/scripts/qemuimage-tests/scenario/qemux86/poky-image-lsb
@@ -0,0 +1,5 @@
+sanity boot
+sanity ssh
+sanity scp
+sanity dmesg
+sanity shutdown
-- 
1.7.1


