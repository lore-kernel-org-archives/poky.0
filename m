Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A23224C8108C
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 09:18:00 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Apr 2011 07:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,219,1301900400"; d="scan'208";a="910083748"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga001.fm.intel.com with ESMTP; 15 Apr 2011 07:18:00 -0700
Message-Id: <7c632c2bdd91205bb2e7753a3ecbbf40d894dbb1.1302856116.git.lei.mei@intel.com>
In-Reply-To: <cover.1302856115.git.lei.mei@intel.com>
References: <cover.1302856115.git.lei.mei@intel.com>
Old-Date: Tue, 12 Apr 2011 10:40:00 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 3/5] psmisc: Upgrade from 22.2 to 22.13
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
Date: Fri, 15 Apr 2011 14:18:00 -0000
X-Original-Date: 五, 15  4月 2011 22:22:47 +0800
X-List-Received-Date: Fri, 15 Apr 2011 14:18:00 -0000

From: Mei Lei <lei.mei@intel.com>

Modify the libintl-link.patch because the upstream removed old fuser in 22.7

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../psmisc/files/libintl-link.patch                |   27 ++++++++++---------
 meta/recipes-extended/psmisc/psmisc_22.13.bb       |    7 +++++
 meta/recipes-extended/psmisc/psmisc_22.2.bb        |    7 -----
 3 files changed, 21 insertions(+), 20 deletions(-)
 create mode 100644 meta/recipes-extended/psmisc/psmisc_22.13.bb
 delete mode 100644 meta/recipes-extended/psmisc/psmisc_22.2.bb

diff --git a/meta/recipes-extended/psmisc/files/libintl-link.patch b/meta/recipes-extended/psmisc/files/libintl-link.patch
index d9cdd90..698d98a 100644
--- a/meta/recipes-extended/psmisc/files/libintl-link.patch
+++ b/meta/recipes-extended/psmisc/files/libintl-link.patch
@@ -1,29 +1,30 @@
+Upstream-Status: Inappropriate [configuration]
+Signed-off-by: Mei Lei <lei.mei@intel.com>
+
 uClibc needs to link against an external libintl but it doesn't do this by
 default. The configure script correctly figures out if this is needed, but
 doesn't actually link to the libraries it decides on. This makes it link to
 them if they are needed:
 
---- psmisc-22.2/src/Makefile.am	2006/06/28 00:14:07	1.1
-+++ psmisc-22.2/src/Makefile.am	2006/06/28 00:14:24
-@@ -5,15 +5,19 @@
+--- psmisc-22.13/src/Makefile.am
++++ psmisc-22.13/src/Makefile.am
+@@ -25,16 +25,17 @@ endif
  
- oldfuser_SOURCES = oldfuser.c comm.h signals.c signals.h loop.h i18n.h
  
-+oldfuser_LDADD = @INTLLIBS@
-+
  fuser_SOURCES = fuser.c comm.h signals.c signals.h i18n.h fuser.h
- 
 +fuser_LDADD = @INTLLIBS@
-+
+
  killall_SOURCES = killall.c comm.h signals.c signals.h i18n.h
- 
+
 -killall_LDADD = @SELINUX_LIB@
 +killall_LDADD = @SELINUX_LIB@ @INTLLIBS@
- 
+
+ peekfd_SOURCES = peekfd.c
+
  pstree_SOURCES = pstree.c comm.h i18n.h
- 
+
 -pstree_LDADD = @TERMCAP_LIB@ @SELINUX_LIB@
 +pstree_LDADD = @TERMCAP_LIB@ @SELINUX_LIB@ @INTLLIBS@
- 
- BUILT_SOURCES = signames.h
+
+ prtstat_SOURCES = prtstat.c prtstat.h
  
diff --git a/meta/recipes-extended/psmisc/psmisc_22.13.bb b/meta/recipes-extended/psmisc/psmisc_22.13.bb
new file mode 100644
index 0000000..598c144
--- /dev/null
+++ b/meta/recipes-extended/psmisc/psmisc_22.13.bb
@@ -0,0 +1,7 @@
+require psmisc.inc
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
+PR = "r0"
+
+SRC_URI[md5sum] = "e2c339e6b65b730042084023784a729e"
+SRC_URI[sha256sum] = "06d25e8ebb4722dbcede98a787c39a9ed341f8e58fde10c0b2d6b35990b35daa"
diff --git a/meta/recipes-extended/psmisc/psmisc_22.2.bb b/meta/recipes-extended/psmisc/psmisc_22.2.bb
deleted file mode 100644
index 3a7059a..0000000
--- a/meta/recipes-extended/psmisc/psmisc_22.2.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require psmisc.inc
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
-PR = "r1"
-
-SRC_URI[md5sum] = "77737c817a40ef2c160a7194b5b64337"
-SRC_URI[sha256sum] = "6bca237485a352362133792e000a3c8e367a26b0312c5c607db7c2a97717d15f"
-- 
1.6.3.3


