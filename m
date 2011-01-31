Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D39CA4C8018D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 06:30:10 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 31 Jan 2011 04:30:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,404,1291622400"; d="scan'208";a="702353744"
Received: from unknown (HELO localhost) ([10.255.16.147])
	by orsmga001.jf.intel.com with ESMTP; 31 Jan 2011 04:30:09 -0800
Message-Id: <7e206c6477934df9d885e4d109e15705d88907b2.1296476857.git.josh@linux.intel.com>
In-Reply-To: <cover.1296476857.git.josh@linux.intel.com>
References: <cover.1296476857.git.josh@linux.intel.com>
Old-Date: Mon, 31 Jan 2011 11:38:35 +0000
Date: Mon, 31 Jan 2011 12:30:02 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] scripts/bitbake: remove bashisms
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
X-List-Received-Date: Mon, 31 Jan 2011 12:30:11 -0000

From: Joshua Lock <josh@linux.intel.com>

As the BitBake script is the initial entry point for the system we need to
ensure it can run in as many places as possible, including systems which
aren't yest optimally configured for running Poky.
Remove some bashisms from the script so that it can run under Dash.

Pointers from: https://wiki.ubuntu.com/DashAsBinSh
Errors before this patch: http://pastie.org/1502136

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 scripts/bitbake |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/scripts/bitbake b/scripts/bitbake
index 55bc8fd..f40bd28 100755
--- a/scripts/bitbake
+++ b/scripts/bitbake
@@ -3,29 +3,29 @@ NO_BUILD_OPTS="--version -h --help -p --parse-only -s --show-versions -e --envir
 needpseudo="1"
 for opt in $@; do
 for key in $NO_BUILD_OPTS; do
-    if [ $opt == $key ]
+    if [ $opt = $key ]
     then
         needpseudo="0"
         break
     fi
 done
-[ $needpseudo == "0" ] && break
+[ $needpseudo = "0" ] && break
 done
 
 buildpseudo="1"
-if [ $needpseudo == "1" -a -e "$BUILDDIR/pseudodone" ]; then
+if [ $needpseudo = "1" ] && [ -e "$BUILDDIR/pseudodone" ]; then
     PSEUDOBINDIR=`cat $BUILDDIR/pseudodone`
     if [ -e "$PSEUDOBINDIR/pseudo" ]; then
         buildpseudo="0"
     fi
 fi
-if [ $needpseudo == "0" ]; then
+if [ $needpseudo = "0" ]; then
     buildpseudo="0"
 fi
 
 OLDPATH=$PATH
 export PATH=`echo $PATH | sed s#[^:]*/scripts:##`
-if [ $buildpseudo == "1" ]; then
+if [ $buildpseudo = "1" ]; then
     echo "Pseudo is not present but is required, building this first before the main build"
     bitbake pseudo-native -c populate_sysroot
     ret=$?
@@ -43,7 +43,7 @@ if [ $buildpseudo == "1" ]; then
 fi
 BITBAKE=`which bitbake`
 export PATH=$OLDPATH
-if [ $needpseudo == "1" ]; then
+if [ $needpseudo = "1" ]; then
     PSEUDOBINDIR=`cat $BUILDDIR/pseudodone`
     PSEUDO_BINDIR=$PSEUDOBINDIR PSEUDO_LIBDIR=$PSEUDOBINDIR/../lib/pseudo/lib PSEUDO_PREFIX=$PSEUDOBINDIR/../../ PSEUDO_DISABLED=1 $PSEUDOBINDIR/pseudo $BITBAKE $@
 else
-- 
1.7.3.5


