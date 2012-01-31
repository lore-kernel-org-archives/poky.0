Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1332E00303
	for <poky@yoctoproject.org>; Tue, 31 Jan 2012 15:12:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0VNCLE8005450
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 31 Jan 2012 15:12:21 -0800 (PST)
Received: from yow-pgortmak-d1 (128.224.146.65) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 31 Jan 2012 15:12:20 -0800
Received: from paul by yow-pgortmak-d1 with local (Exim 4.74)	(envelope-from
	<paul.gortmaker@windriver.com>)	id 1RsMs7-0002Vw-Nk; Tue, 31 Jan 2012
	18:12:19 -0500
Date: Tue, 31 Jan 2012 18:12:19 -0500
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120131231219.GA9559@windriver.com>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
	<4F281CAC.5010304@linux.intel.com> <4F282815.1070407@windriver.com>
	<4F28343A.8070501@linux.intel.com>
	<4F283E15.3020204@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F283E15.3020204@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org, Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH 0/3] U-boot recipe for most recent stable release.
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
X-List-Received-Date: Tue, 31 Jan 2012 23:12:26 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

[Re: [OE-core] [poky] [PATCH 0/3] U-boot recipe for most recent stable release.]
On 31/01/2012 (Tue 11:16) Darren Hart wrote:

> On 01/31/2012 10:34 AM, Saul Wold wrote:
> > On 01/31/2012 09:42 AM, Paul Gortmaker wrote:
> >> On 12-01-31 11:54 AM, Saul Wold wrote:

[...]

> >>> What about the u-boot-mkimage recipe, does that also need to be updated?
> >>
> >> It could be, but it strictly doesn't have to be.  I'd say that
> >> mkimage is a tool akin to something like tar -- i.e. you can build
> >> whatever version you want, but its functionality isn't going
> >> to really change often from one release to the next.
> >>
> >> If you want it updated, I can send a follow on patch to do
> >> that.  What do you guys usually do with the old recipes, leave
> >> them laying around, or STONITH?
> >>
> > Adding openembedded-core since that is really where patches to meta 
> > should go.
> > 
> > u-boot seems to be a special beast since we keep the older recipes 
> > around for u-boot itself, are they are compatibility issues with going 
> > to the latest u-boot-mkimage and older u-boot itself?
> > 
> > Comments from the u-boot users?  Do we need to keep the older u-boot or 
> > u-boot-mkimage around, or should the move to BSP/layers that need the 
> > compatibility of the older version?
> 
> We should keep N and N-1 uboot versions around. This gives users time to
> ensure their BSP works. After that, if new u-boot cannot be made to work
> with a given BSP, then that BSP layer should include their own version
> of a u-boot recipe in the layer's recipes-bsp/u-boot.
> 
> --
> Darren
> 

From: Paul Gortmaker <paul.gortmaker@windriver.com>
Date: Tue, 31 Jan 2012 17:29:12 -0500
Subject: [PATCH] u-boot: update mkimage to use latest version.

Update the mkimage to use 2011.12 version.  At the same time,
make it use git instead of tarball (2011.06 bb uses tar).

Delete the oldest recipes and patches specific to 2011.03
support for mkimage.  There is really no reason why anyone
would need to go back to an older version of mkimage.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    4 +-
 ...Drop-config.h-include-in-tools-imximage.h.patch |   39 ---------
 ...ove-LDSCRIPT-processing-to-the-top-level-.patch |   82 --------------------
 ...Drop-config.h-include-in-tools-imximage.h.patch |   39 ---------
 ...ove-LDSCRIPT-processing-to-the-top-level-.patch |   82 --------------------
 meta/recipes-bsp/u-boot/u-boot-mkimage_2011.03.bb  |   31 --------
 meta/recipes-bsp/u-boot/u-boot-mkimage_2011.12.bb  |   33 ++++++++
 7 files changed, 35 insertions(+), 275 deletions(-)
 delete mode 100644 meta/recipes-bsp/u-boot/u-boot-mkimage-2011.03/0001-Drop-config.h-include-in-tools-imximage.h.patch
 delete mode 100644 meta/recipes-bsp/u-boot/u-boot-mkimage-2011.03/0002-config.mk-move-LDSCRIPT-processing-to-the-top-level-.patch
 delete mode 100644 meta/recipes-bsp/u-boot/u-boot-mkimage/0001-Drop-config.h-include-in-tools-imximage.h.patch
 delete mode 100644 meta/recipes-bsp/u-boot/u-boot-mkimage/0002-config.mk-move-LDSCRIPT-processing-to-the-top-level-.patch
 delete mode 100644 meta/recipes-bsp/u-boot/u-boot-mkimage_2011.03.bb
 create mode 100644 meta/recipes-bsp/u-boot/u-boot-mkimage_2011.12.bb

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 1eb08a2..c9480ad 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1957,8 +1957,8 @@ RECIPE_MAINTAINER_pn-openswan = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-u-boot-mkimage = "red"
 DISTRO_PN_ALIAS_pn-u-boot-mkimage = "Ubuntu=uboot-mkimage Debian=uboot-mkimage"
 RECIPE_NO_UPDATE_REASON_pn-u-boot-mkimage ="target version is not used"
