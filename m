Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.11162.1643193594961115840
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 02:39:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 1B9FF1C0008
	for <poky@lists.yoctoproject.org>; Wed, 26 Jan 2022 10:39:52 +0000 (UTC)
Subject: Re: [poky] [PATCH] local.conf.sample: use https instead of http for SSTATE_MIRRORS
To: poky@lists.yoctoproject.org
References: <16CDCB9E76806EC2.21331@lists.yoctoproject.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <d43dc319-4d43-7715-3f55-44feb35316a5@bootlin.com>
Date: Wed, 26 Jan 2022 11:39:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <16CDCB9E76806EC2.21331@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 1/26/22 11:35 AM, Michael Opdenacker wrote:
> Both http and https work, but we should get fewer questions
> with https
>
> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> ---
>  meta-poky/conf/local.conf.sample | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)


Sorry, this patch is outdated. An update is coming soon.
Apologies for the noise.
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

