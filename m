Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A4C934C811F2
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 13:38:54 -0600 (CST)
Received: from msp-mhatle-lx2.wrs.com (msp-mhatle-lx2.wrs.com [172.25.34.61])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDJcmLs002800; 
	Mon, 13 Dec 2010 11:38:52 -0800 (PST)
From: Mark Hatle <mark.hatle@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 13 Dec 2010 13:38:58 -0600
Message-Id: <d23fdbef2411783fe38fa7be65790dfd041184cb.1292268594.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.2.3
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 3/7] recipes-extended: Add Summary information
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
X-List-Received-Date: Mon, 13 Dec 2010 19:38:54 -0000

Add Summary information and update descriptions as necessary.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-extended/at/at_3.1.12.bb              |    4 +++-
 meta/recipes-extended/blktool/blktool_4-6.bb       |    1 +
 meta/recipes-extended/byacc/byacc.inc              |    5 ++++-
 meta/recipes-extended/bzip2/bzip2_1.0.6.bb         |    5 ++++-
 meta/recipes-extended/cpio/cpio_v2.inc             |    4 +++-
 meta/recipes-extended/cronie/cronie_1.4.6.bb       |    1 +
 .../cwautomacros/cwautomacros_20090610.bb          |    2 +-
 meta/recipes-extended/diffutils/diffutils_2.8.1.bb |    1 +
 meta/recipes-extended/ethtool/ethtool_2.6.36.bb    |    1 +
 meta/recipes-extended/findutils/findutils.inc      |    5 ++++-
 .../recipes-extended/findutils/findutils_4.2.31.bb |    5 ++++-
 meta/recipes-extended/gamin/gamin_0.1.10.bb        |    1 +
 meta/recipes-extended/gawk/gawk_3.1.5.bb           |    6 ++++--
 meta/recipes-extended/grep/grep_2.5.1a.bb          |    4 +++-
 meta/recipes-extended/groff/groff_1.18.1.4.bb      |    4 +++-
 meta/recipes-extended/gzip/gzip.inc                |    4 +++-
 meta/recipes-extended/gzip/gzip_1.3.12.bb          |    4 +++-
 meta/recipes-extended/hdparm/hdparm_6.3.bb         |    3 ++-
 meta/recipes-extended/iptables/iptables_1.4.9.bb   |    4 +++-
 meta/recipes-extended/iputils/iputils_s20100418.bb |    1 +
 meta/recipes-extended/less/less_436.bb             |    1 +
 meta/recipes-extended/libaio/libaio_0.3.107.bb     |    3 ++-
 meta/recipes-extended/libidn/libidn_0.6.14.bb      |    1 +
 meta/recipes-extended/libidn/libidn_1.19.bb        |    1 +
 meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb   |    1 +
 meta/recipes-extended/libuser/libuser_0.56.18.bb   |    4 +++-
 meta/recipes-extended/lsof/lsof_4.84.bb            |    1 +
 meta/recipes-extended/man-pages/man-pages_3.25.bb  |    1 +
 meta/recipes-extended/man/man_1.6e.bb              |    1 +
 .../net-tools/net-tools_1.60-23.bb                 |    3 ++-
 meta/recipes-extended/pax/pax_3.4.bb               |    1 +
 meta/recipes-extended/polkit/polkit_0.99.bb        |    1 +
 meta/recipes-extended/procps/procps.inc            |    7 +++----
 meta/recipes-extended/psmisc/psmisc.inc            |    8 +++++++-
 meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb     |    1 +
 meta/recipes-extended/screen/screen_4.0.3.bb       |    1 +
 meta/recipes-extended/sysklogd/sysklogd.inc        |    1 +
 meta/recipes-extended/sysstat/sysstat.inc          |    1 +
 meta/recipes-extended/tar/tar.inc                  |    1 +
 .../tcp-wrappers/tcp-wrappers_7.6.bb               |    1 +
 meta/recipes-extended/time/time.inc                |    1 +
 meta/recipes-extended/watchdog/watchdog_5.9.bb     |    1 +
 meta/recipes-extended/which/which_2.18.bb          |    1 +
 43 files changed, 85 insertions(+), 23 deletions(-)

