Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
 by mx.groups.io with SMTP id smtpd.web09.9048.1604033549427586196
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 21:52:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u4l9+gUT;
 spf=pass (domain: gmail.com, ip: 209.85.222.194, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f194.google.com with SMTP id p3so3876814qkk.7
        for <poky@lists.yoctoproject.org>; Thu, 29 Oct 2020 21:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7+sxbe5fV+PXDXjvdcNrw+8bynkaI8+3aSxMYJ3CTsE=;
        b=u4l9+gUTAjnXasOnKOE2vvCOy6f05uaksPvZC+b+lrlwiehkMw2i5eeT7SF7LoHD/b
         OeKp2oQrWbHu+yp2RN8voH99Wt+upwCYlq8B3jbOeWISjroLPMxdLljK3fmx1wA6GUrZ
         XXQ7IRp2zaRiVickRoPDBBhQp1NqmR1Sk3eL8SSwEWBdqaLDnefSdVH3YKHHiQUyXN/C
         tPhh+uckLBelJuhrjlR7uuRauucS0CiQhiYDQm6kTyBJdyfKOB8yt34fm4igi36LXl95
         hXAdtuh35+2jibyDbe4Nt8hVaoFxh4rirMYSPtsfQqTlrylirv4hIANAJOVxKsiNQPcj
         EyGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7+sxbe5fV+PXDXjvdcNrw+8bynkaI8+3aSxMYJ3CTsE=;
        b=akozFvvEeuCct/UY+pkTU9y3eoa0MCIPIxWyWoGQuCesBrQx+48rNndGo+dP2PyHZd
         JlDjqEo8dYED7gJdLfoFQ/458AFMzUrpziweYRIam2Ia0gZ3T98FUwbUiiZtUhCj60Sl
         iwv8cKEBndKc6ABNQH7a6/T0QvOiryN9kmCQpgUZ76aehvHJ9HLzttK7O/a1aedf0gI9
         12obij0M0g5jNjVn2l2gldyjVFkhvoDtM0U2ECZebfbnX0uWShtlWTrXRt129JWld39L
         YyO3fEP3qEvfTXuxo4W3aPuxQsK6BRt3kqCcxD7dtYbJqHjjQuc2Nx94+0tR8KOhuL81
         HkbQ==
X-Gm-Message-State: AOAM533H5aFXmtaKyE6jU5kc29SCTp9bUCLlUQgVhvsPrpbz3K/copKY
	/TM3nExPJ5FtGYh7KqH0TB2UZkOLKyrGwHsP/UM=
X-Google-Smtp-Source: ABdhPJzGVXCJdsWntWMqLyN/oiazvnoSvTJ+aQR4iTtqqPBUKrG2ZrFJK2iuK04N/3V0FFBkilaBPHLrrcxpMD2qHNU=
X-Received: by 2002:a05:620a:230:: with SMTP id u16mr552872qkm.212.1604033548439;
 Thu, 29 Oct 2020 21:52:28 -0700 (PDT)
MIME-Version: 1.0
References: <20201029173930.784694-1-alhe@linux.microsoft.com>
In-Reply-To: <20201029173930.784694-1-alhe@linux.microsoft.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 29 Oct 2020 21:52:02 -0700
Message-ID: <CAMKF1sp0ueNXuvksM9EgKbZc1wfTg4Q8Sv8p6_tPuTtRVahEsA@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky-tiny: Enable size optimization by default
To: Alejandro Hernandez Samaniego <alejandro@enedino.org>
Cc: poky@lists.yoctoproject.org, 
	Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 29, 2020 at 10:39 AM Alejandro Hernandez Samaniego
<alejandro@enedino.org> wrote:
>
> Compiler size optimization reduces the size of the root
> filesystem by 15%, since poky-tiny is meant to be used
> on size constrained devices, enable it by default
>
> Signed-off-by: Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> index 57826037f0..9a043b1ef5 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -32,6 +32,9 @@ require conf/distro/poky.conf
>  DISTRO = "poky-tiny"
>  DISTROOVERRIDES = "poky:poky-tiny"
>  TCLIBC = "musl"
> +
> +FULL_OPTIMIZATION="-Os -pipe ${DEBUG_FLAGS}"
> +

this looks good. Thanks for doing this.

>  # FIXME: consider adding a new "tiny" feature
>  #DISTRO_FEATURES_append = " tiny"
>
> --
> 2.25.1
>
>
> 
>
