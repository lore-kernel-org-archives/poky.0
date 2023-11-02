Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E732C4167B
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 13:29:08 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.31057.1698931738356159145
 for <poky@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 06:28:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=MZrq3TwB;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 829F540003;
	Thu,  2 Nov 2023 13:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698931735;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PIPauQ5ZrlTLREZ0zMVdNuaZ8Q0UoYnImBQbJsLlvVI=;
	b=MZrq3TwBvyAG4iEv+iUhTxJq9EnNQsOJ1ni1v7kD+R4D09w2kCw5XwzzN61P9CoUaw+u0X
	p8Jr3JmDxjvRo92QPlqDsyoavt+t0NlyOXmpEEV0TX7r5GMZabe+hjeQ9LI5APeDWQh89a
	VeIDg0jPo1UBHopiMNxAgNElZNBvvdnWpYGXERdGQoGnsnqYSQDJPD1ctNcGuTu+o7GMYc
	OW4GaeFuxtQGB5DSe+YXq0AN6qpmNsy73hP1Uxm+cbdRBMCNYgn6qdtPBTfexmsstpSBTp
	uJ39XJChYXhtIaarz33Rm+R49PGNWw/sbi06tU4xKkBvRS6hoWsPCyYcjTevTg==
Message-ID: <e5c935f3-e4fe-4c6a-a290-8c81450652e5@bootlin.com>
Date: Thu, 2 Nov 2023 14:28:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [meta-yocto-bsp][PATCH] machine: drop obsolete
 SERIAL_CONSOLES_CHECK
Content-Language: en-US
To: Lee Chee Yang <chee.yang.lee@intel.com>
References: <20231102103648.3681280-1-chee.yang.lee@intel.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20231102103648.3681280-1-chee.yang.lee@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 02 Nov 2023 13:29:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13195

Hi Lee,

On 02.11.23 at 11:36, Lee Chee Yang wrote:
> From: Lee Chee Yang <chee.yang.lee@intel.com>
>
> Signed-off-by: Lee Chee Yang <chee.yang.lee@intel.com>
> ---
>   meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 -
>   meta-yocto-bsp/conf/machine/genericx86-64.conf    | 1 -
>   2 files changed, 2 deletions(-)
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 8b67cefef7..9f389711b3 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -18,7 +18,6 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-image kernel-devicetree"
>   do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot virtual/bootloader:do_deploy"
>   
>   SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
> -SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
>   
>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>   PREFERRED_VERSION_linux-yocto ?= "6.1%"
> diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
> index 14913ea1f1..f19a1c1527 100644
> --- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
> +++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
> @@ -6,6 +6,5 @@ DEFAULTTUNE ?= "core2-64"
>   require conf/machine/include/x86/tune-core2.inc
>   require conf/machine/include/genericx86-common.inc
>   
> -SERIAL_CONSOLES_CHECK = "ttyS0"
>   #For runqemu
>   QB_SYSTEM_NAME = "qemu-system-x86_64"


Many thanks for this change (now in master).
What about another patch to remove it from meta/conf/documentation.conf too?
Thanks again
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


