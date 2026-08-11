Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE103C5AC67
	for <webhook@archiver.kernel.org>; Tue, 11 Aug 2026 19:44:43 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.62741.1786477480882873716
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Aug 2026 12:44:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@arm.com header.s=foss header.b=VrrDAUlx;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 437A21516
	for <poky@lists.yoctoproject.org>; Tue, 11 Aug 2026 12:44:36 -0700 (PDT)
Received: from cesw-amp-gbt-1s-m12830-04.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D19F13F632
	for <poky@lists.yoctoproject.org>; Tue, 11 Aug 2026 12:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1786477480; bh=0f9akuLUM+lwY6Mj5FmO+hHOTHtiLE+fVTNgsdwEaKk=;
	h=From:To:Subject:Date:From;
	b=VrrDAUlxU0QBbj4cgLOkvoiGd1KPiHzklBGx39rFgJjFry1tToZ7nzHmYg8PW+CXi
	 nlzqSltOUK4fz9ehygNyePhN7+61+aPaP22CwZ4NNM/1RPFivGUNLB0Px3jr21T20C
	 cw40Kjren+OPtdTfoAurS3ZcT1nm/HN+ThlfAND8=
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] genericx86: remove gptfdisk-native dependency
Date: Tue, 11 Aug 2026 20:44:34 +0100
Message-ID: <20260811194434.3306123-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 11 Aug 2026 19:44:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13957

wic no longer calls gptfdisk binaries, so we can remove the dependency.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/=
meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 95d9e175fc..f49887147c 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -19,5 +19,4 @@ MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules linux-fi=
rmware"
 IMAGE_FSTYPES +=3D "wic.zst wic.bmap"
 WKS_FILE ?=3D "genericx86.wks.in"
 EFI_PROVIDER ??=3D "grub-efi"
-do_image_wic[depends] +=3D "gptfdisk-native:do_populate_sysroot"
 do_image_wic[recrdeptask] +=3D "do_bootimg"
--=20
2.43.0


