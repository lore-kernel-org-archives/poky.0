Return-Path: <paul.eggleton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82E634C80BD4
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 04:24:02 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 02:24:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="679064046"
Received: from unknown (HELO helios.localnet) ([10.255.16.119])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 02:24:00 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
Organization: Intel Corporation
To: poky@yoctoproject.org
Date: Fri, 19 Nov 2010 10:23:57 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
MIME-Version: 1.0
Message-Id: <201011191023.58154.paul.eggleton@intel.com>
Subject: PATCH: openssl: disable execstack flag to prevent problems with SELinux
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
X-List-Received-Date: Fri, 19 Nov 2010 10:24:02 -0000
Content-Type: Text/Plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

openssl: disable execstack flag to prevent problems with SELinux

The execstack flag gets set on libcrypto.so by default which causes SELinux
to prevent it from being loaded on systems using SELinux, which includes
Fedora. This patch disables the execstack flag. (Note: Red Hat do this in
their openssl packaging.)

Signed-off-by: Paul Eggleton <paul.eggleton@intel.com>

---
diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
index da90456..15144b1 100644
--- a/meta/recipes-connectivity/openssl/openssl.inc
+++ b/meta/recipes-connectivity/openssl/openssl.inc
@@ -15,7 +15,7 @@ S = "${WORKDIR}/openssl-${PV}"
 
 AR_append = " r"
 CFLAG = "${@base_conditional('SITEINFO_ENDIANESS', 'le', '-DL_ENDIAN', '-DB_ENDIAN', d)} \
-	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
+	-DTERMIO ${FULL_OPTIMIZATION} -Wall -Wa,--noexecstack"
 
 # -02 does not work on mipsel: ssh hangs when it tries to read /dev/urandom
 CFLAG_mtx-1 := "${@'${CFLAG}'.replace('-O2', '')}"
diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
index 3949540..fe02272 100644
--- a/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
+++ b/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
@@ -1,6 +1,6 @@
 require openssl.inc
 
-PR = "r0"
+PR = "r1"
 SRC_URI += "file://debian/ca.patch \
             file://debian/config-hurd.patch;apply=no \
             file://debian/debian-targets.patch \
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


