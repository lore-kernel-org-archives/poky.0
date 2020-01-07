Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web10.327.1578362329985053800
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Jan 2020 17:58:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
IronPort-SDR: DyExeUSNbmx2vPJOoMeCT4c84oGxzDnY2VlnjigBUWSY/LPnatowg+4BLruCcepTaArO6xlNbL
 HNaHuwJgeB7H3vjVb5xuDdRRupzIzDUD3O7hvU9C1/LmKeuqRDXcy5fi1FtDSQwI7iuqD4Xz8p
 esWxAt6v0ADQWe9mwaKAO/TX86L3ut1O0iETkWPbIqJgPQ1acAfOiX30qUE+7YBmROqTP2quW2
 IEZUbZ0BDOxcH0Xfz19FtR8EQ9Pkgckhm5j0mjoGdp1zykCcKxKWVRZXQ4JEqkowQWFyBFA54w
 ArQ=
X-IronPort-AV: E=Sophos;i="5.69,404,1571695200"; 
   d="scan'208";a="4105446"
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Switch to post release name/version
Date: Tue,  7 Jan 2020 02:58:32 +0100
Message-Id: <20200107015832.25877-1-pkj@axis.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Content-Transfer-Encoding: 8bit

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8a0f28a863..5c156f12f3 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.0"
-DISTRO_CODENAME = "zeus"
+DISTRO_VERSION = "3.0+snapshot-${DATE}"
+DISTRO_CODENAME = "master"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
 
-- 
2.21.0

