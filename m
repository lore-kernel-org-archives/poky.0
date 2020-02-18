Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.3026.1582063993951782155
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 14:13:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: mark.asselstine@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 01IMD821011546
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 18 Feb 2020 14:13:08 -0800 (PST)
Received: from yow-lpggp3.wrs.com (128.224.137.13) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Tue, 18 Feb 2020
 14:13:08 -0800
From: "Mark Asselstine" <mark.asselstine@windriver.com>
To: <poky@lists.yoctoproject.org>
CC: <akuster@mvista.com>
Subject: [PATCH] meta-poky: update to new mailing lists
Date: Tue, 18 Feb 2020 17:13:01 -0500
Message-ID: <20200218221301.28292-1-mark.asselstine@windriver.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

There is still some confustion around the mail list updates, as we
have seen on the lists recently:
https://lists.yoctoproject.org/g/yocto/message/48439

Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
---

Armin sent this change out a while back for zeus but I don't
see it there to cherry-pick. So cooked this up for master
and we should cherry-pick to other branches as needed.

 meta-poky/README.poky           | 4 ++--
 meta-poky/conf/distro/poky.conf | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/README.poky b/meta-poky/README.poky
index 8cf2027..be0c6c0 100644
--- a/meta-poky/README.poky
+++ b/meta-poky/README.poky
@@ -53,11 +53,11 @@ bitbake:
 
 documentation:
     Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
-    Mailing list: yocto@yoctoproject.org
+    Mailing list: docs@lists.yoctoproject.org
 
 meta-poky, meta-yocto-bsp:
     Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
-    Mailing list: poky@yoctoproject.org
+    Mailing list: poky@lists.yoctoproject.org
 
 Everything else should be sent to the OpenEmbedded Core mailing list.  If in
 doubt, check the oe-core git repository for the content you intend to modify.
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5c156f1..acfc1bb 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -5,7 +5,7 @@ DISTRO_CODENAME = "master"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
 
-MAINTAINER = "Poky <poky@yoctoproject.org>"
+MAINTAINER = "Poky <poky@lists.yoctoproject.org>
 
 TARGET_VENDOR = "-poky"
 
-- 
2.24.0

