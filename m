Return-Path: <Hongxu.Jia@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E467CE01482
	for <poky@yoctoproject.org>; Mon, 15 Jul 2013 01:57:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r6F8vOXI028472
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 15 Jul 2013 01:57:24 -0700 (PDT)
Received: from pek-hjia-d1.corp.ad.wrs.com (128.224.162.194) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Mon, 15 Jul 2013 01:57:24 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 15 Jul 2013 16:57:17 +0800
Message-ID: <95ef1d71a85af8f313b6f3f0616c0346e1c25cac.1373877715.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1373877715.git.hongxu.jia@windriver.com>
References: <cover.1373877715.git.hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] atom-pc:fix xuser write to usb storage failed
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
X-List-Received-Date: Mon, 15 Jul 2013 08:57:27 -0000
Content-Type: text/plain

Add package pmount to atom-pc, the normal user could invoke pmount to mount
storage device and would have permissions to access it.

[YOCTO #4004]

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 meta-yocto-bsp/conf/machine/atom-pc.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf b/meta-yocto-bsp/conf/machine/atom-pc.conf
index 6318d60..127b3ad 100644
--- a/meta-yocto-bsp/conf/machine/atom-pc.conf
+++ b/meta-yocto-bsp/conf/machine/atom-pc.conf
@@ -35,3 +35,4 @@ GLIBC_ADDONS = "nptl"
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
 
 ROOTLESS_X = "1"
+IMAGE_INSTALL_append = " pmount"
-- 
1.8.1.2