diff --git a/meta/recipes-extended/at/at_3.1.12.bb b/meta/recipes-extended/at/at_3.1.12.bb
index e1df11e..c010b39 100644
--- a/meta/recipes-extended/at/at_3.1.12.bb
+++ b/meta/recipes-extended/at/at_3.1.12.bb
@@ -1,4 +1,6 @@
-DESCRIPTION = "Delayed job execution and batch processing"
+SUMMARY = "Delayed job execution and batch processing"
+DESCRIPTION = "At allows for commands to be run at a particular time.  Batch will execute commands when \
+the system load levels drop to a particular level."
 SECTION = "base"
 LICENSE="GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=4325afd396febcb659c36b49533135d4"
diff --git a/meta/recipes-extended/blktool/blktool_4-6.bb b/meta/recipes-extended/blktool/blktool_4-6.bb
index 74169d6..1e4ca9d 100644
--- a/meta/recipes-extended/blktool/blktool_4-6.bb
+++ b/meta/recipes-extended/blktool/blktool_4-6.bb
@@ -1,3 +1,4 @@
+SUMMARY = "tune low-level block device parameters"
 DESCRIPTION = "blktool is used for querying and/or changing settings of a block device. It is like hdparm but a more general tool, as it works on SCSI, IDE and SATA devices"
 HOMEPAGE = "http://packages.debian.org/unstable/admin/blktool"
 LICENSE = "GPLv2+"
diff --git a/meta/recipes-extended/byacc/byacc.inc b/meta/recipes-extended/byacc/byacc.inc
index c6a5e38..28217dc 100644
--- a/meta/recipes-extended/byacc/byacc.inc
+++ b/meta/recipes-extended/byacc/byacc.inc
@@ -1,4 +1,7 @@
-DESCRIPTION = "Berkeley Yacc"
+SUMMARY = "Berkeley LALR Yacc parser generator"
+DESCRIPTION = "A parser generator utility that reads a grammar specification from a file and generates an LR(1) \
+parser for it.  The parsers consist of a set of LALR(1) parsing tables and a driver routine written in the C \
+programming language."
 SECTION = "devel"
 LICENSE = "public domain"
 
diff --git a/meta/recipes-extended/bzip2/bzip2_1.0.6.bb b/meta/recipes-extended/bzip2/bzip2_1.0.6.bb
index 5e558a2..f5b9ac1 100644
--- a/meta/recipes-extended/bzip2/bzip2_1.0.6.bb
+++ b/meta/recipes-extended/bzip2/bzip2_1.0.6.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "Very high-quality data compression program."
+SUMMARY = "Very high-quality data compression program."
+DESCRIPTION = "bzip2 compresses files using the Burrows-Wheeler block-sorting text compression algorithm, and \
+Huffman coding. Compression is generally considerably better than that achieved by more conventional \
+LZ77/LZ78-based compressors, and approaches the performance of the PPM family of statistical compressors."
 HOMEPAGE = "http://www.bzip.org/"
 SECTION = "console/utils"
 LICENSE = "bzip2"
diff --git a/meta/recipes-extended/cpio/cpio_v2.inc b/meta/recipes-extended/cpio/cpio_v2.inc
index b571986..3d024af 100644
--- a/meta/recipes-extended/cpio/cpio_v2.inc
+++ b/meta/recipes-extended/cpio/cpio_v2.inc
@@ -1,4 +1,6 @@
-DESCRIPTION = "GNU cpio is a program to manage archives of files"
+SUMMARY = "GNU cpio is a program to manage archives of files"
+DESCRIPTION = "GNU cpio is a tool for creating and extracting archives, or copying files from one place to \
+another. It handles a number of cpio formats as well as reading and writing tar files."
 HOMEPAGE = "http://www.gnu.org/software/cpio/"
 SECTION = "base"
 
