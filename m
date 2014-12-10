Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A469FE00952; Wed, 10 Dec 2014 07:01:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CA42E00945
	for <poky@yoctoproject.org>; Wed, 10 Dec 2014 07:01:06 -0800 (PST)
Received: by mail-wi0-f175.google.com with SMTP id l15so11496742wiw.14
	for <poky@yoctoproject.org>; Wed, 10 Dec 2014 07:01:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mswRmxo59+ZjOO1pFGdIpab0MrmDIFdwv+Sr7fb4Yjg=;
	b=BNI6C4qBjCcft+u6cJWlN7KOp9mPPVKpuP78F936K88n70fnZc/jZTZ1VG09oQZpZx
	+/C1Y2naONi3piP8o08p3vYr0Kz0ZIvIjtQEMXBsXCHnZt4LKafYHgV7v9OxALfkhqo8
	Sxk1872AMubvfNLE1zi/F2iRpCwr0GT4B6oFGJyS+fN4Hyl8ZQCsytQQdYfX3yQeYiWz
	S5jDUA3Ss4Ck6dv79fHw4I4ggiN+KYe0ryj5+M8rrbXCxozoMBmrB3M+FKLJEmv3ETbG
	KkKAvTX6GT1nX76+Mo7MZNSbn5/m1Udlh7vaPleFqWvPy1hVL8fx0SGmOUlMb9Nz5lpC
	Xv5w==
X-Gm-Message-State: ALoCoQniRKl2MTsUPG5GgAdUgvEOj3ORcik2NovajAXtVB0doAr8KglyjDXNRN7GkqkdZgmwFGI2
X-Received: by 10.180.228.72 with SMTP id sg8mr7232403wic.48.1418223663936;
	Wed, 10 Dec 2014 07:01:03 -0800 (PST)
Received: from adamian-desk.local ([83.217.123.106])
	by mx.google.com with ESMTPSA id h14sm6660622wic.8.2014.12.10.07.01.02
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 Dec 2014 07:01:03 -0800 (PST)
Received: by adamian-desk.local (Postfix, from userid 1000)
	id 81DBE561166; Wed, 10 Dec 2014 15:01:02 +0000 (GMT)
From: Alex DAMIAN <alexandru.damian@intel.com>
To: poky@yoctoproject.org
Date: Wed, 10 Dec 2014 15:01:00 +0000
Message-Id: <1418223660-22353-1-git-send-email-alexandru.damian@intel.com>
X-Mailer: git-send-email 1.9.1
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>,
	Belen Barros Pena <belen.barros.pena@linux.intel.com>
Subject: [PATCH] toasterconf: naming and description changes
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
X-List-Received-Date: Wed, 10 Dec 2014 15:01:16 -0000

From: Belen Barros Pena <belen.barros.pena@linux.intel.com>

Some minor changes to the names and descriptions
used in the Toaster configuration file:

* Change the local layer source name from Local Poky to Local
Yocto Project to match release naming, which makes no reference
to Poky

* Change Imported Layer Source to just Imported layers. It is
shorter, which helps table display

* Change the helptext of the dizzy release to remove the
"latest" reference, since might make maintenance hard

Signed-off-by: Belen Barros Pena <belen.barros.pena@linux.intel.com>
Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
---
 meta-yocto/conf/toasterconf.json | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf.json
index e0a07b9..14d62b1 100644
--- a/meta-yocto/conf/toasterconf.json
+++ b/meta-yocto/conf/toasterconf.json
@@ -2,7 +2,7 @@
     "config": {"MACHINE": "qemux86", "DISTRO": "poky"},
     "layersources": [
         {
-            "name": "Local Poky",
+            "name": "Local Yocto Project",
             "sourcetype": "local",
             "apiurl": "../../",
             "branches": ["HEAD", "master", "dizzy"],
@@ -35,7 +35,7 @@
             "branches": ["master", "dizzy"]
         },
         {
-            "name": "User Imported Layers",
+            "name": "Imported layers",
             "sourcetype": "imported",
             "apiurl": "",
             "branches": ["master", "dizzy", "HEAD"]
@@ -72,7 +72,7 @@
             "bitbake": "master",
             "branch": "master",
             "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
-	    "layersourcepriority": { "User Imported Layers": 99, "Local Poky" : 10, "OpenEmbedded" :  0 },
+	    "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
             "helptext": "Toaster will run your builds using the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
         },
         {
@@ -81,8 +81,8 @@
             "bitbake": "dizzy",
             "branch": "dizzy",
             "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
-	    "layersourcepriority": { "User Imported Layers": 99, "Local Poky" : 10, "OpenEmbedded" :  0 },
-            "helptext": "Toaster will run your builds with the latest Yocto Project release, <a href=\"https://www.yoctoproject.org/downloads/core/dizzy17\">1.7 \"Dizzy\"</a>"
+	    "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
+            "helptext": "Toaster will run your builds with the <a href=\"https://www.yoctoproject.org/downloads/core/dizzy1\">Yocto Project 1.7 \"Dizzy\"</a> release"
         },
         {
             "name": "local",
@@ -90,7 +90,7 @@
             "bitbake": "HEAD",
             "branch": "HEAD",
             "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
-	    "layersourcepriority": { "User Imported Layers": 99, "Local Poky" : 10, "OpenEmbedded" :  0 },
+	    "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
             "helptext": "Toaster will run your builds with the version of the Yocto Project you have cloned or downloaded to your computer."
         }
     ]
-- 
1.9.1


