Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45DE7C46CD2
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 18:17:39 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.35669.1704219451033527354
 for <poky@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 10:17:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=i5iRed6I;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id B960560002;
	Tue,  2 Jan 2024 18:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1704219449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=1V07MmZI1bB7knCYcxwy8T8jTUau5T1jEuuXByssTt0=;
	b=i5iRed6Iupbzzu3AxqRsXHTTKBsxEWzjqYB9yUdInOtgST+iRPwrWmi76MhOOy86zvvxj7
	K4opes5gva52EbsrsS34VxNgwpnG49yAuDo6Gg7y04uBe+qanp7rw4c7Jw/AKEhVZJwY59
	pe9p1j5IwMCOCprtpfDRVbxJgJh9pfYt9ptrfqXMFAqaz3YlE2n19VfSwbDAQKVYyj7DSf
	MnZz4WRlDCc6CnnMrytf5jGN6v/eoeJbL8WZ5tPcz99JBySCql81H6olXdoeN+L9et+svS
	ip8xZHMVlT52IxBt4d2CW6GghMqDNTI20aqA+RqofyIzYtk77IKPPYghNFLCcg==
Date: Tue, 2 Jan 2024 19:17:26 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: kexin.hao@windriver.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Robert Berger <pokylinux@reliableembeddedsystems.com>,
	poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH 1/2] beaglebone-yocto: Remove the redundant
 kernel-devicetree
Message-ID: <20240102181616f254329b@mail.local>
References: <20240102115709.4165033-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240102115709.4165033-1-kexin.hao@windriver.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 02 Jan 2024 18:17:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13241

Please follow https://docs.yoctoproject.org/dev/contributor-guide/submit-changes.html#fixing-your-from-identity

On 02/01/2024 19:57:08+0800, Kevin Hao via lists.yoctoproject.org wrote:
> The kernel-devicetree is set in both MACHINE_ESSENTIAL_EXTRA_RDEPENDS
> and MACHINE_EXTRA_RRECOMMENDS. Since it is an essential package for
> boot, drop the one in MACHINE_EXTRA_RRECOMMENDS.
> 
> [YOCTO #15229]
> 
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 9f389711b3b4..0c1741235368 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -4,7 +4,7 @@
>  
>  PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>  
> -MACHINE_EXTRA_RRECOMMENDS = "kernel-modules kernel-devicetree"
> +MACHINE_EXTRA_RRECOMMENDS = "kernel-modules"
>  
>  EXTRA_IMAGEDEPENDS += "virtual/bootloader"
>  
> -- 
> 2.39.2
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13239): https://lists.yoctoproject.org/g/poky/message/13239
> Mute This Topic: https://lists.yoctoproject.org/mt/103479682/3617179
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

