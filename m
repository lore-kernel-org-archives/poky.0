Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61008E007D9
	for <poky@yoctoproject.org>; Fri, 13 Dec 2013 04:21:01 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2013 04:21:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,478,1384329600"; d="scan'208";a="424164553"
Received: from junemccl-mobl.ger.corp.intel.com (HELO
	helios.ger.corp.intel.com) ([10.252.122.17])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2013 04:20:59 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 13 Dec 2013 12:20:54 +0000
Message-Id: <1386937254-18944-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] local.conf.sample.extended: restore some edits
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Dec 2013 12:21:02 -0000

Poky commit ba8506ee342a1a579ceb309f3f50285eaad84f25 reverted some
previous changes that hadn't been applied in the OE-Core version of this
file. This patch restores them and tweaks a couple of sentences so that
they make sense.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample.extended | 53 ++++++++++++++++--------------
 1 file changed, 29 insertions(+), 24 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 9585432..c7c4f40 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -15,7 +15,7 @@
 
 #DISTRO_FEATURES = "alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci ${DISTRO_FEATURES_LIBC}"
 
-# If you want to get an image based on gtk+directfb without x11, Please copy this variable to build/conf/local.conf
+# If you want to get an image based on directfb without x11, Please copy this variable to build/conf/local.conf
 #DISTRO_FEATURES = "alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g directfb ${DISTRO_FEATURES_LIBC}"
 
 # ENABLE_BINARY_LOCALE_GENERATION controls the generation of binary locale
@@ -188,33 +188,38 @@
 # when the disk space reduces 50M (or the amount of inode reduces 5k).
 #BB_DISKMON_WARNINTERVAL = "50M,5K"
 
-# Archiving source code configuration
-#
-# The following variables control which files to archive and the type to archive to generate.
-# There are three basic class defintions of common operations that might be desired and these
-# can be enabled by uncommenting one of the following lines:
-#
-# INHERIT += "archive-original-source"
-# INHERIT += "archive-patched-source"
-#INHERIT =+ "archive-configured-source"
-#
-# Type of archive:
-# SOURCE_ARCHIVE_PACKAGE_TYPE = 'srpm'
-#SOURCE_ARCHIVE_PACKAGE_TYPE ?= 'tar'
-#
-# Whether to include WORKDIR/temp, .bb and .inc files:
-# 'logs_with_scripts' include WORKDIR/temp directory and .bb and .inc files
-# 'logs' only include WORKDIR/temp
-# ARCHIVER_MODE[log_type] = "logs logs_with_scripts"
-# There are three basic class defintions of common operations 
-# that might be desired and these can be enabled by 
-# uncommenting five of the following lines:
-# ARCHIVER_MODE[filter] ?= "yes no"
-# Filter packages according to license
+# Archiving source code, configure what kind of sources will be archived
+# and the output format. The output files will be put in
+# ${DEPLOY_DIR}/sources/.
+#
+# You can add the following 3 lines to the conf file to get a quick
+# usage:
+#ARCHIVER_MODE ?= "original"
+#ARCHIVER_CLASS = "${@'archive-${ARCHIVER_MODE}-source' if ARCHIVER_MODE != 'none' else ''}"
+#INHERIT += "${ARCHIVER_CLASS}"
+#
+# Detailed configuration:
+# What kind of sources will be archived, the ARCHIVER_MODE could be:
+# original: the ${S} after do_unpack
+# patched : the ${S} after do_patch
+# configured: the ${S} after do_configure
 #ARCHIVER_MODE ?= "original"
+#
+# The output format type, tar or srpm, the default is "tar".
 #ARCHIVER_MODE[type] ?= "tar"
+#
+# Whether include the log file under ${T} and the recipe (.bb and .inc),
+# the default is "logs_with_scripts".
 #ARCHIVER_MODE[log_type] ?= "logs_with_scripts"
+#
+# license filter:
+# yes: Only the COPYLEFT_LICENSE_INCLUDE recipe will be archived
+# no: All kinds of license will be archived
+# The default is "no"
 #ARCHIVER_MODE[filter] ?= "no"
+#
+# The following lines should be added to your conf file verbatim
+# (uncommented though of course):
 #ARCHIVER_CLASS = "${@'archive-${ARCHIVER_MODE}-source' if ARCHIVER_MODE != 'none' else ''}"
 #INHERIT += "${ARCHIVER_CLASS}"
 
-- 
1.8.1.2


