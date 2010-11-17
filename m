Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F06D4C80BD4
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:41:15 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Nov 2010 00:41:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="349802476"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 00:41:14 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdVM-0007gF-3n
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:36:36 +0800
Message-Id: <a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
In-Reply-To: <cover.1289982751.git.qing.he@intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 17 Nov 2010 16:26:58 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Wed, 17 Nov 2010 08:41:15 -0000

disable gnutls for -native
also fix --with-gnutls parameter for target

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-support/curl/curl_7.21.2.bb |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-support/curl/curl_7.21.2.bb b/meta/recipes-support/curl/curl_7.21.2.bb
index 1e11222..fd1d5dd 100644
--- a/meta/recipes-support/curl/curl_7.21.2.bb
+++ b/meta/recipes-support/curl/curl_7.21.2.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;beginline=7;md5=3a34942f4ae3fbf1a303160714e66
 DEPENDS = "zlib gnutls"
 DEPENDS_virtclass-native = "zlib-native"
 DEPENDS_virtclass-nativesdk = "zlib-nativesdk"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://curl.haxx.se/download/curl-${PV}.tar.bz2 \
            file://noldlibpath.patch \
@@ -17,7 +17,6 @@ SRC_URI = "http://curl.haxx.se/download/curl-${PV}.tar.bz2 \
 inherit autotools pkgconfig binconfig
 
 EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
-                --with-gnutls=${STAGING_BINDIR_CROSS}/ \
                 --without-ssl \
                 --without-libssh2 \
 		--with-random=/dev/urandom \
@@ -25,6 +24,10 @@ EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
 		--enable-crypto-auth \
 		"
 
+EXTRA_OECONF_append = " --with-gnutls=${STAGING_LIBDIR}/../"
+EXTRA_OECONF_virtclass-native_append = " --without-gnutls"
+EXTRA_OECONF_virtclass-nativesdk_append = " --without-gnutls"
+
 do_configure_prepend() {
 	sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g configure.ac
 }
-- 
1.7.0


