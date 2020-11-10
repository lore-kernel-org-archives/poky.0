Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web11.34593.1605044119448304296
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 13:35:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CvNZqqmV;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id p1so14308318wrf.12
        for <poky@lists.yoctoproject.org>; Tue, 10 Nov 2020 13:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=OX5jZyv3BMm+BlGoYgpvJ11uOkO8IO580CldEYm4FZQ=;
        b=CvNZqqmVt75UDynkECMryBfn6lWCNEuPew/sO5cIMgw7/eST5t0amicaNitZeeHeNo
         9ps4B3WN063yypLGFcvLYV5ZVvdS+tGcYg1oGq9GoVgc9AyG7VkDfgwmHywEHGIPEXxP
         jQ+KjJjBraqXcT1wxRn0DmRNM9PAZjqmtTZNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=OX5jZyv3BMm+BlGoYgpvJ11uOkO8IO580CldEYm4FZQ=;
        b=kQ7QQbpQP9EtSrbB9CDdKYjqi4LGm3sRGXcVYib9Rr8VG0zpHkr1/Kyf+ZvOFW2fA0
         zHn5tOFZoxp3s0gXiLNurB3u0TnTTvsaMJj7WnvG0/uIlU2ZBOByzgMU4xHIF21iKxBV
         i4swg91ZFxnZz9gNeIzjxMOEybkS6XygQ7EAzj2UIdJk4fHUAgQMqoaQw8FTw3YyyGoD
         2nLAdfKB1I87AFTGzP5N7++ijWL8rkB6rVFtHvS4VHf3TTIQuJ/soUsIj1BXGLArvl2Q
         5QTum/hbmnCR28CClwhnzHRrEBazks1b99WwnpSeVFDNkTkI9jcIRcjqaZ6ieB8CG4n/
         i6+A==
X-Gm-Message-State: AOAM533pagu2NXmb9jjdUt4PHrKQ0C9rR4AA455sjQJMpybiM6nPcstZ
	qpxrL89nk2QG1MIWZdTSLwlv9A==
X-Google-Smtp-Source: ABdhPJxbHPAt9heaPVdsBcpfDKiiIbDdEzgdQqUjVjot1unGrAkpUOk6bhYPFfW23vTWbiLzvImSzA==
X-Received: by 2002:a05:6000:1183:: with SMTP id g3mr15325989wrx.7.1605044117950;
        Tue, 10 Nov 2020 13:35:17 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 2.f.3.d.1.3.3.a.9.f.d.f.a.e.5.a.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (2.f.3.d.1.3.3.a.9.f.d.f.a.e.5.a.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:a5ea:fdf9:a331:d3f2])
        by smtp.gmail.com with ESMTPSA id g20sm115229wmh.20.2020.11.10.13.35.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2020 13:35:17 -0800 (PST)
Message-ID: <f6213e6851995a88753365d68b91a915737a349e.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v3] poky-tiny: enable section removal
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
Date: Tue, 10 Nov 2020 21:35:16 +0000
In-Reply-To: <20201109223824.12351-1-okaya@kernel.org>
References: <20201109223824.12351-1-okaya@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-11-09 at 22:38 +0000, Sinan Kaya wrote:
> Use GCC sections flags so that unused sections can be garbage
> collected at link time.
> 
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-
> poky/conf/distro/poky-tiny.conf
> index c6d4b88f83d..1e37394875d 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -122,3 +122,21 @@ PNBLACKLIST[core-image-weston] = "not buildable
> with poky-tiny"
>  
>  # Disable python usage in opkg-utils since it won't build with tiny
> config
>  PACKAGECONFIG_remove_pn-opkg-utils = "python"
> +
> +# set default for all targets
> +CFLAGS_append = " -ffunction-sections -fdata-sections"
> +LDFLAGS_append = " -Wl,--gc-sections"
> +
> +# gc-sections requires either an entry or an undefined symbol
> +CFLAGS_remove_pn-glibc = "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-glibc = "-Wl,--gc-sections"
> +
> +# perl won't cross compile with sections
> +CFLAGS_remove_pn-perl = "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-perl = "-Wl,--gc-sections"
> +
> +# Unknown float word ordering. You need to manually preset
> +CFLAGS_remove_pn-cairo = "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-cairo = "-Wl,--gc-sections"
> +

Whilst earlier versions passed testing, this one didn't:

https://autobuilder.yoctoproject.org/typhoon/#/builders/15/builds/2949

Cheers,

Richard

