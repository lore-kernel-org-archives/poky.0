Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2E39E008EC; Thu, 27 Nov 2014 08:45:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0AC8E008CC
	for <poky@yoctoproject.org>; Thu, 27 Nov 2014 08:45:21 -0800 (PST)
Received: by mail-wi0-f173.google.com with SMTP id r20so16335648wiv.0
	for <poky@yoctoproject.org>; Thu, 27 Nov 2014 08:45:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=u8b73Sxbo2hdVXURrbmf+r34LXmQd3wjk9PToLzvk3Y=;
	b=kc8bDvksupHr77JKCmpmCuPsfELQCLIOL96sjVaMUy8jYYqRhl6y34CnZcryM4yXGB
	BajM4e1kimTvIGMOb3NrCwfntPYGu5hL88XLUBbPJbBfYDNrA0FPyVggKcu1AgbVDQ7L
	56PJZO7g8SpD8qYYAIlC2vGNH8Pk4P1HV6/ymWYoOHaQDU3ZHVtQoaECeo5tt8rbLbNG
	MK1yBTa4XQ8jMV7WYO5tRli1efIxmDCtiY3Wj0OX0OEzmgM4Acv2kn+7hFvTuTyN8YEs
	Aodx2jE05FpAahTaWZLT2Ret7obDrYMtRT4gmQ5Og6X88RurJbkW1//HN+/55aBgI08i
	sZ4w==
X-Gm-Message-State: ALoCoQkwoQdCuUEYcNXsgupvG9MoUcJ5eVpemgHUKQd3kykpfdJwz06slZ10ZtUc4vTnl8TpokGP
X-Received: by 10.194.203.105 with SMTP id kp9mr60911277wjc.81.1417106721290; 
	Thu, 27 Nov 2014 08:45:21 -0800 (PST)
Received: from adamian-desk.local ([83.217.123.106])
	by mx.google.com with ESMTPSA id
	bo1sm11438298wjc.18.2014.11.27.08.45.19 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Nov 2014 08:45:20 -0800 (PST)
Received: by adamian-desk.local (Postfix, from userid 1000)
	id 798E5563B9C; Thu, 27 Nov 2014 16:45:19 +0000 (GMT)
From: Alex DAMIAN <alexandru.damian@intel.com>
To: poky@yoctoproject.org
Date: Thu, 27 Nov 2014 16:45:17 +0000
Message-Id: <1417106717-27255-1-git-send-email-alexandru.damian@intel.com>
X-Mailer: git-send-email 1.9.1
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>
Subject: [PATCH] toasterconf: fix localpath values
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
X-List-Received-Date: Thu, 27 Nov 2014 16:45:23 -0000

From: Alexandru DAMIAN <alexandru.damian@intel.com>

The toasterconf.json file listed wrong local path values
for meta-yocto and meta-yocto-bsp. This patch fixes the values.

Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
---
 meta-yocto/conf/toasterconf.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf.json
index fa333de..e0a07b9 100644
--- a/meta-yocto/conf/toasterconf.json
+++ b/meta-yocto/conf/toasterconf.json
@@ -15,13 +15,13 @@
                 },
                 {
                     "name": "meta-yocto",
-                    "local_path": "meta",
+                    "local_path": "meta-yocto",
                     "vcs_url": "remote:origin",
                     "dirpath": "meta-yocto"
                 },
                 {
                     "name": "meta-yocto-bsp",
-                    "local_path": "meta",
+                    "local_path": "meta-yocto-bsp",
                     "vcs_url": "remote:origin",
                     "dirpath": "meta-yocto-bsp"
                 }
-- 
1.9.1


