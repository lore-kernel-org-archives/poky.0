Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D47BE00777; Sat,  8 Apr 2017 06:45:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0FF5E00546
	for <poky@yoctoproject.org>; Sat,  8 Apr 2017 06:45:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v38DjXXf018658
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Sat, 8 Apr 2017 06:45:34 -0700
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Sat, 8 Apr 2017 06:45:33 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Sat, 8 Apr 2017 21:45:59 +0800
Message-ID: <20170408134559.2864-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: workaround the X malfunction on beaglebone
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
X-List-Received-Date: Sat, 08 Apr 2017 13:45:38 -0000
Content-Type: text/plain

After the change in kernel commit a291b6b3d287 ("ARM: dts:
am335x-boneblack: Add blue-and-red-wiring -property to LCDC node"),
the pixel format we support for 32bit bpp has been changed from
XRGB8888 to XBGR8888. But the fbdev created by modesetting driver use
the XRGB8888 format by default, this causes the X malfunction. There is
no easy way to adjust the pixel format of the fbdev created by the
modesetting driver. So we create a xorg.conf to use the 16bit bpp to
work around this issue.

[YOCTO #11267]

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../xserver-xf86-config/beaglebone/xorg.conf         | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone/xorg.conf

diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone/xorg.conf
new file mode 100644
index 000000000000..2f40dae15710
--- /dev/null
+++ b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone/xorg.conf
@@ -0,0 +1,20 @@
+Section "Monitor"
+        Identifier      "Builtin Default Monitor"
+EndSection
+
+Section "Device"
+        Identifier      "Builtin Default fbdev Device 0"
+        Driver  "modesetting"
+EndSection
+
+Section "Screen"
+        Identifier      "Builtin Default fbdev Screen 0"
+        DefaultDepth    16
+        Device  "Builtin Default fbdev Device 0"
+        Monitor "Builtin Default Monitor"
+EndSection
+
+Section "ServerLayout"
+        Identifier      "Builtin Default Layout"
+        Screen  "Builtin Default fbdev Screen 0"
+EndSection
-- 
2.9.3


