Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 468DAE00D33; Wed, 28 Aug 2019 08:54:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACE72E0098A
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 08:54:29 -0700 (PDT)
Received: by mail-qk1-f195.google.com with SMTP id m2so152949qkd.10
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 08:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RWCHRJ0LOFzL3leGHr+8w3e6mZ/qcy3T2yxxscBOUrw=;
	b=k8PjDp/Mus+0oqP53cvqja7MUxR8qRJr1hVIrmCZjIEckzQoMRu2Pnnsd30stnBdiV
	AJmqT8r3yeVNbJQjt7bUp1PaRGwpbIDaXdSKWjEQXo/D6N6pvLoxR7uMPLHeA9AZgK7p
	M4bNce6jeykJz4iQhR5LbjLiwCLamzWD9X+gW0ZeE4mc5tGpkbJKlT4PV6LRPSQ2j0OW
	BT8FhGBd05Bw7Q4t2VOqbZGZrSY47/UKdehNqr6x7OmHCKdVMElVpHdlN29gPBVNe+eZ
	NvORaTOkcdOhynR374w8uE+bwIQaApFVAmRtgOdrBZ9JgvNGB9RqsrFVtm9QsL4aCEDY
	PSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RWCHRJ0LOFzL3leGHr+8w3e6mZ/qcy3T2yxxscBOUrw=;
	b=PQUwg8bvD/k4B1Z9C+fcm8gono6ro0nCa9b76Jo8DN+BQyN/NIcBtcUHWHpR4ndPYy
	QKIfACOq05CElVq+tn/FNgEPvlCe9UtAkv6DCHFRch7Zyb3hBYEkt8oBvhJwXvBQT0Ks
	cM/CNATgLn25nYqiOBG4RZdC2q30I5I0mIUz05wFVyYLrk4mKCP664MQNa3oJSMI+hOi
	axGDvMld9hzs/2vGTi53QEsUho39giqyEX1Q5wjCfnPd5S5jFGRws8KZJA05f6BLbCXX
	VIseAhIN6ajLeQeg7RLLxkCkwOEnPv2lKA4RHPf5T0pNKYd8KGiT4xvz6ST8Anj6FIS3
	cuXA==
X-Gm-Message-State: APjAAAVKOU5tIcSBm27OeblJxbVQoSI4C8ZPVdjci/+pcdKn8Lwc5PZE
	eetv1uwAQX8aEUfsRcQhuAZf0MNwZZYg37RHk6M=
X-Google-Smtp-Source: APXvYqwWPmsSB5reuRqUzmgDu4bvHKvGTFrq8Lm2Jzubrd7xIjqRAFyylFBLHAtH+s0VHFptSAWmlrFASykbaAGt158=
X-Received: by 2002:a05:620a:13c1:: with SMTP id
	g1mr4791243qkl.9.1567007668714; 
	Wed, 28 Aug 2019 08:54:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190828152633.70910-1-alex.kanavin@gmail.com>
In-Reply-To: <20190828152633.70910-1-alex.kanavin@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 Aug 2019 08:54:02 -0700
Message-ID: <CAMKF1sqZCCvpWN66++jZqD0znv+2m+4RbDiN7z5+3dJEB55NFw@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] beaglebone: use the default of 256M rather than 512M
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
X-List-Received-Date: Wed, 28 Aug 2019 15:54:30 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 28, 2019 at 8:27 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> This is done for the sake of using the same default
> everywhere; see here for details:
> http://lists.openembedded.org/pipermail/openembedded-core/2019-August/285900.html
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 7c7b3059a9f..57b799294d4 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -47,7 +47,6 @@ QB_DEFAULT_FSTYPE = "wic"
>  QB_FSINFO = "wic:no-kernel-in-fs"
>  QB_KERNEL_ROOT = "/dev/vda2"
>  QB_SYSTEM_NAME = "qemu-system-arm"
> -QB_MEM = "-m 512"
>  QB_MACHINE = "-machine virt"
>  QB_CPU = "-cpu cortex-a15"
>  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-networkd"

I wonder if all these QB_* settings are relevant to non-qemu machines
in first place

> --
> 2.17.1
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

