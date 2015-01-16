Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35D89E008D7; Fri, 16 Jan 2015 08:26:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF066E0083A
	for <poky@yoctoproject.org>; Fri, 16 Jan 2015 08:26:17 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id bs8so5453569wib.0
	for <poky@yoctoproject.org>; Fri, 16 Jan 2015 08:26:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=HdRiVcGTeSb04W+hmvz9DSiaPQjpt4ep+Y7U4Nu06Oo=;
	b=F0v9ghcBOVkwsXguLSxBDaJzCuzMsIPnvIwssxk2iOFW/ZVW/aOKGVI9JU4g5j5+vw
	DIcdv8re2cH+C80SmmaZOoGGrSNylwQELJKYw5WTq2T1V8CtvO3I89vKkvBlt54PAgk2
	KjDS5jokSgk3ZEO5NbUd1enNiDlWEpbiY03/eNfd/wZi7EDKW7jguLnuHhXGmCFVbsuD
	DU/f6EC/TLuyK7qdmzlM71mLzk2N6yOw479C3mJvIpLpnoeca+eBhYBLr/G3+jfKbJuP
	FeS1akk10Es5YtyhPb+I9oUtBF/OYWFQ16L2OhGws+m8BGxpZOr93YbtwOJtsYMx/397
	JCCg==
X-Gm-Message-State: ALoCoQlSnxhGr1CEsgXgQTBJ85cR0b6JB8c/gKT/6SqiyNDQZ7sasVTibGWBZl9cBtE5bCBu7ta8
X-Received: by 10.180.84.134 with SMTP id z6mr7911695wiy.50.1421425576196;
	Fri, 16 Jan 2015 08:26:16 -0800 (PST)
Received: from adamian-desk.local ([83.217.123.106])
	by mx.google.com with ESMTPSA id jr4sm6672421wjc.20.2015.01.16.08.26.14
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Jan 2015 08:26:15 -0800 (PST)
Received: by adamian-desk.local (Postfix, from userid 1000)
	id 15B40560DB7; Fri, 16 Jan 2015 16:26:16 +0000 (GMT)
From: Alex DAMIAN <alexandru.damian@intel.com>
To: poky@yoctoproject.org
Date: Fri, 16 Jan 2015 16:26:14 +0000
Message-Id: <1421425574-1438-1-git-send-email-alexandru.damian@intel.com>
X-Mailer: git-send-email 1.9.1
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>,
	David Reyna <David.Reyna@windriver.com>
Subject: [PATCH 1/1] toasterconf.json update
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Jan 2015 16:26:22 -0000

From: David Reyna <David.Reyna@windriver.com>

The toaster layer configuration file is updated to specify
sane default for more build configuration variables.

Minor whitespace changes to beautify the file.

Rebased by Alex from a patch written by David Reyna.

Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
---
 meta-yocto/conf/toasterconf.json | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf.json
index 14d62b1..51dbc8c 100644
--- a/meta-yocto/conf/toasterconf.json
+++ b/meta-yocto/conf/toasterconf.json
@@ -1,5 +1,12 @@
 {
-    "config": {"MACHINE": "qemux86", "DISTRO": "poky"},
+    "config": {
+        "MACHINE"      : "qemux86",
+        "DISTRO"       : "poky",
+        "IMAGE_FSTYPES": "ext3 jffs2 tar.bz2",
+        "IMAGE_INSTALL_append": "",
+        "PACKAGE_CLASSES": "package_rpm",
+        "SDKMACHINE"   : "x86_64"
+    },
     "layersources": [
         {
             "name": "Local Yocto Project",
@@ -72,7 +79,7 @@
             "bitbake": "master",
             "branch": "master",
             "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
-	    "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
+            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
             "helptext": "Toaster will run your builds using the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
         },
         {
@@ -81,7 +88,7 @@
             "bitbake": "dizzy",
             "branch": "dizzy",
             "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
-	    "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
+            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
             "helptext": "Toaster will run your builds with the <a href=\"https://www.yoctoproject.org/downloads/core/dizzy1\">Yocto Project 1.7 \"Dizzy\"</a> release"
         },
         {
@@ -90,7 +97,7 @@
             "bitbake": "HEAD",
             "branch": "HEAD",
             "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
-	    "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
+            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
             "helptext": "Toaster will run your builds with the version of the Yocto Project you have cloned or downloaded to your computer."
         }
     ]
-- 
1.9.1


