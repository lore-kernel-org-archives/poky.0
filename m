Return-Path: <djszapi@archlinux.us>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F9FDE002E2
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 09:01:26 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id j13so3979409wgh.3
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 09:01:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=xRJHcA7mb+E71QgetaXoCSF9abZ17yPNM9z1BwoPuNg=;
	b=j9nJ27Sc4aQDHm/tWjutpBr5sBzeNRtQZwzLdof2eXmUEt/kuh4dtQUzQZp1TYSWNu
	CHdRyWeq2dvuesusZ6tb6NmNW+5RDgmMep9UhttdFiy5T4gFetMNWAaj3wtE2LuP/4+w
	dPTnhCWIhYLrM5lDlJ0MMySMTbjc+X5xd7/4V0oh/23quDG0d3FL37Q6fSDfmdnmyN0B
	gFwdg3umQz23FWzvD2dmFYfvS6w5iFu+v0UjIMW+3pgx4ufltfvFWqpzBriZFYkdDodZ
	t4vD7oN4QJBmkMUIAmdoz3nJyMsU51AcOu3+4fitryLX5NQ4QH1Kgqv8jRiDgpsWi/T2
	TL/w==
X-Received: by 10.180.12.243 with SMTP id b19mr1476127wic.6.1375200086019;
	Tue, 30 Jul 2013 09:01:26 -0700 (PDT)
Received: from djszapi@archlinux.us ([212.44.19.228])
	by mx.google.com with ESMTPSA id b13sm9404062wic.9.2013.07.30.09.01.23
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 30 Jul 2013 09:01:25 -0700 (PDT)
Sender: Laszlo Papp <djszapi@archlinux.us>
Received: by djszapi@archlinux.us (sSMTP sendmail emulation);
	Tue, 30 Jul 2013 16:59:37 +0100
From: Laszlo Papp <lpapp@kde.org>
To: poky@yoctoproject.org
Date: Tue, 30 Jul 2013 16:59:36 +0100
Message-Id: <1375199976-3350-1-git-send-email-lpapp@kde.org>
X-Mailer: git-send-email 1.8.3.4
X-Gm-Message-State: ALoCoQk916GLJlpYajzsyq/iGcnfdVHh69+TKkTzg6tEMSkQA3Y3LxfhG5ozWVkfLZVfiQdHLMUO
Cc: Laszlo Papp <laszlo.papp@polatis.com>
Subject: [PATCH] beagleboard.conf: Remove x-load as it is deprecated
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
X-List-Received-Date: Tue, 30 Jul 2013 16:01:28 -0000

SPL is a replacement in the u-boot tree.

Signed-off-by: Laszlo Papp <laszlo.papp@polatis.com>
---
 meta-yocto-bsp/conf/machine/beagleboard.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beagleboard.conf b/meta-yocto-bsp/conf/machine/beagleboard.conf
index 6633880..49b16fa 100644
--- a/meta-yocto-bsp/conf/machine/beagleboard.conf
+++ b/meta-yocto-bsp/conf/machine/beagleboard.conf
@@ -13,7 +13,7 @@ XSERVER ?= "xserver-xorg \
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
-EXTRA_IMAGEDEPENDS += "u-boot x-load"
+EXTRA_IMAGEDEPENDS += "u-boot"
 
 # Uncomment the following line to enable the hard floating point abi. Note that
 # this breaks some binary libraries and 3D (neither of which ship with
-- 
1.8.3.4


