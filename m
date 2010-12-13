Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 76DB54C811F2
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 13:38:53 -0600 (CST)
Received: from msp-mhatle-lx2.wrs.com (msp-mhatle-lx2.wrs.com [172.25.34.61])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDJcmLr002800; 
	Mon, 13 Dec 2010 11:38:51 -0800 (PST)
From: Mark Hatle <mark.hatle@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 13 Dec 2010 13:38:57 -0600
Message-Id: <1207a63b46083babca4bdfb2317aff5d29549ab1.1292268594.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.2.3
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 2/7] recipes-devtools: Add Summary information
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
X-List-Received-Date: Mon, 13 Dec 2010 19:38:53 -0000

Add Summary information and update Descripts as necessary.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-devtools/autoconf/autoconf.inc        |    6 ++++--
 meta/recipes-devtools/automake/automake.inc        |    4 +++-
 meta/recipes-devtools/binutils/binutils.inc        |    7 ++++++-
 meta/recipes-devtools/bison/bison_2.4.3.bb         |    6 +++++-
 meta/recipes-devtools/chrpath/chrpath_0.13.bb      |    1 +
 meta/recipes-devtools/diffstat/diffstat_1.54.bb    |    1 +
 meta/recipes-devtools/distcc/distcc_2.18.3.bb      |    1 +
 meta/recipes-devtools/e2fsprogs/e2fsprogs.inc      |    4 +++-
 meta/recipes-devtools/file/file_5.04.bb            |    1 +
 meta/recipes-devtools/flex/flex.inc                |    4 +++-
 meta/recipes-devtools/genext2fs/genext2fs.inc      |    1 +
 .../gnu-config/gnu-config_20080123.bb              |    3 ++-
 meta/recipes-devtools/insserv/insserv_1.14.0.bb    |    5 +++--
 meta/recipes-devtools/libtool/libtool.inc          |    4 ++--
 meta/recipes-devtools/m4/m4_1.4.15.bb              |    5 ++++-
 meta/recipes-devtools/make/make.inc                |    7 ++++---
 meta/recipes-devtools/patch/patch.inc              |    1 +
 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |    5 ++++-
 meta/recipes-devtools/perl/perl_5.8.8.bb           |    5 ++++-
 meta/recipes-devtools/pkgconfig/pkgconfig.inc      |    7 +++----
 meta/recipes-devtools/prelink/prelink_git.bb       |    3 ++-
 .../update-alternatives-dpkg.inc                   |    5 +++++
 22 files changed, 63 insertions(+), 23 deletions(-)

diff --git a/meta/recipes-devtools/autoconf/autoconf.inc b/meta/recipes-devtools/autoconf/autoconf.inc
index 8816a66..47b2b84 100644
--- a/meta/recipes-devtools/autoconf/autoconf.inc
+++ b/meta/recipes-devtools/autoconf/autoconf.inc
@@ -1,5 +1,7 @@
-DESCRIPTION = "A package of M4 macros to produce scripts to \
-automatically configure sourcecode."
+SUMMARY = "A GNU tool that procuded shell scripts to automatically configure software."
+DESCRIPTION = "Autoconf is an extensible package of M4 macros that produce shell scripts to automatically \ 
+configure software source code packages. Autoconf creates a configuration script for a package from a template \
+file that lists the operating system features that the package can use, in the form of M4 macro calls."
 LICENSE = "GPLv3"
 HOMEPAGE = "http://www.gnu.org/software/autoconf/"
 SECTION = "devel"
diff --git a/meta/recipes-devtools/automake/automake.inc b/meta/recipes-devtools/automake/automake.inc
index d68c45d..524e93e 100644
--- a/meta/recipes-devtools/automake/automake.inc
+++ b/meta/recipes-devtools/automake/automake.inc
@@ -1,4 +1,6 @@
-DESCRIPTION = "A tool for automatically generating Makefiles."
+SUMMARY = "A GNU tool for automatically generating Makefiles."
+DESCRIPTION = "Automake is a tool for automatically generating `Makefile.in' files compliant with the GNU Coding \
+Standards. Automake requires the use of Autoconf."
 LICENSE = "GPLv2"
 HOMEPAGE = "http://www.gnu.org/software/automake/"
 SECTION = "devel"
diff --git a/meta/recipes-devtools/binutils/binutils.inc b/meta/recipes-devtools/binutils/binutils.inc
index 501c1be..8669d7f 100644
--- a/meta/recipes-devtools/binutils/binutils.inc
+++ b/meta/recipes-devtools/binutils/binutils.inc
@@ -1,4 +1,9 @@
-DESCRIPTION = "A GNU collection of binary utilities"
+SUMMARY = "A GNU collection of binary utilities"
+DESCRIPTION = "The GNU Binutils are a collection of binary tools.  The main ones are ld (GNU Linker), and as \
+(GNU Assembler).  This package also includes addition tools such as addr2line (Converts addresses into filenames \
+and line numbers), ar (utility for creating, modifying and extracting archives), nm (list symbols in object \
+files), objcopy (copy and translate object files), objdump (Display object information), and other tools and \
+related libraries."
 HOMEPAGE = "http://www.gnu.org/software/binutils/"
 BUGTRACKER = "http://sourceware.org/bugzilla/"
 SECTION = "devel"
