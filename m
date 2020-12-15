Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web08.565.1608058969047099207
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Dec 2020 11:02:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
From: "Sinan Kaya" <okaya@kernel.org>
Authentication-Results: mail.kernel.org; dkim=permerror (bad message/signature format)
To: poky@lists.yoctoproject.org
Cc: Sinan Kaya <okaya@kernel.org>
Subject: [PATCH] gcsections: add more suppressions for SDK builds
Date: Tue, 15 Dec 2020 19:02:42 +0000
Message-Id: <20201215190242.32642-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

More suppression is needed for glibc, perl and mingw.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 meta-poky/conf/distro/include/gcsections.inc | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/distro/include/gcsections.inc
index dd98943acb3..7157373aa80 100644
--- a/meta-poky/conf/distro/include/gcsections.inc
+++ b/meta-poky/conf/distro/include/gcsections.inc
@@ -13,6 +13,16 @@ LDFLAGS_SECTION_REMOVAL_pn-grub-efi = ""
 CFLAGS_SECTION_REMOVAL_pn-grub = ""
 LDFLAGS_SECTION_REMOVAL_pn-grub = ""
 
+# SDK packages with build problems using sections
+CFLAGS_SECTION_REMOVAL_pn-nativesdk-glibc = ""
+LDFLAGS_SECTION_REMOVAL_pn-nativesdk-glibc = ""
+CFLAGS_SECTION_REMOVAL_pn-nativesdk-mingw-w64-runtime = ""
+LDFLAGS_SECTION_REMOVAL_pn-nativesdk-mingw-w64-runtime = ""
+CFLAGS_SECTION_REMOVAL_pn-nativesdk-perl = ""
+LDFLAGS_SECTION_REMOVAL_pn-nativesdk-perl = ""
+CFLAGS_SECTION_REMOVAL_pn-nativesdk-mingw-w64-winpthreads = ""
+LDFLAGS_SECTION_REMOVAL_pn-nativesdk-mingw-w64-winpthreads = ""
+
 # set default for target
 CFLAGS_append_class-target = " ${CFLAGS_SECTION_REMOVAL}"
 LDFLAGS_append_class-target = " ${LDFLAGS_SECTION_REMOVAL}"
-- 
2.17.1

