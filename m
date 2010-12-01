Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C5E84C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 20:57:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 18:57:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="683448449"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 18:57:46 -0800
Message-Id: <905ca7da7a0bce9e0a587e8e47dee2e0d8a77859.1291344572.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1291344572.git.nitin.a.kamble@intel.com>
References: <cover.1291344572.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Wed, 1 Dec 2010 12:42:48 -0800
To: poky@yoctoproject.org
Subject: [PATCH 5/6] tcl: upgrade from 8.5.8 to 8.5.9
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
X-List-Received-Date: Fri, 03 Dec 2010 02:57:47 -0000

Rebased this patch to the newer upstream code.
  modified:    fix_non_native_build_issue.patch

Deleted following patch as the newer upstream code includes it already.
  deleted:    tcl/mips-tclstrtod.patch

tcl: update checksums

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../tcltk/tcl/fix_non_native_build_issue.patch     |   46 ++++++++++----------
 .../tcltk/tcl/mips-tclstrtod.patch                 |   28 ------------
 .../tcltk/{tcl_8.5.8.bb => tcl_8.5.9.bb}           |    8 ++-
 3 files changed, 28 insertions(+), 54 deletions(-)
 delete mode 100644 meta/recipes-devtools/tcltk/tcl/mips-tclstrtod.patch
 rename meta/recipes-devtools/tcltk/{tcl_8.5.8.bb => tcl_8.5.9.bb} (89%)

diff --git a/meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch b/meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch
index b2d98c1..0b8b26c 100644
--- a/meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch
+++ b/meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch
@@ -2,62 +2,62 @@ Index: unix/Makefile.in
 ===================================================================
 --- unix.orig/Makefile.in
 +++ unix/Makefile.in
-@@ -622,20 +622,20 @@ ro-test: tcltest
- shell: tclsh
+@@ -619,20 +619,20 @@ ro-test: tcltest@EXEEXT@
+ shell: ${TCL_EXE}
  	@LD_LIBRARY_PATH_VAR@="`pwd`:$${@LD_LIBRARY_PATH_VAR@}"; export @LD_LIBRARY_PATH_VAR@; \
  	TCL_LIBRARY="${TCL_BUILDTIME_LIBRARY}"; export TCL_LIBRARY; \
--	./tclsh $(SCRIPT)
-+	tclsh $(SCRIPT)
+-	./${TCL_EXE} $(SCRIPT)
++	${TCL_EXE} $(SCRIPT)
  
  # This target can be used to run tclsh inside either gdb or insight
- gdb: tclsh
+ gdb: ${TCL_EXE}
  	@echo "set env @LD_LIBRARY_PATH_VAR@=\"`pwd`:$${@LD_LIBRARY_PATH_VAR@}\"" > gdb.run
  	@echo "set env TCL_LIBRARY=${TCL_BUILDTIME_LIBRARY}" >> gdb.run
--	$(GDB) ./tclsh --command=gdb.run
-+	$(GDB) tclsh --command=gdb.run
+-	$(GDB) ./${TCL_EXE} --command=gdb.run
++	$(GDB) ${TCL_EXE} --command=gdb.run
  	rm gdb.run
  
  # This target can be used to run tclsh inside ddd
- ddd: tclsh
+ ddd: ${TCL_EXE}
  	@echo "set env @LD_LIBRARY_PATH_VAR@=\"`pwd`:$${@LD_LIBRARY_PATH_VAR@}\"" > gdb.run
  	@echo "set env TCL_LIBRARY=${TCL_BUILDTIME_LIBRARY}" >> gdb.run
--	$(DDD) -command=gdb.run ./tclsh
-+	$(DDD) -command=gdb.run tclsh
+-	$(DDD) -command=gdb.run ./${TCL_EXE}
++	$(DDD) -command=gdb.run ${TCL_EXE}
  	rm gdb.run
  
  VALGRINDARGS=--tool=memcheck --num-callers=8 --leak-resolution=high --leak-check=yes --show-reachable=yes -v
-@@ -648,7 +648,7 @@ valgrind: tclsh tcltest
- valgrindshell: tclsh
+@@ -645,7 +645,7 @@ valgrind: ${TCL_EXE} tcltest@EXEEXT@
+ valgrindshell: ${TCL_EXE}
  	@LD_LIBRARY_PATH_VAR@="`pwd`:$${@LD_LIBRARY_PATH_VAR@}"; export @LD_LIBRARY_PATH_VAR@; \
  	TCL_LIBRARY="${TCL_BUILDTIME_LIBRARY}"; export TCL_LIBRARY; \
--	valgrind $(VALGRINDARGS) ./tclsh $(SCRIPT)
-+	valgrind $(VALGRINDARGS) tclsh $(SCRIPT)
+-	valgrind $(VALGRINDARGS) ./${TCL_EXE} $(SCRIPT)
++	valgrind $(VALGRINDARGS) ${TCL_EXE} $(SCRIPT)
  
  # The following target outputs the name of the top-level source directory for
  # Tcl (it is used by Tk's configure script, for example). The .NO_PARALLEL
-@@ -817,14 +817,14 @@ install-tzdata: tclsh
+@@ -809,14 +809,14 @@ install-tzdata: ${TCL_EXE}
  	@echo "Installing time zone data"
  	@@LD_LIBRARY_PATH_VAR@="`pwd`:$${@LD_LIBRARY_PATH_VAR@}"; export @LD_LIBRARY_PATH_VAR@; \
  	TCL_LIBRARY="${TCL_BUILDTIME_LIBRARY}"; export TCL_LIBRARY; \