diff --git a/meta/recipes-devtools/bison/bison_2.4.3.bb b/meta/recipes-devtools/bison/bison_2.4.3.bb
index 0df7e70..03fd463 100644
--- a/meta/recipes-devtools/bison/bison_2.4.3.bb
+++ b/meta/recipes-devtools/bison/bison_2.4.3.bb
@@ -1,4 +1,8 @@
-DESCRIPTION = "GNU Project parser generator (yacc replacement)."
+SUMMARY = "GNU Project parser generator (yacc replacement)."
+DESCRIPTION = "Bison is a general-purpose parser generator that converts an annotated context-free grammar into \
+an LALR(1) or GLR parser for that grammar.  Bison is upward compatible with Yacc: all properly-written Yacc \
+grammars ought to work with Bison with no change. Anyone familiar with Yacc should be able to use Bison with \
+little trouble."
 HOMEPAGE = "http://www.gnu.org/software/bison/"
 LICENSE = "GPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
diff --git a/meta/recipes-devtools/chrpath/chrpath_0.13.bb b/meta/recipes-devtools/chrpath/chrpath_0.13.bb
index 19cdadf..df7863e 100644
--- a/meta/recipes-devtools/chrpath/chrpath_0.13.bb
+++ b/meta/recipes-devtools/chrpath/chrpath_0.13.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Tool to edit rpath in ELF binaries"
 DESCRIPTION = "chrpath allows you to change the rpath (where the application \
 looks for libraries) in an application. It does not (yet) allow you to add an \
 rpath if there isn't one already."
diff --git a/meta/recipes-devtools/diffstat/diffstat_1.54.bb b/meta/recipes-devtools/diffstat/diffstat_1.54.bb
index 7e2bd1e..fc505f9 100644
--- a/meta/recipes-devtools/diffstat/diffstat_1.54.bb
+++ b/meta/recipes-devtools/diffstat/diffstat_1.54.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Tool to produce a statistics based on a diff"
 DESCRIPTION = "diffstat reads the output of diff and displays a histogram of \
 the insertions, deletions, and modifications per-file. It is useful for \
 reviewing large, complex patch files."
diff --git a/meta/recipes-devtools/distcc/distcc_2.18.3.bb b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
index 75f6778..1b14a6b 100644
--- a/meta/recipes-devtools/distcc/distcc_2.18.3.bb
+++ b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
@@ -1,3 +1,4 @@
+SUMMARY = "A parallel build system"
 DESCRIPTION = "distcc is a parallel build system that distributes \
 compilation of C/C++/ObjC code across machines on a network."
 SECTION = "devel"
diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs.inc b/meta/recipes-devtools/e2fsprogs/e2fsprogs.inc
index a107178..1ef6340 100644
--- a/meta/recipes-devtools/e2fsprogs/e2fsprogs.inc
+++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs.inc
@@ -1,4 +1,6 @@
-DESCRIPTION = "The Ext2 Filesystem Utilities (e2fsprogs) contain all of the standard utilities for creating, fixing, configuring , and debugging ext2 filesystems."
+SUMMARY = "Ext2 Filesystem Utilities"
+DESCRIPTION = "The Ext2 Filesystem Utilities (e2fsprogs) contain all of the standard utilities for creating, \
+fixing, configuring , and debugging ext2 filesystems."
 HOMEPAGE = "http://e2fsprogs.sourceforge.net/"
 
 LICENSE = "GPLv2 & LGPLv2 & BSD & MIT"
diff --git a/meta/recipes-devtools/file/file_5.04.bb b/meta/recipes-devtools/file/file_5.04.bb
index ad69862..b745137 100644
--- a/meta/recipes-devtools/file/file_5.04.bb
+++ b/meta/recipes-devtools/file/file_5.04.bb
@@ -1,3 +1,4 @@
+SUMMARY = "File classification tool"
 DESCRIPTION = "File attempts to classify files depending \
 on their contents and prints a description if a match is found."
 HOMEPAGE = "http://www.darwinsys.com/file/"
