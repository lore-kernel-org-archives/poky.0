Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CAC1E00AEB; Thu, 20 Aug 2015 15:53:03 -0700 (PDT)
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
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30B05E00AE9
	for <poky@yoctoproject.org>; Thu, 20 Aug 2015 15:53:00 -0700 (PDT)
Received: by pawq9 with SMTP id q9so37615242paw.3
	for <poky@yoctoproject.org>; Thu, 20 Aug 2015 15:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=eCi3S4irroA1CeZxnKTCWS8DjIN2gkoPG8bZhP2HqEA=;
	b=AcWMHDszHGYqbtcOsW42rvU8lIgGuTS91+y4NB1/J8t6xGWCHD+G5VMjzA/2X8EVV6
	a+vJUb70hNK9jSb2Mvc8Cbzm12LF2wE0hH4FXSxm8dMQxiScaiMBxIgajq/X9yLhAB8k
	v1OctXaQjGkNOywMthAsdumcgxnYLjAsBM5itnCdF8d00MjTfqdATqoB4oDR/b7i0vc2
	o+57AqXIGopQpwSIGfmD+bSpAn1f7cao99rsyWvcYKN9jCutDDqNgHJApwHngLtCa0ig
	IR7MYEFMEhj6zrWfK2gijeXkXR9E+aWLejclnlfZHz6e4M3UBeVmqtuNS/QZ8KcF8yoK
	5mmg==
X-Received: by 10.66.175.7 with SMTP id bw7mr11086820pac.155.1440111179661;
	Thu, 20 Aug 2015 15:52:59 -0700 (PDT)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id
	qe2sm5506290pdb.27.2015.08.20.15.52.58
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 20 Aug 2015 15:52:59 -0700 (PDT)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Thu, 20 Aug 2015 15:53:29 -0700
Message-Id: <a977ba40cc9f50d7fcbdc2e904032a95d7b42e4a.1440109497.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1440109497.git.avery.brian@gmail.com>
References: <cover.1440109497.git.avery.brian@gmail.com>
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>
Subject: [FIDO] [PATCH 1/1] remove master as a branch option from fido
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
X-List-Received-Date: Thu, 20 Aug 2015 22:53:03 -0000

From: Alexandru DAMIAN <alexandru.damian@intel.com>

Toaster isn't designed to be forward compatible. As such,
a release cannot build releases newer then it.

Particularly, "fido" cannot build "master", so we remove
"master" from the list of supported releases in "fido"

[YOCTO #8154]

Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
Signed-off-by: brian avery <avery.brian@gmail.com>
---
 conf/toasterconf.json | 23 ++++-------------------
 1 file changed, 4 insertions(+), 19 deletions(-)

diff --git a/conf/toasterconf.json b/conf/toasterconf.json
index c455276..264b70b 100644
--- a/conf/toasterconf.json
+++ b/conf/toasterconf.json
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


