Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C3A1E003DA
	for <poky@yoctoproject.org>; Thu,  6 Dec 2012 21:06:32 -0800 (PST)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 49DBB30412
	for <poky@yoctoproject.org>; Fri,  7 Dec 2012 00:06:22 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu,  6 Dec 2012 21:05:45 -0800
Message-Id: <05f060396b25e2cc1115f7c92a7943968eff296b.1354856621.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 49DBB30412.118BF
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 12/18] openssl: Use ${CFLAGS} not ${FULL_OPTIMIZATION}
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Dec 2012 05:06:32 -0000

From: Phil Blundell <philb@gnu.org>

The latter variable is only applicable for target builds and could
result in passing incompatible options (and/or failing to pass
required options) to ${BUILD_CC} for a virtclass-native build.

Signed-off-by: Phil Blundell <philb@gnu.org>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-connectivity/openssl/openssl.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
index 78cf272..8687bf7 100644
--- a/meta/recipes-connectivity/openssl/openssl.inc
+++ b/meta/recipes-connectivity/openssl/openssl.inc
@@ -18,7 +18,7 @@ S = "${WORKDIR}/openssl-${PV}"
 
 AR_append = " r"
 CFLAG = "${@base_conditional('SITEINFO_ENDIANNESS', 'le', '-DL_ENDIAN', '-DB_ENDIAN', d)} \
-	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
+	-DTERMIO ${CFLAGS} -Wall"
 
 # Avoid binaries being marked as requiring an executable stack (which causes 
 # issues with SELinux on the host)
-- 
1.7.9.5


