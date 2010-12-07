Return-Path: <paul.eggleton@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 844094C811DE
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 12:11:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Dec 2010 10:11:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="634034127"
Received: from unknown (HELO helios) ([10.255.16.62])
	by fmsmga002.fm.intel.com with SMTP; 07 Dec 2010 10:11:19 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 07 Dec 2010 18:11:18 +0000
Message-Id: <e4115733a7d9bf4bc286edc5194ffba2c76d00ca.1291744633.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1291744633.git.paul.eggleton@linux.intel.com>
References: <cover.1291744633.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] openssl-native: disable execstack flag to prevent problems with SELinux
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
Date: Tue, 07 Dec 2010 18:11:21 -0000
X-Original-Date: Wed, 17 Nov 2010 11:37:47 +0000
X-List-Received-Date: Tue, 07 Dec 2010 18:11:21 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"

The execstack flag gets set on libcrypto.so by default which causes SELinux
to prevent it from being loaded on systems using SELinux, which includes
Fedora. This patch disables the execstack flag. (Note: Red Hat do this in
their openssl packaging.)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-connectivity/openssl/openssl.inc      |    4 ++++
 .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
 2 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
index da90456..f054c26 100644
--- a/meta/recipes-connectivity/openssl/openssl.inc
+++ b/meta/recipes-connectivity/openssl/openssl.inc
@@ -17,6 +17,10 @@ AR_append = " r"
 CFLAG = "${@base_conditional('SITEINFO_ENDIANESS', 'le', '-DL_ENDIAN', '-DB_ENDIAN', d)} \
 	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
 
+# Avoid binaries being marked as requiring an executable stack (which causes 
+# issues with SELinux on the host)
+CFLAG_append_virtclass-native = " -Wa,--noexecstack"
+
 # -02 does not work on mipsel: ssh hangs when it tries to read /dev/urandom
 CFLAG_mtx-1 := "${@'${CFLAG}'.replace('-O2', '')}"
 CFLAG_mtx-2 := "${@'${CFLAG}'.replace('-O2', '')}"
diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
index 3949540..fe02272 100644
--- a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
+++ b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
@@ -1,6 +1,6 @@
 require openssl.inc
 
-PR = "r0"
+PR = "r1"
 SRC_URI += "file://debian/ca.patch \
             file://debian/config-hurd.patch;apply=no \
             file://debian/debian-targets.patch \
-- 
1.7.1

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


