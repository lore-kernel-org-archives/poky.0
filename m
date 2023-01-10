Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.106582.1673364066291308530
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 07:21:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FPImRAMI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id p1-20020a05600c1d8100b003d8c9b191e0so10280948wms.4
        for <poky@lists.yoctoproject.org>; Tue, 10 Jan 2023 07:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XaSUsVHUijNAY5dgIXvQhrGm0m8ooxkDJcG4jRoEVXw=;
        b=FPImRAMIvJqiPYZ2ZYDde/ENPor1ycN6TzZTTAPeMku/KV3CGKVxphUl+B6NkCYcMg
         dy8BCgCdIIn/6OUAiYIQm5WN7GOZZRZI3zQTBPXjhauUdWP37/NZeHWlhx3O97LzJfm6
         ciK9AoqenJ2hA95pFcHlNgAa5XgvvX/5wAE7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XaSUsVHUijNAY5dgIXvQhrGm0m8ooxkDJcG4jRoEVXw=;
        b=X+swqOPvjrKdAChZz3m3DZWnVoHd+tvNsnQJG9dwCU4dqOObz/n+xmghwM4JmnWLgq
         MkIG7oD+KW4NiC3QWkYGt4Zo2QOt/Ke/9UD3z2nR69XxMREk/to3EYIulV2f6gJefjlc
         bQq3SQtamCGRwZoM/uTJMXOBxk2Xz4anszun1pSoC5FcJNqW8/aQS3RY9zT9MTI9c86Q
         LN9yYi2M0mn13TFEJUn9zD4m4FW5QozofFKi5ao+ABehzqtW57rRCZ/JICOmfq7jNvyZ
         zQtQcMz7QWMgBZqtOJ2wNfWOZLU8MxTTELg9165/xIZSg+ygcs7K2sQDltuq20PoSr5P
         sl0A==
X-Gm-Message-State: AFqh2krez4y+0oDgQkbZw7SlBK9sR87idh6zBi/6V6D/NQgc1uRMfwBb
	3nTgBPCj1HePmhBQqa3IZq4JqKW2fC0bvpHK
X-Google-Smtp-Source: AMrXdXvaF1J7pY2N4VGMhhuBbxQC4FjaMNJhIoEe64bYKoVia0/Ulj4nk0eRxaHu/kv7VZSqRbvw8Q==
X-Received: by 2002:a05:600c:4148:b0:3d3:52bb:3985 with SMTP id h8-20020a05600c414800b003d352bb3985mr49581795wmm.31.1673364064387;
        Tue, 10 Jan 2023 07:21:04 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:ef35:464f:aac3:7a? ([2001:8b0:aba:5f3c:ef35:464f:aac3:7a])
        by smtp.gmail.com with ESMTPSA id i10-20020adff30a000000b0024228b0b932sm13910964wro.27.2023.01.10.07.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 07:21:03 -0800 (PST)
Message-ID: <4f064e6c849b715805f4217d8c63563bb05e19c5.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: Switch to post release name/version
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, 
	poky@lists.yoctoproject.org
Date: Tue, 10 Jan 2023 15:21:03 +0000
In-Reply-To: <20230110151811.2602621-1-pkj@axis.com>
References: <20230110151811.2602621-1-pkj@axis.com>
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2023-01-10 at 16:18 +0100, Peter Kjellerstedt wrote:
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  meta-poky/conf/distro/poky.conf | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index dc0e8e76ab..a876ddde94 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -1,8 +1,7 @@
>  DISTRO =3D "poky"
>  DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
> -#DISTRO_VERSION =3D "4.1+snapshot-${METADATA_REVISION}"
> -DISTRO_VERSION =3D "4.1"
> -DISTRO_CODENAME =3D "langdale"
> +DISTRO_VERSION =3D "4.2+snapshot-${METADATA_REVISION}"
> +DISTRO_CODENAME =3D "mickledore"
>  SDK_VENDOR =3D "-pokysdk"
>  SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METAD=
ATA_REVISION}', 'snapshot')}"
>  SDK_VERSION[vardepvalue] =3D "${SDK_VERSION}"

The codename change is ok but the version is not 4.2 plus something
since we haven't released 4.2 yet.

Cheers,

Richard