diff --git a/meta/recipes-devtools/flex/flex.inc b/meta/recipes-devtools/flex/flex.inc
index da95a5e..93fa7e8 100644
--- a/meta/recipes-devtools/flex/flex.inc
+++ b/meta/recipes-devtools/flex/flex.inc
@@ -1,4 +1,6 @@
-DESCRIPTION = "Flex is a tool for generating programs that recognize lexical patterns in text."
+SUMMARY = "Flex (The Fast Lexical Analyzer)"
+DESCRIPTION = "Flex is a fast lexical analyser generator.  Flex is a tool for generating programs that recognize \
+lexical patterns in text."
 HOMEPAGE = "http://sourceforge.net/projects/flex/"
 
 SECTION = "devel"
diff --git a/meta/recipes-devtools/genext2fs/genext2fs.inc b/meta/recipes-devtools/genext2fs/genext2fs.inc
index 859e49b..8bf2fce 100644
--- a/meta/recipes-devtools/genext2fs/genext2fs.inc
+++ b/meta/recipes-devtools/genext2fs/genext2fs.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Ext2 filesystem generation tool"
 DESCRIPTION = "A tool to generate an ext2 filesystem \
 as a normal (non-root) user."
 HOMEPAGE = "http://genext2fs.sourceforge.net/"
diff --git a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb b/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
index 5d7d646..2629ecb 100644
--- a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
+++ b/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
@@ -1,4 +1,5 @@
-DESCRIPTION = "gnu-configize"
+SUMMARY = "gnu-configize"
+DESCRIPTION = "Tool that installs the GNU config.guess / config.sub into a directory tree"
 SECTION = "devel"
 LICENSE = "GPLv1+"
 LIC_FILES_CHKSUM = "file://config.guess;endline=39;md5=a089987af4a25cb0419d1c2fd6d495e3"
diff --git a/meta/recipes-devtools/insserv/insserv_1.14.0.bb b/meta/recipes-devtools/insserv/insserv_1.14.0.bb
index 75f79d9..ec43b3b 100644
--- a/meta/recipes-devtools/insserv/insserv_1.14.0.bb
+++ b/meta/recipes-devtools/insserv/insserv_1.14.0.bb
@@ -1,5 +1,6 @@
-SUMMARY = "Enable an installed system init script"
-DESCRIPTION = "Enable an installed system init script by reading the comment header of the script"
+SUMMARY = "Boot sequence organizer using LSB init.d dependencies"
+DESCRIPTION = "This utility reorders the init.d boot scripts based on dependencies given in scripts' LSB comment \
+headers, or in override files included in this package or added in /etc/insserv."
 # There is no known home page for insserv
 SECTION = "base"
 PRIORITY = "optional"
diff --git a/meta/recipes-devtools/libtool/libtool.inc b/meta/recipes-devtools/libtool/libtool.inc
index c94dadd..9690e3b 100644
--- a/meta/recipes-devtools/libtool/libtool.inc
+++ b/meta/recipes-devtools/libtool/libtool.inc
@@ -1,5 +1,5 @@
-DESCRIPTION = "Generic library support script \
-This is GNU libtool, a generic library support script.  Libtool hides \
+SUMMARY = "Generic library support script"
+DESCRIPTION = "This is GNU libtool, a generic library support script.  Libtool hides \
 the complexity of generating special library types (such as shared \
 libraries) behind a consistent interface."
 HOMEPAGE = "http://www.gnu.org/software/libtool/libtool.html"
diff --git a/meta/recipes-devtools/m4/m4_1.4.15.bb b/meta/recipes-devtools/m4/m4_1.4.15.bb
index 908bc10..586071f 100644
--- a/meta/recipes-devtools/m4/m4_1.4.15.bb
+++ b/meta/recipes-devtools/m4/m4_1.4.15.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "GNU m4 is an implementation of the traditional Unix macro processor."
+SUMMARY = "Traditional Unix macro processor"
+DESCRIPTION = "GNU m4 is an implementation of the traditional Unix macro processor.  It is mostly SVR4 \
+compatible although it has some extensions (for example, handling more than 9 positional parameters to macros). \
+GNU M4 also has built-in functions for including files, running shell commands, doing arithmetic, etc."
 LICENSE = "GPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504\
 	file://examples/COPYING;md5=380fd7d57d3fd009a5716e074a845d6d"
diff --git a/meta/recipes-devtools/make/make.inc b/meta/recipes-devtools/make/make.inc
index b7c353f..d9e0559 100644
--- a/meta/recipes-devtools/make/make.inc
+++ b/meta/recipes-devtools/make/make.inc
@@ -1,6 +1,7 @@
-DESCRIPTION = "GNU Make examines the timestamps on a set of \
-interdependent files, and, if necessary, issues commands \
-to bring them up-to-date."
+SUMMARY = "GNU tool that controls the build process"
+DESCRIPTION = "Make is a tool which controls the generation of executables and other non-source files of a \
+program from the program's source files.  Make gets its knowledge of how to build your program from a file \
+called the makefile, which lists each of the non-source files and how to compute it from other files."
 HOMEPAGE = "http://www.gnu.org/software/make/"
 SECTION = "devel"
 LICENSE = "GPL"
