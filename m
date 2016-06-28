Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05378E00DC9; Tue, 28 Jun 2016 04:02:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CBBEE00C1E
	for <poky@yoctoproject.org>; Tue, 28 Jun 2016 04:02:01 -0700 (PDT)
Received: by mail-lf0-f44.google.com with SMTP id l188so8670883lfe.2
	for <poky@yoctoproject.org>; Tue, 28 Jun 2016 04:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=CFNBsNTXnueQ8N7XBrA5nHTIsEeCSU7QJlFvJV5lq4U=;
	b=qSIKM/MHaXUCyUSjD3CuKCNQG7hgx6WGclSs9zZJIKzBCIOtmxMJ7gKvZEiGrZ/H/2
	CQjHau6QTADhXpGaS55lmIKvTK3xc8oXGtv05KbgprDP5CYUlIx4aJsp5rvaS9C5xFeR
	HB7rpT8hpVaL2Xgnd5LT0mbDAcSCwZ5xnB2yRnUHAsG2eTVnogwywt7l0ejnKHSMYGUJ
	SmQSXAaBqHR61gPN/9f2tST9DM8vxAu7DmXOZ1LyIo4hEBCVPMAiopTRNLwQesxv0vF4
	60JsSv+IlZbTpBqjwOAvaewb9ZqSaDohrT8ejxr2sojWWSZogLap651a0ussojMumI0V
	RbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=CFNBsNTXnueQ8N7XBrA5nHTIsEeCSU7QJlFvJV5lq4U=;
	b=TJ+LLLZsWz3EQ2qr7kte3DBzCz96mznGnaWzpBlDwU/bQ4IzUqiLBJeaenvlQmk7c/
	dsw4aE161XjgQTrGqsf2WPQYYck791vnZ+hwlZQF3qa8zeXN93FnNl1ph1ub9yKUWawa
	v6+FrF3Q1FhRysqLaFD9Ggzz93EWzyuvbAOD2QO2CdafN/U/2cUNi9pD6mTHyp/hjUvI
	b2ZnidcinlsufVb4fGbuKo/JhpE64TcdsE4mbu0TcZdtmZ8GbYOVlElQzNS+OcjAUBeE
	99fygi8tx7gXTIt8u7MGMEFD3nqRXUqxYASB3wsszHIy8B/c/BYjorgzfSTGIpPHotfV
	t+Uw==
X-Gm-Message-State: ALyK8tIgah6+onB9P9ORcv1p+SFY8woVtWDtJzTdrn2E4oFYRXUbp9xnLrdfnrqSTGBOCQ==
X-Received: by 10.25.131.200 with SMTP id f191mr796377lfd.219.1467111718977;
	Tue, 28 Jun 2016 04:01:58 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-218-130-no126.business.telia.com.
	[213.64.218.130]) by smtp.gmail.com with ESMTPSA id
	f20sm3986389lji.46.2016.06.28.04.01.58 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 28 Jun 2016 04:01:58 -0700 (PDT)
Date: Tue, 28 Jun 2016 13:01:56 +0200
From: Anders Darander <anders@chargestorm.se>
To: poky@yoctoproject.org
Message-ID: <20160628110156.GB4189@ad.chargestorm.se>
Mail-Followup-To: poky@yoctoproject.org
References: <1464718260-8333-1-git-send-email-anders@chargestorm.se>
MIME-Version: 1.0
In-Reply-To: <1464718260-8333-1-git-send-email-anders@chargestorm.se>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [meta-yocto-bsp][PATCH] yocto-bsp: add BBG dtb
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Jun 2016 11:02:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Ping

* Anders Darander <anders@chargestorm.se> [160531 20:11]:

> As 4.4 is the default kernel version, we can add the dtb for the beaglebon green
> to the list of dtb's to generate.

> Signed-off-by: Anders Darander <anders@chargestorm.se>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
> index ea50acc..ad14a47 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
> @@ -25,7 +25,7 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>  PREFERRED_VERSION_linux-yocto ?= "4.4%"

>  KERNEL_IMAGETYPE = "zImage"
> -KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
> +KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
>  KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

>  SPL_BINARY = "MLO"

