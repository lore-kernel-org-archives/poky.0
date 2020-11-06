Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.14551.1604682221509166566
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Nov 2020 09:03:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=XEsO1LmM;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from sinanubuntu.ckuic5o5zete5ommc4uz5anrqg.bx.internal.cloudapp.net (unknown [23.96.20.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8C13720720;
	Fri,  6 Nov 2020 17:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1604682220;
	bh=fiOSBURsgfl7qyEZ2XyUt60nq3eBgkjFiRkCZ3bLBbU=;
	h=From:To:Cc:Subject:Date:From;
	b=XEsO1LmMFeYdZe0uHC/3U5XeHnefQUUu/WKs9GKjY3rRdMyYw33JriNjk01BVI0XC
	 4S4/0sz+J0A2eGerZhxkM7MqrKhmaLu98rEWdOkghtcyTd+xe1tbYcd8NyGS72OPma
	 LndljrcFs+ToLy3g8dYbgBQvYD7hh4NjScPwgSxU=
From: "Sinan Kaya" <okaya@kernel.org>
To: poky@lists.yoctoproject.org
Cc: Sinan Kaya <okaya@kernel.org>
Subject: [PATCH] poky-tiny: use size optimization, section removal and lto
Date: Fri,  6 Nov 2020 17:03:36 +0000
Message-Id: <20201106170336.5216-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

Three changes:

1. Compile for size by default
2. Use GCC sections flags so that unused sections can be garbage
collected at link time.
3. Enable LTO compiler option.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 32 ++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c6d4b88f83d..eb463403fd1 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -122,3 +122,35 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
 
 # Disable python usage in opkg-utils since it won't build with tiny config
 PACKAGECONFIG_remove_pn-opkg-utils = "python"
+
+# set default for all targets
+CFLAGS_append_class-target += "-ffunction-sections -fdata-sections"
+LDFLAGS_append_class-target += "-Wl,--gc-sections -flto"
+
+# glibc won't compile with flto and sections
+CFLAGS_remove_pn-glibc += "-ffunction-sections -fdata-sections"
+LDFLAGS_remove_pn-glibc += "-Wl,--gc-sections"
+LDFLAGS_remove_pn-glibc += "-flto"
+
+# libdevmapper won't compile with flto and sections
+CFLAGS_remove_pn-libdevmapper += "-ffunction-sections -fdata-sections"
+LDFLAGS_remove_pn-libdevmapper += "-Wl,--gc-sections"
+LDFLAGS_remove_pn-libdevmapper += "-flto"
+
+# glibc-initial won't compile with flto and sections
+LDFLAGS_remove_pn-glibc-initial += "-flto"
+
+# lcm2 won't compile with flto
+LDFLAGS_remove_pn-lvm2 += "-flto"
+
+# cairo won't compile with flto and sections
+CFLAGS_remove_pn-cairo += "-ffunction-sections -fdata-sections"
+LDFLAGS_remove_pn-cairo += "-Wl,--gc-sections"
+LDFLAGS_remove_pn-cairo += "-flto"
+
+# size optimize by default
+SELECTED_OPTIMIZATION = "-Os"
+
+# xcrypt won't compile with -Os
+SELECTED_OPTIMIZATION_pn-libxcrypt = " -O2"
+
-- 
2.17.1

