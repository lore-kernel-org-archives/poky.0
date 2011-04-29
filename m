Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 32F904C80B74
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:43:28 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Apr 2011 02:43:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,286,1301900400"; d="scan'208";a="685861705"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2011 02:43:27 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QFk6t-0000FX-GY; Fri, 29 Apr 2011 17:35:39 +0800
Message-Id: <8b823dab82e1dd0e7c039e57204042e5c6bf1c2a.1304069545.git.qing.he@intel.com>
In-Reply-To: <cover.1304069545.git.qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
Old-Date: Fri, 22 Apr 2011 10:07:25 +0800
Date: Fri, 29 Apr 2011 17:35:39 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 04/10] curl: upgrade to version 7.21.6
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
X-List-Received-Date: Fri, 29 Apr 2011 09:43:28 -0000

From: Qing He <qing.he@intel.com>

from 7.21.2

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-support/curl/curl/noldlibpath.patch   |    2 ++
 meta/recipes-support/curl/curl/pkgconfig_fix.patch |    5 ++++-
 .../curl/{curl_7.21.2.bb => curl_7.21.6.bb}        |    6 +++---
 3 files changed, 9 insertions(+), 4 deletions(-)
 rename meta/recipes-support/curl/{curl_7.21.2.bb => curl_7.21.6.bb} (92%)

diff --git a/meta/recipes-support/curl/curl/noldlibpath.patch b/meta/recipes-support/curl/curl/noldlibpath.patch
index a3319a2..f4c72a1 100644
--- a/meta/recipes-support/curl/curl/noldlibpath.patch
+++ b/meta/recipes-support/curl/curl/noldlibpath.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 Manipulating LD_LIBRARY_PATH can totally break builds when cross compiling.
 Since we never run compiled binaries for the target, we should *never* need
 to change LD_LIBRARY_PATH.
diff --git a/meta/recipes-support/curl/curl/pkgconfig_fix.patch b/meta/recipes-support/curl/curl/pkgconfig_fix.patch
index a59d39b..ad73c00 100644
--- a/meta/recipes-support/curl/curl/pkgconfig_fix.patch
+++ b/meta/recipes-support/curl/curl/pkgconfig_fix.patch
@@ -1,3 +1,6 @@
+Upstream-Status: Inappropriate [packaging]
+
+
 Index: curl-7.20.0/libcurl.pc.in
 ===================================================================
 --- curl-7.20.0.orig/libcurl.pc.in	2009-11-17 18:11:07.000000000 +0000
@@ -5,7 +8,7 @@ Index: curl-7.20.0/libcurl.pc.in
 @@ -35,6 +35,7 @@
  URL: http://curl.haxx.se/
  Description: Library to transfer files with ftp, http, etc.
- Version: @VERSION@
+ Version: @CURLVERSION@
 -Libs: -L${libdir} -lcurl @LIBS@
 -Libs.private: @LIBCURL_LIBS@ @LIBS@
 +Requires.private: @GNUTLS_REQUIRED@
diff --git a/meta/recipes-support/curl/curl_7.21.2.bb b/meta/recipes-support/curl/curl_7.21.6.bb
similarity index 92%
rename from meta/recipes-support/curl/curl_7.21.2.bb
rename to meta/recipes-support/curl/curl_7.21.6.bb
index cc8bbf1..51e14f9 100644
--- a/meta/recipes-support/curl/curl_7.21.2.bb
+++ b/meta/recipes-support/curl/curl_7.21.6.bb
@@ -8,14 +8,14 @@ LIC_FILES_CHKSUM = "file://COPYING;beginline=7;md5=3a34942f4ae3fbf1a303160714e66
 DEPENDS = "zlib gnutls"
 DEPENDS_virtclass-native = "zlib-native"
 DEPENDS_virtclass-nativesdk = "zlib-nativesdk"
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "http://curl.haxx.se/download/curl-${PV}.tar.bz2 \
            file://noldlibpath.patch \
            file://pkgconfig_fix.patch"
 
-SRC_URI[md5sum] = "ca96df88e044c7c25d19692ec8b250b2"
-SRC_URI[sha256sum] = "f4a632e704f28767e6bbffcc6112db0590b1c9d50d8226d706ad39632355bf21"
+SRC_URI[md5sum] = "6611989a81ebd7b03a35adc3001ddee0"
+SRC_URI[sha256sum] = "d9a3d3593796147ad9ca994c9e6834a42b49756420a10e996dbf849495d3d955"
 
 inherit autotools pkgconfig binconfig
 
-- 
1.7.0


