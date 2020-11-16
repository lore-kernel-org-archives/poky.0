Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.28003.1605487236282307851
 for <poky@lists.yoctoproject.org>;
 Sun, 15 Nov 2020 16:40:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=2DL2pRme;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from sinanubuntu.ckuic5o5zete5ommc4uz5anrqg.bx.internal.cloudapp.net (unknown [23.96.20.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7E4F72137B;
	Mon, 16 Nov 2020 00:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605487235;
	bh=lc+rsjIul5NGlFl9WMckeuaTD9CJvEvKjvcYmYqJ4cw=;
	h=From:To:Cc:Subject:Date:From;
	b=2DL2pRmeVcNlZE1ga06WMA7AUX95TnJyBiPSUP3dy4Vs0pVvC7EIW3/WE+bdY6pAR
	 Br/mlSDoUOilo6NAQwtIHSSNxJgK3c9iwDW9keqmN5u41Yf52F/DYgrnd/Pt27o0+W
	 2h4oeolX+M1CE/vRW/Gr23Z8iYSvvHAfptLm0H5E=
From: "Sinan Kaya" <okaya@kernel.org>
To: poky@lists.yoctoproject.org
Cc: Sinan Kaya <okaya@kernel.org>
Subject: [PATCH v7] poky-tiny: enable section removal
Date: Mon, 16 Nov 2020 00:40:33 +0000
Message-Id: <20201116004033.26664-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

Use GCC sections flags so that unused sections can be garbage
collected at link time.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 meta-poky/conf/distro/include/gcsections.inc | 22 ++++++++++++++++++++
 meta-poky/conf/distro/poky-tiny.conf         |  2 ++
 2 files changed, 24 insertions(+)
 create mode 100644 meta-poky/conf/distro/include/gcsections.inc

diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/distro/include/gcsections.inc
new file mode 100644
index 00000000000..dd98943acb3
--- /dev/null
+++ b/meta-poky/conf/distro/include/gcsections.inc
@@ -0,0 +1,22 @@
+CFLAGS_SECTION_REMOVAL = "-ffunction-sections -fdata-sections"
+LDFLAGS_SECTION_REMOVAL = "-Wl,--gc-sections"
+
+# packages with build problems using sections
+CFLAGS_SECTION_REMOVAL_pn-glibc = ""
+LDFLAGS_SECTION_REMOVAL_pn-glibc = ""
+CFLAGS_SECTION_REMOVAL_pn-cairo = ""
+LDFLAGS_SECTION_REMOVAL_pn-cairo = ""
+CFLAGS_SECTION_REMOVAL_pn-perl = ""
+LDFLAGS_SECTION_REMOVAL_pn-perl = ""
+CFLAGS_SECTION_REMOVAL_pn-grub-efi = ""
+LDFLAGS_SECTION_REMOVAL_pn-grub-efi = ""
+CFLAGS_SECTION_REMOVAL_pn-grub = ""
+LDFLAGS_SECTION_REMOVAL_pn-grub = ""
+
+# set default for target
+CFLAGS_append_class-target = " ${CFLAGS_SECTION_REMOVAL}"
+LDFLAGS_append_class-target = " ${LDFLAGS_SECTION_REMOVAL}"
+
+# set default for nativesdk
+CFLAGS_append_class-nativesdk = " ${CFLAGS_SECTION_REMOVAL}"
+LDFLAGS_append_class-nativesdk = " ${LDFLAGS_SECTION_REMOVAL}"
diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c6d4b88f83d..fcee513f14a 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -29,6 +29,8 @@
 # [ ] Modify busybox to allow for DISTRO_FEATURES-like confiruration
 
 require conf/distro/poky.conf
+require conf/distro/include/gcsections.inc
+
 DISTRO = "poky-tiny"
 DISTROOVERRIDES = "poky:poky-tiny"
 TCLIBC = "musl"
-- 
2.17.1

