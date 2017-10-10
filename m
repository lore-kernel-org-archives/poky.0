Return-Path: <drew.moseley@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5989DE00D2D; Mon,  9 Oct 2017 18:59:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 884EEE00CFF
	for <poky@yoctoproject.org>; Mon,  9 Oct 2017 18:59:29 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id p126so42799210oih.9
	for <poky@yoctoproject.org>; Mon, 09 Oct 2017 18:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google; h=from:to:subject:date:message-id;
	bh=mMLFCfMqP2FwyU9IBHsRmrVZ5MKB3ic51F9QjVcw5+0=;
	b=JhkDXe+VSa2dMFHL/sAhOKcTCMjejWCdz+DD1zboEtT46gjawODevqHpF2BPZJ4v6Z
	Vj194VxKrgU+pcfCYoHroJT9vGfd67LFa5Ffa2SRXwgDmnarowjoFa/9gp3freCkF275
	0LSpN0uhWPou6VDUaFKYCKxSvqle5D2S6O4XSni+wgydMzaFdrvr3JGHNdgRPdPJ77gB
	tbmybBj+RnKqnusc42UfPPPVmAMdxgFq9vzjvEh8ctEtBbjsdyrDoTzu05o/XVBFIMoO
	dsaerWyhCKKicOp5kPJulcrpE6NHZZxyBolUMlgo7nsxuZjdJ6gvgXw59mAiG+NVNFav
	/AQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=mMLFCfMqP2FwyU9IBHsRmrVZ5MKB3ic51F9QjVcw5+0=;
	b=N+M1HXQQ9hXSd8v7+Sarl6VXHehVF5MTHyT+Q3hUqq/Jr6NySWeeYQmEJ0QLryxXYZ
	SgDb4fHlMnHAAIIClqyCFWLU4luQGdyJ4p/TF044GV1dtwc6LdygzWodNQSPNjXIpFuI
	VdyL+Vv0mqnO+ozmo4pQv2vuWSm0XKHPfsBNxf/MofkAHEmczw3hQizkFObkgiNcCtED
	6J5r2k4AhkKTzDEp338mTawntVX4qIKHpaO2pPUKlHooRYlV5uK7b5R3wucGbSxcOdx1
	9VVWYEjH22ME9kH99vGmSsJ4Dykp7LVToqawPc2NzLRPUmZm0ZPcHDiXBomLOEkjpSaP
	ab/A==
X-Gm-Message-State: AMCzsaV4j7GUhU+9/3mhY4WT3yy1C1A/F7Qtv9XLxjt6M1O87N5+W1RU
	TGqL1LeBNwqXEjFoUOE99heNYUlVYy8=
X-Google-Smtp-Source: AOwi7QB9VafQBOZiPRqTXh9Y3QJL/iCGLUhDCek0AGwm7BGE0IAInoez6AyMgt297pzb7aK3dd0P0g==
X-Received: by 10.157.2.162 with SMTP id 31mr744951otl.488.1507600768283;
	Mon, 09 Oct 2017 18:59:28 -0700 (PDT)
Received: from tobago.home.moseleynet.net (173-168-237-167.res.bhn.net.
	[173.168.237.167]) by smtp.googlemail.com with ESMTPSA id
	95sm5101147otl.76.2017.10.09.18.59.27 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 09 Oct 2017 18:59:27 -0700 (PDT)
From: drew.moseley@northern.tech
To: poky@yoctoproject.org
Date: Mon,  9 Oct 2017 21:59:08 -0400
Message-Id: <1507600748-27020-1-git-send-email-drew.moseley@northern.tech>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] beaglebone: Find /boot partition on mmcblk0
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
X-List-Received-Date: Tue, 10 Oct 2017 01:59:30 -0000

From: Drew Moseley <drew.moseley@northern.tech>

After commit edcf39820f94c84b29c95a0d7b16b8d36857e87b the beaglebone
builds fail to mount the boot partition as it is specified in
/etc/fstab with the device node /dev/mmcblkp1.  With systemd in
particular this is considered an error and the system drops into
emergency mode.

Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
---
 meta-yocto-bsp/wic/beaglebone.wks | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/wic/beaglebone.wks b/meta-yocto-bsp/wic/beaglebone.wks
index 0c09a95..967cad7 100644
--- a/meta-yocto-bsp/wic/beaglebone.wks
+++ b/meta-yocto-bsp/wic/beaglebone.wks
@@ -2,5 +2,5 @@
 # long-description: Creates a partitioned SD card image for Beaglebone.
 # Boot files are located in the first vfat partition.
 
-part /boot --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot --active --align 4 --size 16
+part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16
 part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4
-- 
2.7.4


