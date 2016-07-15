Return-Path: <elliot.smith@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A500CE00F39; Fri, 15 Jul 2016 06:08:29 -0700 (PDT)
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
Received: from nov-007-i607.relay.mailchannels.net
	(nov-007-i607.relay.mailchannels.net [46.232.183.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A52B5E0073D
	for <poky@yoctoproject.org>; Fri, 15 Jul 2016 06:08:23 -0700 (PDT)
X-Sender-Id: wwwh|x-authuser|elliot@townx.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id C2419E07FD;
	Fri, 15 Jul 2016 12:59:02 +0000 (UTC)
Received: from uscentral428.accountservergroup.com
	(ip-10-229-10-199.us-west-2.compute.internal [10.229.10.199])
	by relay.mailchannels.net (Postfix) with ESMTPA id 197CCE0A18;
	Fri, 15 Jul 2016 12:58:59 +0000 (UTC)
X-Sender-Id: wwwh|x-authuser|elliot@townx.org
Received: from uscentral428.accountservergroup.com
	(uscentral428.accountservergroup.com [10.92.147.53])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.16); Fri, 15 Jul 2016 12:59:02 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: wwwh|x-authuser|elliot@townx.org
X-MailChannels-Auth-Id: wwwh
X-MC-Loop-Signature: 1468587542317:3138150346
X-MC-Ingress-Time: 1468587542317
Received: from [176.253.151.47] (port=52004 helo=localhost.localdomain)
	by uscentral428.accountservergroup.com with esmtpa (Exim 4.87)
	(envelope-from <elliot.smith@intel.com>)
	id 1bO2hi-0008U2-8A; Fri, 15 Jul 2016 08:58:54 -0400
From: Elliot Smith <elliot.smith@intel.com>
To: poky@yoctoproject.org
Date: Fri, 15 Jul 2016 13:58:44 +0100
Message-Id: <1468587524-23241-1-git-send-email-elliot.smith@intel.com>
X-Mailer: git-send-email 2.7.4
X-AuthUser: elliot@townx.org
Cc: Belen Barros Pena <belen.barros.pena@linux.intel.com>
Subject: [PATCH][krogoth] toaster: toasterconf.json Remove master release
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
X-List-Received-Date: Fri, 15 Jul 2016 13:08:29 -0000

From: Belen Barros Pena <belen.barros.pena@linux.intel.com>

With the move to python3 completed in master, Toaster 2.1 no longer
builds the master branch. This patch removes the master release from the
Yocto Project toaster configuration file so that the master branch is
not listed as an option to select when creating a project.

Signed-off-by: Belen Barros Pena <belen.barros.pena@linux.intel.com>
Signed-off-by: Elliot Smith <elliot.smith@intel.com>
---
 meta-poky/conf/toasterconf.json | 21 +++------------------
 1 file changed, 3 insertions(+), 18 deletions(-)

diff --git a/meta-poky/conf/toasterconf.json b/meta-poky/conf/toasterconf.json
index 606aac7..79f801b 100644
--- a/meta-poky/conf/toasterconf.json
+++ b/meta-poky/conf/toasterconf.json
@@ -40,24 +40,18 @@
             "name": "OpenEmbedded",
             "sourcetype": "layerindex",
             "apiurl": "http://layers.openembedded.org/layerindex/api/",
-            "branches": ["master", "jethro", "krogoth"]
+            "branches": ["jethro", "krogoth"]
         },
         {
             "name": "Imported layers",
             "sourcetype": "imported",
             "apiurl": "",
-            "branches": ["master", "jethro", "krogoth", "HEAD"]
+            "branches": ["jethro", "krogoth", "HEAD"]
 
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
@@ -77,19 +71,10 @@
         }
     ],
 
-    "defaultrelease": "master",
+    "defaultrelease": "krogoth",
 
     "releases": [
         {
-            "name": "master",
-            "description": "Yocto Project master",
-            "bitbake": "master",
-            "branch": "master",
-            "defaultlayers": [ "openembedded-core", "meta-poky", "meta-yocto-bsp"],
-            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
-            "helptext": "Toaster will run your builds using the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
-        },
-        {
             "name": "jethro",
             "description": "Yocto Project 2.0 Jethro",
             "bitbake": "jethro",
-- 
2.7.4


