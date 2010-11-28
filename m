Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9DB34C811DB
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:40 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpUz-00019m-S7
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:33 -0800
Received: by rex (Postfix, from userid 1000)
	id 1F3262A4F3; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <91ef6ae3fc81cf2558104d3372d62f25880ad906.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 14:10:53 +0000
To: poky@pokylinux.org
Subject: [PATCH 06/16] curl: Fix gnutls option (append ordering was incorrect)
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:41 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/recipes-support/curl/curl_7.21.2.bb |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-support/curl/curl_7.21.2.bb b/meta/recipes-support/curl/curl_7.21.2.bb
index fd1d5dd..3208baf 100644
--- a/meta/recipes-support/curl/curl_7.21.2.bb
+++ b/meta/recipes-support/curl/curl_7.21.2.bb
@@ -22,11 +22,12 @@ EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
 		--with-random=/dev/urandom \
 		--without-libidn \
 		--enable-crypto-auth \
+                ${CURLGNUTLS} \
 		"
 
-EXTRA_OECONF_append = " --with-gnutls=${STAGING_LIBDIR}/../"
-EXTRA_OECONF_virtclass-native_append = " --without-gnutls"
-EXTRA_OECONF_virtclass-nativesdk_append = " --without-gnutls"
+CURLGNUTLS = " --with-gnutls=${STAGING_LIBDIR}/../"
+CURLGNUTLS_virtclass-native = "--without-gnutls"
+CURLGNUTLS_virtclass-nativesdk = "--without-gnutls"
 
 do_configure_prepend() {
 	sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g configure.ac
-- 
1.7.0.4


