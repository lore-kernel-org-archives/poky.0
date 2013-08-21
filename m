Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02698E00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 10:15:28 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id b13so643155wgh.7
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 10:15:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=K+OuBBE/K6U2hmQdn/SFnK9b3WBa1poKRVF/n/XaMPE=;
	b=F/2ugjX5/IsYbFVXJf/4LDg7t3QQeXKymGrgQmGP/7Ae/DMwRmMxlj4a4J8jvTqM9V
	00oGYn8AHTvOQqs2gHjRw7yssUSlHnWQVxDw/pBxJPskT4IApNFM9XLgz7XiRs+ISQ08
	wQcouLON9kGDXJYktoqRedC189XjD1EsapwxWXLcFrlZ5zt6WL4xZqCDTyH/EVMyMoei
	ofhTPjOQtkw4ze6zOHJTkcki9f7nSZRmYqrEc9CAcGgalbYMgMFU/Sy8B5oMZyj6i3BR
	d8TXJl9ndZ7pbjaTmkbp6x/o5hZfsUmgVWYVS/jcw4H224KLmadAwswX+iCaVPCWw38g
	Mdyw==
X-Gm-Message-State: ALoCoQnXiYOMd974lra2jfE59qz696VGuahkqZK4xlspoi1HwQbsB+3lQuQUvuGlcXQ4PKv9zH8o
X-Received: by 10.194.219.38 with SMTP id pl6mr2646139wjc.47.1377105326754;
	Wed, 21 Aug 2013 10:15:26 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id a8sm32447959wie.6.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 21 Aug 2013 10:15:26 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Aug 2013 18:15:19 +0100
Message-Id: <1377105320-17292-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH 1/2] genericx86: add v86d to machine recommends so Vesa framebuffer works
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
X-List-Received-Date: Wed, 21 Aug 2013 17:15:31 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 88464fa..e144754 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -27,7 +27,7 @@ XSERVER ?= "xserver-xorg \
 
 #MACHINE_EXTRA_RDEPENDS = "rt2860"
 
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware"
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware v86d"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
-- 
1.7.10.4


