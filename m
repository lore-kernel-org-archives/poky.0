Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9E47E00BFE; Fri, 13 Jun 2014 18:48:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ECFEE00BF3
	for <poky@yoctoproject.org>; Fri, 13 Jun 2014 18:47:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5E1lucc024713
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 Jun 2014 18:47:56 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.196) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Fri, 13 Jun 2014 18:47:55 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Sat, 14 Jun 2014 09:47:23 +0800
Message-ID: <1402710444-2334-3-git-send-email-kexin.hao@windriver.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1402710444-2334-1-git-send-email-kexin.hao@windriver.com>
References: <1402710444-2334-1-git-send-email-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH v2 2/3] mpc8315e-rdb: add the jffs2 image support
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
X-List-Received-Date: Sat, 14 Jun 2014 01:48:04 -0000
Content-Type: text/plain

There is a 32M NAND flash on this board, so it would be convenient
that a jffs2 image is created by default. Also change the default image
type from "tar.gz" to "tar.bz2" in order to be compatible with
the beaglebone black and edgerouter BSP.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
v2: No change.

 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index ef76f2a755c0..43bdce4b1c5b 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -28,3 +28,6 @@ UBOOT_ENTRYPOINT = "0x00000000"
 KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8315erdb.dts"
 
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+
+IMAGE_FSTYPES ?= "jffs2 tar.bz2"
+JFFS2_ERASEBLOCK = "0x4000"
-- 
1.9.3