--	./tclsh $(TOOL_DIR)/installData.tcl \
-+	tclsh $(TOOL_DIR)/installData.tcl \
+-	./${TCL_EXE} $(TOOL_DIR)/installData.tcl \
++	${TCL_EXE} $(TOOL_DIR)/installData.tcl \
  	    $(TOP_DIR)/library/tzdata "$(SCRIPT_INSTALL_DIR)"/tzdata
  
- install-msgs: tclsh
+ install-msgs: ${TCL_EXE}
  	@echo "Installing message catalogs"
  	@@LD_LIBRARY_PATH_VAR@="`pwd`:$${@LD_LIBRARY_PATH_VAR@}"; export @LD_LIBRARY_PATH_VAR@; \
  	TCL_LIBRARY="${TCL_BUILDTIME_LIBRARY}"; export TCL_LIBRARY; \
--	./tclsh $(TOOL_DIR)/installData.tcl \
-+	tclsh $(TOOL_DIR)/installData.tcl \
+-	./${TCL_EXE} $(TOOL_DIR)/installData.tcl \
++	${TCL_EXE} $(TOOL_DIR)/installData.tcl \
  	    $(TOP_DIR)/library/msgs "$(SCRIPT_INSTALL_DIR)"/msgs
  
  install-doc: doc
-@@ -1764,7 +1764,7 @@ html-tk: tclsh
+@@ -1756,7 +1756,7 @@ html-tk: ${TCL_EXE}
  BUILD_HTML = \
  	@@LD_LIBRARY_PATH_VAR@="`pwd`:$${@LD_LIBRARY_PATH_VAR@}"; export @LD_LIBRARY_PATH_VAR@; \
  	TCL_LIBRARY="${TCL_BUILDTIME_LIBRARY}"; export TCL_LIBRARY; \
--	./tclsh $(TOOL_DIR)/tcltk-man2html.tcl --htmldir="$(HTML_INSTALL_DIR)" \
-+	tclsh $(TOOL_DIR)/tcltk-man2html.tcl --htmldir="$(HTML_INSTALL_DIR)" \
+-	./${TCL_EXE} $(TOOL_DIR)/tcltk-man2html.tcl --htmldir="$(HTML_INSTALL_DIR)" \
++	${TCL_EXE} $(TOOL_DIR)/tcltk-man2html.tcl --htmldir="$(HTML_INSTALL_DIR)" \
  		--srcdir=$(TOP_DIR)/.. $(BUILD_HTML_FLAGS)
  
  #
diff --git a/meta/recipes-devtools/tcltk/tcl/mips-tclstrtod.patch b/meta/recipes-devtools/tcltk/tcl/mips-tclstrtod.patch
deleted file mode 100644
index c1e0d63..0000000
--- a/meta/recipes-devtools/tcltk/tcl/mips-tclstrtod.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-http://sourceforge.net/tracker/index.php?func=detail&aid=2902010&group_id=10894&atid=110894
-
-Pulled from OE by: Saul Wold <saul.wold@intel.com>
-
---- ../generic/tclStrToD.c.orig
-+++ ../generic/tclStrToD.c
-@@ -71,9 +71,10 @@
- 
- /*
-  * MIPS floating-point units need special settings in control registers
-- * to use gradual underflow as we expect.
-+ * to use gradual underflow as we expect.  This fix is for the MIPSpro
-+ * compiler.  
-  */
--#if defined(__mips)
-+#if defined(__sgi) && defined(_COMPILER_VERSION)
- #include <sys/fpu.h>
- #endif
- /*
-@@ -2166,7 +2167,7 @@
-     } bitwhack;
- #endif
- 
--#if defined(__mips)
-+#if defined(__sgi) && defined(_COMPILER_VERSION)
-     union fpc_csr mipsCR;
- 
-     mipsCR.fc_word = get_fpc_csr();
diff --git a/meta/recipes-devtools/tcltk/tcl_8.5.8.bb b/meta/recipes-devtools/tcltk/tcl_8.5.9.bb
similarity index 89%
rename from meta/recipes-devtools/tcltk/tcl_8.5.8.bb
rename to meta/recipes-devtools/tcltk/tcl_8.5.9.bb
index 1edb57b..aa1805b 100644
--- a/meta/recipes-devtools/tcltk/tcl_8.5.8.bb
+++ b/meta/recipes-devtools/tcltk/tcl_8.5.9.bb
@@ -11,14 +11,16 @@ LIC_CHKSUM_FILES = "file://../license.terms;md5=7b4d3c71b2d9a8c1b373609867975570
     file://../win/license.terms;md5=7b4d3c71b2d9a8c1b373609867975570 \
     "
 
-PR = "r4"
+PR = "r0"
 
 BASE_SRC_URI = "${SOURCEFORGE_MIRROR}/tcl/tcl${PV}-src.tar.gz \
                 file://tcl-add-soname.patch"
 
 SRC_URI = "${BASE_SRC_URI} \
-	   file://fix_non_native_build_issue.patch \
-           file://mips-tclstrtod.patch;striplevel=0"
+	   file://fix_non_native_build_issue.patch "
+
+SRC_URI[md5sum] = "8512d8db3233041dd68a81476906012a"
+SRC_URI[sha256sum] = "3ab671b417e3eeb41b9cef626d742d8f7f57425101e83e5fcad1d552cd99237d"
 
 SRC_URI_virtclass-native = "${BASE_SRC_URI}"
 
-- 
1.7.2.2