diff --git a/meta/recipes-devtools/patch/patch.inc b/meta/recipes-devtools/patch/patch.inc
index 4ce5170..82a5acd 100644
--- a/meta/recipes-devtools/patch/patch.inc
+++ b/meta/recipes-devtools/patch/patch.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Tool for applying a patch file"
 DESCRIPTION = "patch takes a patch file containing a difference listing \
 produced by the diff program and applies those differences to one or more \
 original files, producing patched versions."
diff --git a/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb b/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
index 9c789cd..f19934c 100644
--- a/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
+++ b/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "pax-utils is a small set of various PaX aware and related utilities for ELF binaries. PaX's main goal is to research various defense mechanisms against the exploitation of software bugs that give an attacker arbitrary read/write access to the attacked task's address space"
+SUMMARY = "Security-focused ELF files checking tool"
+DESCRIPTION = "This is a small set of various PaX aware and related utilities for ELF binaries. It can check ELF \
+binary files and running processes for issues that might be relevant when using ELF binaries along with PaX, \
+such as non-PIC code or executable stack and heap."
 HOMEPAGE    = "http://www.gentoo.org/proj/en/hardened/pax-utils.xml"
 LICENSE     = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a"
diff --git a/meta/recipes-devtools/perl/perl_5.8.8.bb b/meta/recipes-devtools/perl/perl_5.8.8.bb
index 2515b6e..8e2f0c0 100644
--- a/meta/recipes-devtools/perl/perl_5.8.8.bb
+++ b/meta/recipes-devtools/perl/perl_5.8.8.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "Perl is a popular scripting language."
+SUMMARY = "Perl (Pathologically Eclectic Rubbish Lister)"
+DESCRIPTION = "Perl is a high-level, general-purpose, interpreted, dynamic programming language.  It was \
+originally written as a general-purpose scripting language to make report processing easier.  This makes perl \
+especially good at handling text."
 HOMEPAGE = "http://www.perl.org/"
 SECTION = "devel"
 LICENSE = "Artistic|GPL"
diff --git a/meta/recipes-devtools/pkgconfig/pkgconfig.inc b/meta/recipes-devtools/pkgconfig/pkgconfig.inc
index c0e7481..641bfae 100644
--- a/meta/recipes-devtools/pkgconfig/pkgconfig.inc
+++ b/meta/recipes-devtools/pkgconfig/pkgconfig.inc
@@ -1,7 +1,6 @@
-DESCRIPTION = "pkg-config is a system for managing library \
-compile/link flags that works with automake and autoconf. \
-It replaces the ubiquitous *-config scripts you may have \
-seen with a single tool."
+SUMMARY = "Helper tool used when compiling"
+DESCRIPTION = "pkg-config is a helper tool used when compiling applications and libraries. It helps determined \
+the correct compiler/link options.  It is also language-agnostic."
 HOMEPAGE = "http://pkg-config.freedesktop.org/wiki/"
 BUGTRACKER = "http://bugs.freedesktop.org/buglist.cgi?product=pkg-config"
 SECTION = "console/utils"
diff --git a/meta/recipes-devtools/prelink/prelink_git.bb b/meta/recipes-devtools/prelink/prelink_git.bb
index 6df19f9..1601443 100644
--- a/meta/recipes-devtools/prelink/prelink_git.bb
+++ b/meta/recipes-devtools/prelink/prelink_git.bb
@@ -1,7 +1,8 @@
 SECTION = "devel"
 # Need binutils for libiberty.a
 DEPENDS = "elfutils binutils"
-DESCRIPTION = " The prelink package contains a utility which modifies ELF shared libraries \
+SUMMARY = "An ELF prelinking utility"
+DESCRIPTION = "The prelink package contains a utility which modifies ELF shared libraries \
 and executables, so that far fewer relocations need to be resolved at \
 runtime and thus programs come up faster."
 LICENSE = "GPLv2"
diff --git a/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg.inc b/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg.inc
index 106fa25..9b53df8 100644
--- a/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg.inc
+++ b/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg.inc
@@ -1,3 +1,8 @@
+SUMMARY = "Manage alternatives"
+DESCRIPTION = "update-alternatives creates, removes, maintains and displays information about the symbolic links \
+comprising the Debian alternatives system. The Debian alternatives system attempts solve the problem of several \
+programs fulfilling the same or similar functions and how they can be installed onto a single system at the same \
+time."
 LICENSE = "GPL"
 SECTION = "base"
 SRC_URI = "${DEBIAN_MIRROR}/main/d/dpkg/dpkg_${PV}.tar.gz"
-- 
1.7.2.2


