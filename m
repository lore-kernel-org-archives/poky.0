Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B3AC4C811B9
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 19:42:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 17:42:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="684548113"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 17:42:46 -0800
Message-Id: <c4bba74b67bbbdb5fcab31b1dd8f9bc7983b4426.1291683029.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291683028.git.dongxiao.xu@intel.com>
References: <cover.1291683028.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 6 Dec 2010 20:37:36 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] staging.bbclass: use hardlink when staging files to sysroot-destdir
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
X-List-Received-Date: Tue, 07 Dec 2010 01:42:47 -0000

Use hardlink to replace copy when staging files to sysroot-destdir.
If fail, it will fall back to copy function.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/staging.bbclass |   27 ++++++++++++++++++++++++++-
 1 files changed, 26 insertions(+), 1 deletions(-)

diff --git a/meta/classes/staging.bbclass b/meta/classes/staging.bbclass
index e82db83..159562d 100644
--- a/meta/classes/staging.bbclass
+++ b/meta/classes/staging.bbclass
@@ -3,6 +3,31 @@ packagedstaging_fastpath () {
 	:
 }
 
+hardlink() {
+	local src="$1"
+	local dest="$2"
+	local name names srcname destname
+
+	if [ ! -d "$dest" ]; then
+		mkdir -p "$dest"
+	fi
+
+	names=$(ls $src)
+	for name in $names
+	do
+		srcname=$src"/"$name
+		destname=$dest"/"$name
+		if [ -d "$srcname" ]; then
+			hardlink $srcname $destname
+		else
+			ln -f $srcname $destname || true
+			if [ ! -e $destname ]; then
+				cp -fpPR $srcname $destname
+			fi
+		fi
+	done
+}
+
 sysroot_stage_dir() {
 	src="$1"
 	dest="$2"
@@ -17,7 +42,7 @@ sysroot_stage_dir() {
 	# However we always want to stage a $src itself, even if it's empty
 	mkdir -p "$dest"
 	if [ -d "$src" ]; then
-		cp -fpPR "$src"/* "$dest"
+		hardlink "$src" "$dest"
 	fi
 }
 
-- 
1.6.3.3


