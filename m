Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F27AC10F3DD9
	for <webhook@archiver.kernel.org>; Sat, 28 Mar 2026 09:47:09 +0000 (UTC)
Received: from fhigh-a7-smtp.messagingengine.com (fhigh-a7-smtp.messagingengine.com [103.168.172.158])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8078.1774691223951801037
 for <poky@lists.yoctoproject.org>;
 Sat, 28 Mar 2026 02:47:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=qt1X5U29;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=YSBaHyCk;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.158, mailfrom: paul@pbarker.dev)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 527C614001D3;
	Sat, 28 Mar 2026 05:47:03 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Sat, 28 Mar 2026 05:47:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1774691223;
	 x=1774777623; bh=TCI/XTjr2R1GsO3Yrf8kezY9gny0UCTKagyN7V57Z1M=; b=
	qt1X5U29A9JNfL7zuyKhUQxC21VJlbCSmU3ZxtAiJnI1qXxKTLiUJ6Rf8xUZbA4k
	lHsOVUrNPAW3/50KGPO6K91qCPthlenUp4flLDgUZVZ2fgVLYAavO0oQccaxXFEh
	pTocQT3FDY3Z6c19rDTAWgvAng+QHT3tj8mkkXLpUXlQ+00IAJOu9n/40lF/kTC2
	2bhxy9bLm/nE7suV3Ya57bWZdz0qdDL6RbJRJZjO5r70d24HpNgFr/ZVOYhm9+RH
	VHv7G5eXmIDwBRR5IR87K4baIUe56bVQ4eOAf9edz8Rh3iRjU2Ahxjkp7hSYLhZE
	PbIzfGYQ+egE9zGusJY6Rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1774691223; x=
	1774777623; bh=TCI/XTjr2R1GsO3Yrf8kezY9gny0UCTKagyN7V57Z1M=; b=Y
	SBaHyCkaqi/UN4uoyN9db5ZM7kRIn965Mx4ifNj6j1MdA9KUeak8Vz3mCRpo1WQO
	bdir34DROGRLXIpZmojEcH8Cbts+7yB7uvY9sW2xsJMgKypTeBKN+kjxo12eOgWM
	JddgcWHiilLMrMDRWX0JoUOyZWqC1lut7VJh1URtlrXZla8NYLrPnTilT6xDhAVN
	71hPFsJqh6wXGsekFs3FwA9XsMl86Zep6aK+9pJl+xOFBmaVEYFG5yio10fnXn4j
	CWhYtm24uKOyezttkUbQ/UAACk6gOLsNiKc6SrGCFqktictYX+/rH50DlqBubGFh
	SpojAm/eloX9zp+slWycQ==
X-ME-Sender: <xms:l6PHaRCUHH7FuD6GL5CJxPDJLmha0AMBkXokHE5rfUg-J5zL6vTSsw>
    <xme:l6PHaVgKhZYZdQq4mzemS57UWWyQ6Z_q3YKsmMVWlyz6zcsLMcL8rbR9QSrSarXfk
    w-v7MohgVW0F5q0xG-4aNUMaj322zI_lN-djqpSnM0ieZGtvhvGCDM>
X-ME-Received: <xmr:l6PHaaNtWas2c6tz_U0khGVGaT_TG1YVjkk2t0KEE6Z6Pt2zktJBTzMBuuB7BvMJu3gYpdkUABRXY_mMGa0Ay8JvuQQip6w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeffedvkeehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhfffugggtgffkfhgjvfevofesthejre
    dtredtjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgv
    rhdruggvvheqnecuggftrfgrthhtvghrnheptdffvdffjeevhfelieegudfgieefleefue
    efffelvdehfeeviedtieeukefhleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
    rghmpehmrghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtph
    htthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehprghulhesphgsrghr
    khgvrhdruggvvhdprhgtphhtthhopehpohhkhieslhhishhtshdrhihotghtohhprhhojh
    gvtghtrdhorhhg
X-ME-Proxy: <xmx:l6PHaW5psuG7jlm6gHoX3VMC9G52gPu34MBSebj1yYiqNfafg_XlOQ>
    <xmx:l6PHaY013uIovLCrOQxYa9-R8Ydgyy8-WyudtwwaNH704EhZGr7e-w>
    <xmx:l6PHaXZmTX6aLoP5ptC1-fh3LrW7e8gDH02MU6IOJE9M5vya0pdIoA>
    <xmx:l6PHaQBXX_VQuYEx5rQAlB1AESgcG1pZ0DS7QzC-XUP1_Go_U4pWig>
    <xmx:l6PHaVlIx6Qcjcqt7uQpbHdlcutkPRPkR8gkv1lfnpGnS0dB3vTJuEMC>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 28 Mar 2026 05:47:02 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Date: Sat, 28 Mar 2026 09:46:53 +0000
Subject: [PATCH 2/3] genericarm64: Use MACHINE_FEATURES_DEFAULT
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260328-default-features-v1-2-549331ccfab0@pbarker.dev>
References: <20260328-default-features-v1-0-549331ccfab0@pbarker.dev>
In-Reply-To: <20260328-default-features-v1-0-549331ccfab0@pbarker.dev>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1369; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=k74g4c1reaAp+0zLUdrQkOimpnfQ9Xu9YT4D1U8sDrY=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWQeXzyl6rD6KoWT/Tkrp9Q9eSWg4hdxPH1az3GrjJjFL
 qvm8LJN7ihhYRDjYpAVU2TZ3PP1/tNeR96MkFsKMHNYmUCGMHBxCsBE5O0ZGSadYt50/eD6fWtW
 nt321rty0Y2NmyaLn+W8qfX81NpGsTOnGH7MWGKdEx+5qzLK8ngco6L9uWnPk1vW/c/dFdO11pz
 Fnx8A
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 28 Mar 2026 09:47:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13871

In openembedded-core, MACHINE_FEATURES_BACKFILL will be replaced to
allow opting out of any default MACHINE_FEATURES. To adapt to this, we
need to use MACHINE_FEATURES_DEFAULT to pick up the features that were
previously added via backfill.

We can also drop rtc and qemu-usermode from our list as they are
included in the backfill list (before the change in openembedded-core)
and the new defaults (after the change).

Signed-off-by: Paul Barker <paul@pbarker.dev>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 2b1ce4bdd02b..02a2219ce5b5 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -8,7 +8,10 @@ require conf/machine/include/arm/arch-armv8a.inc
 # Arm Base System Architecture says v8.0+ is allowed, but FEAT_CRC32 is required
 DEFAULTTUNE = "armv8a-crc"
 
-MACHINE_FEATURES = "acpi alsa bluetooth efi keyboard pci qemu-usermode rtc screen usbhost vfat wifi"
+MACHINE_FEATURES = " \
+    ${MACHINE_FEATURES_DEFAULT} \
+    acpi alsa bluetooth efi keyboard pci screen usbhost vfat wifi \
+    "
 
 KERNEL_IMAGETYPE = "Image"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"

-- 
2.43.0


