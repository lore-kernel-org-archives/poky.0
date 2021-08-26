Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web10.34318.1629999167918164977
 for <poky@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 10:32:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=HOTB8ZUV;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1629999168;
  x=1661535168;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=pwBXj0uQ2LusPr5Y36TbShi5zn+BTNZ+i57pSdyQ3vA=;
  b=HOTB8ZUV3pUHqt1HWp2URo9dQ7Uq623p8d5aUQAaIB7kjMNVP8Vabfxf
   qPhCHAGV60QBdMnM4z2j2b7X0ZBWsqoe8lNgcWLIjwznkQyr79pQYZ11n
   dTRabny349KxHarTD/XXMZgdZhqdJK+E+IAOxKUqGmUvbSYkuPgcrlwbh
   C/gAUAdeRTrxhNxfYTlbs30F+Q4x57r8/nL9x58JPWe+0SIcxzb1GlVqj
   4Y4l8HMShcYB2xxBzzlnwE7ihR1uS63fSIlPVCDANurpCbbE6+YHWZK1L
   d6Lx2YRWTJzScI3WSWog/1nClEvnvCTAYRlCxeGLsaPX6uWWMrba5zGvn
   A==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH 2/2] local.conf.sample: Use the new override syntax for a commented variable
Date: Thu, 26 Aug 2021 19:32:40 +0200
Message-ID: <20210826173240.2085-2-pkj@axis.com>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20210826173240.2085-1-pkj@axis.com>
References: <20210826173240.2085-1-pkj@axis.com>
MIME-Version: 1.0
Return-Path: pkj@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index f1f6d690fb..75b27167f1 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -158,7 +158,7 @@ USER_CLASSES ?= "buildstats"
 # run tests against any SDK that are built. To enable this uncomment these lines.
 # See classes/test{image,sdk}.bbclass for further details.
 #IMAGE_CLASSES += "testimage testsdk"
-#TESTIMAGE_AUTO_qemuall = "1"
+#TESTIMAGE_AUTO:qemuall = "1"
 
 #
 # Interactive shell configuration
