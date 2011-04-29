Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id DE7AF4C80FB6
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:43:28 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Apr 2011 02:43:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,286,1301900400"; d="scan'208";a="427680137"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 29 Apr 2011 02:43:27 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QFk6t-0000G4-I5; Fri, 29 Apr 2011 17:35:39 +0800
Message-Id: <ed32ef9e4b8b803ace64d5ebe917ac665e4a781b.1304069545.git.qing.he@intel.com>
In-Reply-To: <cover.1304069545.git.qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
Old-Date: Mon, 25 Apr 2011 14:42:57 +0800
Date: Fri, 29 Apr 2011 17:35:39 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 07/10] gnutls: upgrade to version 2.12.3
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
X-List-Received-Date: Fri, 29 Apr 2011 09:43:29 -0000

From: Qing He <qing.he@intel.com>

from 2.10.4
 - added nettle dependency

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../gnutls/gnutls-2.10.4/gnutls-texinfo-euro.patch |   16 ----------------
 .../configure-fix.patch                            |   14 ++------------
 .../gnutls-openssl.patch                           |    2 ++
 meta/recipes-support/gnutls/gnutls_2.10.4.bb       |   10 ----------
 meta/recipes-support/gnutls/gnutls_2.12.3.bb       |   11 +++++++++++
 5 files changed, 15 insertions(+), 38 deletions(-)
 delete mode 100644 meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-texinfo-euro.patch
 rename meta/recipes-support/gnutls/{gnutls-2.10.4 => gnutls-2.12.3}/configure-fix.patch (76%)
 rename meta/recipes-support/gnutls/{gnutls-2.10.4 => gnutls-2.12.3}/gnutls-openssl.patch (98%)
 delete mode 100644 meta/recipes-support/gnutls/gnutls_2.10.4.bb
 create mode 100644 meta/recipes-support/gnutls/gnutls_2.12.3.bb

diff --git a/meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-texinfo-euro.patch b/meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-texinfo-euro.patch
deleted file mode 100644
index a2d2f03..0000000
--- a/meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-texinfo-euro.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-The version of texinfo in Debian Sarge does not understand the @euro{} command.
-This patch replaces the @euro{} command with the word "euro".
-
---- gnutls-1.3.5/doc/gnutls.texi.orig	2006-04-26 08:06:40.918268000 +0930
-+++ gnutls-1.3.5/doc/gnutls.texi	2006-04-26 08:06:52.446515440 +0930
-@@ -11,8 +11,8 @@
- long as it is difficult enough to generate two different messages with
- the same hash algorithm output. In that case the same signature could
- be used as a proof for both messages. Nobody wants to sign an innocent
--message of donating 1 @euro{} to Greenpeace and find out that he
--donated 1.000.000 @euro{} to Bad Inc.
-+message of donating 1 euro to Greenpeace and find out that he
-+donated 1.000.000 euro to Bad Inc.
- 
- For a hash algorithm to be called cryptographic the following three
- requirements must hold
diff --git a/meta/recipes-support/gnutls/gnutls-2.10.4/configure-fix.patch b/meta/recipes-support/gnutls/gnutls-2.12.3/configure-fix.patch
similarity index 76%
rename from meta/recipes-support/gnutls/gnutls-2.10.4/configure-fix.patch
rename to meta/recipes-support/gnutls/gnutls-2.12.3/configure-fix.patch
index 247e324..460a620 100644
--- a/meta/recipes-support/gnutls/gnutls-2.10.4/configure-fix.patch
+++ b/meta/recipes-support/gnutls/gnutls-2.12.3/configure-fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [packaging]
+
 rebased from original configure_madness.patch
 
 libtasn1 provides an .pc file in upstream,
@@ -24,18 +26,6 @@ index 80d3375..1a486f7 100644
  AC_SUBST(LIBGNUTLS_LIBS)
  AC_SUBST(LIBGNUTLS_CFLAGS)
  
-diff --git a/lib/gnutls.pc.in b/lib/gnutls.pc.in
-index 3b01c17..de31469 100644
---- a/lib/gnutls.pc.in
-+++ b/lib/gnutls.pc.in
-@@ -20,6 +20,6 @@ Name: GnuTLS
- Description: Transport Security Layer implementation for the GNU system
- URL: http://www.gnu.org/software/gnutls/
- Version: @VERSION@
-+Requires.private: libgcrypt, libtasn1
- Libs: -L${libdir} -lgnutls
--Libs.private: @LIBGNUTLS_LIBS@ @LTLIBTASN1@
- Cflags: -I${includedir}
 diff --git a/libextra/configure.ac b/libextra/configure.ac
 index c08e73f..3313886 100644
 --- a/libextra/configure.ac
diff --git a/meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-openssl.patch b/meta/recipes-support/gnutls/gnutls-2.12.3/gnutls-openssl.patch
similarity index 98%
rename from meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-openssl.patch
rename to meta/recipes-support/gnutls/gnutls-2.12.3/gnutls-openssl.patch
index 413de06..b82ecb7 100644
--- a/meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-openssl.patch
+++ b/meta/recipes-support/gnutls/gnutls-2.12.3/gnutls-openssl.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Source Unknown
+
 Index: gnutls-1.6.0/libextra/gnutls_openssl.c
 ===================================================================
 --- gnutls-1.6.0.orig/libextra/gnutls_openssl.c	2006-08-13 22:34:09.000000000 +0200
diff --git a/meta/recipes-support/gnutls/gnutls_2.10.4.bb b/meta/recipes-support/gnutls/gnutls_2.10.4.bb
deleted file mode 100644
index 3924ecd..0000000
--- a/meta/recipes-support/gnutls/gnutls_2.10.4.bb
+++ /dev/null
@@ -1,10 +0,0 @@
-require gnutls.inc
-
-PR = "r0"
-
-SRC_URI += "file://gnutls-openssl.patch \
-            file://gnutls-texinfo-euro.patch \
-            file://configure-fix.patch"
-
-SRC_URI[md5sum] = "4e1517084018a8b1fdc96daabea40528"
-SRC_URI[sha256sum] = "b8bfe36450fe671e99db5ff1e44e6b65fda8a79cacd9e77d550eff7da3745fc8"
diff --git a/meta/recipes-support/gnutls/gnutls_2.12.3.bb b/meta/recipes-support/gnutls/gnutls_2.12.3.bb
new file mode 100644
index 0000000..ca6fc61
--- /dev/null
+++ b/meta/recipes-support/gnutls/gnutls_2.12.3.bb
@@ -0,0 +1,11 @@
+require gnutls.inc
+
+DEPENDS += "nettle"
+
+PR = "r0"
+
+SRC_URI += "file://gnutls-openssl.patch \
+            file://configure-fix.patch"
+
+SRC_URI[md5sum] = "04b72b022b42b10df12cbbae051e2d55"
+SRC_URI[sha256sum] = "9fb3dba10d3fa6c2817cd47260b4c39026c69128fb39fc5026f179b3672539d3"
-- 
1.7.0


