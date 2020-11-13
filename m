Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web09.2572.1605305669106954731
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Nov 2020 14:14:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=ImSFZRkR;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from sinanubuntu.ckuic5o5zete5ommc4uz5anrqg.bx.internal.cloudapp.net (unknown [23.96.20.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 808752223F;
	Fri, 13 Nov 2020 22:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605305667;
	bh=ngCPCGIC/mFSokAzCZFBqQkaOT1D1Niq07+9IPk8xRQ=;
	h=From:To:Cc:Subject:Date:From;
	b=ImSFZRkRHc4lov3jymBCjnq2K4cuTr2KIE35BDv01h7jqdlxL9utJWHamZfhc0vIk
	 tGu6kujH3OzAmgk9TZwhJM6LDD0aIRBNM22zwjoZxrpEGf0jRHJ5foZkigPgapPSsn
	 6SjB6Q/f6FEJWIETi8P1V5Hkq7eVJzOwGI7KTD5U=
From: "Sinan Kaya" <okaya@kernel.org>
To: poky@lists.yoctoproject.org
Cc: Sinan Kaya <okaya@kernel.org>
Subject: [PATCH v6] poky-tiny: enable section removal
Date: Fri, 13 Nov 2020 22:14:25 +0000
Message-Id: <20201113221425.5106-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

Use GCC sections flags so that unused sections can be garbage
collected at link time.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 meta-poky/conf/distro/include/gcsections.inc | 19 +++++++++++++++++++
 meta-poky/conf/distro/poky-tiny.conf         |  3 +++
 2 files changed, 22 insertions(+)
 create mode 100644 meta-poky/conf/distro/include/gcsections.inc

diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/distro/include/gcsections.inc
new file mode 100644
index 00000000000..d94f25913bb
--- /dev/null
+++ b/meta-poky/conf/distro/include/gcsections.inc
@@ -0,0 +1,19 @@
+CFLAGS_SECTION_REMOVAL = "-ffunction-sections -fdata-sections"
+LDFLAGS_SECTION_REMOVAL = "-Wl,--gc-sections"
+
+# packages with build problems using sections
+CFLAGS_SECTION_REMOVAL_pn-glibc = ""
+LDFLAGS_SECTION_REMOVAL_pn-glibc = ""
+CFLAGS_section_removal_pn-cairo = ""
+LDFLAGS_section_removal_pn-cairo = ""
+CFLAGS_section_removal_pn-perl = ""
+LDFLAGS_section_removal_pn-perl = ""
+
+# omit section removal on native builds
+CFLAGS_SECTION_REMOVAL_class-native = ""
+LDFLAGS_SECTION_REMOVAL_class-native = ""
+
+# set default for all targets
+CFLAGS_append = " ${CFLAGS_SECTION_REMOVAL}"
+LDFLAGS_append = " ${LDFLAGS_SECTION_REMOVAL}"
+
diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c6d4b88f83d..9507a68a11e 100644
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
@@ -122,3 +124,4 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
 
 # Disable python usage in opkg-utils since it won't build with tiny config
 PACKAGECONFIG_remove_pn-opkg-utils = "python"
+
-- 
2.17.1

