Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B7DE4C810EE
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 16:01:25 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Jan 2011 14:01:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,324,1291622400"; d="scan'208";a="374857692"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by azsmga001.ch.intel.com with ESMTP; 14 Jan 2011 14:01:14 -0800
Message-Id: <5016bc80c8904246650a7a0ab6770ec4c42b2002.1295042140.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1295042138.git.dongxiao.xu@intel.com>
References: <cover.1295042138.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Thu, 13 Jan 2011 21:54:25 +0800
Date: Sat, 15 Jan 2011  6:14:32 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/5] staging: relocate *.la paths in destination dirs
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
X-List-Received-Date: Fri, 14 Jan 2011 22:01:25 -0000

Keep the la files in source directories unchanged,
and do relocation in destination directories (sysroot-destdir).

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/staging.bbclass |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta/classes/staging.bbclass b/meta/classes/staging.bbclass
index 4d2991b..3150aa2 100644
--- a/meta/classes/staging.bbclass
+++ b/meta/classes/staging.bbclass
@@ -25,8 +25,10 @@ sysroot_stage_libdir() {
 	src="$1"
 	dest="$2"
 
+	sysroot_stage_dir $src $dest
+
 	olddir=`pwd`
-	cd $src
+	cd $dest
 	las=$(find . -name \*.la -type f)
 	cd $olddir
 	echo "Found la files: $las"		 
@@ -36,9 +38,8 @@ sysroot_stage_libdir() {
 		    -e '/^dependency_libs=/s,${WORKDIR}[[:alnum:]/\._+-]*/\([[:alnum:]\._+-]*\),${STAGING_LIBDIR}/\1,g' \
 		    -e "/^dependency_libs=/s,\([[:space:]']\)${libdir},\1${STAGING_LIBDIR},g" \
 		    -e "/^dependency_libs=/s,\([[:space:]']\)${base_libdir},\1${STAGING_DIR_HOST}${base_libdir},g" \
-		    -i $src/$i
+		    -i $dest/$i
 	done
-	sysroot_stage_dir $src $dest
 }
 
 sysroot_stage_dirs() {
-- 
1.6.3.3