diff --git a/meta/recipes-extended/cronie/cronie_1.4.6.bb b/meta/recipes-extended/cronie/cronie_1.4.6.bb
index ae72466..6b4c64e 100644
--- a/meta/recipes-extended/cronie/cronie_1.4.6.bb
+++ b/meta/recipes-extended/cronie/cronie_1.4.6.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Cron daemon for executing programs at set times"
 DESCRIPTION = "Cronie contains the standard UNIX daemon crond that runs \
 specified programs at scheduled times and related tools. It is based on the \
 original cron and has security and configuration enhancements like the \
diff --git a/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb b/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb
index f1fde8a..bc588d7 100644
--- a/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb
+++ b/meta/recipes-extended/cwautomacros/cwautomacros_20090610.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "cwautomacros"
+DESCRIPTION = "cwautomacros: a collection of autoconf m4 macros"
 SECTION = "base"
 HOMEPAGE = "http://cwautomacros.berlios.de/"
 LICENSE = "GPLv2"
diff --git a/meta/recipes-extended/diffutils/diffutils_2.8.1.bb b/meta/recipes-extended/diffutils/diffutils_2.8.1.bb
index 801b5ff..9489b35 100644
--- a/meta/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/meta/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Diffutils contains tools used for finding differences between files."
 DESCRIPTION = "Diffutils contains the GNU diff, diff3, \
 sdiff, and cmp utilities. These programs are usually \
 used for creating patch files."
diff --git a/meta/recipes-extended/ethtool/ethtool_2.6.36.bb b/meta/recipes-extended/ethtool/ethtool_2.6.36.bb
index a345084..5824ce0 100644
--- a/meta/recipes-extended/ethtool/ethtool_2.6.36.bb
+++ b/meta/recipes-extended/ethtool/ethtool_2.6.36.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Display or change ethernet card settings"
 DESCRIPTION = "A small utility for examining and tuning the settings of your ethernet-based network interfaces."
 HOMEPAGE = "http://sourceforge.net/projects/gkernel/"
 SECTION = "console/network"
diff --git a/meta/recipes-extended/findutils/findutils.inc b/meta/recipes-extended/findutils/findutils.inc
index 08ca202..673eada 100644
--- a/meta/recipes-extended/findutils/findutils.inc
+++ b/meta/recipes-extended/findutils/findutils.inc
@@ -1,4 +1,7 @@
-DESCRIPTION = "find, locate, and xargs binaries."
+SUMMARY = "find, locate, and xargs binaries."
+DESCRIPTION = "The GNU Find Utilities are the basic directory searching utilities of the GNU operating system. \
+These programs are typically used in conjunction with other programs to provide modular and powerful directory \
+search and file locating capabilities to other commands."
 HOMEPAGE = "http://www.gnu.org/software/findutils/"
 BUGTRACKER = "http://savannah.gnu.org/bugs/?group=findutils"
 SECTION = "console/utils"
diff --git a/meta/recipes-extended/findutils/findutils_4.2.31.bb b/meta/recipes-extended/findutils/findutils_4.2.31.bb
index 2804a3b..3e187b5 100644
--- a/meta/recipes-extended/findutils/findutils_4.2.31.bb
+++ b/meta/recipes-extended/findutils/findutils_4.2.31.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "find, locate, and xargs binaries."
+SUMMARY = "find, locate, and xargs binaries."
+DESCRIPTION = "The GNU Find Utilities are the basic directory searching utilities of the GNU operating system. \
+These programs are typically used in conjunction with other programs to provide modular and powerful directory \
+search and file locating capabilities to other commands."
 HOMEPAGE = "http://www.gnu.org/software/findutils/"
 BUGTRACKER = "http://savannah.gnu.org/bugs/?group=findutils"
 SECTION = "console/utils"
diff --git a/meta/recipes-extended/gamin/gamin_0.1.10.bb b/meta/recipes-extended/gamin/gamin_0.1.10.bb
index 14aa8e7..b6394d2 100644
--- a/meta/recipes-extended/gamin/gamin_0.1.10.bb
+++ b/meta/recipes-extended/gamin/gamin_0.1.10.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Gamin the File Alteration Monitor"
 DESCRIPTION = "Gamin is a file and directory monitoring system defined to \
 be a subset of the FAM (File Alteration Monitor) system."
 HOMEPAGE = "http://people.gnome.org/~veillard/gamin/"
