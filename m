Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.18264.1599313405893929190
 for <poky@lists.yoctoproject.org>;
 Sat, 05 Sep 2020 06:43:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QWXzxZjP;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1C34238C0731
	for <poky@yoctoproject.org>; Sat,  5 Sep 2020 06:43:22 -0700 (PDT)
Received: by mail-qk1-f194.google.com with SMTP id p4so9121875qkf.0
        for <poky@yoctoproject.org>; Sat, 05 Sep 2020 06:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pFs8GQ7xeG5aXdXrpsq3NozZaK4EEUedDvO2XEGxRl4=;
        b=QWXzxZjPCzFWRVmawJKd5J8HZxLBml1Gm3uUpX/RR/iSb7T4s8nIE+f+Z1bzHIdz8g
         pAHkS2Kyp6u8PmMWsBU3BCbLMXBWKISE9JjV4katERlhC4ChbZM2lTW9hYPhIvrCyqxR
         jeufvaHlFKKxRpxTFIGsRjyQPk0tKzsANpCvWoHOAL0c+fqovSLDsuGal3OdxUnYstbd
         XAduqJC4neRWmr1EbuFm1wDsBjaoEuDQpkxij6idO+iPsfZp202kjjBDqM16wZtFH1iw
         vm3M6oXj8fRFEHUJMDA1/jpc42itugE/uxXxGEIdYGwETxKrnAZWRHQSnfSFMDdHCUTY
         LbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pFs8GQ7xeG5aXdXrpsq3NozZaK4EEUedDvO2XEGxRl4=;
        b=k1dL5QCXq7U1v109c4oSjQBZ6MNnP5Vh3yL0/h/7rAInN1iN9WJiaS352Gikngiu3r
         b9dcZl7FXvkaZ3XKP/8bYz+Cpc6VyFQR39qlwDcrwpWZKQe57UzgqOcU5c2E37OAPQMP
         Ez8VsUr7/98GcQsTkmGJeT041dVwtOAEFtxQ8m6YC3McIc6HcEAMePIKngFiTtfImXqh
         CXXVOIgyWTW2haKjLxztsHReO6TLMjx30SFv2D45eWNAe5+y9IGwr/6MbM+1yiY/nDXG
         gaUx1KD9Qf92terKv6v769fdPruoIK0DziNbtAeABWjvq9OfohegqAwlwbBfx7S6ox4f
         pDbw==
X-Gm-Message-State: AOAM533qLiyxeF2su8hxQjw+0zXjd+txhXdP63PbFdftbX1AosTMx//e
	8SvZ1RbsfTyo1ZzVI5Q52zowNAPfqVqBOOFqJKae+ESOT2o=
X-Google-Smtp-Source: ABdhPJyW0CIRDNI7f5UTIkEM25cpysUoJSXZlHciRPzFqvcahqrV6IubFrLUT9c53suqWKb/EF4waXTW8CmzRh9YggA=
X-Received: by 2002:a37:6f43:: with SMTP id k64mr12597488qkc.212.1599313400954;
 Sat, 05 Sep 2020 06:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200903130227.496348-1-ross.burton@arm.com>
In-Reply-To: <20200903130227.496348-1-ross.burton@arm.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 5 Sep 2020 06:42:55 -0700
Message-ID: <CAMKF1soP_fRjjWCLF9GE+KX2p7aVsUO=xxCFy2OF_jFr4gwhyw@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample.extended: remove help2man reference
To: Ross Burton <ross@burtonini.com>
Cc: Poky Project <poky@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

FWIW This patch would be needed for oe-core as well.Perhaps post it
there as well and backport it here.

On Fri, Sep 4, 2020 at 6:20 PM Ross Burton <ross@burtonini.com> wrote:
>
> help2man isn't part of the early build anymore, so there's no point in
> referring to it here.
>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  meta-poky/conf/local.conf.sample.extended | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
> index dc92a16f6c..44a01690e3 100644
> --- a/meta-poky/conf/local.conf.sample.extended
> +++ b/meta-poky/conf/local.conf.sample.extended
> @@ -124,9 +124,6 @@ DISTRO_FEATURES_remove = "x11"
>  #This enable mklibs library size optimization will be for all the images.
>  #MKLIBS_OPTIMIZED_IMAGES ?= "all"
>
> -# Uncomment this if your host distribution provides the help2man tool.
> -#ASSUME_PROVIDED += "help2man-native"
> -
>  # This value is currently used by pseudo to determine if the recipe should
>  # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
>  #
> --
> 2.28.0
>
> 