-RECIPE_LATEST_VERSION_pn-u-boot-mkimage = "2010.03"
-RECIPE_LAST_UPDATE_pn-u-boot-mkimage = "Dec 15, 2009"
+RECIPE_LATEST_VERSION_pn-u-boot-mkimage = "2011.12"
+RECIPE_LAST_UPDATE_pn-u-boot-mkimage = "Jan 31, 2012"
 RECIPE_MAINTAINER_pn-u-boot-mkimage = "Saul Wold <sgw@linux.intel.com>"
 
 RECIPE_STATUS_pn-zaurusd = "green"
diff --git a/meta/recipes-bsp/u-boot/u-boot-mkimage-2011.03/0001-Drop-config.h-include-in-tools-imximage.h.patch b/meta/recipes-bsp/u-boot/u-boot-mkimage-2011.03/0001-Drop-config.h-include-in-tools-imximage.h.patch
deleted file mode 100644
index 0405834..0000000
--- a/meta/recipes-bsp/u-boot/u-boot-mkimage-2011.03/0001-Drop-config.h-include-in-tools-imximage.h.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From ce56e089ddb51dbd81bb2c86b1646d77447afe39 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Lo=C3=AFc=20Minier?= <loic.minier@linaro.org>
-Date: Thu, 3 Feb 2011 15:07:01 +0100
-Subject: Drop config.h include in tools/imximage.h
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Upstream-Status: Accepted
-
-"make tools-all" should allow building tools such as mkimage and the new
-imximage without any config, but imximage.c currently fails to build
-with:
-imximage.h:27:20: error: config.h: No such file or directory
-
-config.h is not needed in imximage.h nor in imximage.c, and imximage.h
-is only included from imximage.c, so drop this include to fix the build.
-
-Signed-off-by: Loïc Minier <loic.minier@linaro.org>
----
- tools/imximage.h |    2 --
- 1 files changed, 0 insertions(+), 2 deletions(-)
-
-diff --git a/tools/imximage.h b/tools/imximage.h
-index 38ca6be..d126a46 100644
---- a/tools/imximage.h
-+++ b/tools/imximage.h
-@@ -24,8 +24,6 @@
- #ifndef _IMXIMAGE_H_
- #define _IMXIMAGE_H_
- 
--#include <config.h>
--
- #define MAX_HW_CFG_SIZE_V2 121 /* Max number of registers imx can set for v2 */
- #define MAX_HW_CFG_SIZE_V1 60  /* Max number of registers imx can set for v1 */
- #define APP_CODE_BARKER	0xB1
--- 
-1.7.4.4
-
diff --git a/meta/recipes-bsp/u-boot/u-boot-mkimage-2011.03/0002-config.mk-move-LDSCRIPT-processing-to-the-top-level-.patch b/meta/recipes-bsp/u-boot/u-boot-mkimage-2011.03/0002-config.mk-move-LDSCRIPT-processing-to-the-top-level-.patch
deleted file mode 100644
index 5729cd9..0000000
--- a/meta/recipes-bsp/u-boot/u-boot-mkimage-2011.03/0002-config.mk-move-LDSCRIPT-processing-to-the-top-level-.patch
+++ /dev/null
@@ -1,82 +0,0 @@
-From fd1b50c5ff9c288040abf5e78815151327d32e0e Mon Sep 17 00:00:00 2001
-From: Ilya Yanok <yanok@emcraft.com>
-Date: Mon, 20 Jun 2011 12:45:37 +0000
-Subject: config.mk: move LDSCRIPT processing to the top-level Makefile
-
-Upstream-Status: Accepted
-
-LDSCRIPT is used only from the top-level Makefile and only when the
-system is configured so we can move LDSCRIPT and CONFIG_SYS_LDSCRIPT
-related logic into the top level Makefile and under configured condition
-to avoid errors when building tools from unconfigured tree.
-
-Signed-off-by: Ilya Yanok <yanok@emcraft.com>
-Acked-by: Mike Frysinger <vapier@gentoo.org>
----
- Makefile  |   30 ++++++++++++++++++++++++++++++
- config.mk |    8 --------
- 2 files changed, 30 insertions(+), 8 deletions(-)
-
-diff --git a/Makefile b/Makefile
-index ece91ab..358c410 100644
---- a/Makefile
-+++ b/Makefile
-@@ -163,6 +163,36 @@ endif
- # load other configuration
- include $(TOPDIR)/config.mk
- 
-+# If board code explicitly specified LDSCRIPT or CONFIG_SYS_LDSCRIPT, use
-+# that (or fail if absent).  Otherwise, search for a linker script in a
-+# standard location.
-+
-+ifndef LDSCRIPT
-+	#LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds.debug
-+	ifdef CONFIG_SYS_LDSCRIPT
-+		# need to strip off double quotes
-+		LDSCRIPT := $(subst ",,$(CONFIG_SYS_LDSCRIPT))
-+	endif
-+endif
-+
-+ifndef LDSCRIPT
-+	ifeq ($(CONFIG_NAND_U_BOOT),y)
-+		LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot-nand.lds
-+		ifeq ($(wildcard $(LDSCRIPT)),)
-+			LDSCRIPT := $(TOPDIR)/$(CPUDIR)/u-boot-nand.lds
-+		endif
-+	endif
-+	ifeq ($(wildcard $(LDSCRIPT)),)
-+		LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds
-+	endif
-+	ifeq ($(wildcard $(LDSCRIPT)),)
-+		LDSCRIPT := $(TOPDIR)/$(CPUDIR)/u-boot.lds
-+	endif
-+	ifeq ($(wildcard $(LDSCRIPT)),)
-+$(error could not find linker script)
-+	endif
-+endif
-+
- #########################################################################
- # U-Boot objects....order is important (i.e. start must be first)
- 
-diff --git a/config.mk b/config.mk
-index fa46ff1..59c4c93 100644
---- a/config.mk
-+++ b/config.mk
-@@ -153,14 +153,6 @@ endif
- RELFLAGS= $(PLATFORM_RELFLAGS)
- DBGFLAGS= -g # -DDEBUG
- OPTFLAGS= -Os #-fomit-frame-pointer
--ifndef LDSCRIPT
--#LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds.debug
--ifeq ($(CONFIG_NAND_U_BOOT),y)
--LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot-nand.lds
--else
--LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds
--endif
--endif
- OBJCFLAGS += --gap-fill=0xff
- 
- gccincdir := $(shell $(CC) -print-file-name=include)
--- 
-1.7.5.4
-
diff --git a/meta/recipes-bsp/u-boot/u-boot-mkimage/0001-Drop-config.h-include-in-tools-imximage.h.patch b/meta/recipes-bsp/u-boot/u-boot-mkimage/0001-Drop-config.h-include-in-tools-imximage.h.patch
deleted file mode 100644
index 0405834..0000000
--- a/meta/recipes-bsp/u-boot/u-boot-mkimage/0001-Drop-config.h-include-in-tools-imximage.h.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From ce56e089ddb51dbd81bb2c86b1646d77447afe39 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Lo=C3=AFc=20Minier?= <loic.minier@linaro.org>
-Date: Thu, 3 Feb 2011 15:07:01 +0100
-Subject: Drop config.h include in tools/imximage.h
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Upstream-Status: Accepted
-
-"make tools-all" should allow building tools such as mkimage and the new
-imximage without any config, but imximage.c currently fails to build
-with:
-imximage.h:27:20: error: config.h: No such file or directory
-
-config.h is not needed in imximage.h nor in imximage.c, and imximage.h
-is only included from imximage.c, so drop this include to fix the build.
-
-Signed-off-by: Loïc Minier <loic.minier@linaro.org>
----
- tools/imximage.h |    2 --
- 1 files changed, 0 insertions(+), 2 deletions(-)
-
-diff --git a/tools/imximage.h b/tools/imximage.h
-index 38ca6be..d126a46 100644
---- a/tools/imximage.h
-+++ b/tools/imximage.h
-@@ -24,8 +24,6 @@
- #ifndef _IMXIMAGE_H_
- #define _IMXIMAGE_H_
- 
--#include <config.h>
--
- #define MAX_HW_CFG_SIZE_V2 121 /* Max number of registers imx can set for v2 */
- #define MAX_HW_CFG_SIZE_V1 60  /* Max number of registers imx can set for v1 */
- #define APP_CODE_BARKER	0xB1
--- 
-1.7.4.4
-
diff --git a/meta/recipes-bsp/u-boot/u-boot-mkimage/0002-config.mk-move-LDSCRIPT-processing-to-the-top-level-.patch b/meta/recipes-bsp/u-boot/u-boot-mkimage/0002-config.mk-move-LDSCRIPT-processing-to-the-top-level-.patch
deleted file mode 100644
index 5729cd9..0000000
--- a/meta/recipes-bsp/u-boot/u-boot-mkimage/0002-config.mk-move-LDSCRIPT-processing-to-the-top-level-.patch
+++ /dev/null
@@ -1,82 +0,0 @@
-From fd1b50c5ff9c288040abf5e78815151327d32e0e Mon Sep 17 00:00:00 2001
-From: Ilya Yanok <yanok@emcraft.com>
-Date: Mon, 20 Jun 2011 12:45:37 +0000
-Subject: config.mk: move LDSCRIPT processing to the top-level Makefile
-
-Upstream-Status: Accepted
-
-LDSCRIPT is used only from the top-level Makefile and only when the
-system is configured so we can move LDSCRIPT and CONFIG_SYS_LDSCRIPT
-related logic into the top level Makefile and under configured condition
-to avoid errors when building tools from unconfigured tree.
-
-Signed-off-by: Ilya Yanok <yanok@emcraft.com>
-Acked-by: Mike Frysinger <vapier@gentoo.org>
----
- Makefile  |   30 ++++++++++++++++++++++++++++++
- config.mk |    8 --------
- 2 files changed, 30 insertions(+), 8 deletions(-)
-
-diff --git a/Makefile b/Makefile
-index ece91ab..358c410 100644
---- a/Makefile
-+++ b/Makefile
-@@ -163,6 +163,36 @@ endif
- # load other configuration
- include $(TOPDIR)/config.mk
- 
-+# If board code explicitly specified LDSCRIPT or CONFIG_SYS_LDSCRIPT, use
-+# that (or fail if absent).  Otherwise, search for a linker script in a
-+# standard location.
-+
-+ifndef LDSCRIPT
-+	#LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds.debug
-+	ifdef CONFIG_SYS_LDSCRIPT
-+		# need to strip off double quotes
-+		LDSCRIPT := $(subst ",,$(CONFIG_SYS_LDSCRIPT))
-+	endif
-+endif
-+
-+ifndef LDSCRIPT
-+	ifeq ($(CONFIG_NAND_U_BOOT),y)
-+		LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot-nand.lds
-+		ifeq ($(wildcard $(LDSCRIPT)),)
-+			LDSCRIPT := $(TOPDIR)/$(CPUDIR)/u-boot-nand.lds
-+		endif
-+	endif
-+	ifeq ($(wildcard $(LDSCRIPT)),)
-+		LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds
-+	endif
-+	ifeq ($(wildcard $(LDSCRIPT)),)
-+		LDSCRIPT := $(TOPDIR)/$(CPUDIR)/u-boot.lds
-+	endif
-+	ifeq ($(wildcard $(LDSCRIPT)),)
-+$(error could not find linker script)
-+	endif
-+endif
-+
- #########################################################################
- # U-Boot objects....order is important (i.e. start must be first)
- 
-diff --git a/config.mk b/config.mk
-index fa46ff1..59c4c93 100644
---- a/config.mk
-+++ b/config.mk
-@@ -153,14 +153,6 @@ endif
- RELFLAGS= $(PLATFORM_RELFLAGS)
- DBGFLAGS= -g # -DDEBUG
- OPTFLAGS= -Os #-fomit-frame-pointer
--ifndef LDSCRIPT
--#LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds.debug
--ifeq ($(CONFIG_NAND_U_BOOT),y)
--LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot-nand.lds
--else
--LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds
--endif
--endif
- OBJCFLAGS += --gap-fill=0xff
- 
- gccincdir := $(shell $(CC) -print-file-name=include)
--- 
-1.7.5.4
-
diff --git a/meta/recipes-bsp/u-boot/u-boot-mkimage_2011.03.bb b/meta/recipes-bsp/u-boot/u-boot-mkimage_2011.03.bb
deleted file mode 100644
index 34bae8e..0000000
--- a/meta/recipes-bsp/u-boot/u-boot-mkimage_2011.03.bb
+++ /dev/null
@@ -1,31 +0,0 @@
-DESCRIPTION = "U-boot bootloader mkimage tool"
-LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
-                    file://README;beginline=1;endline=22;md5=3a00ef51d3fc96e9d6c1bc4708ccd3b5"
-SECTION = "bootloader"
-
-PR = "r1"
-
-SRC_URI = "ftp://ftp.denx.de/pub/u-boot/u-boot-${PV}.tar.bz2 \
-           file://0001-Drop-config.h-include-in-tools-imximage.h.patch \
-           file://0002-config.mk-move-LDSCRIPT-processing-to-the-top-level-.patch"
-
-SRC_URI[md5sum] = "91d02124c94368557d0e9ac05fb8c33f"
-SRC_URI[sha256sum] = "08677f66d8d4ee542f6599f580cdffdf730544e1803f9d3739117d6f6d68083e"
-
-S = "${WORKDIR}/u-boot-${PV}"
-
-BBCLASSEXTEND = "native nativesdk"
-
-EXTRA_OEMAKE = 'HOSTCC="${CC}" HOSTLD="${LD}" HOSTSTRIP=true'
-
-do_compile () {
-  oe_runmake tools
-}
-
-do_install () {
-  install -d ${D}${bindir}
-  install -m 0755 tools/mkimage ${D}${bindir}/uboot-mkimage
-  ln -sf uboot-mkimage ${D}${bindir}/mkimage
-}
-
diff --git a/meta/recipes-bsp/u-boot/u-boot-mkimage_2011.12.bb b/meta/recipes-bsp/u-boot/u-boot-mkimage_2011.12.bb
new file mode 100644
index 0000000..e58af74
--- /dev/null
+++ b/meta/recipes-bsp/u-boot/u-boot-mkimage_2011.12.bb
@@ -0,0 +1,33 @@
+DESCRIPTION = "U-boot bootloader mkimage tool"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
+                    file://README;beginline=1;endline=22;md5=5ba4218ac89af7846802d0348df3fb90"
+SECTION = "bootloader"
+
+PR = "r0"
+
+# This revision corresponds to the tag "v2011.12"
+# We use the revision in order to avoid having to fetch it from the repo during parse
+SRCREV = "cba9a894fdb1cb49b60fcd1d1d6919cbd7995dd5"
+
+PV = "v2011.12+git${SRCPV}"
+PR = "r0"
+
+SRC_URI = "git://git.denx.de/u-boot.git;branch=master;protocol=git"
+
+S = "${WORKDIR}/git"
+
+BBCLASSEXTEND = "native nativesdk"
+
+EXTRA_OEMAKE = 'HOSTCC="${CC}" HOSTLD="${LD}" HOSTLDFLAGS="${LDFLAGS}" HOSTSTRIP=true'
+
+do_compile () {
+  oe_runmake tools
+}
+
+do_install () {
+  install -d ${D}${bindir}
+  install -m 0755 tools/mkimage ${D}${bindir}/uboot-mkimage
+  ln -sf uboot-mkimage ${D}${bindir}/mkimage
+}
+
-- 
1.7.7


