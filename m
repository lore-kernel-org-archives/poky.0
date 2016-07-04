Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27F57E00CE3; Mon,  4 Jul 2016 06:24:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAEAAE00CC7
	for <poky@yoctoproject.org>; Mon,  4 Jul 2016 06:24:19 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id i30so11521380qtd.2
	for <poky@yoctoproject.org>; Mon, 04 Jul 2016 06:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MLjI4mTsA/CtAZRkJ4FCTICItGl7Kd7l26ZvC6/Te7c=;
	b=KBkTEqpEpu1sLA9GzK+TKYgfBwzZ7Yy7Tfk57IW1+/GdbTFXZ2aHm1QP8+ezIDw1sx
	+pgqbG3IhyO4er9IWutsiDuND2siHwvTeHgy8AdzwFo0EMkSKMBaMHBszU6xZepuufuW
	vTOnX3kPLy9WJyJBEjpAhy/vgPlQyL/b35dhq7dv7xTCoABCuDGjAp8OQq2vkhOBRqTl
	n+8SHFjmXlcww7/LD+vx1kdaQT6LFH7bnH3KqRESOQ6QZi6JxWiXp5E2ZHd4htQqzb02
	ssZkfQBmk4t+25u1bSnLJFiHBgpCNORlFJ32qeGxqxSJs8H92SzhubD6X/PQA6HhBqQu
	DTFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MLjI4mTsA/CtAZRkJ4FCTICItGl7Kd7l26ZvC6/Te7c=;
	b=i/s5Z1ZA+MzF2l7p2xu0tyENorrnwaZSTHksYecE1zoaYf/4MHMUyF4ojs+dEJE6kC
	FRfziXgOXjLa4k2WKDEuDTZTS4TeKaoQ4B2nIoJN8FRFmTcChPMsAlKyO9yF/j6dOKtz
	RaU/CNNjsiOZR8xgiVs3OVKOGr6xRrObxAUQjCYoZfZkJRrGDFkiOoC44mgFaEmuSlZz
	75xCcu/PkdcL6WywlHYOd7Fzb/F/rWKOQpjFs/1AQn/JYrZGkIgn2XGWFWqQIXZ7SKjD
	UiWHSATRhUm2UAfEpW1BUMqwDv7lNqB4u0fHXC/ZJZ/YB4M9asWhRrJMdTn3z7jhWBpq
	WJLQ==
X-Gm-Message-State: ALyK8tIEvc3ujx9asgsjYaCjS9AbPdXpoTmKxov/Sy9f5XZCMc2ZJdWsACHr52WmiCm6VOgccZqRbEOhbaxTPQ==
X-Received: by 10.200.49.50 with SMTP id g47mr18568752qtb.76.1467638658824;
	Mon, 04 Jul 2016 06:24:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Mon, 4 Jul 2016 06:23:49 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1607040639330.6324@localhost.localdomain>
References: <alpine.LFD.2.20.1607040639330.6324@localhost.localdomain>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Jul 2016 06:23:49 -0700
Message-ID: <CAMKF1soWb4UKJ6_5MZrxyRgu0miuAFeDC=QZ6xDsPeNpPuM24A@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto: Delete PREFERRED_VERSION for obsolete version of U-Boot.
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
X-List-Received-Date: Mon, 04 Jul 2016 13:24:22 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 4, 2016 at 3:47 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> The OE recipe for U-Boot v2013.07 was deleted in 2014, so remove this
> reference to it.
>
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
> ---
>
> diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> index f3ad12d..1e7de09 100644
> --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> +++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> @@ -22,7 +22,6 @@ XSERVER ?= "xserver-xorg \
>              xf86-input-evdev \
>              xf86-video-fbdev"
>
> -PREFERRED_VERSION_u-boot ?= "v2013.07%"

while this is ok, I wonder if the new defaults work for this board ?

>  UBOOT_ENTRYPOINT = "0x00000000"
>
>  KERNEL_DEVICETREE = "mpc8315erdb.dtb"
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

