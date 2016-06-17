Return-Path: <elliot.smith@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53F9EE00DD8; Fri, 17 Jun 2016 03:39:44 -0700 (PDT)
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
Received: from swiss-egress-1.mailchannels.ch
	(nov-007-i607.relay.mailchannels.net [46.232.183.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C432E00DDA
	for <poky@yoctoproject.org>; Fri, 17 Jun 2016 03:39:19 -0700 (PDT)
X-Sender-Id: wwwh|x-authuser|elliot@townx.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 55EC71BC7F2;
	Fri, 17 Jun 2016 10:32:50 +0000 (UTC)
Received: from uscentral428.accountservergroup.com
	(ip-10-42-131-234.us-west-2.compute.internal [10.42.131.234])
	by relay.mailchannels.net (Postfix) with ESMTPA id 5A39E1699BC;
	Fri, 17 Jun 2016 10:32:49 +0000 (UTC)
X-Sender-Id: wwwh|x-authuser|elliot@townx.org
Received: from uscentral428.accountservergroup.com
	(uscentral428.accountservergroup.com [10.21.13.78])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.14); Fri, 17 Jun 2016 10:32:50 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: wwwh|x-authuser|elliot@townx.org
X-MailChannels-Auth-Id: wwwh
X-MC-Loop-Signature: 1466159569775:3098873087
X-MC-Ingress-Time: 1466159569775
Received: from [176.251.19.34] (port=40110 helo=localhost.localdomain)
	by uscentral428.accountservergroup.com with esmtpa (Exim 4.87)
	(envelope-from <elliot.smith@intel.com>)
	id 1bDr78-000534-Gq; Fri, 17 Jun 2016 06:35:02 -0400
From: Elliot Smith <elliot.smith@intel.com>
To: poky@yoctoproject.org
Date: Fri, 17 Jun 2016 11:32:33 +0100
Message-Id: <1466159553-12748-1-git-send-email-elliot.smith@intel.com>
X-Mailer: git-send-email 2.7.4
X-AuthUser: elliot@townx.org
Subject: [PATCH][v2] toasterconf: exclude releases Toaster can't build
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
X-List-Received-Date: Fri, 17 Jun 2016 10:39:44 -0000

From: Ed Bartosh <ed.bartosh@linux.intel.com>

Due to the switch to Python 3, Toaster master can only build
with master and not with earlier releases.

Removed references to "jethro" and "krogoth" from toasterconf.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
Signed-off-by: Elliot Smith <elliot.smith@intel.com>
---
 meta-poky/conf/toasterconf.json | 34 ++--------------------------------
 1 file changed, 2 insertions(+), 32 deletions(-)

diff --git a/meta-poky/conf/toasterconf.json b/meta-poky/conf/toasterconf.json
index 606aac7..93fb929 100644
--- a/meta-poky/conf/toasterconf.json
+++ b/meta-poky/conf/toasterconf.json
@@ -40,13 +40,13 @@
             "name": "OpenEmbedded",
             "sourcetype": "layerindex",
             "apiurl": "http://layers.openembedded.org/layerindex/api/",
-            "branches": ["master", "jethro", "krogoth"]
+            "branches": ["master"]
         },
         {
             "name": "Imported layers",
             "sourcetype": "imported",
             "apiurl": "",
-            "branches": ["master", "jethro", "krogoth", "HEAD"]
+            "branches": ["master", "HEAD"]

         }
     ],
@@ -58,18 +58,6 @@
             "dirpath": "bitbake"
         },
         {
-            "name": "jethro",
-            "giturl": "remote:origin",
-            "branch": "jethro",
-            "dirpath": "bitbake"
-        },
-        {
-            "name": "krogoth",
-            "giturl": "remote:origin",
-            "branch": "krogoth",
-            "dirpath": "bitbake"
-        },
-        {
             "name": "HEAD",
             "giturl": "remote:origin",
             "branch": "HEAD",
@@ -90,24 +78,6 @@
             "helptext": "Toaster will run your builds using the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
         },
         {
-            "name": "jethro",
-            "description": "Yocto Project 2.0 Jethro",
-            "bitbake": "jethro",
-            "branch": "jethro",
-            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
-            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
-            "helptext": "Toaster will run your builds with the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=jethro\">Yocto Project 2.0 \"Jethro\"</a> branch."
-        },
-        {
-            "name": "krogoth",
-            "description": "Yocto Project 2.1 Krogoth",
-            "bitbake": "krogoth",
-            "branch": "krogoth",
-            "defaultlayers": [ "openembedded-core", "meta-poky", "meta-yocto-bsp"],
-            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
-            "helptext": "Toaster will run your builds with the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=krogoth\">Yocto Project 2.1 \"Krogoth\"</a> branch."
-        },
-        {
             "name": "local",
             "description": "Local Yocto Project",
             "bitbake": "HEAD",
--
2.7.4


