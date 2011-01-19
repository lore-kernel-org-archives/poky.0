Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D4B634C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 15:31:17 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Jan 2011 13:31:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="594596208"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by orsmga002.jf.intel.com with ESMTP; 19 Jan 2011 13:31:00 -0800
Message-Id: <c8245b24db74d371aafb59f19f9a027994156238.1295472579.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295472579.git.dvhart@linux.intel.com>
References: <cover.1295472579.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Mon, 17 Jan 2011 16:33:04 -0800
Date: Wed, 19 Jan 2011 13:30:52 -0800
To: poky@yoctoproject.org, jonathan@jonmasters.org,
	robert.karl.berger@gmail.com
Subject: [PATCH 1/6] x-load: us TI upstream repository, update recipes accordingly
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
X-List-Received-Date: Wed, 19 Jan 2011 21:31:18 -0000

TI is now maintaining an upstream x-loader git repository and
sakoman will no longer be maintained. Current upstream
includes signGP and incorporates it into the Makefile. The new
Makefile ift target builds the universal MLO binary. The armv7-a
patch is included.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-bsp/x-load/files/signGP.c             |  108 --------------------
 meta/recipes-bsp/x-load/signgp-native.bb           |   14 ---
 .../x-load/x-load-git/beagleboard/armv7-a.patch    |   11 --
 .../x-load/x-load-git/beagleboard/name.patch       |   16 ++--
 .../x-load/x-load-git/omap3evm/armv7-a.patch       |   11 --
 .../x-load/x-load-git/overo/armv7-a.patch          |   11 --
 meta/recipes-bsp/x-load/x-load.inc                 |    5 +-
 meta/recipes-bsp/x-load/x-load_git.bb              |   19 ++--
 9 files changed, 19 insertions(+), 178 deletions(-)
 delete mode 100644 meta/recipes-bsp/x-load/files/signGP.c
 delete mode 100644 meta/recipes-bsp/x-load/signgp-native.bb
 delete mode 100644 meta/recipes-bsp/x-load/x-load-git/beagleboard/armv7-a.patch
 delete mode 100644 meta/recipes-bsp/x-load/x-load-git/omap3evm/armv7-a.patch
 delete mode 100644 meta/recipes-bsp/x-load/x-load-git/overo/armv7-a.patch

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index b2609c5..9af94c6 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -188,7 +188,7 @@ SRCREV_pn-xserver-kdrive-glamo ??= "a51364e2f23d4b6331c5ed613ce3f7e15f8e540f"
 SRCREV_pn-xserver-xf86-dri-lite ??= "251d0d8090322b2c9dc0c8b7bef001f338d19433"
 SRCREV_pn-xserver-xf86-dri2-lite ??= "251d0d8090322b2c9dc0c8b7bef001f338d19433"
 SRCREV_pn-xvideo-tests ??= "270"
-SRCREV_pn-x-load ??= "65ed00323f3807197a83abc75d62ed2a8d3f60de"
+SRCREV_pn-x-load ??= "6f3a26101303051e0f91b6213735b68ce804e94e"
 SRCDATE_yaffs2-utils-native ??= "20071107"
 SRCDATE_yaffs2-utils ??= "20071107"
 SRCREV_pn-zaurusd ??= "358"
