Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web09.4431.1653468349778990693
 for <poky@lists.yoctoproject.org>;
 Wed, 25 May 2022 01:45:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=VXOEkyiX;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: luca.ceresoli@bootlin.com)
Received: (Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 62C05FF803;
	Wed, 25 May 2022 08:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1653468348;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zj/bKCldPW6Lwsxs9+k/Z6DZGPOCmvYux6B3SbEG8Ns=;
	b=VXOEkyiXD56QZpiCD/ylIFVWUx4Blss4YNoSgkaCQjbuAtz2qNdxcUT+2coN+lVv/ghflh
	eou6ya2qfIkWG0uDRDmKQdAewbloIR5/ay2Ehi3vE7mc3C8GvGDQwXCwlpvAtBx80kxE9j
	apxyL+E9TxInrLcbiE2mn4WhaQlEhWC42e7itXdUnGC5PN8f+w1BfqSUhONlDj9OjOT5eO
	44UHtQnmFHoIgKpzoLAm87d7AxtFvQuPh4qcD3ZIue3IZvhQvJOksO7Wb7epUHIXLE0qv3
	rdQuY1OtAF9HvPGM05zcXbixO5Zh/2U68cvfMLFAxiTYEub9gbAHStX0Bkb9gw==
Date: Wed, 25 May 2022 10:45:46 +0200
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
To: "Rusty Howell" <rustyhowell@gmail.com>
Cc: poky@lists.yoctoproject.org, Rusty Howell <rhowell@control4.com>
Subject: Re: [poky] [PATCH] oe-depends-dot: Handle new format for task-depends.dot
Message-ID: <20220525104546.4d4ebfef@melee>
In-Reply-To: <20220524210240.3223272-1-rustyhowell@gmail.com>
References: <20220524210240.3223272-1-rustyhowell@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Rusty,

Il giorno Tue, 24 May 2022 15:02:40 -0600
"Rusty Howell" <rustyhowell@gmail.com> ha scritto:

> From: Rusty Howell <rhowell@control4.com>
> 
> The .dot file created by `bitbake -g` changed formats a while ago, which
> broke oe-depends-dot.
> 
> Also add some useful examples to the --help output.
> 
> Signed-off-by: Rusty Howell <rustyhowell@gmail.com>
> ---
>  scripts/oe-depends-dot | 21 ++++++++++++++++++++-

Thanks for you rpatch. However it should be sent to the oe-core
mailing list, as described in README.poky.md.

No need to resend it I'm taking for testing on the appropriate
repository, but please keep this in mind in case you send other patches
in the future.

Kind regards.
-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
