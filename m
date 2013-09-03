Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8995E013DA
	for <poky@yoctoproject.org>; Tue,  3 Sep 2013 08:25:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r83FPQFw011415
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Sep 2013 08:25:26 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Tue, 3 Sep 2013 08:25:26 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 3 Sep 2013 11:25:23 -0400
Message-ID: <57e8f87d70b36592cf0d79e651d565b6a8eb97bd.1378221496.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1378221496.git.bruce.ashfield@windriver.com>
References: <cover.1378221496.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/2] mpc8315e-rdb: update to the 3.10 kernel
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
X-List-Received-Date: Tue, 03 Sep 2013 15:25:30 -0000
Content-Type: text/plain

From: Kevin Hao <kexin.hao@windriver.com>

Update the mpc8315e-rdb to the latest available yocto kernel.
Build and boot test on mpc8315e-rdb board with core-image-sato.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index cf767f5..f604afb 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "3.4%"
+PREFERRED_VERSION_linux-yocto ?= "3.10%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-- 
1.7.10.4


