Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23B85E008F6; Wed, 25 Mar 2015 07:21:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 727E6E008CE
	for <poky@yoctoproject.org>; Wed, 25 Mar 2015 07:21:40 -0700 (PDT)
Received: by wibgn9 with SMTP id gn9so41240745wib.1
	for <poky@yoctoproject.org>; Wed, 25 Mar 2015 07:21:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=An3bBSvKy3HP7BAdSeAMY7u92l8UdZJSgskD17SQiDg=;
	b=YEB2ImtbKLbRMm+Rfza+GNiOVyjl3GPxVRLCi5QSyFhDShk7S7M8WLm3apGGLnsKEg
	ENkG1smYpshMlXa8/HjFnUawWhtu2ob/DOe4kYPrtBlIhtritKiLV6lUVVZTfzAJ85lq
	T2stfS22GbhGZc6RXjINlSmhtoBQcMC7X1jwEP7jEn06ydDe6sKgFgEpJRK186N394Fe
	w3iek5NKgl1GTCFRjBLcx+J7s/Kbma+jzZqfnnx4fYTBMdz2I/bL/jN1nq3H+6QkGsyR
	rGwtRJOucuImC8UlOUjelJw9oca/jCWvr54MRzdBVPkxQvVtUf2IGTN3FAvxEQ3v+uMB
	WMOw==
X-Gm-Message-State: ALoCoQkfZzBuaV3eqRijz3W631+Zk9n69/jIA4Iz01ZSNbs13tx+BAUrD/FAW9B4eKx3wA9aXNHF
X-Received: by 10.180.12.194 with SMTP id a2mr39396436wic.55.1427293282870;
	Wed, 25 Mar 2015 07:21:22 -0700 (PDT)
Received: from adamian-desk.local ([83.217.123.106])
	by mx.google.com with ESMTPSA id
	hd10sm20880485wib.7.2015.03.25.07.21.21
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Mar 2015 07:21:22 -0700 (PDT)
Received: by adamian-desk.local (Postfix, from userid 1000)
	id A6EF1561049; Wed, 25 Mar 2015 14:21:20 +0000 (GMT)
From: Alex DAMIAN <alexandru.damian@intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 Mar 2015 14:21:19 +0000
Message-Id: <1427293279-15261-1-git-send-email-alexandru.damian@intel.com>
X-Mailer: git-send-email 1.9.1
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>,
	Belen Barros Pena <belen.barros.pena@linux.intel.com>
Subject: [FIDO] toaster: updating toasterconf.json for fido release
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
X-List-Received-Date: Wed, 25 Mar 2015 14:21:43 -0000

From: Belen Barros Pena <belen.barros.pena@linux.intel.com>

We update the toasterconf.json file for the fido release.

A small update to the release help text in the
toasterconf.json file shipped with the meta-yocto layer.

We now make explicit that Toaster will build with the
tip of the selected branch. We also link the
Yocto Project Dizzy release to the git repository,
and not to the release page on the website.

Signed-off-by: Belen Barros Pena <belen.barros.pena@linux.intel.com>
Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
---
 meta-yocto/conf/toasterconf.json | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf.json
index 51dbc8c..c455276 100644
--- a/meta-yocto/conf/toasterconf.json
+++ b/meta-yocto/conf/toasterconf.json
@@ -12,7 +12,7 @@
             "name": "Local Yocto Project",
             "sourcetype": "local",
             "apiurl": "../../",
-            "branches": ["HEAD", "master", "dizzy"],
+            "branches": ["HEAD", "master", "fido", "dizzy"],
             "layers": [
                 {
                     "name": "openembedded-core",
@@ -39,13 +39,13 @@
             "name": "OpenEmbedded",
             "sourcetype": "layerindex",
             "apiurl": "http://layers.openembedded.org/layerindex/api/",
-            "branches": ["master", "dizzy"]
+            "branches": ["master", "fido", "dizzy"]
         },
         {
             "name": "Imported layers",
             "sourcetype": "imported",
             "apiurl": "",
-            "branches": ["master", "dizzy", "HEAD"]
+            "branches": ["master", "fido", "dizzy", "HEAD"]
 
         }
     ],
@@ -57,6 +57,12 @@
             "dirpath": "bitbake"
         },
         {
+            "name": "fido",
+            "giturl": "remote:origin",
+            "branch": "fido",
+            "dirpath": "bitbake"
+        },
+        {
             "name": "dizzy",
             "giturl": "remote:origin",
             "branch": "dizzy",
@@ -80,7 +86,16 @@
             "branch": "master",
             "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
             "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
-            "helptext": "Toaster will run your builds using the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
+            "helptext": "Toaster will run your builds using the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
+        },
+        {
+            "name": "fido",
+            "description": "Yocto Project 1.8 Fido",
+            "bitbake": "fido",
+            "branch": "fido",
+            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
+            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
+            "helptext": "Toaster will run your builds with the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=fido\">Yocto Project 1.8 \"Fido\"</a> branch."
         },
         {
             "name": "dizzy",
@@ -89,7 +104,7 @@
             "branch": "dizzy",
             "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
             "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
-            "helptext": "Toaster will run your builds with the <a href=\"https://www.yoctoproject.org/downloads/core/dizzy1\">Yocto Project 1.7 \"Dizzy\"</a> release"
+            "helptext": "Toaster will run your builds with the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=dizzy\">Yocto Project 1.7 \"Dizzy\"</a> branch."
         },
         {
             "name": "local",
-- 
1.9.1


