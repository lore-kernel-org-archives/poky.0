Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1795A4C8109B
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 04:38:17 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 02:37:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,277,1291622400"; d="scan'208";a="643612955"
Received: from unknown (HELO llu-piketon.sh.intel.com) ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 02:37:46 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PaQm5-0006w2-8h; Wed, 05 Jan 2011 18:39:25 +0800
Message-Id: <d9f3cced022d1ee05a010780699700ba8629e679.1294223859.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1294223859.git.lianhao.lu@intel.com>
References: <cover.1294223859.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Old-Date: Wed, 5 Jan 2011 18:13:53 +0800
Date: Wed, 05 Jan 2011 18:39:25 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] scripts/bitbake: Skip building pseudo if necessary.
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
X-List-Received-Date: Wed, 05 Jan 2011 10:38:17 -0000

Fixed [BUGID# 625]. Skip building pseudo if necessary by parsing the
options to bitbake.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 scripts/bitbake |   24 +++++++++++++++++++++---
 1 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/scripts/bitbake b/scripts/bitbake
index 2c03314..df4e215 100755
--- a/scripts/bitbake
+++ b/scripts/bitbake
@@ -1,7 +1,20 @@
 #!/bin/sh
+NO_BUILD_OPTS="--version -h --help -p --parse-only -s --show-versions -e --environment"
+no_build="0"
+for opt in $@; do
+for key in $NO_BUILD_OPTS; do
+    if [ $opt == $key ]
+    then
+        no_build="1"
+        break
+    fi
+done
+[ $no_build == "1" ] && break
+done
+
 OLDPATH=$PATH
 export PATH=`echo $PATH | sed s#[^:]*/scripts:##`
-if [ ! -e "$BUILDDIR/pseudodone" ]; then
+if [ ! -e "$BUILDDIR/pseudodone" -a $no_build == "0" ]; then
     echo "Pseudo has not been built, building this first before the main build"
     bitbake pseudo-native
     ret=$?
@@ -19,7 +32,12 @@ if [ ! -e "$BUILDDIR/pseudodone" ]; then
 fi
 BITBAKE=`which bitbake`
 export PATH=$OLDPATH
-PSEUDOBINDIR=`cat $BUILDDIR/pseudodone`
-PSEUDO_BINDIR=$PSEUDOBINDIR PSEUDO_LIBDIR=$PSEUDOBINDIR/../lib/pseudo/lib PSEUDO_PREFIX=$PSEUDOBINDIR/../../ PSEUDO_DISABLED=1 $PSEUDOBINDIR/pseudo $BITBAKE $@
+if [ $no_build == "0" ]
+then
+    PSEUDOBINDIR=`cat $BUILDDIR/pseudodone`
+    PSEUDO_BINDIR=$PSEUDOBINDIR PSEUDO_LIBDIR=$PSEUDOBINDIR/../lib/pseudo/lib PSEUDO_PREFIX=$PSEUDOBINDIR/../../ PSEUDO_DISABLED=1 $PSEUDOBINDIR/pseudo $BITBAKE $@
+else
+    $BITBAKE $@
+fi
 ret=$?
 exit $ret
-- 
1.7.0.4


