Return-Path: <djszapi@archlinux.us>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E06CE002E2
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 08:59:33 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id n11so3164000wgh.9
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 08:59:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=xRJHcA7mb+E71QgetaXoCSF9abZ17yPNM9z1BwoPuNg=;
	b=JYa1jZpNiZvDoBplUk0pBee9RCYUsWGJmzVY7iT6RGVmvqX/Bk3Rf8oygaRSE8bTVk
	uvA8UPnBv+IjauWWFaGKvWsf2zHRpK96zxrl+KQ8xSghNAdIMwUuy9ruvgFVq4lNLz4X
	OOR4lWghiqQsfCWplrQ4qaDX97058SpnorZwW3FH0Vr2mR94a/eZPzrMizNhiybASMlP
	bfqZojSu3sS5VyBvdgINXK1avx6ZRuGjmmB2+o5ghriBBiGPEw3hx7gLXFWjdrcXGWRM
	h0sQHKz0hC0Jl0QNkbFwu5y9xlYho2d/IpSQdd/MTCoURQbU4kbYz9dD+wA66cG/CI3R
	t+GQ==
X-Received: by 10.180.160.165 with SMTP id xl5mr1418571wib.46.1375199971870;
	Tue, 30 Jul 2013 08:59:31 -0700 (PDT)
Received: from djszapi@archlinux.us ([212.44.19.228])
	by mx.google.com with ESMTPSA id li9sm29484864wic.2.2013.07.30.08.59.29
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 30 Jul 2013 08:59:30 -0700 (PDT)
Sender: Laszlo Papp <djszapi@archlinux.us>
Received: by djszapi@archlinux.us (sSMTP sendmail emulation);
	Tue, 30 Jul 2013 16:57:43 +0100
From: Laszlo Papp <lpapp@kde.org>
To: poky@yoctoproject.org
Date: Tue, 30 Jul 2013 16:57:40 +0100
Message-Id: <1375199860-3269-1-git-send-email-laszlo.papp@polatis.com>
X-Mailer: git-send-email 1.8.3.4
X-Gm-Message-State: ALoCoQk/mt5RrA4Djc5KnNnk005U1dQhFJ2CwGemTV6EwTbUZGyabEkwN4pyWqpPAdnr7STF/h6J
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
X-List-Received-Date: Tue, 30 Jul 2013 15:59:34 -0000

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


