Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF87CE00BCF; Sun,  1 Nov 2015 13:36:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23A13E00BAB
	for <poky@yoctoproject.org>; Sun,  1 Nov 2015 13:36:20 -0800 (PST)
Received: by pasz6 with SMTP id z6so126435568pas.2
	for <poky@yoctoproject.org>; Sun, 01 Nov 2015 13:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=MITZz11bQFODE4Og5BG0gATiB2dswHdYaYXJwSLmTAc=;
	b=OdHBpn7Ml1RxaSIYYP9T0MH4dUJooinxUzhiwm+knH6w0L82DQWaprOxLshKInLQG1
	FYLruhXDzix4RjK9xm7GVj+gWi5JQHOJYAZnT0fiSRLPPyXO7YnuYgcGpa3j17nM8Zrx
	O8zAg/BxTn5n/nDHU8aJRvD24p3CNzH7vqhy/kOq4GaYSoiBWIgu0YFr/nEFadVlfJte
	4ZYI1rgqit7yYer0tZB4F2eJAt/glL/0e02SKxdj05cIUImcF8MzMFFFxyOeC+KY0CO5
	9v+ms6HOczJqoM29QTM73n9aRiYH3ZvwfxdVubAcvthSlpRhBPmknoSV41p5UmxDf8KF
	mH1A==
X-Received: by 10.66.132.9 with SMTP id oq9mr22902883pab.101.1446413779801;
	Sun, 01 Nov 2015 13:36:19 -0800 (PST)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id
	db8sm20087679pad.43.2015.11.01.13.36.18
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Nov 2015 13:36:19 -0800 (PST)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Sun,  1 Nov 2015 13:38:55 -0800
Message-Id: <1de52c51b5348b7c67c5bae9e7260f74db5fa1b0.1446413841.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1446413841.git.avery.brian@gmail.com>
References: <cover.1446413841.git.avery.brian@gmail.com>
Subject: [PATCH 1/1] toasterconf: remove master as a branch option from fido release
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
X-List-Received-Date: Sun, 01 Nov 2015 21:36:21 -0000

    Toaster isn't designed to be forward compatible. As such,
    a release cannot build releases newer then it.

    Particularly, "fido" cannot build "master", so we remove
    "master" from the list of supported releases in "fido"

    [YOCTO #8154]

Signed-off-by: brian avery <avery.brian@gmail.com>
---
 meta-yocto/conf/toasterconf.json | 23 ++++-------------------
 1 file changed, 4 insertions(+), 19 deletions(-)

diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf.json
index c455276..264b70b 100644
--- a/meta-yocto/conf/toasterconf.json
+++ b/meta-yocto/conf/toasterconf.json
@@ -12,7 +12,7 @@
             "name": "Local Yocto Project",
             "sourcetype": "local",
             "apiurl": "../../",
-            "branches": ["HEAD", "master", "fido", "dizzy"],
+            "branches": ["HEAD", "fido", "dizzy"],
             "layers": [
                 {
                     "name": "openembedded-core",
@@ -39,24 +39,18 @@
             "name": "OpenEmbedded",
             "sourcetype": "layerindex",
             "apiurl": "http://layers.openembedded.org/layerindex/api/",
-            "branches": ["master", "fido", "dizzy"]
+            "branches": ["fido", "dizzy"]
         },
         {
             "name": "Imported layers",
             "sourcetype": "imported",
             "apiurl": "",
-            "branches": ["master", "fido", "dizzy", "HEAD"]
+            "branches": ["fido", "dizzy", "HEAD"]
 
         }
     ],
     "bitbake" : [
         {
-            "name": "master",
-            "giturl": "remote:origin",
-            "branch": "master",
-            "dirpath": "bitbake"
-        },
-        {
             "name": "fido",
             "giturl": "remote:origin",
             "branch": "fido",
@@ -76,19 +70,10 @@
         }
     ],
 
-    "defaultrelease": "master",
+    "defaultrelease": "fido",
 
     "releases": [
         {
-            "name": "master",
-            "description": "Yocto Project master",
-            "bitbake": "master",
-            "branch": "master",
-            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
-            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
-            "helptext": "Toaster will run your builds using the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
-        },
-        {
             "name": "fido",
             "description": "Yocto Project 1.8 Fido",
             "bitbake": "fido",
-- 
1.9.1


