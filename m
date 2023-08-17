Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80F32C27C7A
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 06:35:17 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.181345.1692254114758733500
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Aug 2023 23:35:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Gcm6lJRC;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id BED0D1C0003;
	Thu, 17 Aug 2023 06:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1692254112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ed0+jEB/njmT/Ky8X8b6JVtWGeZv4JkaQXpzUfKQih8=;
	b=Gcm6lJRCzcMWQBs3k87vBME4TDizSJqY7mP2CIG+m/WybYKzJT4dY9P/7W+cRl6vXjnDQF
	l5H1ku6u/qsxqhx61O1r4My+zBnbW1VcCWmGUQl4jl287yhiQxcJ6r55wRh56NMoFEQ7HT
	9OjK3vDaq6LLrFl3Et4ponToZfFeSoMgpkAFPRMHjtphPCP/5oXuEO5I60JT8uSGadmdHk
	xzV9iizMmyOUbjHUcbOdKkj3gdzlKD1WuPm86wcW7ES9fXEbJfzhMyWe7PI9G2JaLylYMK
	R9fLjBCtcu3BBs2z0aB/LwYUdkxZeJSoJoCcr7XcJVY5evhdaAhaQxzbfQv+cA==
Message-ID: <d0d0a045-666b-47ea-9759-4d05f439fe36@bootlin.com>
Date: Thu, 17 Aug 2023 08:35:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] scripts: use the monotonic clock to compute time
 elapsed
Content-Language: en-US
To: jtilahun@astranis.com
References: <20230817045433.495995-1-jtilahun@astranis.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20230817045433.495995-1-jtilahun@astranis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 06:35:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13129


On 17.08.23 at 06:54, jtilahun via lists.yoctoproject.org wrote:
> From: Joseph Tilahun <jtilahun@astranis.com>
>
> The monotonic clock is preferable over the system clock when
> computing the time elapsed.


I agree. Otherwise, if you suspend your laptop, the time information 
counts the time spent sleeping.
I submitted a patch to BitBake a while ago, but there was the fear that 
my change would break other parts (though it was working fine in my tests).

However, I believe you should send your patch to 
openembedded-core@lists.openembedded.org instead, because that's a 
change for the openembedded-core repository. The "poky" repository is an 
aggregation of multiple original repositories.
Thanks!
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


