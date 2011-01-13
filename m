Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61B1D4C80039
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 12:56:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Jan 2011 10:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,318,1291622400"; d="scan'208";a="696553644"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2011 10:55:54 -0800
Message-Id: <7a5b3ece82c95fc9fbb825f58abda44ce2a84b2d.1294944826.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294944826.git.scott.a.garman@intel.com>
References: <cover.1294944826.git.scott.a.garman@intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Old-Date: Wed, 15 Dec 2010 23:22:16 +0000
Date: Thu, 13 Jan 2011 10:58:13 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] scripts/poky-qemu: Improve tmp layout assumption
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
X-List-Received-Date: Thu, 13 Jan 2011 18:56:06 -0000

If someone has changed TMPDIR in local.conf to a non-standard location, the
poky-qemu script currently doesn't handle this and assumes if BUILDDIR is set,
$BUILDDIR/tmp will exist.

Its simple to check if this exists and if not, to ask bitbake where the
directory is so this patch changes the code to do that.

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 scripts/poky-qemu |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index 67af439..19305e2 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -204,7 +204,7 @@ SPITZ_DEFAULT_ROOTFS="poky-image-sato"
 
 setup_tmpdir() {
     if [ -z "$TMPDIR" ]; then
-        if [ "x$BUILDDIR" = "x" ]; then
+        if [ "x$BUILDDIR" = "x" -o ! -d "$BUILDDIR/tmp" ]; then
             # BUILDDIR unset, try and get TMPDIR from bitbake
             type -P bitbake &>/dev/null || {
                 echo "In order for this script to dynamically infer paths";
-- 
1.7.3.4