diff --git a/meta/recipes-bsp/x-load/files/signGP.c b/meta/recipes-bsp/x-load/files/signGP.c
deleted file mode 100644
index 9325064..0000000
--- a/meta/recipes-bsp/x-load/files/signGP.c
+++ /dev/null
@@ -1,108 +0,0 @@
-/*
- * Copyright (C) 2010 Texas Instruments Incorporated - http://www.ti.com/
- *
- *
- *  Redistribution and use in source and binary forms, with or without
- *  modification, are permitted provided that the following conditions
- *  are met:
- *
- *    Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *
- *    Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in the
- *    documentation and/or other materials provided with the
- *    distribution.
- *
- *    Neither the name of Texas Instruments Incorporated nor the names of
- *    its contributors may be used to endorse or promote products derived
- *    from this software without specific prior written permission.
- *
- *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
- *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
- *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
- *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
- *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
- *
-*/
-
-
-//
-// signGP.c
-// Read the x-load.bin file and write out the x-load.bin.ift file.
-// The signed image is the original pre-pended with the size of the image
-// and the load address.  If not entered on command line, file name is
-// assumed to be x-load.bin in current directory and load address is
-// 0x40200800.
-
-#include <stdio.h>
-#include <stdlib.h>
-#include <fcntl.h>
-#include <sys/stat.h>
-#include <string.h>
-#include <malloc.h>
-
-
-main(int argc, char *argv[])
-{
-	int	i;
-	char	ifname[FILENAME_MAX], ofname[FILENAME_MAX], ch;
-	FILE	*ifile, *ofile;
-	unsigned long	loadaddr, len;
-	struct stat	sinfo;
-
-
-	// Default to x-load.bin and 0x40200800.
-	strcpy(ifname, "x-load.bin");
-	loadaddr = 0x40200800;
-
-	if ((argc == 2) || (argc == 3))
-		strcpy(ifname, argv[1]);
-
-	if (argc == 3)
-		loadaddr = strtol(argv[2], NULL, 16);
-
-	// Form the output file name.
-	strcpy(ofname, ifname);
-	strcat(ofname, ".ift");
-
-	// Open the input file.
-	ifile = fopen(ifname, "rb");
-	if (ifile == NULL) {
-		printf("Cannot open %s\n", ifname);
-		exit(0);
-	}
-
-	// Get file length.
-	stat(ifname, &sinfo);
-	len = sinfo.st_size;
-
-	// Open the output file and write it.
-	ofile = fopen(ofname, "wb");
-	if (ofile == NULL) {
-		printf("Cannot open %s\n", ofname);
-		fclose(ifile);
-		exit(0);
-	}
-
-	// Pad 1 sector of zeroes.
-	//ch = 0x00;
-	//for (i=0; i<0x200; i++)
-	//	fwrite(&ch, 1, 1, ofile);
-
-	fwrite(&len, 1, 4, ofile);
-	fwrite(&loadaddr, 1, 4, ofile);
-	for (i=0; i<len; i++) {
-		fread(&ch, 1, 1, ifile);
-		fwrite(&ch, 1, 1, ofile);
-	}
-
-	fclose(ifile);
-	fclose(ofile);
-}
diff --git a/meta/recipes-bsp/x-load/signgp-native.bb b/meta/recipes-bsp/x-load/signgp-native.bb
deleted file mode 100644
index ae8c8f9..0000000
--- a/meta/recipes-bsp/x-load/signgp-native.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-LICENSE = "BSD"
-DESCRIPTION = "Tool to sign omap3 x-loader images"
-
-inherit native
-SRC_URI = "file://signGP.c"
-
-do_compile() {
-	${CC} ${CFLAGS} ${LDFLAGS} ${WORKDIR}/signGP.c -o signGP
-}
-
-do_install() {
-	install -d ${D}${bindir}/
-	install -m 0755 signGP ${D}${bindir}/
-}
diff --git a/meta/recipes-bsp/x-load/x-load-git/beagleboard/armv7-a.patch b/meta/recipes-bsp/x-load/x-load-git/beagleboard/armv7-a.patch
deleted file mode 100644
index 3131cda..0000000
--- a/meta/recipes-bsp/x-load/x-load-git/beagleboard/armv7-a.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- git/cpu/omap3/config.mk-orig	2008-05-27 16:46:45.000000000 -0700
-+++ git/cpu/omap3/config.mk	2008-05-29 12:50:49.000000000 -0700
-@@ -23,7 +23,7 @@
- PLATFORM_RELFLAGS += -fno-strict-aliasing  -fno-common -ffixed-r8 \
- 	-msoft-float
- 
--PLATFORM_CPPFLAGS += -march=armv7a
-+PLATFORM_CPPFLAGS += -march=armv7-a
- # =========================================================================
- #
- # Supply options according to compiler version
diff --git a/meta/recipes-bsp/x-load/x-load-git/beagleboard/name.patch b/meta/recipes-bsp/x-load/x-load-git/beagleboard/name.patch
index 98dcbae..d0fb996 100644
--- a/meta/recipes-bsp/x-load/x-load-git/beagleboard/name.patch
+++ b/meta/recipes-bsp/x-load/x-load-git/beagleboard/name.patch
@@ -1,14 +1,16 @@
---- git/Makefile-orig	2008-07-29 22:31:03.000000000 -0700
-+++ git/Makefile	2008-07-29 22:34:36.000000000 -0700
-@@ -152,9 +152,9 @@ omap3evm_config :	unconfig
+Index: git/Makefile
+===================================================================
+--- git.orig/Makefile
++++ git/Makefile
+@@ -225,8 +225,9 @@ omap3evm_config :	unconfig
  overo_config :	unconfig
- 	@./mkconfig $(@:_config=) arm omap3 overo
+ 	@$(MKCONFIG) $(@:_config=) arm omap3 overo
  
 -omap3530beagle_config :    unconfig
+-	@$(MKCONFIG) $(@:_config=) arm omap3 omap3530beagle
 +beagleboard_config :    unconfig
