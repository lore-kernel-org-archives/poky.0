Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web11.23036.1675458330520536747
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 13:05:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=libaeTbP;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 5CFC1C0002;
	Fri,  3 Feb 2023 21:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1675458328;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IPcfhGRu50seJg1fPKPHbiHHn3ZUzg4wl/2iTx8uezs=;
	b=libaeTbPz10vtcz0I7y1PoV2nl9dIQDdmJ5ayUdPsSWTkGTkSthYEPpsLMlblQL7Kf36jW
	V28KFXmfT5oyiPevnyuox+9P4HeQH08Zh1OFR7jAmOVNJOhZzKPVyCTpdo5IeHlab+wMvJ
	usac59lA+21+TX8DHoECZJ/fuZ1A8tz0SRZXoY4nzEXU8WZ4Z0AgCDdni0HNy9Gc0x3k9l
	tnIwzoqk+6oVM2cCMXXiWMvOlyXlNq5871TVWyJ5lgI7p3l60mbyt8+kEQ9nIeZOulVwi2
	kOTtS4cCBsQ0X9TEazhzYTpvlB1RI9C7yTYM7Ykn1GGimahCd2p1HRnQN9rFzw==
Date: Fri, 3 Feb 2023 22:05:28 +0100
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: George Kelly <george.kelly1097@gmail.com>
Cc: poky@lists.yoctoproject.org, George Kelly <gkelly@phoenixcontact.com>
Subject: Re: [poky] [PULL] [PATCH 1/1] bitbake: fetch2: Add NODE_EXTRA_CA_CERTS to the list of exports
Message-ID: <Y913GNz0hk4BPi7m@mail.local>
References: <cover.1675447409.git.gkelly@phoenixcontact.com>
 <c486378d098e4a5cb89b712dbd6b66e9b67f7dde.1675447409.git.gkelly@phoenixcontact.com>
MIME-Version: 1.0
In-Reply-To: <c486378d098e4a5cb89b712dbd6b66e9b67f7dde.1675447409.git.gkelly@phoenixcontact.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello George,

Thanks for the patch, a few things to improve:

On 03/02/2023 15:29:43-0500, George Kelly wrote:
> From: George Kelly <gkelly@phoenixcontact.com>
> 
> if you are behind a corporate proxy, the npm fetcher uses the proxy IP address already passed in the list of exports. However, it will error if the proxy injects its own root CA certificate. Thus, the NODE_EXTRA_CA_CERTS environment variable must be passed so the user can include their company's root CA as a trusted CA inside node's certificate store.

This commit message should be wrapped

> 
> Signed-off-by: George Kelly <george.kelly1097@gmail.com>

The Author and SoB must match.

> ---
>  bitbake/lib/bb/fetch2/__init__.py | 1 +

This is a bitake patch, please base it on the bitbake git repository
(git.openembedded.org/bitbake).
Also, this should be sent to bitbake-devel@lists.openembedded.org

>  1 file changed, 1 insertion(+)
> 
> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> index 5a7a6024d1..747356dfa1 100644
> --- a/bitbake/lib/bb/fetch2/__init__.py
> +++ b/bitbake/lib/bb/fetch2/__init__.py
> @@ -851,6 +851,7 @@ FETCH_EXPORT_VARS = ['HOME', 'PATH',
>                       'DBUS_SESSION_BUS_ADDRESS',
>                       'P4CONFIG',
>                       'SSL_CERT_FILE',
> +                     'NODE_EXTRA_CA_CERTS',
>                       'AWS_PROFILE',
>                       'AWS_ACCESS_KEY_ID',
>                       'AWS_SECRET_ACCESS_KEY',
> -- 
> 2.37.2
> 

> 
> 
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
