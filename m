Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 13CD54C80BEF
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:36:24 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=mefesto.yanok.lan)
	by ocean.emcraft.com with esmtp (Exim 4.69)
	(envelope-from <yanok@emcraft.com>)
	id 1PexgU-0007yf-Qg; Tue, 18 Jan 2011 01:36:22 +0300
From: Ilya Yanok <yanok@emcraft.com>
To: poky@yoctoproject.org
Date: Tue, 18 Jan 2011 01:36:17 +0300
Message-Id: <1295303777-20599-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.2.3
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH] openssl: drop the valgrind patch that introduce a security hole
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
X-List-Received-Date: Mon, 17 Jan 2011 22:36:25 -0000

debian/valgrind.patch is the 'famous' Debian OpenSSL patch responsible
for everyone using Debian and derivatives changing their keys. All keys
generated with the patched OpenSSL are compromised so at very least we
have to drop this patch for good.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 .../openssl/openssl-0.9.8p/debian/valgrind.patch   |   15 ---------------
 .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    1 -
 2 files changed, 0 insertions(+), 16 deletions(-)
 delete mode 100644 meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch

diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch
deleted file mode 100644
index e9f86ea..0000000
--- a/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch
+++ /dev/null
@@ -1,15 +0,0 @@
-Index: openssl-0.9.8k/crypto/rand/md_rand.c
-===================================================================
---- openssl-0.9.8k.orig/crypto/rand/md_rand.c	2008-09-16 13:50:05.000000000 +0200
-+++ openssl-0.9.8k/crypto/rand/md_rand.c	2009-07-19 11:36:05.000000000 +0200
-@@ -477,8 +477,10 @@
- 		MD_Update(&m,local_md,MD_DIGEST_LENGTH);
- 		MD_Update(&m,(unsigned char *)&(md_c[0]),sizeof(md_c));
- #ifndef PURIFY
-+#if 0 /* Don't add uninitialised data. */
- 		MD_Update(&m,buf,j); /* purify complains */
- #endif
-+#endif
- 		k=(st_idx+MD_DIGEST_LENGTH/2)-st_num;
- 		if (k > 0)
- 			{
diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
index 3ae6bf4..283b82a 100644
--- a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
+++ b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
@@ -13,7 +13,6 @@ SRC_URI += "file://debian/ca.patch \
             file://debian/no-symbolic.patch \
             file://debian/pic.patch \
             file://debian/pkg-config.patch \
-            file://debian/valgrind.patch \
             file://debian/rc4-amd64.patch \
             file://debian/rehash-crt.patch \
             file://debian/rehash_pod.patch \
-- 
1.7.2.3


