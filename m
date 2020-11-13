Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web08.13924.1605227256224361253
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 16:27:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=BmlK184z;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from sinanubuntu.ckuic5o5zete5ommc4uz5anrqg.bx.internal.cloudapp.net (unknown [23.96.20.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 38B7D20B80;
	Fri, 13 Nov 2020 00:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605227255;
	bh=2d4ONFFMzsYmtkIhIW1zzGLdsuLnoQR4L0Tpbu0aJl0=;
	h=From:To:Cc:Subject:Date:From;
	b=BmlK184ziIBPvhYCDYPdIJsd+q6iDZCUYOIC60n9QMPNJNFMR7HVcI96Fa/SywTjU
	 gG8jl/nqdyZ1ju2mTDRFjL5meDWVSjVjSwmHnKSydo0CyHohm5UwtsuTkg5ajoDi8Y
	 K7K5+Mv/q+SagOyf1AKslrlqKi9CiHr4Op3gmKf0=
From: "Sinan Kaya" <okaya@kernel.org>
To: poky@lists.yoctoproject.org
Cc: Sinan Kaya <okaya@kernel.org>
Subject: [PATCH v5] poky-tiny: enable section removal
Date: Fri, 13 Nov 2020 00:27:27 +0000
Message-Id: <20201113002727.21168-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

Use GCC sections flags so that unused sections can be garbage
collected at link time.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c6d4b88f83d..583088185c6 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -122,3 +122,21 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
 
 # Disable python usage in opkg-utils since it won't build with tiny config
 PACKAGECONFIG_remove_pn-opkg-utils = "python"
+
+CFLAGS_SECTION_REMOVAL = "-ffunction-sections -fdata-sections"
+LDFLAGS_SECTION_REMOVAL = "-Wl,--gc-sections"
+
+# packages with build problems using sections
+CFLAGS_SECTION_REMOVAL_pn-glibc = ""
+LDFLAGS_SECTION_REMOVAL_pn-glibc = ""
+CFLAGS_SECTION_REMOVAL_pn-cairo = ""
+LDFLAGS_SECTION_REMOVAL_pn-cairo = ""
+
+# omit section removal on native builds
+CFLAGS_SECTION_REMOVAL_class-native = ""
+LDFLAGS_SECTION_REMOVAL_class-native = ""
+
+# set default for all targets
+CFLAGS_append = " ${CFLAGS_SECTION_REMOVAL}"
+LDFLAGS_append = " ${LDFLAGS_SECTION_REMOVAL}"
+
-- 
2.17.1

