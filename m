Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60688C001B0
	for <webhook@archiver.kernel.org>; Mon,  7 Aug 2023 18:25:54 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.42591.1691432744979651099
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Aug 2023 11:25:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=hLilmKlG;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id AE0E460003;
	Mon,  7 Aug 2023 18:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1691432743;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o+LgyNknwLlq1ZUSGqqSB5yPr0GVN6TFWI6rZdti6pg=;
	b=hLilmKlG3FX4EX96yIdSwZnmy+E4pZSo3/T7qsV5O2j6Gz+0Yx7YcwcFlFDG+P5Y5kxtsC
	9JwR+Ob4y+GLbPoDa8RjFgGPtWrz+FY4uRB6kjOuzXukVv0NWhdwelSi6xKwc96fH9ll8/
	Zp2Z9vDMmTyEH5XBWslrWYEZe1uaaXNW55VrxvN3HBnsijmIpGr9ig9CsC48vP73nbzttT
	5LqxLWxK8ludMfX7jrCIC3vfU9UyLizQFkUZXrVt0vHChsrurMJFIYFSiTx5IYqEiOc7eI
	3Bifu+mMrP5K9f1d27YpfzKjurIXQrJuMBeYlRUVMy97oFrVZKerAcIVIKkqlg==
Message-ID: <940dca10-1ab3-dec5-d4f2-286a5794b146@bootlin.com>
Date: Mon, 7 Aug 2023 20:25:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: nd@arm.com, poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] poky: add Debian 12 to supported distribution list
Content-Language: en-US
To: Ross Burton <ross.burton@arm.com>
References: <20230712123404.3030888-1-ross.burton@arm.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20230712123404.3030888-1-ross.burton@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 07 Aug 2023 18:25:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13116

Hi Ross

On 12.07.23 at 14:34, Ross Burton wrote:
> From: Ross Burton <ross.burton@arm.com>
>
> The autobuilder now has a Debian 12 machine and it appears to be working
> fine, so add Debian 12 to the supported list.
>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>   meta-poky/conf/distro/poky.conf | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index d1375276246..c72df162d08 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -41,6 +41,7 @@ SANITY_TESTED_DISTROS ?= " \
>               fedora-36 \n \
>               fedora-37 \n \
>               debian-11 \n \
> +            debian-12 \n \
>               opensuseleap-15.3 \n \
>               opensuseleap-15.4 \n \
>               almalinux-8.7 \n \


Should this update apply to Mickledore and other branches too?
I'm asking for documentation updates.
Thanks
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


