Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09D39E00404; Wed,  2 Dec 2015 10:43:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA04CE00321
	for <poky@yoctoproject.org>; Wed,  2 Dec 2015 10:43:41 -0800 (PST)
Received: by pabfh17 with SMTP id fh17so49546047pab.0
	for <poky@yoctoproject.org>; Wed, 02 Dec 2015 10:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Eo8d88yr+hykIGde31T1Hzc0395VOumzhnlUhoiRBXY=;
	b=teNnwO+HjCF2XfBV3uSq3Noj+JsBI2oR/as2aursw8mjIV7kZR0r77y2YuATRgk/De
	7RoO+Llq3ltWLz7dm7zac5c2HkNbBnl1mhiP7xeofz+A4unNjCZ3Fv3tq1O8Ja+54Zu6
	mxPCHgTDRe0y9opCx5auD1Id0E6HDw/sHCwmxuGIGOHiieXRl6enMjOesrU6c5ysPLVw
	t14yZEYuRfu/maSxPkdQOZo5UI10CKqT6afQ/r8lgMQC/7uD+81wGRhjP1yhycOX9pZP
	cupysQNtIQKP5w4ByzJ6uA6I1fETIWi7tzLEDMjJ+gRICG0KA+QKzMx/j5GApW2b2Iw6
	GhAw==
X-Received: by 10.66.154.129 with SMTP id vo1mr6843280pab.152.1449081820883;
	Wed, 02 Dec 2015 10:43:40 -0800 (PST)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id
	r20sm5780428pfa.93.2015.12.02.10.43.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 02 Dec 2015 10:43:40 -0800 (PST)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Wed,  2 Dec 2015 10:47:11 -0800
Message-Id: <53223ef03a54b6a88315165a70d4a5f7f0aa61e0.1449081916.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1449081916.git.avery.brian@gmail.com>
References: <cover.1449081916.git.avery.brian@gmail.com>
Subject: [PATCH 1/1] meta-yocto/conf/toasterconf.json: remove SDKMACHINE variable as it no longer used
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
X-List-Received-Date: Wed, 02 Dec 2015 18:43:43 -0000

Signed-off-by: brian avery <avery.brian@gmail.com>
---
 meta-yocto/conf/toasterconf.json | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf.json
index 3df1703..3f79f42 100644
--- a/meta-yocto/conf/toasterconf.json
+++ b/meta-yocto/conf/toasterconf.json
@@ -4,8 +4,7 @@
         "DISTRO"       : "poky",
         "IMAGE_FSTYPES": "ext3 jffs2 tar.bz2",
         "IMAGE_INSTALL_append": "",
-        "PACKAGE_CLASSES": "package_rpm",
-        "SDKMACHINE"   : "x86_64"
+        "PACKAGE_CLASSES": "package_rpm"
     },
     "layersources": [
         {
-- 
1.9.1


