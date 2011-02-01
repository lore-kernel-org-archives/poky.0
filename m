Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 345694C800AA
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 16:43:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Feb 2011 14:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,412,1291622400"; d="scan'208";a="382913442"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2011 14:43:34 -0800
Message-Id: <6e9e6c426d47191744caf9b2ec5a53c59bbeeb1b.1296600047.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1296600047.git.nitin.a.kamble@intel.com>
References: <cover.1296600047.git.nitin.a.kamble@intel.com>
Old-Date: Mon, 31 Jan 2011 10:15:11 -0800
Date: Tue, 01 Feb 2011 14:43:34 -0800
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 5/6] subversion: upgrade from 1.6.13 to 1.6 15
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
X-List-Received-Date: Tue, 01 Feb 2011 22:43:35 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Rebased this patch to the newer code
	modified:   subversion/disable-revision-install.patch

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../subversion/disable-revision-install.patch      |   24 +++++++++++++++-----
 .../{subversion_1.6.13.bb => subversion_1.6.15.bb} |    6 ++--
 2 files changed, 21 insertions(+), 9 deletions(-)
 rename meta/recipes-devtools/subversion/{subversion_1.6.13.bb => subversion_1.6.15.bb} (86%)

diff --git a/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch b/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
index a1c6065..ad716d0 100644
--- a/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
+++ b/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
@@ -1,6 +1,8 @@
---- subversion-1.2.0-r0/Makefile.in.old	2005-07-17 22:28:21.898728312 +0200
-+++ subversion-1.2.0-r0/Makefile.in	2005-07-17 22:30:05.361999504 +0200
-@@ -260,7 +260,7 @@
+Index: subversion-1.6.15/Makefile.in
+===================================================================
+--- subversion-1.6.15.orig/Makefile.in	2010-11-17 06:47:23.000000000 -0800
++++ subversion-1.6.15/Makefile.in	2011-01-31 10:11:07.358779686 -0800
+@@ -305,7 +305,7 @@
  clean: external-clean local-clean
  distclean: external-distclean local-distclean
  extraclean: external-extraclean local-extraclean
@@ -9,14 +11,24 @@
  
  @INCLUDE_OUTPUTS@
  
-@@ -320,8 +320,8 @@
+@@ -363,13 +363,13 @@
  local-install: @INSTALL_RULES@
  
  ### HACK!! Find a better way to do this
 -revision-install:
--	subversion/svnversion/svnversion $(top_srcdir) /repos/svn/trunk > $(DESTDIR)$(includedir)/subversion-1/svn-revision.txt
+-	test -d $(DESTDIR)$(includedir)/subversion-1 || \
+-	  $(MKDIR) $(DESTDIR)$(includedir)/subversion-1
+-	(subversion/svnversion/svnversion $(top_srcdir) ||  \
+-	 svnversion $(top_srcdir) ||                        \
+-	 echo "unknown";                                    \
+-	) > $(DESTDIR)$(includedir)/subversion-1/svn-revision.txt
 +#revision-install:
-+#	subversion/svnversion/svnversion $(top_srcdir) /repos/svn/trunk > $(DESTDIR)$(includedir)/subversion-1/svn-revision.txt
++#	test -d $(DESTDIR)$(includedir)/subversion-1 || \
++#	  $(MKDIR) $(DESTDIR)$(includedir)/subversion-1
++#	(subversion/svnversion/svnversion $(top_srcdir) ||  \
++#	 svnversion $(top_srcdir) ||                        \
++#	 echo "unknown";                                    \
++#	) > $(DESTDIR)$(includedir)/subversion-1/svn-revision.txt
  
  install-static: @INSTALL_STATIC_RULES@
  
diff --git a/meta/recipes-devtools/subversion/subversion_1.6.13.bb b/meta/recipes-devtools/subversion/subversion_1.6.15.bb
similarity index 86%
rename from meta/recipes-devtools/subversion/subversion_1.6.13.bb
rename to meta/recipes-devtools/subversion/subversion_1.6.15.bb
index b535f06..de40863 100644
--- a/meta/recipes-devtools/subversion/subversion_1.6.13.bb
+++ b/meta/recipes-devtools/subversion/subversion_1.6.15.bb
@@ -5,15 +5,15 @@ RDEPENDS_${PN} = "neon"
 LICENSE = "Apache BSD"
 HOMEPAGE = "http://subversion.tigris.org"
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "http://subversion.tigris.org/downloads/${P}.tar.bz2 \
            file://disable-revision-install.patch;patch=1 \
 	   file://neon-detection.patch;patch=1 \
 	   file://libtool2.patch;patch=1"
 
-SRC_URI[md5sum] = "7ae1c827689f21cf975804005be30aeb"
-SRC_URI[sha256sum] = "3a30327bdb04109f369586196ee4a6993cdab2cfa85c3134549f02c229bf0d15"
+SRC_URI[md5sum] = "113fca1d9e4aa389d7dc2b210010fa69"
+SRC_URI[sha256sum] = "b2919d603a5f3c19f42e3265c4b930e2376c43b3969b90ef9c42b2f72d5aaa45"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=2a69fef414e2cb907b4544298569300b"
 
-- 
1.7.3.4


