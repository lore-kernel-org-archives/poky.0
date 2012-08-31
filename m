Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 970CAE0027F
	for <poky@yoctoproject.org>; Fri, 31 Aug 2012 12:28:07 -0700 (PDT)
Received: from mail-wg0-f54.google.com ([74.125.82.54])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 31 Aug 2012 12:28:04 -0700
Received: by wgx1 with SMTP id 1so1939719wgx.11
	for <poky@yoctoproject.org>; Fri, 31 Aug 2012 12:28:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=MA7R3nnfNCeHvNpMirubWNYBrOvYET+6sH2oRsvknig=;
	b=jOyjjlc1nrJxnBqV/F2yjhNnEglKuhwfsYhRVbmEzT4iXE9QOsC395+VpGFaBLkmAZ
	HWCZpJVEifPkqvA7YSwSNNI+XYQ6qlnRO2NYa4rDMbPemqtfn+a7A7PgbFIlqqv5MMu/
	4g9DBlGb65SzXqcccB1EhJQRj8wPqTM43IWghyeWd+LoRerZVpYTKPINWEuJCk6Tgnti
	RRKYkNO4mnJko5oN7/B9+ddEGApGxGP5Pm6kg/YpVlbrGNUKzf0e1uHHqwBPIWZi/pX/
	aGdFSS9UX/Kz+aqHfUiTCNrzDLv2viY5p9woW5hTBNYRLWLlPFoIGHVaWhi/CeuHW37A
	9hNA==
Received: by 10.216.198.10 with SMTP id u10mr5339015wen.80.1346441282615;
	Fri, 31 Aug 2012 12:28:02 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id cl8sm2454511wib.10.2012.08.31.12.28.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 31 Aug 2012 12:28:01 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Fri, 31 Aug 2012 20:27:17 +0100
Message-Id: <1346441238-28023-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQnygbf6im2gb+FtBZHKSUjh0MjJbjvGFwFF9mMbJteisDaT2Bb5riK4FcmBsKYXiL5wWS0T
Subject: [PATCH 1/2] routerstationpro: switch to Xorg instead of kdrive
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
X-List-Received-Date: Fri, 31 Aug 2012 19:28:07 -0000

All of the other BSPs are using Xorg and kdrive is only maintained for Xephyr.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/machine/routerstationpro.conf |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index adf36a9..707392d 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -11,9 +11,12 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
-PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
-XSERVER = "xserver-kdrive-fbdev"
 
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+            xserver-xorg-extension-extmod \
+            xf86-input-evdev \
+            xf86-video-fbdev"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.10


