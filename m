Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.48970.1680246724880628598
 for <poky@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 00:12:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MCyDb5ev;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id v1so21385087wrv.1
        for <poky@lists.yoctoproject.org>; Fri, 31 Mar 2023 00:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1680246723;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Sj2A1UtXHrb/53PCZrLpVYyBEA4sCt4P35PfRPyJ2OM=;
        b=MCyDb5ev58RAUzscraZfeNZsrn6sPqyXG2O/Vy+hD0+GQfy2ikLKw9Db8dVHDKFNXo
         WnkK0o7mujIJF0XM7peclJvHJMzFJ82dcDCuc123DStUkEWtH4yKoISHZd+MlxCCRGuT
         2ttUPtKyhe0REcFlVMedXlsHPCEkrg1TA+F4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680246723;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sj2A1UtXHrb/53PCZrLpVYyBEA4sCt4P35PfRPyJ2OM=;
        b=YyQNcBZFZNZaVdP3QS8TGuKs+F4sURuY34768xo3zwqqBJEWDxPZucIycWf8WlEaKC
         mUtufFK1T4VvtOz1S0z9Re3y/oal0GiWWGnfcONmSRYwQY7kLf5tFor2qdRffBtrNrm2
         v/aZsTaPgqCg1JHRcziPo/z66LqW3Ue1ri+QH7/WOK98FIPi1+9HLJckRMPaddqTcvs9
         xMGxTZLqhs9/zoOfnOVqMglhPrLfdcBbUNoOFi2Krk5NOQyMly/LN/ig/tCyPQK01l5S
         KOOmDDP1jp9CZoymvgKOSkjz/W6M3P2lTc/qhrFoHxYTiZpKoho9wbFZ8QWjZTBmFZtJ
         hjLg==
X-Gm-Message-State: AAQBX9cvvG5soiaR0mxUUB7daynjCe3Fvh3nJm8Co+gvt7dUUkRAmHtX
	4AoaIjLXu0jLjvSE14W3Mh78PQ==
X-Google-Smtp-Source: AKy350ZCitesPJRmJbIaNSnD6KplGR0qTcmzRU69dR1ZyFa9Nyj8ucSIsSbImgtOwoZvp4TCRpPvzQ==
X-Received: by 2002:a5d:66d1:0:b0:2cf:e8f4:d1ea with SMTP id k17-20020a5d66d1000000b002cfe8f4d1eamr18529687wrw.29.1680246723147;
        Fri, 31 Mar 2023 00:12:03 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:18b7:bfe:d74b:7341? ([2001:8b0:aba:5f3c:18b7:bfe:d74b:7341])
        by smtp.gmail.com with ESMTPSA id m2-20020a5d4a02000000b002d75ef32032sm1369223wrq.68.2023.03.31.00.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 00:12:02 -0700 (PDT)
Message-ID: <37a9246c5e670f7db14fd64ec7afba97aed1d2c3.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky-altcfg: enable 'commercial' recipes
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Fri, 31 Mar 2023 08:12:01 +0100
In-Reply-To: <20230331052522.978142-1-alex@linutronix.de>
References: <20230331052522.978142-1-alex@linutronix.de>
User-Agent: Evolution 3.47.3-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2023-03-31 at 07:25 +0200, Alexander Kanavin wrote:
> Somehow this was overlooked, and this excluded important
> pieces such as ffmpeg from the test matrix.
>=20
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>  meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.in=
c b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> index b42b830e43a..f916e010c97 100644
> --- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> +++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> @@ -6,3 +6,7 @@ PREFERRED_VERSION_linux-yocto =3D "5.15%"
> =20
>  # Ensure the kernel nfs server is enabled
>  KERNEL_FEATURES:append:pn-linux-yocto =3D " features/nfsd/nfsd-enable.sc=
c"
> +
> +# Enable all the recipes (primarly multimedia codec implementations)
> +# that may require special licensing arrangements
> +LICENSE_FLAGS_ACCEPTED =3D "commercial"

The project doesn't have any such license arrangements so I don't think
we can do that...

Cheers,

Richard