diff --git a/meta/recipes-extended/gawk/gawk_3.1.5.bb b/meta/recipes-extended/gawk/gawk_3.1.5.bb
index 4bfa23d..eba410e 100644
--- a/meta/recipes-extended/gawk/gawk_3.1.5.bb
+++ b/meta/recipes-extended/gawk/gawk_3.1.5.bb
@@ -1,5 +1,7 @@
-DESCRIPTION = "A program that you can use to select particular records in a \
-file and perform operations upon them."
+SUMMARY = "The GNU awk text processing utility"
+DESCRIPTION = "The gawk package contains the GNU version of awk, a text processing \
+utility. Awk interprets a special-purpose programming language to do \
+quick and easy text pattern matching and reformatting jobs."
 HOMEPAGE = "www.gnu.org/software/gawk"
 BUGTRACKER  = "bug-gawk@gnu.org"
 SECTION = "console/utils"
diff --git a/meta/recipes-extended/grep/grep_2.5.1a.bb b/meta/recipes-extended/grep/grep_2.5.1a.bb
index d50d5a3..bb4f53f 100644
--- a/meta/recipes-extended/grep/grep_2.5.1a.bb
+++ b/meta/recipes-extended/grep/grep_2.5.1a.bb
@@ -1,4 +1,6 @@
-DESCRIPTION = "grep GNU utility"
+SUMMARY = "Pattern matching utilities"
+DESCRIPTION = "The GNU versions of commonly used grep utilities.  The grep command searches one or more input \
+files for lines containing a match to a specified pattern."
 SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
diff --git a/meta/recipes-extended/groff/groff_1.18.1.4.bb b/meta/recipes-extended/groff/groff_1.18.1.4.bb
index 02b484a..66a6632 100644
--- a/meta/recipes-extended/groff/groff_1.18.1.4.bb
+++ b/meta/recipes-extended/groff/groff_1.18.1.4.bb
@@ -1,4 +1,6 @@
-DESCRIPTION = "groff-a short reference for the GNU roff language "
+SUMMARY = "GNU Troff software"
+DESCRIPTION = "The groff (GNU troff) software is a typesetting package which reads plain text mixed with \
+formatting commands and produces formatted output."
 SECTION = "console/utils"
 PRIORITY = "required"
 HOMEPAGE = "ftp://ftp.gnu.org/gnu/groff/"
diff --git a/meta/recipes-extended/gzip/gzip.inc b/meta/recipes-extended/gzip/gzip.inc
index 28df4d4..a449449 100644
--- a/meta/recipes-extended/gzip/gzip.inc
+++ b/meta/recipes-extended/gzip/gzip.inc
@@ -1,4 +1,6 @@
-DESCRIPTION = "GNU Gzip is a popular data compression program originally written by Jean-loup Gailly for the GNU project. Mark Adler wrote the decompression part"
+SUMMARY = "Standard GNU compressor"
+DESCRIPTION = "GNU Gzip is a popular data compression program originally written by Jean-loup Gailly for the GNU \
+project. Mark Adler wrote the decompression part"
 HOMEPAGE = "http://www.gnu.org/software/gzip/"
 SECTION = "console/utils"
 # change to GPLv3+ in 2007/07. Previous GPLv2 version is 1.3.12
diff --git a/meta/recipes-extended/gzip/gzip_1.3.12.bb b/meta/recipes-extended/gzip/gzip_1.3.12.bb
index c111e2e..df41c1e 100644
--- a/meta/recipes-extended/gzip/gzip_1.3.12.bb
+++ b/meta/recipes-extended/gzip/gzip_1.3.12.bb
@@ -1,4 +1,6 @@
-DESCRIPTION = "Standard GNU compressor"
+SUMMARY = "Standard GNU compressor"
+DESCRIPTION = "GNU Gzip is a popular data compression program originally written by Jean-loup Gailly for the GNU \
+project. Mark Adler wrote the decompression part"
 HOMEPAGE = "http://www.gnu.org/software/gzip"
 SECTION = "base"
 
