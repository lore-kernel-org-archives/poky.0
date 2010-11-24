Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 52FB94C8110D
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 12:56:36 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 2B009302BA
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 13:56:32 -0500 (EST)
Message-Id: <41948339b6b83515e288a606dae9e21e2b0b12d5.1290624288.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1290624288.git.scott.a.garman@intel.com>
References: <cover.1290624288.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 23 Nov 2010 16:41:49 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 2B009302BA.6DB8C
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/4] libpam: upgrade to version 1.1.3
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
X-List-Received-Date: Wed, 24 Nov 2010 18:56:36 -0000

* Removed obsolete crossbinary patch
* Added source checksums
* Added LIC_FILES_CHKSUM and SUMMARY entries

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../pam/libpam-1.1.1/disable_crossbinary.patch     |   34 --------------------
 .../pam/{libpam-1.1.1 => libpam}/99_pam            |    0
 .../{libpam-1.1.1 => libpam}/pam.d/common-account  |    0
 .../pam/{libpam-1.1.1 => libpam}/pam.d/common-auth |    0
 .../{libpam-1.1.1 => libpam}/pam.d/common-password |    0
 .../{libpam-1.1.1 => libpam}/pam.d/common-session  |    0
 .../pam.d/common-session-noninteractive            |    0
 .../pam/{libpam-1.1.1 => libpam}/pam.d/other       |    0
 .../pam/{libpam_1.1.1.bb => libpam_1.1.3.bb}       |   12 +++++--
 9 files changed, 9 insertions(+), 37 deletions(-)
 delete mode 100644 meta/recipes-extended/pam/libpam-1.1.1/disable_crossbinary.patch
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/99_pam (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-account (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-auth (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-password (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-session (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/common-session-noninteractive (100%)
 rename meta/recipes-extended/pam/{libpam-1.1.1 => libpam}/pam.d/other (100%)
 rename meta/recipes-extended/pam/{libpam_1.1.1.bb => libpam_1.1.3.bb} (89%)

diff --git a/meta/recipes-extended/pam/libpam-1.1.1/disable_crossbinary.patch b/meta/recipes-extended/pam/libpam-1.1.1/disable_crossbinary.patch
deleted file mode 100644
index 43359b0..0000000
--- a/meta/recipes-extended/pam/libpam-1.1.1/disable_crossbinary.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-padout should be compiled using the native compiler but isn't. 
-Disable this piece of documentation for now.
-
-RP
-
-Index: Linux-PAM-1.0.2/doc/specs/Makefile.am
-===================================================================
---- Linux-PAM-1.0.2.orig/doc/specs/Makefile.am	2008-11-04 21:06:23.000000000 +0000
-+++ Linux-PAM-1.0.2/doc/specs/Makefile.am	2008-11-04 21:07:06.000000000 +0000
-@@ -2,21 +2,8 @@
- # Copyright (c) 2005, 2006 Thorsten Kukuk <kukuk@suse.de>
- #
- 
--CLEANFILES = draft-morgan-pam-current.txt *~
-+CLEANFILES = *~
- 
--EXTRA_DIST = draft-morgan-pam.raw std-agent-id.raw rfc86.0.txt
-+EXTRA_DIST = std-agent-id.raw rfc86.0.txt
- 
--draft-morgan-pam-current.txt: padout draft-morgan-pam.raw
--	./padout < $(srcdir)/draft-morgan-pam.raw > draft-morgan-pam-current.txt
--
--AM_YFLAGS = -d
--
--BUILT_SOURCES = parse_y.h
--
--noinst_PROGRAMS = padout
--
--padout_SOURCES = parse_l.l parse_y.y
--
--padout_LDADD = @LEXLIB@
--
--doc_DATA = draft-morgan-pam-current.txt rfc86.0.txt
-+doc_DATA = rfc86.0.txt
diff --git a/meta/recipes-extended/pam/libpam-1.1.1/99_pam b/meta/recipes-extended/pam/libpam/99_pam
similarity index 100%
rename from meta/recipes-extended/pam/libpam-1.1.1/99_pam
rename to meta/recipes-extended/pam/libpam/99_pam
diff --git a/meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-account b/meta/recipes-extended/pam/libpam/pam.d/common-account
similarity index 100%
rename from meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-account
rename to meta/recipes-extended/pam/libpam/pam.d/common-account
diff --git a/meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-auth b/meta/recipes-extended/pam/libpam/pam.d/common-auth
similarity index 100%
rename from meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-auth
rename to meta/recipes-extended/pam/libpam/pam.d/common-auth
diff --git a/meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-password b/meta/recipes-extended/pam/libpam/pam.d/common-password
similarity index 100%
rename from meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-password
rename to meta/recipes-extended/pam/libpam/pam.d/common-password
diff --git a/meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-session b/meta/recipes-extended/pam/libpam/pam.d/common-session
similarity index 100%
rename from meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-session
rename to meta/recipes-extended/pam/libpam/pam.d/common-session
diff --git a/meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-session-noninteractive b/meta/recipes-extended/pam/libpam/pam.d/common-session-noninteractive
similarity index 100%
rename from meta/recipes-extended/pam/libpam-1.1.1/pam.d/common-session-noninteractive
rename to meta/recipes-extended/pam/libpam/pam.d/common-session-noninteractive
diff --git a/meta/recipes-extended/pam/libpam-1.1.1/pam.d/other b/meta/recipes-extended/pam/libpam/pam.d/other
similarity index 100%
rename from meta/recipes-extended/pam/libpam-1.1.1/pam.d/other
rename to meta/recipes-extended/pam/libpam/pam.d/other
diff --git a/meta/recipes-extended/pam/libpam_1.1.1.bb b/meta/recipes-extended/pam/libpam_1.1.3.bb
similarity index 89%
rename from meta/recipes-extended/pam/libpam_1.1.1.bb
rename to meta/recipes-extended/pam/libpam_1.1.3.bb
index 536a0f5..7a8b29a 100644
--- a/meta/recipes-extended/pam/libpam_1.1.1.bb
+++ b/meta/recipes-extended/pam/libpam_1.1.3.bb
@@ -1,21 +1,27 @@
+SUMMARY = "Linux-PAM (Pluggable Authentication Modules)"
 DESCRIPTION = "Linux-PAM (Pluggable Authentication Modules for Linux), Basically, it is a flexible mechanism for authenticating users"
 HOMEPAGE = "http://www.kernel.org/pub/linux/libs/pam/"
 BUGTRACKER = "http://sourceforge.net/projects/pam/support"
-# PAM allows dual licensed under GPL and BSD.
+SECTION = "base"
+# PAM is dual licensed under GPL and BSD.
 # /etc/pam.d comes from Debian libpam-runtime in 2009-11 (at that time 
 # libpam-runtime-1.0.1 is GPLv2+), by openembedded
 LICENSE = "GPLv2+ | BSD"
-PR = "r1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=ca0395de9a86191a078b8b79302e3083"
+
+PR = "r0"
 
 DEPENDS = "bison flex"
 RDEPENDS_${PN}-runtime = "libpam pam-plugin-deny pam-plugin-permit pam-plugin-warn pam-plugin-unix"
 RRECOMMENDS_${PN} = "libpam-runtime"
 
 SRC_URI = "http://www.kernel.org/pub/linux/libs/pam/library/Linux-PAM-${PV}.tar.bz2 \
-           file://disable_crossbinary.patch \
            file://99_pam \
            file://pam.d/*"
 
+SRC_URI[md5sum] = "6db7fcb5db6253350e3a4648ceac40e7"
+SRC_URI[sha256sum] = "17b268789b935a76e736a1150210dd12f156972973e79347668f828d43632652"
+
 EXTRA_OECONF = "--with-db-uniquename=_pam \
                 --includedir=${includedir}/security \
                 --libdir=${base_libdir} \
-- 
1.7.1


