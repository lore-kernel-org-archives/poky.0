Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web11.106508.1673363896871514193
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 07:18:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=LA3sEiPJ;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1673363897;
  x=1704899897;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=KRekYSDvvH76siCmI5RDz06ev4gCgbO7TTHf9//bCjc=;
  b=LA3sEiPJ7D5UYWANKmAV17SwKJ0ZLLa5liI0yKhh8PcQSFmDL4wjYApq
   13MCHy7hNkUuSfFTtPPB8YdPzy47BoSqWgylDbawiYQcUrcmSuOlZrf5z
   HSleJWeJ/+90iTfqWq8s4Gm2NPcZCMQCOF3h2KN6NfXKbEvioQxoG5eav
   sZ4HJa/O0+/T0/aETJhuL9SCiM6MOOrG45U6P/CTCU1o7je8cSkZqAt30
   rxVzK4yUWIii3M5x5H6EAaSZqZ6ZQE/B4PrEJgmLKeg5BlpFcWVhW8IK1
   9CsVLVL7AOjbv2aRQELjr+nBbHecFOkoPig2Qp2OAQt/yY1mcJDNgXfNQ
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH] poky.conf: Switch to post release name/version
Date: Tue, 10 Jan 2023 16:18:11 +0100
Message-ID: <20230110151811.2602621-1-pkj@axis.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Return-Path: peter.kjellerstedt@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/distro/poky.conf | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index dc0e8e76ab..a876ddde94 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,8 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-#DISTRO_VERSION = "4.1+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.1"
-DISTRO_CODENAME = "langdale"
+DISTRO_VERSION = "4.2+snapshot-${METADATA_REVISION}"
+DISTRO_CODENAME = "mickledore"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
 SDK_VERSION[vardepvalue] = "${SDK_VERSION}"
