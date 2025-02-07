Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ADDC02192
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 07:48:50 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.64233.1738914521664255118
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 23:48:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=E3jP6tK1;
 spf=pass (domain: linaro.org, ip: 209.85.167.51, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-543e47e93a3so1934520e87.2
        for <poky@lists.yoctoproject.org>; Thu, 06 Feb 2025 23:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738914520; x=1739519320; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZbHZWLt6QgzWIOt0hEXrMLypVhe2wLy5ZT2uUglLy78=;
        b=E3jP6tK1t7XDj3/TlwiwF9ycSBkEsnpugeTQ6NHJhI6Z3CaGFjqkpk7JwYZqcycxYe
         E4Qq0Gt8gLCjrplFdgIgv6rieVvPnCoYQf0zR/5s97qEQYTUn1iRta2nQ0ucEQ4SNV38
         vtQwvnUirTTFNS7P89SKV3aCo+NAwUir9hSFJ48hPHOeHiEg1c98jB9muO02teKXzCY/
         QKjanK+vng56tG19c+7Y6dene4zi0pE7iskBbMYspmaoSv4J5hhN6ozr4JkbcXJ/Qxjy
         HN1Wj1dNjcHDetEIbyny6mnNaNpu1QySX2/KBmZQCaDeGRgIrpEJSSXNcquheDDe3gG2
         EBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738914520; x=1739519320;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZbHZWLt6QgzWIOt0hEXrMLypVhe2wLy5ZT2uUglLy78=;
        b=ahSKagDov5utR6U7ybpgzAvO8DYKsvNM4+f8JsLYAfiIxKYFfKTYppdj7/O+mXvWGV
         bzR2gATGaFy5jFHAPwY3KaGTYZ55gQL/gri2CIsqLPW93+0MFuNGKEJPagtmOO2fgsfv
         lQuFkrOYvfgtntxff9OctZXme4ETGRffED6Ki0VRA1Yq+gcCEJNEVy3nDhmkfr17dR2C
         m1iquOJTLt0W7AGBxeK3ySk7F/vcuN7kr0JF8nLQdpTixvFV5eY4Rl4+713bboWgSP7L
         +9Y0olz6Dhi6dYj+go1Y42VvWoPyYdzVcjThc4fE6iH3JG+5fSijlhWIHgT/C34jZCIR
         /FMA==
X-Gm-Message-State: AOJu0YwmRdGW7kGZpPSrvrPelxiBQIq4WEhAql+lnfce4XpYlddDyQoW
	GJMf7NrKujprLYFKHFy8zYWKFzUGzmw0euHKuz3Tjx8vPaH/3jmj7ss709EIGHc=
X-Gm-Gg: ASbGncvQRigjlgiSI9+VWynq2D87akaSsupVfz+AortPP1QFzd55GlnKJPAU63qFiiA
	JKgg6tuRyiN0kSrLTa497e3LX3+GDyNzcebEJnoeOAr1yTzow1HTBtXZoHdZX7+j0iiNPE/SkVP
	7nhgwrfqCVnKOJisKX+chRCKKyN9U8fkC6j8+O6b1f/RA9KtU3skXNneF/VpoiiQxhTc+gOZt4a
	avjGTok4OWu/Uy3t86NJZ5IQhgoL6JTJze3J2fBr1dh79wZLVv1LuVVomfLgbJuu0zeIAZgKUGb
	I2SG0ptQ32WxEQ7enWBhTQ9kq4imJJOGhQcFPhXz
X-Google-Smtp-Source: AGHT+IFKIyaW89KAdYApLBooAindxSqAjFfp2mO6laT9TshfvdUR4BiaHJl3qLp/XBxN+JE3gdRA0Q==
X-Received: by 2002:a05:6512:2388:b0:544:100c:e7e6 with SMTP id 2adb3069b0e04-54414aa8750mr504550e87.29.1738914519697;
        Thu, 06 Feb 2025 23:48:39 -0800 (PST)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5441055422csm365646e87.61.2025.02.06.23.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 23:48:37 -0800 (PST)
Date: Fri, 7 Feb 2025 09:48:34 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: ross.burton@arm.com
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH][meta-yocto-bsp] linux-yocto: revert omap8250
 power management changes on genericarm64
Message-ID: <Z6W60hHg7PNrUaMu@nuoska>
References: <20250206172451.3843991-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250206172451.3843991-1-ross.burton@arm.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 07 Feb 2025 07:48:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13528

Hi,

On Thu, Feb 06, 2025 at 05:24:51PM +0000, Ross Burton via lists.yoctoproject.org wrote:
> The genericarm64 machine sets SERIAL_CONSOLES to a number of potential
> devices:
> 
> SERIAL_CONSOLES ?= "115200;ttyAMA0 115200;hvc0 115200;ttyS0 115200;ttyS1 115200;ttyS2"
> 
> With sysvinit this turns into getty lines in inittab, and with systemd
> the systemd-serialgetty recipe creates explicit units to spawn gettys.

So for systemd poky-altcfg genericarm64 images my patch
"systemd: use serial-getty-generator on genericarm64"
https://lists.openembedded.org/g/openembedded-core/message/210938
should also work around this since build time SERIAL_CONSOLES is ignored
and getty started by udev to the correct serial devices.

Cheers,

-Mikko

