Return-Path: <michael.g.wood@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04790E00B45; Wed, 23 Nov 2016 04:26:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.41 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FDEAE00A6B
	for <poky@yoctoproject.org>; Wed, 23 Nov 2016 04:26:48 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id a197so75656204wmd.0
	for <poky@yoctoproject.org>; Wed, 23 Nov 2016 04:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=LslritKkO+huk9n1biKEg65J2o1dUvrLx9OlLbldu0c=;
	b=BK4yVndXqV+gDxP9LYrZRUswUEr3gGNHFta/EtXKKsdFA/pesq11OdlaJWr6Bv0Yn4
	T56/Qy6GfiR3MD+RM7vbxV/pwCsMiOmAWH1i+pcTfUWCw0FuUB/2OTkTZhEayUczoL/G
	XI8Sk9C3mL9D6m/sCylBSweYx9N0Um+VHsKFLNrqJ7qNc+nQk3uYA7IuAD8lRzQ7aOWG
	jfB8b+oPSLTfZRr7tGl/x4qZAX+wDedRgqhJCsZIyobEdHeejL39t614xE1eAMGEs/3z
	6Mrt9P/Ee4dPTyQjf28W9/D1GHi6yWI+Ltwqpa+tVnJEQPvWiIpZZR7Nik85KaHs7oS9
	FPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=LslritKkO+huk9n1biKEg65J2o1dUvrLx9OlLbldu0c=;
	b=Ba1vQvA+B0FkoCuOoNCLP9oD6F964xbGk28K8CtrzWORkUl1RN8vYRDDvExbx7YoYz
	SRINeY4AD+WY2OHp6csfEixR2V0b6QVnAs6emWPGHyu16W7z/ROvPXeaa3DkipFx2edC
	FaLqn+tGAI4s780THS47RdSitlxyzqGxYn7BJzruTXLPEZAg6Hz0wycYmcWvIS4DLhWV
	jr8FBQLxNkvxG6Ji6tprTOeLhQH82LFhUuzt51kGynmjekaf+Y1L5qj2qgpVi9lG94zB
	VGk6gaByPCnicSnUk5cfbEeI7dUzzgpJc7Y2UdejMMsV4CYb7wXKpmnTkOWYReLYtZNs
	UpsA==
X-Gm-Message-State: AKaTC016fSPQaPKeh49ZX6tUV13LaZvbGv1zgPAUIlzrISwkA0ecBwauGLKopyH7l/Xk4FAd
X-Received: by 10.194.22.41 with SMTP id a9mr3501076wjf.30.1479904007087;
	Wed, 23 Nov 2016 04:26:47 -0800 (PST)
Received: from orion.home (host31-54-69-88.range31-54.btcentralplus.com.
	[31.54.69.88]) by smtp.gmail.com with ESMTPSA id
	u17sm2513093wma.24.2016.11.23.04.26.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 23 Nov 2016 04:26:46 -0800 (PST)
From: Michael Wood <michael.g.wood@intel.com>
To: poky@yoctoproject.org
Date: Wed, 23 Nov 2016 12:26:44 +0000
Message-Id: <1479904004-7554-1-git-send-email-michael.g.wood@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Michael Wood <michael.g.wood@intel.com>, toaster@yoctoproject.org
Subject: [PATCH] conf: conf: Remove redundant toasterconf.json file
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
X-List-Received-Date: Wed, 23 Nov 2016 12:26:51 -0000

We no longer use this file to start toaster. Toaster's configuration is
setup by Toaster itself using the standard Django data fixtures.

Signed-off-by: Michael Wood <michael.g.wood@intel.com>
---
 meta-poky/conf/toasterconf.json | 90 -----------------------------------------
 1 file changed, 90 deletions(-)
 delete mode 100644 meta-poky/conf/toasterconf.json

diff --git a/meta-poky/conf/toasterconf.json b/meta-poky/conf/toasterconf.json
deleted file mode 100644
index 93fb929..0000000
--- a/meta-poky/conf/toasterconf.json
+++ /dev/null
@@ -1,90 +0,0 @@
-{
-    "config": {
-        "MACHINE"      : "qemux86",
-        "DISTRO"       : "poky",
-        "DL_DIR"       : "${TOPDIR}/../downloads",
-        "IMAGE_FSTYPES": "ext3 jffs2 tar.bz2",
-        "IMAGE_INSTALL_append": "",
-        "PACKAGE_CLASSES": "package_rpm",
-        "SSTATE_DIR"   : "${TOPDIR}/../sstate-cache"
-    },
-    "layersources": [
-        {
-            "name": "Local Yocto Project",
-            "sourcetype": "local",
-            "apiurl": "../../",
-            "branches": ["HEAD" ],
-            "layers": [
-                {
-                    "name": "openembedded-core",
-                    "local_path": "meta",
-                    "vcs_url": "remote:origin",
-                    "dirpath": "meta"
-                },
-                {
-                    "name": "meta-poky",
-                    "local_path": "meta-poky",
-                    "vcs_url": "remote:origin",
-                    "dirpath": "meta-poky"
-                },
-                {
-                    "name": "meta-yocto-bsp",
-                    "local_path": "meta-yocto-bsp",
-                    "vcs_url": "remote:origin",
-                    "dirpath": "meta-yocto-bsp"
-                }
-
-            ]
-        },
-        {
-            "name": "OpenEmbedded",
-            "sourcetype": "layerindex",
-            "apiurl": "http://layers.openembedded.org/layerindex/api/",
-            "branches": ["master"]
-        },
-        {
-            "name": "Imported layers",
-            "sourcetype": "imported",
-            "apiurl": "",
-            "branches": ["master", "HEAD"]
-
-        }
-    ],
-    "bitbake" : [
-        {
-            "name": "master",
-            "giturl": "remote:origin",
-            "branch": "master",
-            "dirpath": "bitbake"
-        },
-        {
-            "name": "HEAD",
-            "giturl": "remote:origin",
-            "branch": "HEAD",
-            "dirpath": "bitbake"
-        }
-    ],
-
-    "defaultrelease": "master",
-
-    "releases": [
-        {
-            "name": "master",
-            "description": "Yocto Project master",
-            "bitbake": "master",
-            "branch": "master",
-            "defaultlayers": [ "openembedded-core", "meta-poky", "meta-yocto-bsp"],
-            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
-            "helptext": "Toaster will run your builds using the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
-        },
-        {
-            "name": "local",
-            "description": "Local Yocto Project",
-            "bitbake": "HEAD",
-            "branch": "HEAD",
-            "defaultlayers": [ "openembedded-core", "meta-poky", "meta-yocto-bsp"],
-            "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
-            "helptext": "Toaster will run your builds with the version of the Yocto Project you have cloned or downloaded to your computer."
-        }
-    ]
-}
-- 
2.7.4


