Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B8674C800B1
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 13:58:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Feb 2011 11:58:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,220,1297065600"; d="scan'208";a="606251076"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 24 Feb 2011 11:58:07 -0800
Message-Id: <96d4f651e2e6b7eaf4355d1ca711ce9ee481ffa3.1298577434.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298577434.git.scott.a.garman@intel.com>
References: <cover.1298577434.git.scott.a.garman@intel.com>
Old-Date: Thu, 24 Feb 2011 11:23:28 -0800
Date: Thu, 24 Feb 2011 11:58:24 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 1/1] poky-qemu: handle cases where an nfs directory contains -image-
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
X-List-Received-Date: Thu, 24 Feb 2011 19:58:32 -0000

From: Scott Garman <scott.a.garman@intel.com>

Previously we mistakenly assumed that any argument which contained
*-image-* was the name of a rootfs image file. This allows nfs
directory paths to work correctly when they contain this substring.

This fixes [BUGID #743]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 scripts/poky-qemu |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index cb08f27..7a5e8a7 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -113,6 +113,12 @@ while [ $i -le $# ]; do
             if [ -z "$ROOTFS" ]; then
                 if [ -f "$arg" ]; then
                     process_filename $arg
+                elif [ -d "$arg" ]; then
+                    # Handle the case where the nfsroot dir has -image-
+                    # in the pathname
+                    echo "Assuming $arg is an nfs rootfs"
+                    FSTYPE=nfs
+                    ROOTFS=$arg
                 else
                     ROOTFS=$arg
                     LAZY_ROOTFS="true"
-- 
1.7.4


