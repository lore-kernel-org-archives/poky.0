Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47CC7E008EC; Thu, 27 Nov 2014 08:50:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C434E008CC
	for <poky@yoctoproject.org>; Thu, 27 Nov 2014 08:50:11 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id z12so6976701wgg.29
	for <poky@yoctoproject.org>; Thu, 27 Nov 2014 08:50:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=n2ozTl4GdI+nHRGsXgLH2/pKpVQsqkw8oWT/F9uc/nQ=;
	b=C/TcNCe+sMkVcaQFXxLCg6j6kH/i4Dp4aSQDtKUaaC7IdQvSFnwvcokvMHyV/lx5F8
	FJfR7ElkENM5XNDB9LfkOAxVW7XmT6g1OPrwPQXJ8fjzl9Sqiam91ypQ9u8Q5KIyy/g/
	NwvVKMlRgD2efllbu3oO8K7/2LWgj+LAKZQBWNNpwkBWymJn4WQ0W359vp4F9Zhq2YKu
	QvNbjra85iLXwgRy1V7iEh3r+tVtx42U9zrJqGKKijAnPafQzExEkPSFMIC/PV6ktRrw
	YnKjwIG/uwpXlnHdvvaK6pSFNTSsA2qEJZPVhId/AXpYSGW7Z6a7/NOIlhswaD4Mg+yv
	Nmxw==
X-Gm-Message-State: ALoCoQlIdRChmxyYVncJJIaH3gg5u/kvuZRHUZc5g7PG0vAP+BzKk1Y1lidPnpD9D9GLTMwrOJVf
X-Received: by 10.180.99.1 with SMTP id em1mr53518019wib.29.1417107010207;
	Thu, 27 Nov 2014 08:50:10 -0800 (PST)
Received: from adamian-desk.local ([83.217.123.106])
	by mx.google.com with ESMTPSA id
	hz9sm11454713wjb.17.2014.11.27.08.50.08 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Nov 2014 08:50:09 -0800 (PST)
Received: by adamian-desk.local (Postfix, from userid 1000)
	id 80474563B9C; Thu, 27 Nov 2014 16:50:08 +0000 (GMT)
From: Alex DAMIAN <alexandru.damian@intel.com>
To: poky@yoctoproject.org
Date: Thu, 27 Nov 2014 16:50:04 +0000
Message-Id: <1417107004-28421-1-git-send-email-alexandru.damian@intel.com>
X-Mailer: git-send-email 1.9.1
Cc: Belen Barros Pena <belen.barros.pena@linux.intel.com>
Subject: [PATCH 1/1] toaster: naming and description changes
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
X-List-Received-Date: Thu, 27 Nov 2014 16:50:21 -0000

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


