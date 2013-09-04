Return-Path: <liming.wang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8D55E0152B
	for <poky@yoctoproject.org>; Wed,  4 Sep 2013 00:22:16 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r847ME1B007584
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Sep 2013 00:22:14 -0700 (PDT)
Received: from pek-lwang0-d1.corp.ad.wrs.com (128.224.162.222) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Wed, 4 Sep 2013 00:22:08 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <saul.wold@intel.com>, <richard.purdie@linuxfoundation.org>
Date: Wed, 4 Sep 2013 15:08:30 +0800
Message-ID: <1378278510-19727-3-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1378278510-19727-1-git-send-email-liming.wang@windriver.com>
References: <1378278510-19727-1-git-send-email-liming.wang@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 2/2] mpc8315e-rdb: Set PREFFERED_VERSION to 2013.07
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
X-List-Received-Date: Wed, 04 Sep 2013 07:22:20 -0000
Content-Type: text/plain

Now the latest u-boot, v2013.07, works well on the board. So set
PREFERRED_VERSION to use the latest u-boot.

Signed-off-by: Liming Wang <liming.wang@windriver.com>
---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index cf767f5..3e984a7 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -22,7 +22,7 @@ XSERVER ?= "xserver-xorg \
             xf86-input-evdev \
             xf86-video-fbdev"
 
-PREFERRED_VERSION_u-boot ?= "v2011.06%"
+PREFERRED_VERSION_u-boot ?= "v2013.07%"
 UBOOT_ENTRYPOINT = "0x00000000"
 
 KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8315erdb.dts"
-- 
1.7.9.5


