Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CBE9E00769
	for <poky@yoctoproject.org>; Wed, 29 Aug 2012 08:49:29 -0700 (PDT)
Received: from mail-wi0-f182.google.com ([209.85.212.182])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 29 Aug 2012 08:49:28 -0700
Received: by wibhq12 with SMTP id hq12so686606wib.11
	for <poky@yoctoproject.org>; Wed, 29 Aug 2012 08:49:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=ejj3wznX7x2ZGHxizgGrhHxLRCOMFzi1DOM5aBKvQR0=;
	b=FjasqgdHK/RUqZ5TJxcBnLXIDogLmtkERZi1SDCdfkOogtFvi+6aL7CJb7Yp+QiAK3
	Ceuv7JaKp2JCrLkEsKcPuFKjYhx2s+PjFGhONeZBz4q0AIXjUPbohRbrI81594I+shyO
	FGxOBIsiJdWlT2GPdVPN2o/c0HHSFp028PDYij2omkiefuXsxVdiMkVRkXF099s2MnYx
	q0pC9hrf+Ohxu6ud6rCYX2l5KlfrAaY+jwhj8dMrM0Gxnsga50KmwoLaSFfULgPUqbJc
	hy+WcTX8H3VCVf9rl+itd0dK6hKjtl2YRLJRuucWNk1cWGk1eG55y9HcAVjupUfiYlqp
	hPyw==
Received: by 10.216.30.136 with SMTP id k8mr1220633wea.103.1346255365365;
	Wed, 29 Aug 2012 08:49:25 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id fr4sm16414953wib.8.2012.08.29.08.49.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 29 Aug 2012 08:49:23 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 29 Aug 2012 16:48:38 +0100
Message-Id: <1346255318-13168-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1346255318-13168-1-git-send-email-ross.burton@intel.com>
References: <1346255318-13168-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQkv/XxZ5zVXsDVl3Oawy+yHgrzVkD6DW4Dmdb8WW7JC4nPR2P+WvnFNd4wCyppTE62G1gob
Subject: [PATCH 2/2] routerstationpro: switch to Xorg instead of kdrive
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
X-List-Received-Date: Wed, 29 Aug 2012 15:49:29 -0000

All of the other BSPs are using Xorg and kdrive is only maintained for Xephyr.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/machine/routerstationpro.conf |    9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index 3c2f56f..645a94a 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -11,9 +11,14 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.0%"
-PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
-XSERVER = "xserver-kdrive-fbdev"
 
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-extmod \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-video-fbdev"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.10


