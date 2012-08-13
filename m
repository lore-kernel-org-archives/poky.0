Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AF8AE01404
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:36 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 1922D30439
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:30 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:52 -0700
Message-Id: <1aa7cb24ff0d83c23b853ab83c9030dce3124c88.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 1922D30439.3AC02
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 26/57] curl: Use gnutls for target and openssl for native
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:36 -0000

From: Saul Wold <sgw@linux.intel.com>

Since gnutls is available on the target use it, but we do not build gnutls for
the native side as it adds too many dependecies, so use openssl.

(From OE-Core rev: 87610064a435f8b8b5694e4d6627e53b25d8f713)

Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-support/curl/curl_7.24.0.bb |   13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/meta/recipes-support/curl/curl_7.24.0.bb b/meta/recipes-support/curl/curl_7.24.0.bb
index f9dce7d..2c5369c 100644
--- a/meta/recipes-support/curl/curl_7.24.0.bb
+++ b/meta/recipes-support/curl/curl_7.24.0.bb
@@ -5,10 +5,10 @@ SECTION = "console/network"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;beginline=7;md5=3a34942f4ae3fbf1a303160714e664ac"
 
-DEPENDS = "zlib gnutls openssl"
+DEPENDS = "zlib gnutls"
 DEPENDS_virtclass-native = "zlib-native openssl-native"
-DEPENDS_virtclass-nativesdk = "zlib-nativesdk openssl-nativesdk"
-PR = "r1"
+DEPENDS_virtclass-nativesdk = "zlib-nativesdk"
+PR = "r2"
 
 SRC_URI = "http://curl.haxx.se/download/curl-${PV}.tar.bz2 \
            file://noldlibpath.patch \
@@ -20,7 +20,6 @@ SRC_URI[sha256sum] = "ebdb111088ff8b0e05b1d1b075e9f1608285e8105cc51e21caacf33d01
 inherit autotools pkgconfig binconfig
 
 EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
-		--with-ssl \
                 --without-libssh2 \
 		--with-random=/dev/urandom \
 		--without-libidn \
@@ -28,9 +27,9 @@ EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
                 ${CURLGNUTLS} \
 		"
 
-CURLGNUTLS = " --with-gnutls=${STAGING_LIBDIR}/../"
-CURLGNUTLS_virtclass-native = "--without-gnutls"
-CURLGNUTLS_virtclass-nativesdk = "--without-gnutls"
+CURLGNUTLS = " --with-gnutls=${STAGING_LIBDIR}/../ --without-ssl"
+CURLGNUTLS_virtclass-native = "--without-gnutls --with-ssl"
+CURLGNUTLS_virtclass-nativesdk = "--without-gnutls --without-ssl"
 
 do_configure_prepend() {
 	sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g configure.ac
-- 
1.7.9.5


