Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A8D524C811F9
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:45:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Jan 2011 14:45:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="697744909"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 17 Jan 2011 14:45:52 -0800
Message-Id: <e449751c97118383cb93ae22b5fe649da88bc5e8.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Mon, 17 Jan 2011 13:58:19 -0800
Date: Mon, 17 Jan 2011 14:45:52 -0800
To: poky@yoctoproject.org
Subject: [PATCH 02/12] sat-solver: fix the build failure caused by gcc dso linkcing change
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
X-List-Received-Date: Mon, 17 Jan 2011 22:45:54 -0000

The libraries for linking are not determined automatically now. All
the needed libraries must be specified explicitly.

This patch fixes the issue for missing librpmmisc library in the linker
script.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../sat-solver/dso_linking_change_build_fix.patch  |   31 ++++++++++++++++++++
 meta/recipes-extended/sat-solver/sat-solver_git.bb |    5 ++-
 2 files changed, 34 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/sat-solver/sat-solver/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-extended/sat-solver/sat-solver/dso_linking_change_build_fix.patch b/meta/recipes-extended/sat-solver/sat-solver/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..7aeee29
--- /dev/null
+++ b/meta/recipes-extended/sat-solver/sat-solver/dso_linking_change_build_fix.patch
@@ -0,0 +1,31 @@
+After adding dso patch to gcc, the linking of libraries has to be explicit.
+Following error caused by dso patch is fixed for this patch.
+
+| make[2]: Entering directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/sat-solver-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r1/git'^M
+| Linking C executable findfileconflicts^M
+| cd /disk0/pokybuild/build1/tmp/work/i586-poky-linux/sat-solver-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r1/git/tools && /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_link_script CMakeFiles/findfileconflicts.dir/link.txt --verbose=1^M
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/i586-poky-linux-gcc  -march=i586  --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux  -Werror -Wall  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed CMakeFiles/findfileconflicts.dir/findfileconflicts.o  -o findfileconflicts -rdynamic ../ext/libsatsolverext.a ../src/libsatsolver.a -lrpmio -lrpmdb^M
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: [: invalid DSO for symbol `db_env_create_rpmdb@@LIBRPMMISC_0' definition^M
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/librpmmisc-5.0.so: could not read symbols: Bad value^M
+| collect2: ld returned 1 exit status^M
+| make[2]: *** [tools/findfileconflicts] Error 1^M
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+
+Index: git/CMakeLists.txt
+===================================================================
+--- git.orig/CMakeLists.txt
++++ git/CMakeLists.txt
+@@ -63,6 +63,10 @@ FIND_LIBRARY(RPMIO_LIBRARY NAMES rpmio)
+ IF ( RPMIO_LIBRARY )
+ SET( RPMDB_LIBRARY ${RPMIO_LIBRARY} ${RPMDB_LIBRARY} )
+ ENDIF ( RPMIO_LIBRARY )
++FIND_LIBRARY(RPMMISC_LIBRARY NAMES rpmmisc)
++IF ( RPMMISC_LIBRARY )
++SET( RPMDB_LIBRARY ${RPMMISC_LIBRARY} ${RPMDB_LIBRARY} )
++ENDIF ( RPMMISC_LIBRARY )
+ IF ( FEDORA )
+ FIND_LIBRARY(DB_LIBRARY NAMES db)
+ IF ( DB_LIBRARY )
diff --git a/meta/recipes-extended/sat-solver/sat-solver_git.bb b/meta/recipes-extended/sat-solver/sat-solver_git.bb
index db368b1..2e5f151 100644
--- a/meta/recipes-extended/sat-solver/sat-solver_git.bb
+++ b/meta/recipes-extended/sat-solver/sat-solver_git.bb
@@ -7,11 +7,12 @@ LIC_FILES_CHKSUM = "file://LICENSE.BSD;md5=62272bd11c97396d4aaf1c41bc11f7d8"
 DEPENDS = "libcheck rpm zlib expat"
 
 PV = "0.0-git${SRCPV}"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "git://gitorious.org/opensuse/sat-solver.git;protocol=git \
            file://cmake.patch \
-           file://rpm5.patch"
+           file://rpm5.patch \
+           file://dso_linking_change_build_fix.patch"
 
 S = "${WORKDIR}/git"
 
-- 
1.7.3.4


