Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 00A7D4C80FD4
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:41:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 05:41:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="678004581"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2010 05:41:51 -0800
Message-Id: <d8e6d56591e1def0cbba05d5f9f0b601d4679d8d.1289914983.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289914982.git.dongxiao.xu@intel.com>
References: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 09:51:18 +0800
To: poky@yoctoproject.org
Subject: [PATCH 06/14] kexec_tools: Upgraded to version 2.0.2
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
X-List-Received-Date: Tue, 16 Nov 2010 13:41:53 -0000

Remove the patch since the fix is already in latest upstream.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../kexec/kexec-tools-2.0.1/configurefix.patch     |   51 --------------------
 meta/recipes-kernel/kexec/kexec-tools.inc          |    5 +-
 .../{kexec-tools_2.0.1.bb => kexec-tools_2.0.2.bb} |    0
 3 files changed, 2 insertions(+), 54 deletions(-)
 delete mode 100644 meta/recipes-kernel/kexec/kexec-tools-2.0.1/configurefix.patch
 rename meta/recipes-kernel/kexec/{kexec-tools_2.0.1.bb => kexec-tools_2.0.2.bb} (100%)

diff --git a/meta/recipes-kernel/kexec/kexec-tools-2.0.1/configurefix.patch b/meta/recipes-kernel/kexec/kexec-tools-2.0.1/configurefix.patch
deleted file mode 100644
index 1f0b507..0000000
--- a/meta/recipes-kernel/kexec/kexec-tools-2.0.1/configurefix.patch
+++ /dev/null
@@ -1,51 +0,0 @@
-kexec-tools: Fix synatx error with recent autoconf+automake
-
-Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
-
-Move it to kexec-tools-2.0.1 directory. Dongxiao Xu <dongxiao.xu@intel.com>
-
-Index: kexec-tools-1.101/configure.ac
-===================================================================
---- kexec-tools-1.101.orig/configure.ac	2010-02-02 15:14:43.173906722 +0000
-+++ kexec-tools-1.101/configure.ac	2010-02-02 15:15:07.623910565 +0000
-@@ -100,23 +100,23 @@
- BUILD_CFLAGS='-O2 -Wall $(CPPFLAGS)'
- 
- dnl ---Sanity checks
--if test "$CC"      = "no"; then AC_MSG_ERROR([cc not found]) fi
--if test "$CPP"     = "no"; then AC_MSG_ERROR([cpp not found]) fi
--if test "$LD"      = "no"; then AC_MSG_ERROR([ld not found]) fi
--if test "$AS"      = "no"; then AC_MSG_ERROR([as not found]) fi
--if test "$OBJCOPY" = "no"; then	AC_MSG_ERROR([objcopy not found]) fi
--if test "$AR"      = "no"; then	AC_MSG_ERROR([ar not found]) fi
--
--if test "$MKDIR"   = "no"; then AC_MSG_ERROR([ mkdir not found]) fi 
--if test "$RM"      = "no"; then AC_MSG_ERROR([ rm not found]) fi    
--if test "$CP"      = "no"; then AC_MSG_ERROR([ cp not found]) fi    
--if test "$LN"      = "no"; then AC_MSG_ERROR([ ln not found]) fi    
--if test "$TAR"     = "no"; then AC_MSG_ERROR([ tar not found]) fi   
--if test "$RPM"     = "no"; then AC_MSG_ERROR([ rpm not found]) fi   
--if test "$SED"     = "no"; then AC_MSG_ERROR([ sed not found]) fi   
--if test "$FIND"    = "no"; then AC_MSG_ERROR([ find not found]) fi  
--if test "$XARGS"   = "no"; then AC_MSG_ERROR([ xargs not found]) fi 
--if test "$DIRNAME" = "no"; then AC_MSG_ERROR([ dirname not found]) fi 
-+if test "$CC"      = "no"; then AC_MSG_ERROR([cc not found]); fi
-+if test "$CPP"     = "no"; then AC_MSG_ERROR([cpp not found]); fi
-+if test "$LD"      = "no"; then AC_MSG_ERROR([ld not found]); fi
-+if test "$AS"      = "no"; then AC_MSG_ERROR([as not found]); fi
-+if test "$OBJCOPY" = "no"; then	AC_MSG_ERROR([objcopy not found]); fi
-+if test "$AR"      = "no"; then	AC_MSG_ERROR([ar not found]); fi
-+
-+if test "$MKDIR"   = "no"; then AC_MSG_ERROR([ mkdir not found]); fi 
-+if test "$RM"      = "no"; then AC_MSG_ERROR([ rm not found]); fi    
-+if test "$CP"      = "no"; then AC_MSG_ERROR([ cp not found]); fi    
-+if test "$LN"      = "no"; then AC_MSG_ERROR([ ln not found]); fi    
-+if test "$TAR"     = "no"; then AC_MSG_ERROR([ tar not found]); fi   
-+if test "$RPM"     = "no"; then AC_MSG_ERROR([ rpm not found]); fi   
-+if test "$SED"     = "no"; then AC_MSG_ERROR([ sed not found]); fi   
-+if test "$FIND"    = "no"; then AC_MSG_ERROR([ find not found]); fi  
-+if test "$XARGS"   = "no"; then AC_MSG_ERROR([ xargs not found]); fi 
-+if test "$DIRNAME" = "no"; then AC_MSG_ERROR([ dirname not found]); fi 
- 
- dnl ---Output variables...
- 
diff --git a/meta/recipes-kernel/kexec/kexec-tools.inc b/meta/recipes-kernel/kexec/kexec-tools.inc
index 55ab906..70c9efc 100644
--- a/meta/recipes-kernel/kexec/kexec-tools.inc
+++ b/meta/recipes-kernel/kexec/kexec-tools.inc
@@ -1,14 +1,13 @@
 DESCRIPTION = "Kexec is a fast reboot feature that lets you reboot to a new Linux kernel"
 AUTHOR = "Eric Biederman"
-HOMEPAGE = "http://www.kernel.org/pub/linux/kernel/people/horms/kexec-tools/"
+HOMEPAGE = "http://kernel.org/pub/linux/utils/kernel/kexec/"
 SECTION = "kernel/userland"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ea5bed2f60d357618ca161ad539f7c0a \
                     file://kexec/kexec.c;beginline=1;endline=20;md5=af10f6ae4a8715965e648aa687ad3e09"
 DEPENDS = "virtual/kernel zlib"
 
-SRC_URI = "http://www.kernel.org/pub/linux/kernel/people/horms/kexec-tools//kexec-tools-${PV}.tar.gz \
-           file://configurefix.patch;patch=1"
+SRC_URI = "http://kernel.org/pub/linux/utils/kernel/kexec/kexec-tools-${PV}.tar.gz"
 
 inherit autotools
 
diff --git a/meta/recipes-kernel/kexec/kexec-tools_2.0.1.bb b/meta/recipes-kernel/kexec/kexec-tools_2.0.2.bb
similarity index 100%
rename from meta/recipes-kernel/kexec/kexec-tools_2.0.1.bb
rename to meta/recipes-kernel/kexec/kexec-tools_2.0.2.bb
-- 
1.6.3.3


