Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web12.34215.1629999164206739516
 for <poky@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 10:32:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=lopgDXUL;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1629999164;
  x=1661535164;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Kh5Vqlbajew1eJka/rQR2VTocQrtD+wMusQ+cUQuRqc=;
  b=lopgDXULkPe70Try0wn4bQMlTJimY3qKW/v+btAXrCn7OqwJpFq5doKG
   NBQ0SRwCnZzhfvkwjL9J0IiTejeX4RNkIfDAgToDXzXotlS0E7Ke9gCFX
   9l/ulAUebJZxaPcM0QfYvXOSXoDTxcSJTzgkehDnLIGUvJFogAm4jSRHJ
   7RQ4WpWH5cjLPxADLkSzWmWticf0sMW5hYITXrHo/OQxZJFTu6TMgHo5r
   SabzV8rhPACK8HixKPmGyPmTk4Zs9TY3g7an2NELuUBVcDjWQrXNmOJE3
   CekfbPg4ANTFB1RocqtE0v9KV1djHxafVLpl5OFWjQC6ep0ysWyvl4RTn
   Q==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH 1/2] poky-floating-revisions.inc: Use new override syntax for commented vars
Date: Thu, 26 Aug 2021 19:32:39 +0200
Message-ID: <20210826173240.2085-1-pkj@axis.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Return-Path: pkj@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 .../conf/distro/include/poky-floating-revisions.inc    | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-poky/conf/distro/include/poky-floating-revisions.inc b/meta-poky/conf/distro/include/poky-floating-revisions.inc
index 78c9e365ec..6f473de88c 100644
--- a/meta-poky/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-poky/conf/distro/include/poky-floating-revisions.inc
@@ -2,11 +2,11 @@
 # Package Versions for cutting edge testing:
 #
 
-#SRCREV_pn-opkg-native ?= "${AUTOREV}"
-#SRCREV_pn-opkg-sdk ?= "${AUTOREV}"
-#SRCREV_pn-opkg ?= "${AUTOREV}"
-#SRCREV_pn-opkg-utils-native ?= "${AUTOREV}"
-#SRCREV_pn-opkg-utils ?= "${AUTOREV}"
+#SRCREV:pn-opkg-native ?= "${AUTOREV}"
+#SRCREV:pn-opkg-sdk ?= "${AUTOREV}"
+#SRCREV:pn-opkg ?= "${AUTOREV}"
+#SRCREV:pn-opkg-utils-native ?= "${AUTOREV}"
+#SRCREV:pn-opkg-utils ?= "${AUTOREV}"
 SRCREV:pn-gconf-dbus ?= "${AUTOREV}"
 SRCREV:pn-matchbox-common ?= "${AUTOREV}"
 SRCREV:pn-matchbox-config-gtk ?= "${AUTOREV}"
