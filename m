Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web12.11305.1645986250774622675
 for <poky@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 10:24:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=nq032lgq;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1645986251;
  x=1677522251;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=awae76CtwSEgW7IiBTvMBDfcB7jwYS+PePwlBD9Ejx0=;
  b=nq032lgq6RFSrApzM/v5DUkfIY3wYA4Yj9n/bd8122oVThUrC1JTUSd0
   ANS5NYGbHnfVgwolNZkgLpO5NXtd7dG/zGdsmSXK5UX9OS8iW/Y3EmXCC
   UVy+xUIxl7gcvyHuvIsZtx9TyXURpOFfkqhzXxSJ4LDZU+zg8BBn98sBM
   58tSWF6zHllUFxz3s/B/YzortFbuzxeZtLagaek+XdmVUNlgYBomz2uMk
   dubTf5UE4to5grg64FWi5Ct7CMowEW+/gwgvIhPiDSgRHzI9745bH/JaK
   BMinH9PZKFIUEQPoo+xuMxajwSyBGOHfBbWiLz0JzrBsN3cki3QHZ1G40
   g==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH] gma500-gfx-check: Update LICENSE to use an SPDX license identifier
Date: Sun, 27 Feb 2022 19:24:03 +0100
Message-ID: <20220227182403.6073-1-peter.kjellerstedt@axis.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Return-Path: pkj@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 .../recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb
index 1fe1212419..6726f68319 100644
--- a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb
+++ b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb
@@ -1,6 +1,6 @@
 SUMMARY = "Intel gma500_gfx fix for certain hardware"
 DESCRIPTION = "Avoid inserting gma500_gfx module for certain hardware devices."
-LICENSE="GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
 
 SRC_URI = "file://gma500-gfx-check.conf \
