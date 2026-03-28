Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43CE10F3DD6
	for <webhook@archiver.kernel.org>; Sat, 28 Mar 2026 09:47:09 +0000 (UTC)
Received: from fhigh-a7-smtp.messagingengine.com (fhigh-a7-smtp.messagingengine.com [103.168.172.158])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8080.1774691224611862487
 for <poky@lists.yoctoproject.org>;
 Sat, 28 Mar 2026 02:47:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=JwqT+MEh;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=psvuAdvT;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.158, mailfrom: paul@pbarker.dev)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.phl.internal (Postfix) with ESMTP id E8FFB14001E0;
	Sat, 28 Mar 2026 05:47:03 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Sat, 28 Mar 2026 05:47:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1774691223;
	 x=1774777623; bh=RMyeABUjTNdACagheHpW/t7qluKsGL2/zVf3Rya9y8U=; b=
	JwqT+MEhhT2AH5hqDVw0jcI76i+7KWl0MbXTv+076AosKVduAxNc/WmeHZ6ZgwfD
	E6RvZhQbpG8zQHOCxc3o1hjny/c9rsIZHcwoqD742qe3dYgLTyMWy8NcH+gpK/IT
	KEBTLn1ME2xkz4iYtnl4+SHmjaYL056cMmpF3W1oAzSoclNDw0bpBEJNmxAAnq9p
	OiFFS1gLUF577IetRqlnfYJw8Idb1Ym1qyzMe1T/BlPPrLaux7PDzN4wIt+mir1/
	uc1sq5EsIeckmltdr7HmD2/4i/MOEEvONK3aC0gr87rboXRcHX9k1t7vbu4Xu3r4
	O5k5HUrglcWBWZtL83E7xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1774691223; x=
	1774777623; bh=RMyeABUjTNdACagheHpW/t7qluKsGL2/zVf3Rya9y8U=; b=p
	svuAdvTecskmaTux+CgWuYR5wHcVz4z63cYiTKcN7ZiOXt5FO0ztkRrzl7659Do2
	XhTcXM+Smh1zZH8GxoaRrEaQCS8NWXfHdN46mkw/X+WFW9EcuPgOKhEZKosV96rO
	/aF3IEKWC1tsmQtIHzclwoGofC4YTYSGwDHzBs5DpzxuRHb0SzeO9yI/2LlKMzsI
	Edec2EzcRtxPqUsRjkhuA9oJyOncmYyM1kCqyX46xdq7G/5zsIDyvXx73pPQjk9H
	EZCp0Sbrw9q7ie4LIhTPgHe0GBIG23Yqw5bPFKjpTBxhEgNxlX8Q4FZEwXw2arxE
	cFefYwuAhQRow9TjbPLEw==
X-ME-Sender: <xms:l6PHaRo5Z_huZciLOcxOKZw8sckUUYv5ONVrcFpm2KpSgp-di5L_ZQ>
    <xme:l6PHaZpLzIkhXPoDEgN_FgP3xAZJlnnJ2xrjlEs4VXZiVr5pJN20EoHd-bGC86Sa9
    _fYmcJeJ37u4CWRTXZLRDTRfmQep_uPpLo2JE6AA8Wt9K6KYYmxELk>
X-ME-Received: <xmr:l6PHab2CKapjcxLmszW2e2v_3rJD3QUKR8u3z0OKK7K7x94tCnECDAyhYkbm_9yXDmL4z-i2AOkSD_wnku0mKNAn1YJUcAY>
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
X-ME-Proxy: <xmx:l6PHaYDBOFO5y2L0BxmiCI_w_XMUcCjG8s3jwq_HAUuXGMrjNeH3AQ>
    <xmx:l6PHaTfhybi5kcWAk5MhDXxEmc0SM9-A6TsFkDH7bAmMKSnN8rp3Mw>
    <xmx:l6PHadg5mPxTFS3Z2BOC5lDIb8y59Iuweg7gToHMR_8YSihrIREayQ>
    <xmx:l6PHabpjfc-9c-ud4uWHQ4sHCgg2qY88HJ2jSiqp1hnTOQP9jFuLug>
    <xmx:l6PHaQMRVOoxgJIVylT1SwXSkhqQyYyxq1dMynUK_mrclraIYO-CDFdQ>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 28 Mar 2026 05:47:03 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Date: Sat, 28 Mar 2026 09:46:54 +0000
Subject: [PATCH 3/3] beaglebone-yocto: Use MACHINE_FEATURES_DEFAULT
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260328-default-features-v1-3-549331ccfab0@pbarker.dev>
References: <20260328-default-features-v1-0-549331ccfab0@pbarker.dev>
In-Reply-To: <20260328-default-features-v1-0-549331ccfab0@pbarker.dev>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1029; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=uFzyqhsTQe9WpVhaUbWilEfQnq6Fop8W/TpZHsrGxBg=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWQeXzzlvf5pzYlpnqwWd8NmHniyR553X2v2l/ObztrtC
 M2V8Nzj1VHKwiDGxSArpsiyuefr/ae9jrwZIbcUYOawMoEMYeDiFICJ9BUz/OFi4FRQa+NMXePE
 1ynqL3Jx2a1T23lYP3Zuc+demyvnWsvwT+0b9wtB3pALwV9VwhIjVNdvWOfNtXqbc4DtmSvxk9P
 OcwEA
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 28 Mar 2026 09:47:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13872

In openembedded-core, MACHINE_FEATURES_BACKFILL will be replaced to
allow opting out of any default MACHINE_FEATURES. To adapt to this, we
need to use MACHINE_FEATURES_DEFAULT to pick up the features that were
previously added via backfill.

Signed-off-by: Paul Barker <paul@pbarker.dev>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index b76edffa8fa3..713813a405f5 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -32,7 +32,7 @@ SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
 UBOOT_MACHINE = "am335x_evm_defconfig"
 
-MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
+MACHINE_FEATURES = "${MACHINE_FEATURES_DEFAULT} usbgadget usbhost vfat alsa"
 
 IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${DTB_FILES}"
 

-- 
2.43.0


