Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BDCC14C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 13:20:37 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jan 2011 11:20:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="648856722"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2011 11:20:37 -0800
Message-Id: <197f271d1e2e82e165774a1c76cc092886cc3588.1295464737.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295464737.git.nitin.a.kamble@intel.com>
References: <cover.1295464737.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Wed, 19 Jan 2011 09:19:27 -0800
Date: Wed, 19 Jan 2011 11:20:37 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] zypper: fix build issue with gcc dso linking change
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
X-List-Received-Date: Wed, 19 Jan 2011 19:20:38 -0000

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libpthread library explicitely for linking to work
without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../zypper/dso_linking_change_build_fix.patch      |   58 ++++++++++++++++++++
 meta/recipes-extended/zypper/zypper_git.bb         |    4 +-
 2 files changed, 60 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/zypper/zypper/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-extended/zypper/zypper/dso_linking_change_build_fix.patch b/meta/recipes-extended/zypper/zypper/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..0da196f
--- /dev/null
+++ b/meta/recipes-extended/zypper/zypper/dso_linking_change_build_fix.patch
@@ -0,0 +1,58 @@
+after gcc linking has changed, all the libraries must be explicitely specified 
+This patch avoids these linking errors:
+
+| Linking CXX executable zypp-refresh
+| cd /build_disk/poky_build/build0/tmp/work/i586-poky-linux/zypper-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r2/git/src && /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_link_script CMakeFiles/zypp-refresh.dir/link.txt --verbose=1
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/i586-poky-linux-g++   -march=i586  --sysroot=/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux  -fpermissive -g -O2 -Wall -Woverloaded-virtual -fstack-protector  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed CMakeFiles/zypp-refresh.dir/zypp-refresh.cc.o  -o zypp-refresh -rdynamic -lzypp
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: �: invalid DSO for symbol `pthread_cancel@@GLIBC_2.0' definition
+| /build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux/lib/libpthread.so.0: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[2]: *** [src/zypp-refresh] Error 1
+| make[2]: Leaving directory `/build_disk/poky_build/build0/tmp/work/i586-poky-linux/zypper-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r2/git'
+| make[1]: *** [src/CMakeFiles/zypp-refresh.dir/all] Error 2
+
+
+| Linking CXX executable zypper
+| cd /build_disk/poky_build/build0/tmp/work/i586-poky-linux/zypper-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3/git/src && /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_link_script CMakeFiles/zypper.dir/link.txt --verbose=1
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/i586-poky-linux-g++   -march=i586  --sysroot=/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux  -fpermissive -g -O2 -Wall -Woverloaded-virtual -fstack-protector  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed CMakeFiles/zypper.dir/main.cc.o  -o zypper -rdynamic libzypper_lib.a -lzypp -lreadline -laugeas -laugeas
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: �: invalid DSO for symbol `pthread_cancel@@GLIBC_2.0' definition
+| /build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux/lib/libpthread.so.0: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[2]: *** [src/zypper] Error 1
+
+
+| Linking CXX executable zypper
+| cd /build_disk/poky_build/build0/tmp/work/i586-poky-linux/zypper-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3/git/src && /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_link_script CMakeFiles/zypper.dir/link.txt --verbose=1
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/i586-poky-linux-g++   -march=i586  --sysroot=/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux  -fpermissive -g -O2 -Wall -Woverloaded-virtual -fstack-protector  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed CMakeFiles/zypper.dir/main.cc.o  -o zypper -rdynamic libzypper_lib.a -lzypp -lreadline -laugeas -laugeas -lpthread
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: �: invalid DSO for symbol `clock_gettime@@GLIBC_2.2' definition
+| /build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux/lib/librt.so.1: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[2]: *** [src/zypper] Error 1
+
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/19
+
+
+Index: git/src/CMakeLists.txt
+===================================================================
+--- git.orig/src/CMakeLists.txt	2010-12-20 00:02:02.000000000 -0800
++++ git/src/CMakeLists.txt	2011-01-19 09:23:13.432758255 -0800
+@@ -93,7 +93,7 @@
+ TARGET_LINK_LIBRARIES( zypper_lib ${ZYPP_LIBRARY} ${READLINE_LIBRARY} -laugeas ${AUGEAS_LIBRARY} )
+ 
+ ADD_EXECUTABLE( zypper main.cc )
+-TARGET_LINK_LIBRARIES( zypper zypper_lib ${ZYPP_LIBRARY} ${READLINE_LIBRARY} -laugeas ${AUGEAS_LIBRARY} )
++TARGET_LINK_LIBRARIES( zypper zypper_lib ${ZYPP_LIBRARY} ${READLINE_LIBRARY} -laugeas ${AUGEAS_LIBRARY} pthread rt )
+ 
+ 
+ INSTALL(
+@@ -115,7 +115,7 @@
+ 
+ # zypp-refresh utility
+ ADD_EXECUTABLE( zypp-refresh zypp-refresh.cc )
+-TARGET_LINK_LIBRARIES( zypp-refresh ${ZYPP_LIBRARY} )
++TARGET_LINK_LIBRARIES( zypp-refresh ${ZYPP_LIBRARY} pthread )
+ INSTALL(
+   TARGETS zypp-refresh
+   RUNTIME DESTINATION ${INSTALL_PREFIX}/sbin
diff --git a/meta/recipes-extended/zypper/zypper_git.bb b/meta/recipes-extended/zypper/zypper_git.bb
index c8895e5..b9e2e85 100644
--- a/meta/recipes-extended/zypper/zypper_git.bb
+++ b/meta/recipes-extended/zypper/zypper_git.bb
@@ -6,13 +6,13 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3201406e350b39e05a82e28b5020f413"
 
 DEPENDS  = "libzypp augeas"
 RRECOMMENDS_${PN} = "procps"
-PR = "r2"
+PR = "r3"
 
 inherit cmake
 
 SRC_URI = "git://gitorious.org/opensuse/zypper.git;protocol=git \
            file://cmake.patch \
-          "
+           file://dso_linking_change_build_fix.patch "
 S = "${WORKDIR}/git"
 
 PV = "1.4.7-git${SRCPV}"
-- 
1.7.3.4


