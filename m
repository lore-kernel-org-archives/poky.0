Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1C45C2BB3F
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 17:00:47 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.18596.1700067643813055389
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 09:00:43 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 968EDDA7;
	Wed, 15 Nov 2023 09:01:28 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7BD313F641;
	Wed, 15 Nov 2023 09:00:42 -0800 (PST)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH] genericx86*: use common mkefidisk.wks.in
Date: Wed, 15 Nov 2023 17:00:39 +0000
Message-Id: <20231115170039.486447-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 Nov 2023 17:00:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13203

From: Ross Burton <ross.burton@arm.com>

There's no real need to use a genericx86*-specific wic file, use the
common mkefidisk.wks.in instead.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 4 +---
 meta-yocto-bsp/wic/genericx86.wks.in                      | 7 -------
 2 files changed, 1 insertion(+), 10 deletions(-)
 delete mode 100644 meta-yocto-bsp/wic/genericx86.wks.in

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/=
meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index e3badebf86d..e0cb7157135 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -21,7 +21,5 @@ GLIBC_ADDONS =3D "nptl"
 EXTRA_OECONF:append:pn-matchbox-panel-2 =3D " --with-battery=3Dacpi"
=20
 IMAGE_FSTYPES +=3D "wic wic.bmap"
-WKS_FILE ?=3D "genericx86.wks.in"
+WKS_FILE ?=3D "mkefidisk.wks.in"
 EFI_PROVIDER ??=3D "grub-efi"
-do_image_wic[depends] +=3D "gptfdisk-native:do_populate_sysroot"
-do_image_wic[recrdeptask] +=3D "do_bootimg"
diff --git a/meta-yocto-bsp/wic/genericx86.wks.in b/meta-yocto-bsp/wic/ge=
nericx86.wks.in
deleted file mode 100644
index 7c09ad00a1c..00000000000
--- a/meta-yocto-bsp/wic/genericx86.wks.in
+++ /dev/null
@@ -1,7 +0,0 @@
-# short-description: Create an EFI disk image for genericx86*
-# long-description: Creates a partitioned EFI disk image for genericx86*=
 machines
-part /boot --source bootimg-efi --sourceparams=3D"loader=3D${EFI_PROVIDE=
R}" --ondisk sda --label msdos --active --align 1024
-part / --source rootfs --ondisk sda --fstype=3Dext4 --label platform --a=
lign 1024 --use-uuid
-part swap --ondisk sda --size 44 --label swap1 --fstype=3Dswap
-
-bootloader --ptable gpt --timeout=3D5 --append=3D"rootfstype=3Dext4 cons=
ole=3DttyS0,115200 console=3Dtty0"
--=20
2.34.1


