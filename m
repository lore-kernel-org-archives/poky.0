Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB52FCAC5AE
	for <webhook@archiver.kernel.org>; Fri, 26 Sep 2025 07:51:29 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.12254.1758873087537524920
 for <poky@lists.yoctoproject.org>;
 Fri, 26 Sep 2025 00:51:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=IwtS12WG;
 spf=pass (domain: linaro.org, ip: 209.85.167.41, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-57bc9775989so1681867e87.1
        for <poky@lists.yoctoproject.org>; Fri, 26 Sep 2025 00:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758873085; x=1759477885; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m+nfVTCpD1CVrPid0MyiS2jKCE6lW8QrMJ6gwR1FC3o=;
        b=IwtS12WGhvpM76d1Kk8I1DC2zjFzSWEzn6yAEgp1v4JQ+EKQBiay3HAIPizZdttd9q
         Vuti81mU5HQ/ws0M6+BipKAXBqNydMYM1cuQuApJkv1X4cSuAriKE1m/w/fmy6VZpt9z
         vwiGhebH3ZUhCL0FQ0oQbkTAyT23xEY0VsbzOWCTkB6e3DMSY49oHapoy7VkR4KQ6oy4
         KYk8BhXILGG+8jGLJ5lMvc4K0crPlAfwSUKYneH5fMUCZ2xkze1Ymx0HQ6J61hI+aZT0
         OEquSDWqYr9Ag0BCsfv2jdn1+j1Fh5cLjowiUb527KoM6dwl3WlEU/32JJaHd/cwa4EV
         4qvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758873085; x=1759477885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m+nfVTCpD1CVrPid0MyiS2jKCE6lW8QrMJ6gwR1FC3o=;
        b=QWD5X9PxInUeHFYcOAlv0yue+LhPTMa7IlCFGgcLs8+nvNTiDq+P8HT466KSBpX8xx
         RdYhzrvOEJOpJRkUwe1ek4XPQ13N68U7aq461ocE4bNwUh1obfJfH7+ep5x2nuuLFz1z
         5qg67zu6FZwYhiwENp020h0Qj22tqSO+VsyBtHFlytwDJdBn/JD8o/oUPkAv6hu3DIAR
         ssh/SNhwXUSFfznPAd82SdIYadNywZKrobbQIeso5nC/Fas27ncySyk/EmuavpbM7jdW
         8Dv1LVZn4r4u1aCeJ5WQeGzB952mTZX6RzVTy+6rgh4Txa831mAvZHxacUNbGxPuZlFu
         dbQQ==
X-Gm-Message-State: AOJu0Yz9LIwQhIWxR+Hen9xuik5iHQ/I4P9hEkf3Kx+XV3brpPLcMbzq
	79nlWJbmL4A9IOyWJ7tmQMizCtwJDN1vj85p7wvzV6zA38z8l2F1jTtREEr1lxUPR7UQXNKLR2c
	YAzYxkCA=
X-Gm-Gg: ASbGncvz6fuYkNFjjXJBu1Vs0WsHNP9rwUjzx9tjipTcHD/bLfFvhz9r3Lebf0QUaXV
	Wv5BHkmQUG38/+egsQlhO7JON+E7C3QOlcrZJRoTerTwP7UWUQVaHZwxGm9uMz2jtYsfErWu5w0
	INW40o8JpQ79JU0a/D8JReALEkincxP3z7dO+0IF3H3PweHnj5f/CLgUqbALrlbebP1ksS/eiWo
	oOQnNc6N4U6N6vhJ21xxpaYXlxTpvm60YfR+toOf0G+ecSnz5l0nTW12Sl7Gews/TnG+5TZDpF1
	edksLBOr8pKRLyXx6VZyE9qk8l0k96Tob8g5VLKslP9CEdVYfwpq3uRsFpcth7CHRLOzwsafEuI
	uRjJfW8KwVQpTjTpp5RN4Ebebtw86ZxiwPaqTDEG8AjIIHYVy5f6WtD5+
X-Google-Smtp-Source: AGHT+IHFfb55/f+kZbdCMiGE0uH8v25VxfZZuSd//0Aw31NYsZig282sDeJZB8/KS59jP9JR6LnxhQ==
X-Received: by 2002:a05:6512:a8e:b0:579:f1f6:e2df with SMTP id 2adb3069b0e04-582d295ce0amr2112340e87.32.1758873085344;
        Fri, 26 Sep 2025 00:51:25 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583134310bfsm1585333e87.26.2025.09.26.00.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:51:25 -0700 (PDT)
Date: Fri, 26 Sep 2025 10:51:23 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Ross Burton <Ross.Burton@arm.com>
Subject: Re: [PATCH] poky-distro-alt-test-config.inc: don't override
 PREFERRED_VERSION_linux-yocto
Message-ID: <aNZF-z35JTa8PQg2@nuoska>
References: <20250904095943.2743917-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904095943.2743917-1-mikko.rapeli@linaro.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 26 Sep 2025 07:51:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13755

Hi,

On Thu, Sep 04, 2025 at 12:59:43PM +0300, Mikko Rapeli wrote:
> This overrides PREFERRED_VERSION_linux-yocto set in machine
> config. Use ?= like in poky distro config so that machines
> can override PREFERRED_VERSION_linux-yocto and for example
> update to 6.16 kernel via machine config.

genericarm64 does not work well on devices which are not known
at compile time without udev and thus systemd.

This is why our genericarm64 test configurations use "poky-altcfg"
distro with systemd and not "poky" distro with sysvinit and no udev.

genericarm64 would also like to use the latest kernel, which right
now with 6.16 kernel includes a lot of fixes and enablers for more
HW support.

Could this change be considered?

Or are there any alternatives that we could use to for a combination
of latest stable kernel and systemd out of poky build configs?

Currently with "poky-altcfg" distro, we can't override the kernel version from
genericarm64 machine or local.conf build configurations. The distro
setting overrides these.

If this patch is applied, we can change the kernel version from
genericarm64 machine config or local.conf build config to get
a useful test combination.

Cheers,

-Mikko

> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> index da9199dcd4..5f86e36735 100644
> --- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> +++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> @@ -2,7 +2,7 @@
>  DISTRO_FEATURES:append = " pam usrmerge"
>  
>  # Use our alternate kernel version
> -PREFERRED_VERSION_linux-yocto = "6.12%"
> +PREFERRED_VERSION_linux-yocto ?= "6.12%"
>  
>  # Ensure the kernel nfs server is enabled
>  KERNEL_FEATURES:append:pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
> -- 
> 2.34.1
> 