diff --git a/meta/recipes-extended/hdparm/hdparm_6.3.bb b/meta/recipes-extended/hdparm/hdparm_6.3.bb
index a652302..617433d 100644
--- a/meta/recipes-extended/hdparm/hdparm_6.3.bb
+++ b/meta/recipes-extended/hdparm/hdparm_6.3.bb
@@ -1,4 +1,5 @@
-DESCRIPTION = "hdparm is a Linux shell utility for viewing \
+SUMMARY = "Utility for displaying and setting hard disk parameters"
+DESCRIPTION = "hdparm is a system utility for viewing \
 and manipulating various IDE drive and driver parameters."
 SECTION = "console/utils"
 PRIORITY = "optional"
diff --git a/meta/recipes-extended/iptables/iptables_1.4.9.bb b/meta/recipes-extended/iptables/iptables_1.4.9.bb
index 55736fd..7c9fbea 100644
--- a/meta/recipes-extended/iptables/iptables_1.4.9.bb
+++ b/meta/recipes-extended/iptables/iptables_1.4.9.bb
@@ -1,4 +1,6 @@
-DESCRIPTION = "iptables is the userspace command line program used to configure the Linux 2.4.x and 2.6.x IPv4 packet filtering ruleset"
+SUMMARY = "Tools for managing kernel packaet filtering capabilities"
+DESCRIPTION = "iptables is the userspace command line program used to configure and control network packet \
+filtering code in Linux."
 HOMEPAGE = "http://www.netfilter.org/"
 BUGTRACKER = "http://bugzilla.netfilter.org/"
 LICENSE = "GPLv2+"
diff --git a/meta/recipes-extended/iputils/iputils_s20100418.bb b/meta/recipes-extended/iputils/iputils_s20100418.bb
index f7458ac..2b2d76a 100644
--- a/meta/recipes-extended/iputils/iputils_s20100418.bb
+++ b/meta/recipes-extended/iputils/iputils_s20100418.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Network monitoring tools"
 DESCRIPTION = "Utilities for the IP protocol, including traceroute6, \
 tracepath, tracepath6, ping, ping6 and arping."
 HOMEPAGE = "http://www.skbuff.net/iputils"
diff --git a/meta/recipes-extended/less/less_436.bb b/meta/recipes-extended/less/less_436.bb
index 7364631..dcd73bd 100644
--- a/meta/recipes-extended/less/less_436.bb
+++ b/meta/recipes-extended/less/less_436.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Text file viewer similar to more"
 DESCRIPTION = "Less is a program similar to more, i.e. a terminal \
 based program for viewing text files and the output from other \
 programs. Less offers many features beyond those that more does."
diff --git a/meta/recipes-extended/libaio/libaio_0.3.107.bb b/meta/recipes-extended/libaio/libaio_0.3.107.bb
index 4797b50..16c7b6b 100644
--- a/meta/recipes-extended/libaio/libaio_0.3.107.bb
+++ b/meta/recipes-extended/libaio/libaio_0.3.107.bb
@@ -1,4 +1,5 @@
-DESCRIPTION="Asynchronous input/output library that uses the kernels native interface"
+SUMMARY = "Asynchronous I/O library"
+DESCRIPTION = "Asynchronous input/output library that uses the kernels native interface"
 HOMEPAGE = "http://lse.sourceforge.net/io/aio.html"
 
 LICENSE = "LGPLv2.1+"
diff --git a/meta/recipes-extended/libidn/libidn_0.6.14.bb b/meta/recipes-extended/libidn/libidn_0.6.14.bb
index 17bb103..c453b79 100644
--- a/meta/recipes-extended/libidn/libidn_0.6.14.bb
+++ b/meta/recipes-extended/libidn/libidn_0.6.14.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Internationalized Domain Name support library"
 DESCRIPTION = "Implementation of the Stringprep, Punycode and IDNA specifications defined by the IETF Internationalized Domain Names (IDN) working group."
 HOMEPAGE = "http://www.gnu.org/software/libidn/"
 SECTION = "libs"
