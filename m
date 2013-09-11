Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA4CE01562
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 04:07:29 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id c10so1985902wiw.11
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 04:07:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=SaqJharX8tYS4tSCwAHOPjAVOfxhv1JEjPUoFn1nPNk=;
	b=BN145ciAg7ZQFn2BV6ogChS/11jxKy3gB+bzgDClewZlsZ7MqESqXqdeAuu38CfTbs
	NaF+1q3hxlk9DsoPwp+PttkClcIuIQ4BWGV7kY7yhlsjwdQm3bb0lV2amTFJfatP+t4K
	Sv001liQhyc3Q33ilQAuurLTAjBLQSIkt9H9HGdPP8LWTYkbSZnSSPFSh8F5LNgBTu9y
	vtXpo1vA2oy0YcQj6UJEt/cd9C6zWpUj+fc79iWjfwwIm0JWMbkEbWGmVTvz2UN++VWu
	J+OuNjKVR2X6zN4gZcu8r/+95KPzQ/ma+XkFkVIRPtQJGn/tidSiiiy/CUc6ubmLcKwR
	unGw==
X-Gm-Message-State: ALoCoQm9mGc4wwJdngUCvAA+wqeguxa8V55+W4O5shsfsXjj0cJfBw2T6CYIxtKFLEHE25sZA/Q4
X-Received: by 10.180.90.19 with SMTP id bs19mr885678wib.15.1378897647869;
	Wed, 11 Sep 2013 04:07:27 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id i8sm9829540wib.1.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 11 Sep 2013 04:07:27 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 11 Sep 2013 12:07:21 +0100
Message-Id: <1378897641-22802-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] yocto-bsp: conditionalise mesa-swrast on opengl in templates
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
X-List-Received-Date: Wed, 11 Sep 2013 11:07:30 -0000

As per the similar commit in oe-core on the qemu machines, the templates should
respect the opengl DISTRO_FEATURE when adding mesa-driver-swrast to new qemu
machines.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf    |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index d66d28f..782ac21 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -47,7 +47,7 @@ MACHINE_FEATURES += "x86"
 KERNEL_IMAGETYPE = "bzImage"
 SERIAL_CONSOLE = "115200 ttyS0"
 XSERVER = "xserver-xorg \
-           mesa-driver-swrast \
+           ${@base_contains('DISTRO_FEATURES', 'opengl', 'mesa-driver-swrast', '', d)} \
            xf86-input-vmmouse \
            xf86-input-keyboard \
            xf86-input-evdev \
-- 
1.7.10.4


