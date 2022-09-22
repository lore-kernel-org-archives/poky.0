Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web10.6641.1663850869258947079
 for <poky@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 05:47:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=aHtF4Hwm;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1663850869;
  x=1695386869;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=LdSx9PJU9c4ObT7x0zxbTln8nFnZgJu0h/SdCmbffxM=;
  b=aHtF4HwmI6BciBUJnwxSdv9jtmhbE9QwJ5Upkr18X22P/J2eVY2F88XD
   U1Wh6Oses4FAfC/q0c1EC92t58ILVhnDAOoZEtbb4t/oNVnKzaCEeYPR8
   SGY7azP0V1NFxIdStcSocWOxgHlAddzPExvWDy/xu1lnRvVWv9KRnwFC7
   NAYnrGCt86hBGurz/DvRTqyys+dXIbeZuYlnotKhsH5u3UpJQ/vlzzEsK
   89cOE8/74w6c5t/y2JtHSOG2n7ixBhRAaZL5Xus0/Zte/BZmSbQzyPY5G
   JpKcLd/WOCQ7xopwDEzItLvC1JEb8VL5k5FIYYbUGvNEH/oXje4iAvSx9
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH] .templateconf: Mark "meta-poky/conf" as an invalid path for templates
Date: Thu, 22 Sep 2022 14:47:37 +0200
Message-ID: <20220922124737.2219176-1-pkj@axis.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Return-Path: pkj@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Previously this was hardcoded in oe-setup-builddir.

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 .templateconf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.templateconf b/.templateconf
index faf0348077..dfc6f7b595 100644
--- a/.templateconf
+++ b/.templateconf
@@ -1,2 +1,3 @@
 # Template settings
 TEMPLATECONF=${TEMPLATECONF:-meta-poky/conf/templates/default}
+INVALID_TEMPLATECONFS=meta-poky/conf