diff --git a/meta/recipes-extended/libidn/libidn_1.19.bb b/meta/recipes-extended/libidn/libidn_1.19.bb
index 3edea65..65a8692 100644
--- a/meta/recipes-extended/libidn/libidn_1.19.bb
+++ b/meta/recipes-extended/libidn/libidn_1.19.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Internationalized Domain Name support library"
 DESCRIPTION = "Implementation of the Stringprep, Punycode and IDNA specifications defined by the IETF Internationalized Domain Names (IDN) working group."
 HOMEPAGE = "http://www.gnu.org/software/libidn/"
 SECTION = "libs"
diff --git a/meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb b/meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb
index c4ca0c0..6cb4f0e 100644
--- a/meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb
+++ b/meta/recipes-extended/libtirpc/libtirpc_0.2.1.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Transport-Independent RPC library"
 DESCRIPTION = "Libtirpc is a port of Suns Transport-Independent RPC library to Linux"
 SECTION = "libs/network"
 PRIORITY = "optional"
diff --git a/meta/recipes-extended/libuser/libuser_0.56.18.bb b/meta/recipes-extended/libuser/libuser_0.56.18.bb
index 55c82a7..4a10d80 100644
--- a/meta/recipes-extended/libuser/libuser_0.56.18.bb
+++ b/meta/recipes-extended/libuser/libuser_0.56.18.bb
@@ -1,4 +1,6 @@
-DESCRIPTION = "The libuser library implements a standardized interface for manipulating and administering user and group accounts"
+SUMMARY = "user and group account administration library"
+DESCRIPTION = "The libuser library implements a standardized interface for manipulating and administering user \
+and group accounts"
 HOMEPAGE = "https://fedorahosted.org/libuser/"
 BUGTRACKER = "https://fedorahosted.org/libuser/newticket"
 
diff --git a/meta/recipes-extended/lsof/lsof_4.84.bb b/meta/recipes-extended/lsof/lsof_4.84.bb
index f9d3fe1..960d837 100644
--- a/meta/recipes-extended/lsof/lsof_4.84.bb
+++ b/meta/recipes-extended/lsof/lsof_4.84.bb
@@ -1,3 +1,4 @@
+SUMMARY = "LiSt Open Files tool"
 DESCRIPTION = "Lsof is a Unix-specific diagnostic tool. \
 Its name stands for LiSt Open Files, and it does just that."
 SECTION = "devel"
diff --git a/meta/recipes-extended/man-pages/man-pages_3.25.bb b/meta/recipes-extended/man-pages/man-pages_3.25.bb
index 83e23ed..b5b200c 100644
--- a/meta/recipes-extended/man-pages/man-pages_3.25.bb
+++ b/meta/recipes-extended/man-pages/man-pages_3.25.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Linux man-pages"
 DESCRIPTION = "The Linux man-pages project documents the Linux kernel and C library interfaces that are employed by user programs"
 SECTION = "console/utils"
 PRIORITY = "required"
diff --git a/meta/recipes-extended/man/man_1.6e.bb b/meta/recipes-extended/man/man_1.6e.bb
index 905f6df..930cca9 100644
--- a/meta/recipes-extended/man/man_1.6e.bb
+++ b/meta/recipes-extended/man/man_1.6e.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Online documentation tools"
 DESCRIPTION = "A set of documentation tools: man, apropos and whatis"
 SECTION = "console/utils"
 HOMEPAGE = "http://primates.ximian.com/~flucifredi/man"
