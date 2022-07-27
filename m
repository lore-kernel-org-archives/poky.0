Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.18577.1658920845739603442
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Jul 2022 04:20:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=HszR0X7G;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: luca.ceresoli@bootlin.com)
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 0F74C1C0004;
	Wed, 27 Jul 2022 11:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1658920843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BKWgoD4z5kokxPD23ff8OK1CkT3YdndYGzfHBhvpfTw=;
	b=HszR0X7GesNtl4czhWpox9lG736aFzIUSuVNO2RoWZda4YzprT2Dn2vRo199OFRYjZlX6m
	tFD57OWTNN6OmTkAPwlaKsMhFaEjI4oEzFhup+rYhtOn9ICLlH+Y2Bd587zJjyjvbkHC/L
	sjX6mjC7iCR0aJAxsYlMnv2ANxxU6erSwBLesZNK7UKMGqY55+hzDqi+ff5/EYXtIBqKed
	F2BxhZYvJCZ63e/tLgLIPVHjQSlu26W0u/SMZZI58R4mjPxA/0bWohXKyGqUOgk6yCRLrE
	xK/xDMayrPS0fRQWHE+C54Vu0VdXW5wK/KjG0VENFaq/QyOPDy+3yzXceK7Y9w==
Date: Wed, 27 Jul 2022 13:20:41 +0200
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
To: "Armin Kuster" <akuster808@gmail.com>
Cc: poky@lists.yoctoproject.org, Armin Kuster <akuste808r@gmail.com>
Subject: Re: [poky] [meta-poky][PATCH] poky.conf: remove EOL and Cento7 hosts
Message-ID: <20220727132041.6b3afe97@booty>
In-Reply-To: <20220726190627.785536-1-akuster808@gmail.com>
References: <20220726190627.785536-1-akuster808@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Armin,

On Tue, 26 Jul 2022 12:06:27 -0700
"Armin Kuster" <akuster808@gmail.com> wrote:

> Centos7 is no longer in the AB
> Centos8 has been EOL'd - replaced by Alma8
> Debian9 has been EOL'd  - June, 2022
> Ubuntu 16.04 has been EOL'd - April 20th, 2021
> 
> Signed-off-by: Armin Kuster <akuste808r@gmail.com>

I took this patch in my testing branch with a small typo fixed in the
subject (Cento7 -> Centos7).

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
