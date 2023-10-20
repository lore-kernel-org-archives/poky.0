Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30A13CDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 16:28:40 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web11.58944.1697819319711073203
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 09:28:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Gt0EjObR;
 spf=pass (domain: gmail.com, ip: 209.85.210.52, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6ce37d0f13fso502173a34.2
        for <poky@lists.yoctoproject.org>; Fri, 20 Oct 2023 09:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697819319; x=1698424119; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+DLHPNdM4te6otYH86155bRveMCwoHSq9Hbol8uL12w=;
        b=Gt0EjObRUjJ6sX2DRSj0aoYHR0vBEjhOBxuCcfIBVsu8HhH9UNlgqH8VXpaq7bpqOF
         J7jn7to4gbdjikG7yLnZJbtUUg+qXI/sutSOAgqDvpxtvlxxYjjXIvD9DiydjG2jS/eO
         yT0I6MWmL1ZdhCpJK/s4dleyNMPCa9PBmFqz705mD68lssrHtgstsPdSCB5QtIDYQpF7
         g9NbqG+2KU9Dy/eFDcBcZsz01ksC1dF3gVDsp7i5SyNFTp7o4fjLeq3fS8yEYsXzyiJX
         xwZMEZRoLOWSZUh2exnu801TDXEywZFDNDKc/Y28f/CZK0DXNGxAfzYF3yBlrKZ9JeAE
         xtRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697819319; x=1698424119;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+DLHPNdM4te6otYH86155bRveMCwoHSq9Hbol8uL12w=;
        b=Y9Mht9T1iKr5XK+0CO9y7DEzmR9Urb79pPokiLU9hxQzeyDKtwUFCnrZWcxZeprcPr
         xrX1wObNDRMSLfNHtYiHahq12w1uRkXBw2PNkI2S1S4Rif35rbsfFwcUmqTfDVIvo7Oh
         7UgklTPWeI1uGe7Q3JZkmKCv3VcDcvtnGqyiOytv0uibHpqJksCbvwtsnQIXTBvRvga3
         OEvF9ZjOJinK8zTMKZviygRwvnbqk9qfXso4BNaMf8DYICYxn4iv3f7UCDMVD3NDRLaV
         sjeViKUUWi1+yhM+Noh6gvBdIWg6MDyLfeHklgnRcaaCM9WU7DaKFxgWy+Nm4Db3u1ua
         8wNA==
X-Gm-Message-State: AOJu0YxTH8xwYNaH0ORWaIRaahpO8SHIwEQ6eCLxnZd5XxstFRd8uEaI
	9YBa2P8v98ZZq3je4RZrQrTclzeXfG3Rggofgn2HUa+3
X-Google-Smtp-Source: AGHT+IH2Ev6zwmYcDcAvEU6hWXy4AjxdCBTnNeBbxBUSHNMErX/dxUxf4RbrI6L691yxu6elJ4vqQpwK3y6afjVdwnE=
X-Received: by 2002:a05:6870:b682:b0:1d5:a980:9caa with SMTP id
 cy2-20020a056870b68200b001d5a9809caamr2852152oab.29.1697819318767; Fri, 20
 Oct 2023 09:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com> <20231020114845.100062-2-gs-yoctoproject.org@gluelogic.com>
In-Reply-To: <20231020114845.100062-2-gs-yoctoproject.org@gluelogic.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 Oct 2023 09:28:12 -0700
Message-ID: <CAMKF1sqL6ZY7cSu50zvafvsXgrCPQ3B-XSDwkTJqDo_1L7vYaA@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/3] lighttpd: upgrade 1.4.71 -> 1.4.72
To: Glenn Strauss <gs-yoctoproject.org@gluelogic.com>
Cc: poky@lists.yoctoproject.org, Glenn Strauss <gstrauss@gluelogic.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 20 Oct 2023 16:28:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13192

Thanks for the patches, The patches are for core layer and we accept
patches for the core layer on openembedded-core@lists.openembedded.org
mailing list.
so please resend it to this list

On Fri, Oct 20, 2023 at 4:48=E2=80=AFAM Glenn Strauss
<gs-yoctoproject.org@gluelogic.com> wrote:
>
> From: Glenn Strauss <gstrauss@gluelogic.com>
>
> Signed-off-by: Glenn Strauss <gstrauss@gluelogic.com>
> ---
>  .../lighttpd/{lighttpd_1.4.71.bb =3D> lighttpd_1.4.72.bb}         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>  rename meta/recipes-extended/lighttpd/{lighttpd_1.4.71.bb =3D> lighttpd_=
1.4.72.bb} (97%)
>
> diff --git a/meta/recipes-extended/lighttpd/lighttpd_1.4.71.bb b/meta/rec=
ipes-extended/lighttpd/lighttpd_1.4.72.bb
> similarity index 97%
> rename from meta/recipes-extended/lighttpd/lighttpd_1.4.71.bb
> rename to meta/recipes-extended/lighttpd/lighttpd_1.4.72.bb
> index 3959f88b98..87058719f9 100644
> --- a/meta/recipes-extended/lighttpd/lighttpd_1.4.71.bb
> +++ b/meta/recipes-extended/lighttpd/lighttpd_1.4.72.bb
> @@ -16,7 +16,7 @@ SRC_URI =3D "http://download.lighttpd.net/lighttpd/rele=
ases-1.4.x/lighttpd-${PV}.t
>             file://lighttpd \
>             "
>
> -SRC_URI[sha256sum] =3D "b8b6915da20396fdc354df3324d5e440169b2e5ea7859e3a=
775213841325afac"
> +SRC_URI[sha256sum] =3D "f7cade4d69b754a0748c01463c33cd8b456ca9cc03bb09e8=
5a71bcbcd54e55ec"
>
>  DEPENDS =3D "virtual/crypt"
>
> --
> 2.41.0
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13184): https://lists.yoctoproject.org/g/poky/message=
/13184
> Mute This Topic: https://lists.yoctoproject.org/mt/102079186/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