diff --git a/meta/recipes-extended/net-tools/net-tools_1.60-23.bb b/meta/recipes-extended/net-tools/net-tools_1.60-23.bb
index 843b020..28ca16e 100644
--- a/meta/recipes-extended/net-tools/net-tools_1.60-23.bb
+++ b/meta/recipes-extended/net-tools/net-tools_1.60-23.bb
@@ -1,4 +1,5 @@
-SUMMARY="A collection of programs that form the base set of the NET-3 networking distribution for the Linux operating system"
+SUMMARY="Basic networking tools"
+DESCRIPTION="A collection of programs that form the base set of the NET-3 networking distribution for the Linux operating system"
 HOMEPAGE = "http://net-tools.berlios.de/"
 BUGTRACKER = "http://bugs.debian.org/net-tools"
 LICENSE = "GPLv2+"
diff --git a/meta/recipes-extended/pax/pax_3.4.bb b/meta/recipes-extended/pax/pax_3.4.bb
index 6710216..b0f358a 100644
--- a/meta/recipes-extended/pax/pax_3.4.bb
+++ b/meta/recipes-extended/pax/pax_3.4.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Portable Archive eXchange"
 DESCRIPTION = "pax (Portable Archive eXchange) is the POSIX standard archive tool"
 HOMEPAGE = "http://www.openbsd.org/cgi-bin/cvsweb/src/bin/pax/"
 BUGTRACKER = "http://www.openbsd.org/query-pr.html"
diff --git a/meta/recipes-extended/polkit/polkit_0.99.bb b/meta/recipes-extended/polkit/polkit_0.99.bb
index 6551cae..f578cca 100644
--- a/meta/recipes-extended/polkit/polkit_0.99.bb
+++ b/meta/recipes-extended/polkit/polkit_0.99.bb
@@ -1,3 +1,4 @@
+SUMMARY = "PolicyKit Authorization Framework"
 DESCRIPTION = "The polkit package is an application-level toolkit for defining and handling the policy that allows unprivileged processes to speak to privileged processes."
 HOMEPAGE = "http://code.google.com/p/polkit/"
 LICENSE = "LGPLv2+"
diff --git a/meta/recipes-extended/procps/procps.inc b/meta/recipes-extended/procps/procps.inc
index b8e20a8..d44e3ec 100644
--- a/meta/recipes-extended/procps/procps.inc
+++ b/meta/recipes-extended/procps/procps.inc
@@ -1,7 +1,6 @@
-DESCRIPTION = "Procps is the package that has a bunch \
-of small useful utilities that give information \
-about processes using the /proc filesystem. The package \
-includes the programs ps, top, vmstat, w, kill, and skill."
+SUMMARY = "System and process monitoring utilities"
+DESCRIPTION = "Procps contains a set of system utilities that provide system information about processes using \
+the /proc filesystem. The package \ includes the programs ps, top, vmstat, w, kill, and skill."
 HOMEPAGE = "http://procps.sf.net"
 SECTION = "base"
 PRIORITY = "optional"
diff --git a/meta/recipes-extended/psmisc/psmisc.inc b/meta/recipes-extended/psmisc/psmisc.inc
index d489891..8b391f4 100644
--- a/meta/recipes-extended/psmisc/psmisc.inc
+++ b/meta/recipes-extended/psmisc/psmisc.inc
@@ -1,5 +1,11 @@
 LICENSE = "GPL"
-DESCRIPTION = "procfs tools"
+SUMMARY = "Utilities for managing processes on your system"
+DESCRIPTION = "The psmisc package contains utilities for managing processes on your \
+system: pstree, killall and fuser.  The pstree command displays a tree \
+structure of all of the running processes on your system.  The killall \
+command sends a specified signal (SIGTERM if nothing is specified) to \
+processes identified by name.  The fuser command identifies the PIDs \
+of processes that are using specified files or filesystems."
 SECTION = "base"
 PRIORITY = "required"
 DEPENDS = "ncurses virtual/libintl"
diff --git a/meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb b/meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb
index 492ff83..d520ddf 100644
--- a/meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb
+++ b/meta/recipes-extended/rpcbind/rpcbind_0.2.0.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Universal Addresses to RPC Program Number Mapper"
 DESCRIPTION = "The rpcbind utility is a server that converts RPC \
                program numbers into universal addresses."
 SECTION = "console/network"
