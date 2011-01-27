Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 278944C81257
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 16:41:30 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 14:41:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597164852"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 14:41:14 -0800
Message-Id: <c57aedd6d801a58a0617de7e03a2cff02d1d9712.1296167950.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1296167950.git.scott.a.garman@intel.com>
References: <cover.1296167950.git.scott.a.garman@intel.com>
Old-Date: Thu, 27 Jan 2011 14:24:58 -0800
Date: Thu, 27 Jan 2011 14:42:09 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 8/9] iputils: enable generation of man pages
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
X-List-Received-Date: Thu, 27 Jan 2011 22:41:30 -0000

From: Scott Garman <scott.a.garman@intel.com>

Enable documentation generation.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/iputils/iputils_s20101006.bb |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-extended/iputils/iputils_s20101006.bb b/meta/recipes-extended/iputils/iputils_s20101006.bb
index 0a42017..75dde75 100644
--- a/meta/recipes-extended/iputils/iputils_s20101006.bb
+++ b/meta/recipes-extended/iputils/iputils_s20101006.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://ping.c;beginline=1;endline=35;md5=f9ceb201733e9a6cf8f
                     file://arping.c;beginline=1;endline=10;md5=ada2a6d06acc90f943bddf40d15e0541 \
                     file://tftpd.c;beginline=1;endline=32;md5=28834bf8a91a5b8a92755dbee709ef96 "
 
-DEPENDS = "sysfsutils openssl"
+DEPENDS = "sysfsutils openssl docbook-utils-native"
 
 PR = "r0"
 
@@ -30,7 +30,7 @@ SRC_URI[sha256sum] = "fd3af46c80ebb99607c2ca1f2a3608b6fe828e25bbec6e54f2afd25f6d
 # which is not available in poky
 
 do_compile () {
-	oe_runmake 'CC=${CC} -D_GNU_SOURCE' VPATH="${STAGING_LIBDIR}" all
+	oe_runmake 'CC=${CC} -D_GNU_SOURCE' VPATH="${STAGING_LIBDIR}" all man
 }
 
 do_install () {
@@ -44,9 +44,9 @@ do_install () {
 	  install -m 0755 $i ${D}${base_bindir}/
 	done
 	# Manual pages for things we build packages for
-#	for i in tracepath.8 traceroute6.8 ping.8 arping.8; do
-#	  install -m 0644 doc/$i ${D}${mandir}/man8/ || true
-#	done
+	for i in tracepath.8 traceroute6.8 ping.8 arping.8; do
+	  install -m 0644 doc/$i ${D}${mandir}/man8/ || true
+	done
 }
 
 # Busybox also provides ping and ping6, so use update-alternatives
-- 
1.7.3.5


