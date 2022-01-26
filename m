Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.10967.1643193319788276513
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 02:35:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 577014000E;
	Wed, 26 Jan 2022 10:35:17 +0000 (UTC)
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] local.conf.sample: use https instead of http for SSTATE_MIRRORS
Date: Wed, 26 Jan 2022 11:35:12 +0100
Message-Id: <20220126103512.1045814-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Both http and https work, but we should get fewer questions
with https

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/local.conf.sample | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index fb14379..f2d2e16 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -207,7 +207,7 @@ BB_DISKMON_DIRS ??= "\
 # used to accelerate build time. This variable can be used to configure the system
 # to search other mirror locations for these objects before it builds the data itself.
 #
-# This can be a filesystem directory, or a remote url such as http or ftp. These
+# This can be a filesystem directory, or a remote url such as https or ftp. These
 # would contain the sstate-cache results from previous builds (possibly from other
 # machines). This variable works like fetcher MIRRORS/PREMIRRORS and points to the
 # cache locations to check for the shared objects.
@@ -215,7 +215,7 @@ BB_DISKMON_DIRS ??= "\
 # at the end as shown in the examples below. This will be substituted with the
 # correct path within the directory structure.
 #SSTATE_MIRRORS ?= "\
-#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
+#file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
 #file://.* file:///some/local/dir/sstate/PATH"
 
 #
@@ -228,7 +228,7 @@ BB_DISKMON_DIRS ??= "\
 # present in the cache. It assumes you can download something faster than you can build it
 # which will depend on your network.
 #
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/2.5/PATH;downloadfilename=PATH"
+#SSTATE_MIRRORS ?= "file://.* https://sstate.yoctoproject.org/2.5/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.25.1

