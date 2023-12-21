Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6240AC35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 14:31:40 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.52508.1703169089593266805
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 06:31:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=PsNnOVev;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3BD3440002
	for <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 14:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703169087;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Dytj5WgM9F9KZKAC3E2MGsHvh4dJDo73dwER28K4Ykc=;
	b=PsNnOVevBo+wp/6WTDeKA9AYtuC6eemhZYnz+Lyw2limgnrzzuq1LevGoxdrMcy3yasmpV
	kvBVbO7BLxTwYZbL8fKI2Hb+BTCHH/EFpXhFcw3mIWfr8IuiRwSlyry8s1v052rERvE2rX
	bj44ng8wDKlJor4l4KnowXZuAGE6mvnliOZKCMC6EEouqux+3cvDi8BXtmUS5uK5zUilYC
	mWio2grLGOw06m4dqjRkkNaL2ZL5AHWtqf0dVZjRLhdP1bfZ9AZfk/JPD2UoRQck7r9gO6
	rAS5ekUSXS6n++dGvEmhPtETKdGG3m/nqa6kMnW6T5pN/WWcN9dy7QhWiJ1t4Q==
Message-ID: <0bd0e818-e31c-4ad2-8197-2ffe9cf56941@bootlin.com>
Date: Thu, 21 Dec 2023 15:31:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [dunfell][PATCH v2] poky.conf: update SANITY_TESTED_DISTROS to
 match autobuilder
Content-Language: en-US
To: poky@lists.yoctoproject.org
References: <20231221111536.750434-1-michael.opdenacker@bootlin.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20231221111536.750434-1-michael.opdenacker@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 14:31:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13234


On 21.12.23 at 12:15, michael.opdenacker@bootlin.com wrote:
> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>
> Adding new active workers on
> https://autobuilder.yoctoproject.org/typhoon/#/workers
>
> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
>
> ---
> Changes in V2:
> - Keep the originally tested distros when the release was first published.
> ---
>   meta-poky/conf/distro/poky.conf | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 5fabf67..2b186fe 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -47,6 +47,7 @@ SANITY_TESTED_DISTROS ?= " \
>               ubuntu-20.04 \n \
>               ubuntu-22.04 \n \
>               fedora-37 \n \
> +            fedora-38 \n \
>               debian-11 \n \
>               opensuseleap-15.3 \n \
>               almalinux-8.8 \n \


Actually, following our discussion, SANITY_TESTED_DISTROS is still 
missing many distro versions which were supported with the initial 
Dunfell releases. As explained on 
https://docs.yoctoproject.org/ref-manual/variables.html#term-SANITY_TESTED_DISTROS, 
people will get an error message if they upgrade Dunfell without 
upgrading their distro.

Shall I send a V3 including an extra commit that restores such distros? 
I still have the relevant information in the documentation.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


