Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA849E008E3; Thu, 20 Nov 2014 08:03:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84B5CE008E3
	for <poky@yoctoproject.org>; Thu, 20 Nov 2014 08:03:35 -0800 (PST)
Received: by mail-pd0-f169.google.com with SMTP id fp1so3276734pdb.28
	for <poky@yoctoproject.org>; Thu, 20 Nov 2014 08:03:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=HGgNzZvVoOH84BTYTNXDmndKiaOC/Ox7088xCkKfDb0=;
	b=Mg17/StjhIKOyMGA+sGpAAnIZhsEXyWEHOOUH/hTXjIrB594kpsLt43ZDx/MfMWGwK
	kCA0PB0kG/FUMHch1gjqHeKTHlKz7hE6o/8aqxRmg7ea/k6J7wHiT6P4h9d43KP/rwHr
	ea5ETmZVUvkchKy1vAyv4nlS/RqQzMvX6GEjoO+tDkrFwIYN6G04+cVXe5BUdGXK4B8Y
	fDB+LuL69se1XRmqYI0Ii7iIBe9BahbByXS/zF+CAGY4IajXEkiUsY3Istt0G4DjNH7g
	xStDpxprhS5XQiX9fOvIIR/0xbo6x0Wp5CTSVd8ip9WnyyFU//9y8UFh5SSD65M34rKH
	rbaw==
X-Gm-Message-State: ALoCoQnQweb6K1y2Ah2kY5Fd6WkuliPIyvd7kYlgwT7hEcY4728zgSf2OXgDv9U4OubLWPeUiuYD
X-Received: by 10.66.232.70 with SMTP id tm6mr15634929pac.120.1416499415527;
	Thu, 20 Nov 2014 08:03:35 -0800 (PST)
Received: from adamian-desk.local ([83.217.123.106])
	by mx.google.com with ESMTPSA id l13sm2434879pbq.40.2014.11.20.08.03.34
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Nov 2014 08:03:34 -0800 (PST)
Received: by adamian-desk.local (Postfix, from userid 1000)
	id 60A7F563E83; Thu, 20 Nov 2014 16:03:32 +0000 (GMT)
From: Alex DAMIAN <alexandru.damian@intel.com>
To: poky@yoctoproject.org
Date: Thu, 20 Nov 2014 16:03:30 +0000
Message-Id: <1416499410-29061-1-git-send-email-alexandru.damian@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1415801442-10602-1-git-send-email-alexandru.damian@intel.com>
References: <1415801442-10602-1-git-send-email-alexandru.damian@intel.com>
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>
Subject: [PATCH 1/1] toaster: add toaster layer configuration files for meta-yocto
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
X-List-Received-Date: Thu, 20 Nov 2014 16:03:41 -0000

From: Alexandru DAMIAN <alexandru.damian@intel.com>

In managed mode, Toaster tries to create project configuration
based on the layers that are being checked-out on disk.

This is done by using a JSON configuration file that is
layer-specific.

This patch adds toasterconf.json files to the meta-yocto layer,
allowing Toaster projects based on Yocto Project releases.

Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
---
 meta-yocto/conf/toasterconf.json | 97 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 97 insertions(+)
 create mode 100644 meta-yocto/conf/toasterconf.json

diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf.json
new file mode 100644
index 0000000..fa333de
--- /dev/null
+++ b/meta-yocto/conf/toasterconf.json
@@ -0,0 +1,97 @@
+{
+    "config": {"MACHINE": "qemux86", "DISTRO": "poky"},
+    "layersources": [
+        {
+            "name": "Local Poky",
+            "sourcetype": "local",
+            "apiurl": "../../",
+            "branches": ["HEAD", "master", "dizzy"],
+            "layers": [
+                {
+                    "name": "openembedded-core",
+                    "local_path": "meta",
+                    "vcs_url": "remote:origin",
+                    "dirpath": "meta"
+                },
+                {
+                    "name": "meta-yocto",
+                    "local_path": "meta",
+                    "vcs_url": "remote:origin",
+                    "dirpath": "meta-yocto"
+                },
+                {
+                    "name": "meta-yocto-bsp",
+                    "local_path": "meta",
+                    "vcs_url": "remote:origin",
+                    "dirpath": "meta-yocto-bsp"
+                }
+
+            ]
+        },
+        {
+            "name": "OpenEmbedded",
+            "sourcetype": "layerindex",
+            "apiurl": "http://layers.openembedded.org/layerindex/api/",
+            "branches": ["master", "dizzy"]
+        },
+        {
+            "name": "User Imported Layers",
+            "sourcetype": "imported",
+            "apiurl": "",
+            "branches": ["master", "dizzy", "HEAD"]
+
+        }
+    ],
+    "bitbake" : [
+        {
+            "name": "master",
+            "giturl": "remote:origin",
+            "branch": "master",
+            "dirpath": "bitbake"
+        },
+        {
+            "name": "dizzy",
+            "giturl": "remote:origin",
+            "branch": "dizzy",
+            "dirpath": "bitbake"
+        },
+        {
+            "name": "HEAD",
+            "giturl": "remote:origin",
+            "branch": "HEAD",
+            "dirpath": "bitbake"
+        }
+    ],
+
+    "defaultrelease": "master",
+
+    "releases": [
+        {
+            "name": "master",
+            "description": "Yocto Project master",
+            "bitbake": "master",
+            "branch": "master",
+            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
+	    "layersourcepriority": { "User Imported Layers": 99, "Local Poky" : 10, "OpenEmbedded" :  0 },
+            "helptext": "Toaster will run your builds using the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
+        },
+        {
+            "name": "dizzy",
+            "description": "Yocto Project 1.7 Dizzy",
+            "bitbake": "dizzy",
+            "branch": "dizzy",
+            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
+	    "layersourcepriority": { "User Imported Layers": 99, "Local Poky" : 10, "OpenEmbedded" :  0 },
+            "helptext": "Toaster will run your builds with the latest Yocto Project release, <a href=\"https://www.yoctoproject.org/downloads/core/dizzy17\">1.7 \"Dizzy\"</a>"
+        },
+        {
+            "name": "local",
+            "description": "Local Yocto Project",
+            "bitbake": "HEAD",
+            "branch": "HEAD",
+            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
+	    "layersourcepriority": { "User Imported Layers": 99, "Local Poky" : 10, "OpenEmbedded" :  0 },
+            "helptext": "Toaster will run your builds with the version of the Yocto Project you have cloned or downloaded to your computer."
+        }
+    ]
+}
-- 
1.9.1


