Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 813DFC48BF6
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 14:42:30 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.24715.1709822545605689865
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 06:42:25 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF3EE1FB
	for <poky@lists.yoctoproject.org>; Thu,  7 Mar 2024 06:43:01 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8E8D93F73F
	for <poky@lists.yoctoproject.org>; Thu,  7 Mar 2024 06:42:24 -0800 (PST)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Subject: [PATCH 1/2] genericarm64.wks: reorder partitions
Date: Thu,  7 Mar 2024 14:42:21 +0000
Message-Id: <20240307144222.776289-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Mar 2024 14:42:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13301

From: Ross Burton <ross.burton@arm.com>

Put the root partition at the end of the disk so that it can be easily
resized.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/wic/genericarm64.wks.in | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/wic/genericarm64.wks.in b/meta-yocto-bsp/wic/=
genericarm64.wks.in
index 417d4d88104..ee7da87ded8 100644
--- a/meta-yocto-bsp/wic/genericarm64.wks.in
+++ b/meta-yocto-bsp/wic/genericarm64.wks.in
@@ -4,8 +4,8 @@
=20
 part /boot --source bootimg-efi --sourceparams=3D"loader=3D${EFI_PROVIDE=
R},initrd=3D${INITRAMFS_IMAGE}-${MACHINE}.${INITRAMFS_FSTYPES}" --label b=
oot --active --align 1024 --use-uuid
=20
-part / --source rootfs --fstype=3Dext4 --label root --align 1024 --use-u=
uid
-
 part swap --size 44 --label swap --fstype=3Dswap --use-uuid
=20
+part / --source rootfs --fstype=3Dext4 --label root --align 1024 --use-u=
uid
+
 bootloader --ptable gpt --timeout=3D5 --append=3D"rootwait rootfstype=3D=
ext4"
--=20
2.34.1


