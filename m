Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A01FFE00E29; Thu, 15 Dec 2016 23:32:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4521DE00E27
	for <poky@yoctoproject.org>; Thu, 15 Dec 2016 23:32:50 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id t79so21098592wmt.0
	for <poky@yoctoproject.org>; Thu, 15 Dec 2016 23:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=JM2h4rZt9pZsLp9CY4gws7UToRPeQxEyCk7z4Bfi91g=;
	b=PBkLRWgUZVLRctktS55718VuM3NugLpX3p82ETs3kgfb93sTIYMhY8bHq+kCxXVItY
	0xOpfyLmBLTx7oF1ymMUtx8T2fiS0XwemasqS4Lhj4TEaGaxiscKjYXeCWnTh4gc1+uD
	p8byE93+8Hmp/eS8oBtB0D6b+Qu8cWWKJRZ5Dvwiz+fzeKdIVVjpi/n7TY9b6/ZYFkZO
	JxieGIOBnVrLEyeCoItHrsYtCKJCtUY0MCDyzFuhc6dHmDhR8Yqh+JWGE/hyfbe29ZSy
	btO3XkjLFcLBOnxadQFUo5HhEi79Dx21ePNlUfy78yCw4Xv8TZ+5YGIWUJC7pukyMqhz
	OziA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=JM2h4rZt9pZsLp9CY4gws7UToRPeQxEyCk7z4Bfi91g=;
	b=rlS8IfcNKqjiNGghICvp07yGi8nwNdYC5tkr1WL0hF4oXzU8ZAoUlffBl4LpOISyOT
	Zu9Z0KXASd3yk46izP/uB8hs1K2avj9ikyB6a9cb+JpvTL39BXZW6pLsMVo9t91pgp/X
	vrwARR3pcLT0Sq4We1JEjPf2Gi8DsT+B+6hJnTh9VGDggmv6QilXPu7+8QMAi4vC/wio
	VU4vVlTtgXZUQiYZMgU36SIfhb26K1eZHR+hF9PjMUph5pMFSXVlgyt1BSSGF0WLfrcI
	ww8cwlbp77hn9PBWiozIo7RQHoer8LybZKe7V55DJm+q/MljlNI4biaSQnHUj8fiiVxd
	9Vrw==
X-Gm-Message-State: AKaTC0098OzhDk5OVWkgxfOAK8ONFdNSzuvNKRP7aYttiSeM9nvAh9c+l9v5BjktCKyBFQ==
X-Received: by 10.25.234.145 with SMTP id y17mr424193lfi.25.1481873569421;
	Thu, 15 Dec 2016 23:32:49 -0800 (PST)
Received: from kristian-mender.cfengine.com ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	b76sm1103859lfg.41.2016.12.15.23.32.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 Dec 2016 23:32:48 -0800 (PST)
From: Kristian Amlie <kristian.amlie@mender.io>
To: poky@yoctoproject.org
Date: Fri, 16 Dec 2016 08:32:48 +0100
Message-Id: <1481873568-13550-1-git-send-email-kristian.amlie@mender.io>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH v1] u-boot/beaglebone: Select Beaglebone Black target specifically.
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
X-List-Received-Date: Fri, 16 Dec 2016 07:32:53 -0000

The am335x_evm_config target has a subtle problem which is not present
in the am335x_boneblack_config target: When booting from an external
MMC card, the internal MMC is not accessible using the former target.

This problem was introduced in U-Boot in commit 80b24fcd3083515e6b961,
due to the addition of the CONFIG_DM_MMC option, and the
am335x_boneblack_config target does not have this problem.

Signed-off-by: Kristian Amlie <kristian.amlie@mender.io>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index fc6a527..24a95b4 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -31,7 +31,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
-UBOOT_MACHINE = "am335x_evm_config"
+UBOOT_MACHINE = "am335x_boneblack_config"
 UBOOT_ENTRYPOINT = "0x80008000"
 UBOOT_LOADADDRESS = "0x80008000"
 
-- 
2.7.4