- 
--	@./mkconfig $(@:_config=) arm omap3 omap3530beagle
++	@$(MKCONFIG) omap3530beagle arm omap3 omap3530beagle
 +	@./mkconfig omap3530beagle arm omap3 omap3530beagle
  
  #########################################################################
- 
+ ## OMAP4 (ARM-CortexA9) Systems
diff --git a/meta/recipes-bsp/x-load/x-load-git/omap3evm/armv7-a.patch b/meta/recipes-bsp/x-load/x-load-git/omap3evm/armv7-a.patch
deleted file mode 100644
index 3131cda..0000000
--- a/meta/recipes-bsp/x-load/x-load-git/omap3evm/armv7-a.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- git/cpu/omap3/config.mk-orig	2008-05-27 16:46:45.000000000 -0700
-+++ git/cpu/omap3/config.mk	2008-05-29 12:50:49.000000000 -0700
-@@ -23,7 +23,7 @@
- PLATFORM_RELFLAGS += -fno-strict-aliasing  -fno-common -ffixed-r8 \
- 	-msoft-float
- 
--PLATFORM_CPPFLAGS += -march=armv7a
-+PLATFORM_CPPFLAGS += -march=armv7-a
- # =========================================================================
- #
- # Supply options according to compiler version
diff --git a/meta/recipes-bsp/x-load/x-load-git/overo/armv7-a.patch b/meta/recipes-bsp/x-load/x-load-git/overo/armv7-a.patch
deleted file mode 100644
index 3131cda..0000000
--- a/meta/recipes-bsp/x-load/x-load-git/overo/armv7-a.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- git/cpu/omap3/config.mk-orig	2008-05-27 16:46:45.000000000 -0700
-+++ git/cpu/omap3/config.mk	2008-05-29 12:50:49.000000000 -0700
-@@ -23,7 +23,7 @@
- PLATFORM_RELFLAGS += -fno-strict-aliasing  -fno-common -ffixed-r8 \
- 	-msoft-float
- 
--PLATFORM_CPPFLAGS += -march=armv7a
-+PLATFORM_CPPFLAGS += -march=armv7-a
- # =========================================================================
- #
- # Supply options according to compiler version
diff --git a/meta/recipes-bsp/x-load/x-load.inc b/meta/recipes-bsp/x-load/x-load.inc
index 7073b13..a98ec8f 100644
--- a/meta/recipes-bsp/x-load/x-load.inc
+++ b/meta/recipes-bsp/x-load/x-load.inc
@@ -5,7 +5,7 @@ LICENSE = "GPL"
 
 inherit deploy
 
-DEPENDS = "signgp-native"
+DEPENDS = ""
 
 PARALLEL_MAKE=""
 
@@ -24,11 +24,10 @@ do_compile () {
 	unset CPPFLAGS
 	oe_runmake distclean
 	oe_runmake ${XLOAD_MACHINE}
-	oe_runmake
+	oe_runmake ift
 }
 
 do_deploy () {
-	signGP ${S}/x-load.bin
 	install ${S}/x-load.bin.ift ${DEPLOYDIR}/${XLOAD_IMAGE}
 	install ${S}/x-load.bin.ift ${DEPLOYDIR}/${MLO_IMAGE}
 
diff --git a/meta/recipes-bsp/x-load/x-load_git.bb b/meta/recipes-bsp/x-load/x-load_git.bb
index f124e2b..fc2927e 100644
--- a/meta/recipes-bsp/x-load/x-load_git.bb
+++ b/meta/recipes-bsp/x-load/x-load_git.bb
@@ -2,24 +2,19 @@ require x-load.inc
 
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/x-load-git/${MACHINE}"
 
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://README;beginline=1;endline=25;md5=ef08d08cb99057bbb5b9d6d0c5a4396f"
+
 PV = "1.42+${PR}+git${SRCPV}"
-PR="r12"
+PR="r13"
 
-SRC_URI = "git://www.sakoman.net/git/x-load-omap3.git;branch=master;protocol=git"
+#SRC_URI = "git://www.sakoman.net/git/x-load-omap3.git;branch=master;protocol=git"
+#SRC_URI = "git://gitorious.org/x-load-omap3/mainline.git;branch=master;protocol=git"
+SRC_URI = "git://gitorious.org/x-loader/x-loader.git;branch=master;protocol=git"
 
 SRC_URI_append_beagleboard = " \
                               file://name.patch;patch=1 \
-                              file://armv7-a.patch;patch=1 \
-                             "
-
-SRC_URI_append_omap3evm = " \
-                              file://armv7-a.patch;patch=1 \
                              "
-
-SRC_URI_append_overo = " \
-                              file://armv7-a.patch;patch=1 \
-                             "
-
 S = "${WORKDIR}/git"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
1.7.1


