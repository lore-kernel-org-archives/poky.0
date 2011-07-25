Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20E8D4C801BF
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 09:28:59 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Jul 2011 07:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,261,1309762800"; d="scan'208";a="32013655"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.17.240])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2011 07:28:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jul 2011 15:28:45 +0100
Message-Id: <ff5bbe6bf9164865bfde7c05d2f59d67124948c2.1311603837.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1311603837.git.paul.eggleton@linux.intel.com>
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1311603837.git.paul.eggleton@linux.intel.com>
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 4/6] meta-yocto/conf/local.conf.sample: improve comments/layout
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
X-List-Received-Date: Mon, 25 Jul 2011 14:28:59 -0000

Some additions and grammar fixes to the comments, as well as moving
the locale options to the same place.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample |   21 ++++++++++++++-------
 1 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 523a737..524a256 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -11,10 +11,10 @@
 CONF_VERSION = "1"
 
 # Uncomment and change to cache the files Poky downloads in an alternative
-# location, default it ${TOPDIR}/downloads
+# location, default is ${TOPDIR}/downloads
 #DL_DIR ?= "${TOPDIR}/downloads"
 # Uncomment and change to cache Poky's built staging output in an alternative
-# location, default ${TOPDIR}/sstate-cache
+# location, default is ${TOPDIR}/sstate-cache
 #SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
 
 # Uncomment and set to allow bitbake to execute multiple tasks at once.
@@ -42,10 +42,13 @@ MACHINE ??= "qemux86"
 #MACHINE ?= "mpc8315e-rdb"
 #MACHINE ?= "routerstationpro"
 
+# Target distribution to set (from conf/distro/)
 DISTRO ?= "poky"
 # For bleeding edge / experimental / unstable package versions
 # DISTRO ?= "poky-bleeding"
 
+# BBMASK is a regular expression that can be used to tell BitBake to ignore
+# certain recipes.
 BBMASK = ""
 
 # EXTRA_IMAGE_FEATURES allows extra packages to be added to the generated images 
@@ -80,11 +83,9 @@ PACKAGE_CLASSES ?= "package_rpm package_ipk"
 # NOTE: if listing mklibs & prelink both, then make sure mklibs is before prelink
 USER_CLASSES ?= "image-mklibs image-prelink"
 
-# Uncomment this if you want BitBake to emit the log if a build fails.
+# Comment this out if you do not want BitBake to emit the log if a build fails.
 BBINCLUDELOGS = "yes"
 
-ENABLE_BINARY_LOCALE_GENERATION = "1"
-
 # The architecture to build SDK items for, by setting this you can build SDK
 # packages for architectures other than the host i.e. building i686 packages
 # on an x86_64 host.
@@ -100,6 +101,12 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
 #file://.* http://someserver.tld/share/sstate/ \n \
 #file://.* file:///some/local/dir/sstate/"
 
+# ENABLE_BINARY_LOCALE_GENERATION controls the generation of binary locale
+# packages at build time using qemu-native. Disabling it (by setting it to 0)
+# will save some build time at the expense of breaking i18n on devices with
+# less than 128MB RAM.
+ENABLE_BINARY_LOCALE_GENERATION = "1"
+
 # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
 # wish to perform the time-consuming step of generating all LIBC locales.
 # NOTE: If removing en_US.UTF-8 you will also need to uncomment, and set
@@ -110,10 +117,10 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
 #IMAGE_LINGUAS ?= "en-gb"
 #LIMIT_BUILT_LOCALES ?= "POSIX en_GB"
 
-# This value is currently used by PSEUDO to determine if the recipe should
+# This value is currently used by pseudo to determine if the recipe should
 # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
 #
-# PSEUDO will attempt to determine if a 32-bit wrapper is necessary, but 
+# Pseudo will attempt to determine if a 32-bit wrapper is necessary, but
 # it doesn't always guess properly.  If you have 32-bit executables on 
 # your 64-bit build system, you likely want to set this to "0", 
 # otherwise you could end up with incorrect file attributes on the 
-- 
1.7.4.1


