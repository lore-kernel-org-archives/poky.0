Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C206E0074B
	for <poky@yoctoproject.org>; Wed, 29 Aug 2012 08:49:25 -0700 (PDT)
Received: from mail-we0-f176.google.com ([74.125.82.176])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 29 Aug 2012 08:49:22 -0700
Received: by weyu3 with SMTP id u3so457786wey.35
	for <poky@yoctoproject.org>; Wed, 29 Aug 2012 08:49:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=QGW5ozP8/v72bvgcViBiGVcEuf0MccX3mvGfLaZAD1M=;
	b=VMkN7Py78PsvznOSmNXA15qK94B++mM6EeXsbB/JC5nHWzoXcOqQ4nJetlCP2SI7aa
	XqOF7JCCoh5N323+saYW9AIcEHXJ/T6gNp+zS8bobACaf96/sNHIukCKqVNpfJpasl9j
	NpYO03idd97d58j0H0OU452Ankwt9Yyy1J4l8HwLa6d4vyyeYt0O5B5VLStefx9zisrU
	5z/i0VFdLsh7EKhlVXZVfku0tY7QLjb2PrzfM5anvprQVYvtxoXNEGFG3aoXnmxQrnY+
	FJ6JXaFTWDNBWMSfN4KOi9XF8ZYJW+1hBXbPPFiuJDmJejzqb/PgOR4urwW22cNrOeKm
	mpEQ==
Received: by 10.180.103.136 with SMTP id fw8mr4568623wib.20.1346255361942;
	Wed, 29 Aug 2012 08:49:21 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id fr4sm16414953wib.8.2012.08.29.08.49.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 29 Aug 2012 08:49:20 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 29 Aug 2012 16:48:37 +0100
Message-Id: <1346255318-13168-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQmh0GDAf9HdV9TiZ1X0OQDfWg3F8mLs4IVcomN8ylilat7Pvyv47og0E5t5VsVVAOxl1vqx
Subject: [PATCH 1/2] mpc8315e: switch to Xorg instead of kdrive
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
X-List-Received-Date: Wed, 29 Aug 2012 15:49:25 -0000

All of the other BSPs are using Xorg and kdrive is only maintained for Xephyr.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/machine/mpc8315e-rdb.conf |    9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index aa1e5c3..390882c 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -17,8 +17,13 @@ MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
-PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
-XSERVER = "xserver-kdrive-fbdev"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-extmod \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-video-fbdev"
 
 PREFERRED_VERSION_u-boot ?= "v2012.04%"
 UBOOT_ENTRYPOINT = "0x00000000"
-- 
1.7.10


