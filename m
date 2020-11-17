Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
 by mx.groups.io with SMTP id smtpd.web11.4961.1605598583754665889
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 23:36:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mIV5ouXf;
 spf=pass (domain: gmail.com, ip: 209.85.222.194, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f194.google.com with SMTP id u4so19552508qkk.10
        for <poky@lists.yoctoproject.org>; Mon, 16 Nov 2020 23:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9QrGbR5coXMkkovCh1lySaXOv99ZuJIaZvSmpO9Fy8s=;
        b=mIV5ouXfCROd1EL0KXzQ9VTGCp+DLz+3uHEavKosolggBCwbXdwsjGsUz/cByPZf6O
         t/tgQ55CCO37totNdpJMGJBWcAR3oEWk19SC+2w095Az5xoxO72RTuAu3tWhnYggK8bv
         kobxys8o8isfTFfDB1XaxdoNfchmrfpEY+2JR0nmDDPuEB4hnio4fUxJ8qjm1NtSZKOi
         svu5qSrE+qNlowsWFjVoQiDRAM5cQvZHiSRHM8uZLg7d4XSShJb2mf2vFKnfWskoSbCK
         SL/M9jzSDbsjhYgi/CHGpn4a3sQ7lbIdCRQCaNKy+6T0pBX4Po68YtUgOB+bIhlkfHJ/
         KG+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9QrGbR5coXMkkovCh1lySaXOv99ZuJIaZvSmpO9Fy8s=;
        b=X7sT14vI/QSJWMk3NguBwUmuQKNu+TmXp1zjPc0gcY3MVB3sgvKsHGZl5sTv2RZJga
         yflZWPRq0vgMnp2AxCEb5kIclGl37LJoDlnuWql1OFQZeu0sOLxgbgEW/a9PavfTEDfr
         thJBzfTGH1q0ogO97zMFANGxvO59EDZ8uaxwabmRZOs5L16O1vURJoQsPqygDLLigeEV
         9XT4bkjovQgsoV6zQUUP/idPPeWrragY0Je07LJ98ogj0RPTP/F4jpdzS5PmD7iph5LD
         BLb08fJAntnpoewBnFyfjifBahYxOhDztb/YJnKBpIEPzWS3z9RK45rlun+1rZuMc9xw
         NykQ==
X-Gm-Message-State: AOAM533B6TZDg4CJdShtwwynjPUWBIqzXhjD8WJAKceZh/mNMxgGqsh2
	h4TwlzEZYght/OPtn19+k1If+yypZHC8hBBJU3w=
X-Google-Smtp-Source: ABdhPJxdRinTLyOFdteU7R7x7tqCMjehciZRAQyutygBp5/zIAtUh0aGh5uvqIwmFPxEWx1c1QJT7qDBYh/TxN82uyk=
X-Received: by 2002:a05:620a:204c:: with SMTP id d12mr18829899qka.212.1605598582803;
 Mon, 16 Nov 2020 23:36:22 -0800 (PST)
MIME-Version: 1.0
References: <20201117024555.7716-1-okaya@kernel.org>
In-Reply-To: <20201117024555.7716-1-okaya@kernel.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 16 Nov 2020 23:35:56 -0800
Message-ID: <CAMKF1sqJCo5xTnLjcukxkjYEqGiR9b8pXSDA2igDF+1OzuKBug@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky-tiny: prefer thumb mode by default
To: Sinan Kaya <okaya@kernel.org>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 16, 2020 at 6:46 PM Sinan Kaya <okaya@kernel.org> wrote:
>
> We can use ARM_INSTRUCTION_SET to select the default instruction
> mode for userspace.
>
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> index c6d4b88f83d..87ee0970b93 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -122,3 +122,6 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
>
>  # Disable python usage in opkg-utils since it won't build with tiny config
>  PACKAGECONFIG_remove_pn-opkg-utils = "python"
> +
> +# prefer thumb mode by default for userspace
> +ARM_INSTRUCTION_SET = "thumb"

we have defaulted armv7a+ machines to use thumb ISA if DEFAULTTUNE has
't' attribute in it
which SOCs do you target with this change ?

> --
> 2.17.1
>
>
> 
>
