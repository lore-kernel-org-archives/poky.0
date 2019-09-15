Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6397E00B1B; Sun, 15 Sep 2019 15:55:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B02E00A49
	for <poky@yoctoproject.org>; Sun, 15 Sep 2019 15:55:22 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id s17so11041833plp.2
	for <poky@yoctoproject.org>; Sun, 15 Sep 2019 15:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=2/cq/0/6808hB1+GJMZ5XNygVK4Bsdz7JW8DeaGS3gw=;
	b=GSNk+ywSqYxFpK9FiSNk2V1l1UdlLfyihX2+nFJYQyCvpvP5jbkc0OOSOn4VWDFMkR
	NxPpJ/FUKokXuv9X4C/1jiNMSN8Ud0wHv6Dxd5iqz+7vTRv4oN10LO2BZQTM6QB5MlJ9
	cI+KsfN7h7mobs0RX/ukrZ4pWP3GHBZfObBbW05OU7jxK/QT9BeeVG52JNE4dTTTvSXg
	Q9HJ9SFkGyH0wm/erwFmZM8idh9UaYe7eiShaxx5TLxHMG02cfX3iWC537wYPaV4E5T6
	8Q278TPvk5fI5aEmkIiyaUOna+oKSSkyl3yBpC6ndfrjZ4ujRjUxsmdb3IdyDJQjLL+a
	ZmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=2/cq/0/6808hB1+GJMZ5XNygVK4Bsdz7JW8DeaGS3gw=;
	b=HbOp+0M/MJnxpLbuEHT/MogMEMrj0xP+b2gguoGieva1IMVypc7gCokXlmsQwZCQh/
	iWkLFSdSwBw7kl/4y+3AvRujGQtBesikJvnPMRZ6pS8Ab9uQqKpzdCEo3xuHuHrmhjT6
	FQh+9K6drDh+Ec8wwe193p4V/JhCRAlQ4DZgHmmLRFcO+QumMnQFE98+MTDfvHb1H/vg
	by5VU1kSUxdLojTcK8H8MwW+HZ8JVpIWuRVAdM0u+b8/wiWb0DMbpIe1CpoYqd3UNuqP
	IphH+VzoewFjNplch6YRFrMS3aPxnxjy8jRFdD/G/sgZI2eRRt2J5AVhCVGVZTKpdacN
	m66g==
X-Gm-Message-State: APjAAAWLpLQyMbN5XDiGzdX1MR0KtcIRNNt6/zi1obLkBVpLTZkMgHy/
	xOj39do5q8ajZtjXeILzKdd3vtGLxhE=
X-Google-Smtp-Source: APXvYqyUbSMCQYAG/t7ss5sOKmAFpA0nhdDwLuxOJarb9CgBHLPky87LFv2KgZWoPRVcYqzgQMwYXw==
X-Received: by 2002:a17:902:8541:: with SMTP id
	d1mr61577444plo.39.1568588122029; 
	Sun, 15 Sep 2019 15:55:22 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:c1:3eb6:7e0:d804])
	by smtp.gmail.com with ESMTPSA id
	o9sm26251391pgv.19.2019.09.15.15.55.20 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 15 Sep 2019 15:55:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: poky@yoctoproject.org
Date: Sun, 15 Sep 2019 15:55:19 -0700
Message-Id: <1568588119-10867-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [Thud][PATCH] meta-yocto-bsp/4.14: update to 4.14.143
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
X-List-Received-Date: Sun, 15 Sep 2019 22:55:24 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 426757e..5277798 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
-SRCREV_machine_genericx86-64 ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
-SRCREV_machine_edgerouter ?= "d8fb40cd0e99325715c70aed6f361a8318097829"
-SRCREV_machine_beaglebone-yocto ?= "c67809688bd22cb4cb909bcf1a1045e6337c3229"
-SRCREV_machine_mpc8315e-rdb ?= "258ee8228e0a512c6dbe2a0dadcd9f030ba45964"
+SRCREV_machine_genericx86    ?= "bc9d4b045fa0254d14ef3a667a200f02cb9af755"
+SRCREV_machine_genericx86-64 ?= "bc9d4b045fa0254d14ef3a667a200f02cb9af755"
+SRCREV_machine_edgerouter ?= "326e296f237347e965a38acb34f09e594430b0c6"
+SRCREV_machine_beaglebone-yocto ?= "1b8c86329c9dbb10b8fcaeb2dceb75680994cd84"
+SRCREV_machine_mpc8315e-rdb ?= "f26672ec1f164b0f2a15d629128a91093f971bdd"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.14.98"
-LINUX_VERSION_genericx86-64 = "4.14.98"
-LINUX_VERSION_edgerouter = "4.14.98"
-LINUX_VERSION_beaglebone-yocto = "4.14.98"
-LINUX_VERSION_mpc8315e-rdb = "4.14.98"
+LINUX_VERSION_genericx86 = "4.14.143"
+LINUX_VERSION_genericx86-64 = "4.14.143"
+LINUX_VERSION_edgerouter = "4.14.143"
+LINUX_VERSION_beaglebone-yocto = "4.14.143"
+LINUX_VERSION_mpc8315e-rdb = "4.14.143"
-- 
2.7.4


