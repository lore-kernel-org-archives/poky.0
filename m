Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web11.1481.1643423235307163914
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 18:27:16 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=MLEGuKuB;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1643423235;
  x=1674959235;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=vIqra0Imbe24GxRIt9RSxnff7KzgXtvLnbLShbAGBQ4=;
  b=MLEGuKuBuskpTUWIGeufO1CUFiNFU06s006ammnrxdTrQxHr6u5YR7Ck
   P7/LZ1hnTl4lWwMxWr/IrPvK/nXYsXrvJt1VRTFTeyhbtRnMImrB39aaP
   BHT9YLr5w1CjW6qS70mCXAXchlnBJ3bOuCRkycNv08OKub9F4kgNX2dCr
   cHikTQ/ZpxkhiQVYNfeC5+aFbcu14x7ch5T829WYXMDjAXtkxOG32COE8
   jg9f2T6ljxXxLf0jOCUOYmZVthBexQUNMkQX9S7VfHHjrF4FsV3Kk4pPu
   9XRQS43ru4pqpIjcF1HrK541UzqFhEORd0pu/vr4cGFGlliZo3vBWMzz+
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH 1/2] poky.conf: Remove unnecessary \n from PREMIRRORS
Date: Sat, 29 Jan 2022 03:27:11 +0100
Message-ID: <20220129022712.18184-1-pkj@axis.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Return-Path: pkj@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Since commit 044fb04d in bitbake (fetch2: Allow whitespace only mirror
entries) there is no need to separate the entries in PREMIRRORS with
"\n".

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/distro/poky.conf | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 2dc3606ae5..47ef9fa2ee 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -31,14 +31,14 @@ DISTRO_EXTRA_RRECOMMENDS += "${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
 TCLIBCAPPEND = ""
 
 PREMIRRORS ??= "\
-bzr://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \n \
-cvs://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \n \
-git://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \n \
-gitsm://.*/.* https://downloads.yoctoproject.org/mirror/sources/ \n \
-hg://.*/.*    https://downloads.yoctoproject.org/mirror/sources/ \n \
-osc://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \n \
-p4://.*/.*    https://downloads.yoctoproject.org/mirror/sources/ \n \
-svn://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \n"
+bzr://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \
+cvs://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \
+git://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \
+gitsm://.*/.* https://downloads.yoctoproject.org/mirror/sources/ \
+hg://.*/.*    https://downloads.yoctoproject.org/mirror/sources/ \
+osc://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \
+p4://.*/.*    https://downloads.yoctoproject.org/mirror/sources/ \
+svn://.*/.*   https://downloads.yoctoproject.org/mirror/sources/"
 
 SANITY_TESTED_DISTROS ?= " \
             poky-3.3 \n \
