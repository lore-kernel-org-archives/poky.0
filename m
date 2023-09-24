Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639B9CE7A8A
	for <webhook@archiver.kernel.org>; Sun, 24 Sep 2023 13:05:22 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.39240.1695560720818536331
 for <poky@lists.yoctoproject.org>;
 Sun, 24 Sep 2023 06:05:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KgSxMS0I;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40528376459so47987455e9.3
        for <poky@lists.yoctoproject.org>; Sun, 24 Sep 2023 06:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695560719; x=1696165519; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7IxviVqBz7l0D0u5k8v+nSnxlUFXHLYzjQx5ypXqJQE=;
        b=KgSxMS0Ik0oh5hdvA68hIRVJ3M/i2C9vUeq7zf54ELrr8QbzWubh1lr8AClwE5rzx1
         Zsmas4Tuk9upKJ2psaisl6hYl9b8T1A8oZrE5BU18IPXykf/6Tzj7CPp7pibHsPA48qN
         IQSrbF8vHdngldbvuYCn6h2QzIubVug3pxjNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695560719; x=1696165519;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7IxviVqBz7l0D0u5k8v+nSnxlUFXHLYzjQx5ypXqJQE=;
        b=YO+p1k39qEnd0MCtUE3kLYu5Tot72JoO3Yvc/YKSJtv8t0jSFtOmU19WkSSQUN2Yp9
         Hxg2dYlST5vkaQS0FZ5ms6h2znFYdvyeuPLOc/+/WawUwV2r+za3fKaCDH1tKWkspYE/
         GDLfG5X615+Z6sHuqjhnG7AQV8HfPwcE9wbQYrrgb/YP9Ah3nncVd9H97lD058U3ccBw
         hiJFJnpHGspj/5jkpR9rNfAymBRwXOzJ1QS2KuEk2GA+8iCRZfadnGwzRwKAAzSn0UkA
         XodjazSTfRevOol453FrobFnxZVTqLALaawVk11o/FZQr4oWinKjsud8F8QjPEcCYdEQ
         JP4A==
X-Gm-Message-State: AOJu0Yy3xHrwzDb/qUH1Jo20969oKefCnht2WP7ajbMqYbkklWZNnPi5
	J7n9fxpvXtyz13wr6zylN77BKw==
X-Google-Smtp-Source: AGHT+IFazGJRW265+2if1EImIt2N2S56ZtbLy+mFuRq1g4RDTPBrqgRwBBbCmJbhQgDX1MgpDchUeQ==
X-Received: by 2002:a1c:4b11:0:b0:402:e68f:8896 with SMTP id y17-20020a1c4b11000000b00402e68f8896mr3478012wma.0.1695560719091;
        Sun, 24 Sep 2023 06:05:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:bbea:3fcb:d46:a36a? ([2001:8b0:aba:5f3c:bbea:3fcb:d46:a36a])
        by smtp.gmail.com with ESMTPSA id v19-20020a05600c429300b004047ac770d1sm7380128wmc.8.2023.09.24.06.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 06:05:18 -0700 (PDT)
Message-ID: <d0b03dda0f16f3c14dee27835e07b0aeff9feea0.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] scripts/oe-setup-builddir: Add option to force
 TEMPLATECONF on existing configs
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: BELHADJ SALEM Talel <bhstalel@gmail.com>, poky@lists.yoctoproject.org
Date: Sun, 24 Sep 2023 14:05:17 +0100
In-Reply-To: <20230924122259.2697980-1-bhstalel@gmail.com>
References: <20230924122259.2697980-1-bhstalel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 24 Sep 2023 13:05:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13163

On Sun, 2023-09-24 at 13:22 +0100, BELHADJ SALEM Talel wrote:
> Since we cannot force overriding of the config samples created based on T=
EMPALTECONF variable,
> and that's because it may remove any custom configuration done on local.c=
onf or bblayers.conf,
> and that's also because TEMPALTECONF is, usually, used to create new buil=
ds.
>=20
> But, when the developer wants to recreate the build after changing the sa=
mple files, the developer
> must remove the files manually.
>=20
> I think introducing another variable FORCE_TEMPLATECONF can help when ove=
rride is wanted.
>=20
> Signed-off-by: Talel BELHAJSALEM <bhstalel@gmail.com>
> ---
>  scripts/oe-setup-builddir | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
> index 678aeac4be..3bd3df0930 100755
> --- a/scripts/oe-setup-builddir
> +++ b/scripts/oe-setup-builddir
> @@ -64,7 +64,7 @@ unset SHOWYPDOC
>  if [ -z "$OECORELOCALCONF" ]; then
>      OECORELOCALCONF=3D"$OEROOT/meta/conf/templates/default/local.conf.sa=
mple"
>  fi
> -if [ ! -r "$BUILDDIR/conf/local.conf" ]; then
> +if [ ! -r "$BUILDDIR/conf/local.conf" ] || [ -n "$FORCE_TEMPLATECONF" ];=
 then
>      cat <<EOM
>  You had no conf/local.conf file. This configuration file has therefore b=
een
>  created for you from $OECORELOCALCONF
> @@ -79,7 +79,7 @@ fi
>  if [ -z "$OECORELAYERCONF" ]; then
>      OECORELAYERCONF=3D"$OEROOT/meta/conf/templates/default/bblayers.conf=
.sample"
>  fi
> -if [ ! -r "$BUILDDIR/conf/bblayers.conf" ]; then
> +if [ ! -r "$BUILDDIR/conf/bblayers.conf" ] || [ -n "$FORCE_TEMPLATECONF"=
 ]; then
>      cat <<EOM
>  You had no conf/bblayers.conf file. This configuration file has therefor=
e been
>  created for you from $OECORELAYERCONF
> @@ -101,7 +101,7 @@ fi
>  if [ -z "$OECORENOTESCONF" ]; then
>      OECORENOTESCONF=3D"$OEROOT/meta/conf/templates/default/conf-notes.tx=
t"
>  fi
> -if [ ! -r "$BUILDDIR/conf/conf-notes.txt" ]; then
> +if [ ! -r "$BUILDDIR/conf/conf-notes.txt" ] || [ -n "$FORCE_TEMPLATECONF=
" ]; then
>      [ ! -r "$OECORENOTESCONF" ] || cp "$OECORENOTESCONF" "$BUILDDIR/conf=
/conf-notes.txt"
>  fi

Surely if you want to replace the files you'd just delete them? Adding
an obscure variable to do that isn't discoverable for most people or
easier?

OE-Core patches need to go to the openembedded-core list too.

Cheers,

Richard

