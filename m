Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 664D14C8112E
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 11:59:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2011 09:59:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,359,1291622400"; d="scan'208";a="699249719"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2011 09:59:20 -0800
Message-Id: <d7e654869188d7b7a39334ff4c7e76193861481a.1295632514.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295632514.git.nitin.a.kamble@intel.com>
References: <cover.1295632514.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Thu, 20 Jan 2011 17:15:36 -0800
Date: Fri, 21 Jan 2011  9:59:20 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/3] libmusicbrainz: revert the dso_linking_change patch as the new linker fixes it
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
X-List-Received-Date: Fri, 21 Jan 2011 17:59:21 -0000

The newer binutils recipe of version 2.21 has a fix for ld which avoids an
issue where weak symbols like pthread_cancel were causing linking to fail when
--no-add-as-needed parameter was passed to ld.

See more information here: http://bugs.debian.org/591405

This makes some of the fixes for breakage after gcc dso linking change
unnecessary and this is one of them.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../dso_linking_change_build_fix.patch             |   29 --------------------
 .../musicbrainz/libmusicbrainz_3.0.3.bb            |    5 +--
 2 files changed, 2 insertions(+), 32 deletions(-)
 delete mode 100644 meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/dso_linking_change_build_fix.patch b/meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/dso_linking_change_build_fix.patch
deleted file mode 100644
index 5f0cce2..0000000
--- a/meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/dso_linking_change_build_fix.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-dso build fix:
-With a dso patch for gcc, which prevents automatic linking of unspecified libraries, 
-this recipe fails to compile with this error:
-
-| Linking CXX executable cdlookup^M
-| cd /disk0/pokybuild/build1/tmp/work/i586-poky-linux/libmusicbrainz-3.0.3-r0/libmusicbrainz-3.0.3/examples && /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_link_script CMakeFiles/cdlookup.dir/link.txt --verbose=1^M
-| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/i586-poky-linux-g++   -march=i586  --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux  -fpermissive  -Wl,-O1 -Wl,--as-needed CMakeFiles/cdlookup.dir/cdlookup.cpp.o  -o cdlookup -rdynamic ../src/libmusicbrainz3.so.6.3.0 -lneon -Wl,-rpath,/disk0/pokybuild/build1/tmp/work/i586-poky-linux/libmusicbrainz-3.0.3-r0/libmusicbrainz-3.0.3/src^M
-| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: ~I: invalid DSO for symbol `pthread_cancel@@GLIBC_2.0' definition^M
-| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/lib/libpthread.so.0: could not read symbols: Bad value^M
-| collect2: ld returned 1 exit status^M
-| make[2]: *** [examples/cdlookup] Error 1^M
-| make[2]: Leaving directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/libmusicbrainz-3.0.3-r0/libmusicbrainz-3.0.3'
-
-fixing the issue by making linking of libpthread explicit.
-
-Nitin A Kamble <nitin.a.kamble@intel.com>
-Date: 2011/01/10
-
-Index: libmusicbrainz-3.0.3/examples/CMakeLists.txt
-===================================================================
---- libmusicbrainz-3.0.3.orig/examples/CMakeLists.txt
-+++ libmusicbrainz-3.0.3/examples/CMakeLists.txt
-@@ -1,5 +1,5 @@
- INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/../include)
--LINK_LIBRARIES(musicbrainz3 ${NEON_LIBRARIES})
-+LINK_LIBRARIES(musicbrainz3 ${NEON_LIBRARIES} pthread)
- ADD_EXECUTABLE(cdlookup cdlookup.cpp)
- ADD_EXECUTABLE(findartist findartist.cpp)
- ADD_EXECUTABLE(findtrack findtrack.cpp)
diff --git a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
index bd3c213..861e6fc 100644
--- a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
+++ b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
@@ -6,11 +6,10 @@ LIC_FILES_CHKSUM = "file://COPYING.txt;md5=fbc093901857fcd118f065f900982c24 \
                     file://include/musicbrainz3/includes.h;beginline=1;endline=21;md5=9ab2846573f560cea7561da472803a72"
 DEPENDS = "expat neon"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://ftp.musicbrainz.org/pub/musicbrainz/${PN}-${PV}.tar.gz \
-           file://fix_build_issue_for_gcc_4.5.0.patch \
-           file://dso_linking_change_build_fix.patch "
+           file://fix_build_issue_for_gcc_4.5.0.patch "
 
 SRC_URI[md5sum] = "f4824d0a75bdeeef1e45cc88de7bb58a"
 SRC_URI[sha256sum] = "7fd459a9fd05be9faec60a9a21caa9a1e9fda03147d58d8c7c95f33582a738c5"
-- 
1.7.3.4


