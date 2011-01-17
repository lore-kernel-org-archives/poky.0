Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5368D4C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:45:54 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Jan 2011 14:45:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="593832466"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 17 Jan 2011 14:45:52 -0800
Message-Id: <04d9a76ff4252acafdcec3f91f64d23506b89c3f.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Thu, 6 Jan 2011 10:13:05 -0800
Date: Mon, 17 Jan 2011 14:45:51 -0800
To: poky@yoctoproject.org
Subject: [PATCH 01/12] gcc_4.5.1: add DSO linking change patch
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

This patch changes gcc's (ld's) linking behavior. It passes
--no-add-needed flag to ld. Because of it ld does not try to find
related libraries for linking, causing link failures. And these
link failures can be fixed by specifying the library to be linked
explicitely on the gcc command line.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/gcc/gcc-4.5.1.inc            |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc45-no-add-needed.patch |   52 ++++++++++++++++++++
 .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
 11 files changed, 62 insertions(+), 9 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc45-no-add-needed.patch

diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1.inc b/meta/recipes-devtools/gcc/gcc-4.5.1.inc
index 1786d8a..6c600c1 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1.inc
@@ -30,6 +30,7 @@ SRC_URI = "${GNU_MIRROR}/gcc/gcc-${PV}/gcc-${PV}.tar.bz2 \
            file://fedora/gcc43-rh341221.patch;striplevel=0 \
            file://fedora/gcc43-java-debug-iface-type.patch;striplevel=0 \
            file://fedora/gcc43-i386-libgomp.patch;striplevel=0 \
+           file://fedora/gcc45-no-add-needed.patch;striplevel=0 \
            file://103-uclibc-conf-noupstream.patch  \
            file://200-uclibc-locale.patch  \
            file://203-uclibc-locale-no__x.patch;striplevel=1 \
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc45-no-add-needed.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc45-no-add-needed.patch
new file mode 100644
index 0000000..23704d3
--- /dev/null
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc45-no-add-needed.patch
@@ -0,0 +1,52 @@
+2010-02-08  Roland McGrath  <roland@redhat.com>
+
+	* config/rs6000/sysv4.h (LINK_EH_SPEC): Pass --no-add-needed to the
+	linker.
+	* config/linux.h (LINK_EH_SPEC): Likewise.
+	* config/alpha/elf.h (LINK_EH_SPEC): Likewise.
+	* config/ia64/linux.h (LINK_EH_SPEC): Likewise.
+
+--- gcc/config/alpha/elf.h.~1~
++++ gcc/config/alpha/elf.h
+@@ -421,7 +421,7 @@ extern int alpha_this_gpdisp_sequence_nu
+    I imagine that other systems will catch up.  In the meantime, it
+    doesn't harm to make sure that the data exists to be used later.  */
+ #if defined(HAVE_LD_EH_FRAME_HDR)
+-#define LINK_EH_SPEC "%{!static:--eh-frame-hdr} "
++#define LINK_EH_SPEC "--no-add-needed %{!static:--eh-frame-hdr} "
+ #endif
+ 
+ /* A C statement (sans semicolon) to output to the stdio stream STREAM
+--- gcc/config/ia64/linux.h.~1~
++++ gcc/config/ia64/linux.h
+@@ -58,7 +58,7 @@ do {						\
+    Signalize that because we have fde-glibc, we don't need all C shared libs
+    linked against -lgcc_s.  */
+ #undef LINK_EH_SPEC
+-#define LINK_EH_SPEC ""
++#define LINK_EH_SPEC "--no-add-needed "
+ 
+ #define MD_UNWIND_SUPPORT "config/ia64/linux-unwind.h"
+ 
+--- gcc/config/linux.h.~1~
++++ gcc/config/linux.h
+@@ -89,7 +89,7 @@ see the files COPYING3 and COPYING.RUNTI
+     } while (0)
+ 
+ #if defined(HAVE_LD_EH_FRAME_HDR)
+-#define LINK_EH_SPEC "%{!static:--eh-frame-hdr} "
++#define LINK_EH_SPEC "--no-add-needed %{!static:--eh-frame-hdr} "
+ #endif
+ 
+ /* Define this so we can compile MS code for use with WINE.  */
+--- gcc/config/rs6000/sysv4.h.~1~
++++ gcc/config/rs6000/sysv4.h
+@@ -917,7 +917,7 @@ SVR4_ASM_SPEC \
+   %{!dynamic-linker:-dynamic-linker " LINUX_DYNAMIC_LINKER "}}}"
+ 
+ #if defined(HAVE_LD_EH_FRAME_HDR)
+-# define LINK_EH_SPEC "%{!static:--eh-frame-hdr} "
++# define LINK_EH_SPEC "--no-add-needed %{!static:--eh-frame-hdr} "
+ #endif
+ 
+ #define CPP_OS_LINUX_SPEC "-D__unix__ -D__gnu_linux__ -D__linux__ \
diff --git a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
index 37c64fb..3eea4bc 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
@@ -5,7 +5,7 @@ require gcc-cross-canadian.inc
 require gcc-configure-sdk.inc
 require gcc-package-sdk.inc
 
-PR = "r2"
+PR = "r3"
 
 DEPENDS += "gmp-nativesdk mpfr-nativesdk libmpc-nativesdk elfutils-nativesdk"
 RDEPENDS_${PN} += "mpfr-nativesdk libmpc-nativesdk elfutils-nativesdk"
diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
index a121782..b2c257d 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
@@ -1,5 +1,5 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-initial.inc
 
-PR = "r1"
+PR = "r2"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
index 7aaa5b0..10681da 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-intermediate.inc
-PR = "r1"
+PR = "r2"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
index b7e4328..399cdf9 100644
--- a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r1"
+PR = "r2"
 
 require gcc-${PV}.inc
 require gcc-cross4.inc
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
index 0fc5faa..240caf5 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross-initial_${PV}.bb
 require gcc-crosssdk-initial.inc
 
-PR = "r1"
+PR = "r2"
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
index 4260c35..a6653dd 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross-intermediate_${PV}.bb
 require gcc-crosssdk-intermediate.inc
 
-PR = "r1"
+PR = "r2"
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
index a23a662..129e8d3 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross_${PV}.bb
 require gcc-crosssdk.inc
 
-PR = "r1"
+PR = "r2"
diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
index ca22e8b..093f9bf 100644
--- a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r1"
+PR = "r2"
 
 require gcc-${PV}.inc
 require gcc-configure-runtime.inc
diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
index a21772f..919d4b0 100644
--- a/meta/recipes-devtools/gcc/gcc_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r1"
+PR = "r2"
 require gcc-${PV}.inc
 require gcc-configure-target.inc
 require gcc-package-target.inc
-- 
1.7.3.4


