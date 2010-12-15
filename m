Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B1CE4C811DB
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:28:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Dec 2010 08:28:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="636610223"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by fmsmga002.fm.intel.com with ESMTP; 15 Dec 2010 08:27:58 -0800
Message-Id: <c5ab4d56f97a0e45b124d40c9f536541be04c201.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Paul Eggleton <paul.eggleton@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/14] openssl-native: disable execstack flag to prevent problems with SELinux
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
Date: Wed, 15 Dec 2010 16:28:13 -0000
X-Original-Date: Wed, 17 Nov 2010 11:37:47 +0000
X-List-Received-Date: Wed, 15 Dec 2010 16:28:13 -0000

The execstack flag gets set on libcrypto.so by default which causes SELinux
to prevent it from being loaded on systems using SELinux, which includes
Fedora. This patch disables the execstack flag. (Note: Red Hat do this in
their openssl packaging.)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-connectivity/openssl/openssl.inc      |    6 +++++-
 .../recipes-connectivity/openssl/openssl_0.9.8o.bb |    2 +-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
index 11dd1e5..dc2ff3e 100644
--- a/meta/recipes-connectivity/openssl/openssl.inc
+++ b/meta/recipes-connectivity/openssl/openssl.inc
@@ -15,7 +15,11 @@ S = "${WORKDIR}/openssl-${PV}"
 
 AR_append = " r"
 CFLAG = "${@base_conditional('SITEINFO_ENDIANESS', 'le', '-DL_ENDIAN', '-DB_ENDIAN', d)} \
-	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
+	-DTERMIO ${FULL_OPTIMIZATION}"
+
+# Avoid binaries being marked as requiring an executable stack (which causes 
+# issues with SELinux on the host)
+CFLAG_append_virtclass-native = " -Wa,--noexecstack"
 
 # -02 does not work on mipsel: ssh hangs when it tries to read /dev/urandom
 CFLAG_mtx-1 := "${@'${CFLAG}'.replace('-O2', '')}"
diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
index 31c5568..aa11cdf 100644
--- a/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
+++ b/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
@@ -1,6 +1,6 @@
 require openssl.inc
 
-PR = "r0"
+PR = "r1"
 SRC_URI += "file://debian/ca.patch \
             file://debian/config-hurd.patch;apply=no \
             file://debian/debian-targets.patch \
-- 
1.7.3.3