diff --git a/meta/recipes-extended/screen/screen_4.0.3.bb b/meta/recipes-extended/screen/screen_4.0.3.bb
index 31c4970..dac2893 100644
--- a/meta/recipes-extended/screen/screen_4.0.3.bb
+++ b/meta/recipes-extended/screen/screen_4.0.3.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Multiplexing terminal manager"
 DESCRIPTION = "Screen is a full-screen window manager \
 that multiplexes a physical terminal between several \
 processes, typically interactive shells."
diff --git a/meta/recipes-extended/sysklogd/sysklogd.inc b/meta/recipes-extended/sysklogd/sysklogd.inc
index 11832b5..f2b1c15 100644
--- a/meta/recipes-extended/sysklogd/sysklogd.inc
+++ b/meta/recipes-extended/sysklogd/sysklogd.inc
@@ -1,3 +1,4 @@
+SUMMARY = "System Log Daemons"
 DESCRIPTION = "The sysklogd package implements two system log daemons: syslogd, klogd"
 HOMEPAGE = "http://www.infodrom.org/projects/sysklogd/"
 SECTION = "base"
diff --git a/meta/recipes-extended/sysstat/sysstat.inc b/meta/recipes-extended/sysstat/sysstat.inc
index 564bc7d..aeb33cf 100644
--- a/meta/recipes-extended/sysstat/sysstat.inc
+++ b/meta/recipes-extended/sysstat/sysstat.inc
@@ -1,3 +1,4 @@
+SUMMARY = "System performance tools"
 DESCRIPTION = "The sysstat utilities are a collection of performance monitoring tools for Linux."
 HOMEPAGE = "http://sebastien.godard.pagesperso-orange.fr/"
 LICENSE = "GPLv2+"
diff --git a/meta/recipes-extended/tar/tar.inc b/meta/recipes-extended/tar/tar.inc
index cf72d48..5246efc 100644
--- a/meta/recipes-extended/tar/tar.inc
+++ b/meta/recipes-extended/tar/tar.inc
@@ -1,3 +1,4 @@
+SUMMARY = "GNU file archiving program"
 DESCRIPTION = "GNU tar saves many files together into a single tape \
 or disk archive, and can restore individual files from the archive."
 HOMEPAGE = "http://www.gnu.org/software/tar/"
diff --git a/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb b/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb
index ec937c7..daaa2f7 100644
--- a/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb
+++ b/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Security tool that is a wrapper for TCP daemons"
 DESCRIPTION = "Tools for monitoring and filtering incoming requests for tcp \
 	      services."
 PRIORITY = "optional"
diff --git a/meta/recipes-extended/time/time.inc b/meta/recipes-extended/time/time.inc
index 8d31b47..2d9dab8 100644
--- a/meta/recipes-extended/time/time.inc
+++ b/meta/recipes-extended/time/time.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Tool that measures CPU resources"
 DESCRIPTION = "time measures many of the CPU resources, such as time and \
 memory, that other programs use."
 HOMEPAGE = "http://www.gnu.org/software/time/"
diff --git a/meta/recipes-extended/watchdog/watchdog_5.9.bb b/meta/recipes-extended/watchdog/watchdog_5.9.bb
index d625924..96aa1f0 100644
--- a/meta/recipes-extended/watchdog/watchdog_5.9.bb
+++ b/meta/recipes-extended/watchdog/watchdog_5.9.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Software watchdog"
 DESCRIPTION = "Watchdog is a daemon that checks if your system is still \
 working. If programs in user space are not longer executed \
 it will reboot the system."
diff --git a/meta/recipes-extended/which/which_2.18.bb b/meta/recipes-extended/which/which_2.18.bb
index 7eeb320..92010b2 100644
--- a/meta/recipes-extended/which/which_2.18.bb
+++ b/meta/recipes-extended/which/which_2.18.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Displays the full path of executables that bash would execute"
 DESCRIPTION = "Which is a utility that prints out the full path of the \
 executables that bash(1) would execute when the passed \
 program names would have been entered on the shell prompt. \
-- 
1.7.2.2


