Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web12.10818.1643193874401737595
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 02:44:34 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.178.230, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 2701B24000D;
	Wed, 26 Jan 2022 10:44:31 +0000 (UTC)
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH v2] local.conf.sample: use https instead of http for SSTATE_MIRRORS
Date: Wed, 26 Jan 2022 11:44:29 +0100
Message-Id: <20220126104429.1062137-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <16CDCBDE8210E458.21331@lists.yoctoproject.org>
References: <16CDCBDE8210E458.21331@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Both http and https work, but we should get fewer questions
with https

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/local.conf.sample | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 7bdbba0..3100eb1 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -206,7 +206,7 @@ BB_DISKMON_DIRS ??= "\
 # used to accelerate build time. This variable can be used to configure the system
 # to search other mirror locations for these objects before it builds the data itself.
 #
-# This can be a filesystem directory, or a remote url such as http or ftp. These
+# This can be a filesystem directory, or a remote url such as https or ftp. These
 # would contain the sstate-cache results from previous builds (possibly from other
 # machines). This variable works like fetcher MIRRORS/PREMIRRORS and points to the
 # cache locations to check for the shared objects.
@@ -214,7 +214,7 @@ BB_DISKMON_DIRS ??= "\
 # at the end as shown in the examples below. This will be substituted with the
 # correct path within the directory structure.
 #SSTATE_MIRRORS ?= "\
-#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
+#file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
 #file://.* file:///some/local/dir/sstate/PATH"
 
 #
@@ -229,7 +229,7 @@ BB_DISKMON_DIRS ??= "\
 # Note: For this to work you also need hash-equivalence passthrough to the matching server
 #
 #BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/3.4/PATH;downloadfilename=PATH"
+#SSTATE_MIRRORS ?= "file://.* https://sstate.yoctoproject.org/3.4/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.25.1

