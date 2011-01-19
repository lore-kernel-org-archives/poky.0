Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9695C4C8109B
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 19:26:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Jan 2011 17:26:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,341,1291622400"; d="scan'208";a="698180241"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2011 17:26:43 -0800
Message-Id: <fdb315f366138ac08fd05d0b3609e1243a043edf.1295400220.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295400220.git.nitin.a.kamble@intel.com>
References: <cover.1295400220.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 18 Jan 2011 17:21:41 -0800
Date: Tue, 18 Jan 2011 17:26:42 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] libzypp: fix build issue with gcc dso linking change
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
X-List-Received-Date: Wed, 19 Jan 2011 01:26:43 -0000

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libX11 libgdk-x11-2.0 and libgdk_pixbuf-2.0 libraries
explicitely for linking to work without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../libzypp/dso_linking_change_build_fix.patch     |   50 ++++++++++++++++++++
 meta/recipes-extended/libzypp/libzypp_git.bb       |    5 +-
 2 files changed, 53 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch b/meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..496a3ca
--- /dev/null
+++ b/meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch
@@ -0,0 +1,50 @@
+after gcc linking has changed, all the libraries must be explicitely specified 
+This patch avoids these linking errors:
+
+
+Linking CXX executable DumpSelectable
+cd /build_disk/poky_build/build0/tmp/work/i586-poky-linux/libzypp-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r4/git/tools && /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_link_script CMakeFiles/DumpSelectable.dir/link.txt --verbose=1
+/build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/i586-poky-linux-g++   -march=i586  --sysroot=/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux  -fpermissive -fno-strict-aliasing -fPIC -g -Wall -Werror=format-security -Woverloaded-virtual -Wnon-virtual-dtor -Wl,-as-needed  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed CMakeFiles/DumpSelectable.dir/DumpSelectable.cc.o  -o DumpSelectable -rdynamic ../zypp/libzypp.so.800.1.1 -lboost_program_options-mt -lutil -lrpm -lcurl -lxml2 -lz -Wl,-Bstatic -lsatsolver -lsatsolverext -Wl,-Bdynamic -lexpat -lssl -lcrypto -lboost_signals-mt -ludev -Wl,-rpath,/build_disk/poky_build/build0/tmp/work/i586-poky-linux/libzypp-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r4/git/zypp
+/build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: Ý: invalid DSO for symbol `pthread_cancel@@GLIBC_2.0' definition
+/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux/lib/libpthread.so.0: could not read symbols: Bad value
+collect2: ld returned 1 exit status
+make[2]: *** [tools/DumpSelectable] Error 1
+
+
+
+| Linking CXX executable COW_debug
+| cd /build_disk/poky_build/build0/tmp/work/i586-poky-linux/libzypp-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r5/git/examples && /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_link_script CMakeFiles/COW_debug.dir/link.txt --verbose=1
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/i586-poky-linux-g++   -march=i586  --sysroot=/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux  -fpermissive -fno-strict-aliasing -fPIC -g -Wall -Werror=format-security -Woverloaded-virtual -Wnon-virtual-dtor -Wl,-as-needed  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed CMakeFiles/COW_debug.dir/COW_debug.cc.o  -o COW_debug -rdynamic ../zypp/libzypp.so.800.1.1 -lutil -lrpm -lcurl -lxml2 -lz -Wl,-Bstatic -lsatsolver -lsatsolverext -Wl,-Bdynamic -lexpat -lssl -lcrypto -lboost_signals-mt -ludev -Wl,-rpath,/build_disk/poky_build/build0/tmp/work/i586-poky-linux/libzypp-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r5/git/zypp
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: �: invalid DSO for symbol `pthread_cancel@@GLIBC_2.0' definition
+| /build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux/lib/libpthread.so.0: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[2]: *** [examples/COW_debug] Error 1
+
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/18
+
+Index: git/tools/CMakeLists.txt
+===================================================================
+--- git.orig/tools/CMakeLists.txt	2010-12-19 23:59:02.000000000 -0800
++++ git/tools/CMakeLists.txt	2011-01-18 17:07:52.132140223 -0800
+@@ -13,6 +13,7 @@
+   )
+   TARGET_LINK_LIBRARIES( ${loop_var}
+     zypp
++    pthread
+     boost_program_options-mt
+   )
+ ENDFOREACH( loop_var )
+Index: git/examples/CMakeLists.txt
+===================================================================
+--- git.orig/examples/CMakeLists.txt	2010-12-19 23:59:01.000000000 -0800
++++ git/examples/CMakeLists.txt	2011-01-18 17:17:41.760411373 -0800
+@@ -8,6 +8,7 @@
+   )
+   TARGET_LINK_LIBRARIES( ${loop_var}
+     zypp
++    pthread
+   )
+ ENDFOREACH( loop_var )
+ 
diff --git a/meta/recipes-extended/libzypp/libzypp_git.bb b/meta/recipes-extended/libzypp/libzypp_git.bb
index 6918263..7036c64 100644
--- a/meta/recipes-extended/libzypp/libzypp_git.bb
+++ b/meta/recipes-extended/libzypp/libzypp_git.bb
@@ -13,11 +13,12 @@ RDEPENDS_${PN} = "sat-solver"
 
 S = "${WORKDIR}/git"
 PV = "0.0-git${SRCPV}"
-PR = "r4"
+PR = "r5"
 
 SRC_URI = "git://gitorious.org/opensuse/libzypp.git;protocol=git \
            file://no-doc.patch \
-           file://rpm5.patch"
+           file://rpm5.patch \
+           file://dso_linking_change_build_fix.patch"
 
 SRC_URI_append_mips = " file://mips-workaround-gcc-tribool-error.patch"
 
-- 
1.7.3.4


