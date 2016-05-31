Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EC6EE00DD5; Tue, 31 May 2016 11:11:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1422E00DD0
	for <poky@yoctoproject.org>; Tue, 31 May 2016 11:11:05 -0700 (PDT)
Received: by mail-lf0-f51.google.com with SMTP id k98so96434387lfi.1
	for <poky@yoctoproject.org>; Tue, 31 May 2016 11:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=SHcKpYeUuWqOchp1VQQnLUgZ9jJ8gfc426xcOwmuCcs=;
	b=w8PBId2q3PSu62kZWnZ9vn7C5YRWOgLVq7YRLQcI373bOz1NxFYXZ08MVX3sm8A+KY
	P9b71aMhIECf6qm+o0B7AoSV/3Zvnrr4QU3iGPRIjt2AA2JV9XkDg+FCXD+xMQEIplGb
	gXKw/Y8k05oT7wz5rWWhdkKkZ9KZnZOVU+guVLYkYAim/KlTCjLuI8RRKk/e70Y08xam
	Fph+UIlXjdPDIaQt28/klzH8AvT+e2EfXG9aFyK5p5gMPan3nigJ4UkggqYZTge50/oG
	ewOYvvBWPa2p+iRX4tL6yUmyMOCnHcDYvKRt18UGY/4984GmU1iX0xl4yalZFeK1eX7u
	5RGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=SHcKpYeUuWqOchp1VQQnLUgZ9jJ8gfc426xcOwmuCcs=;
	b=UgSl3kV4pN+961aNJteLrCi7O4PtbtajAWaXufcDIrXnzJq5AAhuC1xlieWYL5hEHf
	8OFlnIOP471uehGJOP8QPI9Mur3HKthXCBR+FOEk0i+l+656GrBDm4of2ZLflFFHcgRJ
	Ah8ivqDOTrbUkqkgYZ+PxY38X6F8+seweN+pxs1T23+B73XgpvYMAhvRoKpGlzMQLuTL
	u2gM5pN5xSMh+OdxV+jaQIy5CaXD+VkXC4qUKV6+AlUc8fx1DlqOL0WdOHpA46tZnaR5
	XtXSMjaj+Isbka/VMKBSmx+JZqlUfyhfQofk4C9S6PG4RJmYiOIJa3tFvjQVtybF5PBB
	3nig==
X-Gm-Message-State: ALyK8tLsjr1IxRI4MV8fq/fqp5ASRCo4xl00enDbM7CLyyonhMp6xqd2zgRJO0Zi8N845g==
X-Received: by 10.25.42.209 with SMTP id q200mr6240126lfq.99.1464718263421;
	Tue, 31 May 2016 11:11:03 -0700 (PDT)
Received: from localhost ([212.214.9.162]) by smtp.gmail.com with ESMTPSA id
	k66sm5486117lfe.32.2016.05.31.11.11.02
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 31 May 2016 11:11:02 -0700 (PDT)
From: Anders Darander <anders@chargestorm.se>
To: poky@yoctoproject.org
Date: Tue, 31 May 2016 20:11:00 +0200
Message-Id: <1464718260-8333-1-git-send-email-anders@chargestorm.se>
X-Mailer: git-send-email 2.8.1
Cc: Anders Darander <anders@chargestorm.se>
Subject: [PATCH] yocto-bsp: add BBG dtb
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
X-List-Received-Date: Tue, 31 May 2016 18:11:09 -0000

As 4.4 is the default kernel version, we can add the dtb for the beaglebon green
to the list of dtb's to generate.

Signed-off-by: Anders Darander <anders@chargestorm.se>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index ea50acc..ad14a47 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -25,7 +25,7 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "4.4%"
 
 KERNEL_IMAGETYPE = "zImage"
-KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
+KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
 KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
 SPL_BINARY = "MLO"
-- 
2.8.1


