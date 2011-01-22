Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 348AD4C811FA
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 18:27:53 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id F1E8330503
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 19:27:47 -0500 (EST)
Message-Id: <6253db5c1e35afa075668bccf20875f2a4fb926b.1295655857.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295655857.git.scott.a.garman@intel.com>
References: <cover.1295655857.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Fri, 21 Jan 2011 14:15:05 -0800
Date: Fri, 21 Jan 2011 16:27:45 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: F1E8330503.31E82
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/1] poky-extract-sdk: allow relative paths for extract-dir
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
X-List-Received-Date: Sat, 22 Jan 2011 00:27:53 -0000

psuedo needs a full path to its pid file, so convert
relative extract-dir paths to full ones.

The symptom of this bug is receiving the following error:

pseudo: Couldn't open relative/path/to/var/pseudo/pseudo.pid: No such file or directory

This fixes [BUGID #670]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 scripts/poky-extract-sdk |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/scripts/poky-extract-sdk b/scripts/poky-extract-sdk
index 977adde..a36d79d 100755
--- a/scripts/poky-extract-sdk
+++ b/scripts/poky-extract-sdk
@@ -47,6 +47,11 @@ if [ ! -e "$ROOTFS_TARBALL" ]; then
    	exit 1
 fi
 
+# Convert SDK_ROOTFS_DIR to a full pathname
+if [[ ${SDK_ROOTFS_DIR:0:1} != "/" ]]; then
+	SDK_ROOTFS_DIR=$(pwd)/$SDK_ROOTFS_DIR
+fi
+
 TAR_OPTS=""
 if [[ "$ROOTFS_TARBALL" =~ tar\.bz2$ ]]; then
 	TAR_OPTS="-xjf"
-- 
1.7.1


