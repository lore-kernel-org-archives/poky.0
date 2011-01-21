Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B52864C8112E
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 11:59:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Jan 2011 09:59:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,359,1291622400"; d="scan'208";a="378076548"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 21 Jan 2011 09:59:21 -0800
Message-Id: <ffd2425a5b89a8d313e4e172df5a62858e41fa4e.1295632514.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295632514.git.nitin.a.kamble@intel.com>
References: <cover.1295632514.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Fri, 21 Jan 2011 09:49:22 -0800
Date: Fri, 21 Jan 2011  9:59:20 -0800
To: poky@yoctoproject.org
Subject: [PATCH 2/3] libzypp: revert the dso_linking_change patch as the new linker fixes it
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
X-List-Received-Date: Fri, 21 Jan 2011 17:59:22 -0000

The newer binutils recipe of version 2.21 has a fix for ld which avoids an
issue where weak symbols like pthread_cancel were causing linking to fail when
--no-add-as-needed parameter was passed to ld.

See more information here: http://bugs.debian.org/591405

This makes some of the fixes for breakage after gcc dso linking change
unnecessary and this is one of them.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../libzypp/dso_linking_change_build_fix.patch     |   50 --------------------
 meta/recipes-extended/libzypp/libzypp_git.bb       |    5 +-
 2 files changed, 2 insertions(+), 53 deletions(-)
 delete mode 100644 meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch b/meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch
deleted file mode 100644
index 496a3ca..0000000
--- a/meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch
+++ /dev/null
@@ -1,50 +0,0 @@
-after gcc linking has changed, all the libraries must be explicitely specified 
-This patch avoids these linking errors:
-
-
-Linking CXX executable DumpSelectable
-cd /build_disk/poky_build/build0/tmp/work/i586-poky-linux/libzypp-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r4/git/tools && /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_link_script CMakeFiles/DumpSelectable.dir/link.txt --verbose=1
-/build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/i586-poky-linux-g++   -march=i586  --sysroot=/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux  -fpermissive -fno-strict-aliasing -fPIC -g -Wall -Werror=format-security -Woverloaded-virtual -Wnon-virtual-dtor -Wl,-as-needed  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed CMakeFiles/DumpSelectable.dir/DumpSelectable.cc.o  -o DumpSelectable -rdynamic ../zypp/libzypp.so.800.1.1 -lboost_program_options-mt -lutil -lrpm -lcurl -lxml2 -lz -Wl,-Bstatic -lsatsolver -lsatsolverext -Wl,-Bdynamic -lexpat -lssl -lcrypto -lboost_signals-mt -ludev -Wl,-rpath,/build_disk/poky_build/build0/tmp/work/i586-poky-linux/libzypp-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r4/git/zypp
-/build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: Ý: invalid DSO for symbol `pthread_cancel@@GLIBC_2.0' definition
-/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux/lib/libpthread.so.0: could not read symbols: Bad value
-collect2: ld returned 1 exit status
-make[2]: *** [tools/DumpSelectable] Error 1
-
-
-
-| Linking CXX executable COW_debug
-| cd /build_disk/poky_build/build0/tmp/work/i586-poky-linux/libzypp-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r5/git/examples && /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_link_script CMakeFiles/COW_debug.dir/link.txt --verbose=1
-| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/i586-poky-linux-g++   -march=i586  --sysroot=/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux  -fpermissive -fno-strict-aliasing -fPIC -g -Wall -Werror=format-security -Woverloaded-virtual -Wnon-virtual-dtor -Wl,-as-needed  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed CMakeFiles/COW_debug.dir/COW_debug.cc.o  -o COW_debug -rdynamic ../zypp/libzypp.so.800.1.1 -lutil -lrpm -lcurl -lxml2 -lz -Wl,-Bstatic -lsatsolver -lsatsolverext -Wl,-Bdynamic -lexpat -lssl -lcrypto -lboost_signals-mt -ludev -Wl,-rpath,/build_disk/poky_build/build0/tmp/work/i586-poky-linux/libzypp-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r5/git/zypp
-| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: �: invalid DSO for symbol `pthread_cancel@@GLIBC_2.0' definition
-| /build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux/lib/libpthread.so.0: could not read symbols: Bad value
-| collect2: ld returned 1 exit status
-| make[2]: *** [examples/COW_debug] Error 1
-
-
-Nitin A Kamble <nitin.a.kamble@intel.com>
-Date: 2011/01/18
-
-Index: git/tools/CMakeLists.txt
-===================================================================
---- git.orig/tools/CMakeLists.txt	2010-12-19 23:59:02.000000000 -0800
-+++ git/tools/CMakeLists.txt	2011-01-18 17:07:52.132140223 -0800
-@@ -13,6 +13,7 @@
-   )
-   TARGET_LINK_LIBRARIES( ${loop_var}
-     zypp
-+    pthread
-     boost_program_options-mt
-   )
- ENDFOREACH( loop_var )
-Index: git/examples/CMakeLists.txt
-===================================================================
---- git.orig/examples/CMakeLists.txt	2010-12-19 23:59:01.000000000 -0800
-+++ git/examples/CMakeLists.txt	2011-01-18 17:17:41.760411373 -0800
-@@ -8,6 +8,7 @@
-   )
-   TARGET_LINK_LIBRARIES( ${loop_var}
-     zypp
-+    pthread
-   )
- ENDFOREACH( loop_var )
- 
diff --git a/meta/recipes-extended/libzypp/libzypp_git.bb b/meta/recipes-extended/libzypp/libzypp_git.bb
index 7036c64..c65ae46 100644
--- a/meta/recipes-extended/libzypp/libzypp_git.bb
+++ b/meta/recipes-extended/libzypp/libzypp_git.bb
@@ -13,12 +13,11 @@ RDEPENDS_${PN} = "sat-solver"
 
 S = "${WORKDIR}/git"
 PV = "0.0-git${SRCPV}"
-PR = "r5"
+PR = "r6"
 
 SRC_URI = "git://gitorious.org/opensuse/libzypp.git;protocol=git \
            file://no-doc.patch \
-           file://rpm5.patch \
-           file://dso_linking_change_build_fix.patch"
+           file://rpm5.patch "
 
 SRC_URI_append_mips = " file://mips-workaround-gcc-tribool-error.patch"
 
-- 
1.7.3.4


