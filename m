Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78B7EE00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 10:15:29 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id q57so668147wes.40
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 10:15:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=DH0xhNyrCUqNfLAh96HBNcaDVcMX9lqet109tW1aVaw=;
	b=SNsQ4eJpmzSDJUGWBE+n5mPu60JWGd899KClZjczpfeDHs8R3Mvj0mpmAcP2VA3fqG
	+zSbv5y2fDwmuZXwRQRNNi9lKKC6wPYZ+K+WqKcykklJz8DxlsdR9rG1NgNdCGzqTF8u
	x2CzD5z6PmZjibrsBuUEwmRCfSlOzcZ6ujR6Jz9RoLmCRi54Ycfh8Y++FUYd8T5aRtub
	BdCY9GyJ9NmNcmzhVusVuwfy8SETYSsSe16dhveUqXgr5WcT3WnRwcP/nhGGQEbk40Q4
	uOcTwn/1UTW+wokfG/UfVT9myqe5Vv6bi8JUGrzWDVRbHA0s6CYwWHnzlHThPyWP+oz2
	C1KQ==
X-Gm-Message-State: ALoCoQl94YO7lK02lG2nq7ZwDr1jP22sNJ7bJzMmpCfOKd4I2awpkqZnWX8mpiZ2SAScFhEnOQDg
X-Received: by 10.180.185.97 with SMTP id fb1mr6288746wic.61.1377105328292;
	Wed, 21 Aug 2013 10:15:28 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id a8sm32447959wie.6.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 21 Aug 2013 10:15:27 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Aug 2013 18:15:20 +0100
Message-Id: <1377105320-17292-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1377105320-17292-1-git-send-email-ross.burton@intel.com>
References: <1377105320-17292-1-git-send-email-ross.burton@intel.com>
Subject: [PATCH 2/2] genericx86: disable USB autosuspend
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

USB autosuspend doesn't reliably work with arbitrary hardware, so don't enable
it.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index e144754..042f206 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -31,8 +31,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware v86d
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
-APPEND += "usbcore.autosuspend=1"
-
 GLIBC_ADDONS = "nptl"
 
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
-- 
1.7.10.4


