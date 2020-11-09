Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web11.19763.1604961508829734216
 for <poky@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 14:38:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=acM/iTDa;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from sinanubuntu.ckuic5o5zete5ommc4uz5anrqg.bx.internal.cloudapp.net (unknown [23.96.20.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D2B26206B6;
	Mon,  9 Nov 2020 22:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1604961508;
	bh=tMLMkWRvFUCN/t67bk1YNto1Wa+pGQohrAF54dg2x8E=;
	h=From:To:Cc:Subject:Date:From;
	b=acM/iTDaGsvVHRXTmj7OWMYCH1e8J9lp3nzek1BM/lzMJ5wWpZ2nISWneOU7G5qEl
	 AFta+PZhGniKSa0okEi5QxmU1m1YbWL81dsBtdkkotwLXmZ3yTCY70q45VsYVyLLED
	 +RdUFJOHU78tkOeLDy3G83/p+96FF2Tl54qU+b3o=
From: "Sinan Kaya" <okaya@kernel.org>
To: poky@lists.yoctoproject.org
Cc: Sinan Kaya <okaya@kernel.org>
Subject: [PATCH v3] poky-tiny: enable section removal
Date: Mon,  9 Nov 2020 22:38:24 +0000
Message-Id: <20201109223824.12351-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

Use GCC sections flags so that unused sections can be garbage
collected at link time.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c6d4b88f83d..1e37394875d 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -122,3 +122,21 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
 
 # Disable python usage in opkg-utils since it won't build with tiny config
 PACKAGECONFIG_remove_pn-opkg-utils = "python"
+
+# set default for all targets
+CFLAGS_append = " -ffunction-sections -fdata-sections"
+LDFLAGS_append = " -Wl,--gc-sections"
+
+# gc-sections requires either an entry or an undefined symbol
+CFLAGS_remove_pn-glibc = "-ffunction-sections -fdata-sections"
+LDFLAGS_remove_pn-glibc = "-Wl,--gc-sections"
+
+# perl won't cross compile with sections
+CFLAGS_remove_pn-perl = "-ffunction-sections -fdata-sections"
+LDFLAGS_remove_pn-perl = "-Wl,--gc-sections"
+
+# Unknown float word ordering. You need to manually preset
+CFLAGS_remove_pn-cairo = "-ffunction-sections -fdata-sections"
+LDFLAGS_remove_pn-cairo = "-Wl,--gc-sections"
+
+
-- 
2.17.1

