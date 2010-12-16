Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12E4C4C80BCF
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 04:39:15 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Dec 2010 02:39:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="584276696"
Received: from unknown (HELO helios) ([10.255.16.84])
	by orsmga002.jf.intel.com with SMTP; 16 Dec 2010 02:39:07 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 16 Dec 2010 10:39:06 +0000
Message-Id: <d5a2ba1ee8fc7b9b491df15b9f84de8d47010e80.1292495814.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 16 Dec 2010 10:29:50 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] openssl: restore -Wall flag
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
X-List-Received-Date: Thu, 16 Dec 2010 10:39:15 -0000

The -Wall flag was unintentionally removed from the end of the CFLAG var in
089612794d4d8d9c79bd2a4365d6df78371f7f40 by me. This patch puts it back in.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-connectivity/openssl/openssl.inc      |    2 +-
 .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
index 5cc5732..f054c26 100644
--- a/meta/recipes-connectivity/openssl/openssl.inc
+++ b/meta/recipes-connectivity/openssl/openssl.inc
@@ -15,7 +15,7 @@ S = "${WORKDIR}/openssl-${PV}"
 
 AR_append = " r"
 CFLAG = "${@base_conditional('SITEINFO_ENDIANESS', 'le', '-DL_ENDIAN', '-DB_ENDIAN', d)} \
-	-DTERMIO ${FULL_OPTIMIZATION}"
+	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
 
 # Avoid binaries being marked as requiring an executable stack (which causes 
 # issues with SELinux on the host)
diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
index 42888f6..3ae6bf4 100644
--- a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
+++ b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
@@ -1,6 +1,6 @@
 require openssl.inc
 
-PR = "r1"
+PR = "r2"
 SRC_URI += "file://debian/ca.patch \
             file://debian/config-hurd.patch;apply=no \
             file://debian/debian-targets.patch \
-- 
1.7.1


