Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.38884.1674468336673142143
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 02:05:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AXMLjq5W;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id b7so10255478wrt.3
        for <poky@lists.yoctoproject.org>; Mon, 23 Jan 2023 02:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LBI4gMmxbhIefo4muWmxzzPp+f0P5P0ap4Sy64DFt8s=;
        b=AXMLjq5WgcFdfJRWCEbgKXU5HUPzwdPjY/Vkf7Xsn1LDr4vjJCUSg5okBWOFC+Ed4M
         EcyYQK+xWMMNF9Pr7LikguGjKD6hWF5SfuYYPaAZfP0LaS6d90mdTs5XtLQAe+psOx12
         XeBsdzKS4oy6J7fqMeU1rkGNQzryieQ1a+Z0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LBI4gMmxbhIefo4muWmxzzPp+f0P5P0ap4Sy64DFt8s=;
        b=Pmh5RBn6QH99eoOoQXGXcAVpsadRJsQUjVhguOd8152+S6XOyBwfNVVBB+yodzzfq9
         uP2BVf2Qw6s2j5TZ9T3MSQRZjU5Xjtn3nBap7EzOYR9jhfz0q0mB7MVBpBLcu+0vU536
         htIqbKhf5EwyUaehoztyEEQuggb88fMIABu7Wl6FZirta2sZoaGtSTHUK9eB5Nf5pqO0
         C7bwxNZ7M1eynXw3EfndmlgAdHOg/GnMCe/WjAI174Rnj72mGzejsHVgNTrT3tcvLvC7
         pVSVitgrz76bEJ3BCcXDbvzBBV0xXDlaMf/dMmCYsQEYG7j/GQ+0F2go10iaz31bE01+
         7TTA==
X-Gm-Message-State: AFqh2kqNK44LIVPYrDHm2I0jtx4U/N4huF/936OiJtJYgt54W9xdth75
	ds0kSrX8AJx8Wg84i1hInsm3IALNQx/KIycD
X-Google-Smtp-Source: AMrXdXulr/HsPyBbNX5ofII2F7GnHGjZ5HEcG94DKJrIhCEyLU8K4aGeXrCtDIaVkTOvEMHyCiL1GQ==
X-Received: by 2002:adf:e74e:0:b0:2bd:e8c0:8dfe with SMTP id c14-20020adfe74e000000b002bde8c08dfemr19427440wrn.4.1674468334693;
        Mon, 23 Jan 2023 02:05:34 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:9195:b014:a064:8114? ([2001:8b0:aba:5f3c:9195:b014:a064:8114])
        by smtp.gmail.com with ESMTPSA id c8-20020a5d4148000000b002bdd21f25ebsm27489429wrq.71.2023.01.23.02.05.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 02:05:34 -0800 (PST)
Message-ID: <4514863819222de97dcc00c0c55ec795f6f60d6a.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: set INIT_MANAGER with ?=
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: michael.opdenacker@bootlin.com, poky@lists.yoctoproject.org
Date: Mon, 23 Jan 2023 10:05:33 +0000
In-Reply-To: <20230123095529.21702-1-michael.opdenacker@bootlin.com>
References: <20230123095529.21702-1-michael.opdenacker@bootlin.com>
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2023-01-23 at 10:55 +0100, Michael Opdenacker via
lists.yoctoproject.org wrote:
> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>=20
> Allowing to set INIT_MANAGER from conf/local.conf
>=20
> ---
>=20
> This has been tested on the autobuilder:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/4797
>=20
> This will allow to document INIT_MANAGER properly
> and address a few related bugs.
>=20
> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> ---
>  meta-poky/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index dc0e8e76ab..072d2ab32f 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -65,7 +65,7 @@ INHERIT +=3D "uninative"
>  BB_SIGNATURE_HANDLER ?=3D "OEEquivHash"
>  BB_HASHSERVE ??=3D "auto"
> =20
> -INIT_MANAGER =3D "sysvinit"
> +INIT_MANAGER ?=3D "sysvinit"
> =20

This solves the problem for poky, but not poky-tiny or poky-altcfg.
I've just sent a version which would address those too. I'd much prefer
to fix this issue properly rather than incompletely!

Cheers,

Richard
