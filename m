Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B0B1E008CF; Wed, 12 Nov 2014 06:10:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 380BFE007C0
	for <poky@yoctoproject.org>; Wed, 12 Nov 2014 06:10:49 -0800 (PST)
Received: by mail-wi0-f181.google.com with SMTP id n3so4980582wiv.14
	for <poky@yoctoproject.org>; Wed, 12 Nov 2014 06:10:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=R7rzL+Ck/jsF9kXikWKSw0k6lr1rN0btagMenK/O2FQ=;
	b=PfOGhYsKRsAceIZmhHnY/oXf5aH1gQ0b6ZuVBWdHFt5/BgYoSBIN9Oqf5JlPwYiq/0
	Jj039vi8Zq/mwkWM1gO3IxMBBXW1KtuorbriR2G4PJHYTXyatL5klTlz6obuObEhc9k4
	tq+SrJt+0xkXFW99pus/73roYQhyW26ZLTCFPleLRmVkZuItT8kFvr7nBs4brYGFdwCj
	zQUPrGtVf8iZcDCe6Cev7df45ep+SV3NXaYRxTuSrXfKzxPFFu8mwS9h6hVQNfdW45zD
	93jqfr4TnWyHsPC6LXX0PeUo4qao3Fs4JaXXymyBChCT/TNTR20Hsqdxkd7/zeYKyVkd
	LIhQ==
X-Gm-Message-State: ALoCoQmn8Zi4LQRNswiVENhCYCuZmNzU1E7FSqs/9pYY1X+DvUnojGE/oz9m6UcTWtK+2hglNNis
X-Received: by 10.180.81.102 with SMTP id z6mr49503591wix.69.1415801448080;
	Wed, 12 Nov 2014 06:10:48 -0800 (PST)
Received: from adamian-desk.corp.intel.com ([83.217.123.106])
	by mx.google.com with ESMTPSA id
	bf6sm31616725wjb.13.2014.11.12.06.10.45 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Nov 2014 06:10:46 -0800 (PST)
Received: by adamian-desk.corp.intel.com (Postfix, from userid 1000)
	id 85D22562B81; Wed, 12 Nov 2014 14:10:44 +0000 (GMT)
From: Alex DAMIAN <alexandru.damian@intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Nov 2014 14:10:42 +0000
Message-Id: <1415801442-10602-1-git-send-email-alexandru.damian@intel.com>
X-Mailer: git-send-email 1.9.1
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>
Subject: [PATCH] toaster: add toaster layer configuration file
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
X-List-Received-Date: Wed, 12 Nov 2014 14:10:52 -0000

From: Alexandru DAMIAN <alexandru.damian@intel.com>

In managed mode, Toaster tries to discover layers
that are being checked-out on disk.

In base layers, the toasterconf.json file
describes basic configuration file for builds based
on that layer, like default configuration variable
settings, toaster-compatible branches, and the
layerindex URL where the base layer and
compatible layers are listed.

This patch adds toasterconf.json file to the oe core layer.

Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
---
 meta/conf/toasterconf.json | 90 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 meta/conf/toasterconf.json

diff --git a/meta/conf/toasterconf.json b/meta/conf/toasterconf.json
new file mode 100644
index 0000000..281986b
--- /dev/null
+++ b/meta/conf/toasterconf.json
@@ -0,0 +1,90 @@
+{
+    "config": {"MACHINE": "qemux86", "DISTRO": "poky"},
+    "layersources": [
+        {
+            "name": "Poky",
+            "sourcetype": 0,
+            "apiurl": "../../",
+            "branches": ["HEAD"],
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
+            "sourcetype": 1,
+            "apiurl": "http://layers.openembedded.org/layerindex/api/",
+            "branches": ["master", "dizzy"]
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
+            "layersource": "OpenEmbedded",
+            "bitbake": "master",
+            "branch": "master",
+            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
+            "helptext": "Toaster will run your builds using the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
+        },
+        {
+            "name": "dizzy",
+            "description": "Yocto Project 1.7 Dizzy",
+            "layersource": "OpenEmbedded",
+            "bitbake": "dizzy",
+            "branch": "dizzy",
+            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
+            "helptext": "Toaster will run your builds with the latest Yocto Project release, <a href=\"https://www.yoctoproject.org/downloads/core/dizzy17\">1.7 \"Dizzy\"</a>"
+        },
+        {
+            "name": "local",
+            "description": "Local Yocto Project",
+            "layersource": "Poky",
+            "bitbake": "HEAD",
+            "branch": "HEAD",
+            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
+            "helptext": "Toaster will run your builds with the version of the Yocto Project you have cloned or downloaded to your computer."
+        }
+    ]
+}
-- 
1.9.1


