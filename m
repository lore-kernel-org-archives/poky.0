Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.19975.1673430192858674991
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Jan 2023 01:43:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=IjsXfmjU;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1673430193;
  x=1704966193;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=BfELLTdEMbU+py7b41wNaq7Cb8naFyeDDAn1kTKsL6s=;
  b=IjsXfmjUqwIJZT9VS6EEp+fjDXt76PYV6ex4HyJgLOI80aD2ZMxvYiC7
   oSNIWcxZuCckHWlBzpWlH/v6c4PqXKUnKlAnLqxICX4PgAF2zCTLX/thl
   DJqQHTf/WgnvSb3o2nfwxZwriCCeA20t7UcIVwhNiUa2/vd5AjMekM1Vd
   gKFFHzXCR3h2S60jQ1481MV5GxbWksNKfRwdT4N/StPOd6mOxpxuAw79U
   +OXquPxPuSS/goEk8zEHASKYuD8vVBlta1yD1P7I0mjzUwzogAqrkd/Tc
   8vyXaz8XqCdeIPa4nzS8S8FqdDbMSMAEY8IphWe6VPpAfFA4KMlhmEXY0
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCHv2] poky.conf: Switch to post release name/version
Date: Wed, 11 Jan 2023 10:42:58 +0100
Message-ID: <20230111094258.3472270-1-pkj@axis.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Return-Path: pkj@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---

PATCHv2: Base DISTRO_VERSION on 4.1 rather than 4.2.

 meta-poky/conf/distro/poky.conf | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index dc0e8e76ab..a86e2ead2f 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,8 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-#DISTRO_VERSION = "4.1+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.1"
-DISTRO_CODENAME = "langdale"
+DISTRO_VERSION = "4.1+snapshot-${METADATA_REVISION}"
+DISTRO_CODENAME = "mickledore"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
 SDK_VERSION[vardepvalue] = "${SDK_VERSION}"
