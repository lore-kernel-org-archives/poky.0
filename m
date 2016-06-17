Return-Path: <elliot.smith@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFA26E00DC9; Fri, 17 Jun 2016 03:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.232.183.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 404 seconds by postgrey-1.32 at yocto-www;
	Fri, 17 Jun 2016 03:33:57 PDT
Received: from swiss-egress-1.mailchannels.ch
	(nov-007-i607.relay.mailchannels.net [46.232.183.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FCA6E00D8A
	for <poky@yoctoproject.org>; Fri, 17 Jun 2016 03:33:56 -0700 (PDT)
X-Sender-Id: wwwh|x-authuser|elliot@townx.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 193B6120B2D;
	Fri, 17 Jun 2016 10:28:22 +0000 (UTC)
Received: from uscentral428.accountservergroup.com
	(ip-10-21-3-36.us-west-2.compute.internal [10.21.3.36])
	by relay.mailchannels.net (Postfix) with ESMTPA id 5E1B412088B;
	Fri, 17 Jun 2016 10:28:21 +0000 (UTC)
X-Sender-Id: wwwh|x-authuser|elliot@townx.org
Received: from uscentral428.accountservergroup.com ([TEMPUNAVAIL].
	[10.135.9.54]) (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.14); Fri, 17 Jun 2016 10:28:22 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: wwwh|x-authuser|elliot@townx.org
X-MailChannels-Auth-Id: wwwh
X-MC-Loop-Signature: 1466159301660:1206457210
X-MC-Ingress-Time: 1466159301659
Received: from [176.251.19.34] (port=40092 helo=localhost.localdomain)
	by uscentral428.accountservergroup.com with esmtpa (Exim 4.87)
	(envelope-from <elliot.smith@intel.com>)
	id 1bDr2j-0002rv-N2; Fri, 17 Jun 2016 06:30:30 -0400
From: Elliot Smith <elliot.smith@intel.com>
To: poky@yoctoproject.org
Date: Fri, 17 Jun 2016 11:28:09 +0100
Message-Id: <1466159289-12518-1-git-send-email-elliot.smith@intel.com>
X-Mailer: git-send-email 2.7.4
X-AuthUser: elliot@townx.org
Subject: [PATCH][jethro] toasterconf.json: remove master release
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
X-List-Received-Date: Fri, 17 Jun 2016 10:34:18 -0000

Toaster jethro is no longer able to build the master release
due to the move to Python 3.

Remove the master release from toasterconf.json and make
jethro the default release for Toaster projects.

Signed-off-by: Elliot Smith <elliot.smith@intel.com>
---
 meta-yocto/conf/toasterconf.json | 21 +++------------------
 1 file changed, 3 insertions(+), 18 deletions(-)

diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf.json
index 3df1703..d438f8d 100644
--- a/meta-yocto/conf/toasterconf.json
+++ b/meta-yocto/conf/toasterconf.json
@@ -39,24 +39,18 @@
             "name": "OpenEmbedded",
             "sourcetype": "layerindex",
             "apiurl": "http://layers.openembedded.org/layerindex/api/",
-            "branches": ["master", "jethro" ,"fido"]
+            "branches": ["jethro", "fido"]
         },
         {
             "name": "Imported layers",
             "sourcetype": "imported",
             "apiurl": "",
-            "branches": ["master", "jethro","fido", "HEAD"]
+            "branches": ["jethro", "fido", "HEAD"]

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
             "name": "jethro",
             "giturl": "remote:origin",
             "branch": "jethro",
@@ -76,19 +70,10 @@
         }
     ],

-    "defaultrelease": "master",
+    "defaultrelease": "jethro",

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
             "name": "jethro",
             "description": "Yocto Project 2.0 Jethro",
             "bitbake": "jethro",
--
2.7.4


