Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.7797.1580126444128304142
 for <poky@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 04:00:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dWHcYRVQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id p3so8736322edx.7
        for <poky@lists.yoctoproject.org>; Mon, 27 Jan 2020 04:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lyTAA/Hf54XGXc6dU7WmelZoLs7AcLBXbvSAQJQ6yfc=;
        b=dWHcYRVQPFf246C0Rqlh45MHjh6B3zjJyE17wFoRt1U3NKmlLKNNDAoau60P+UAjeJ
         8VA/xZ8OVVZ058Wzi0PLmGtyfqDE2DBP6ldJmvSLw4oeB2heHZ4A++bvYbQYbRF4i7WH
         gn4wjSVfYSlHME42eGc6BmqP45q0BXcRJaVdL9/Fqd5M8877rmQnwii1w5T9evir+Akn
         u6om9qeqbFKayF2Zha4w4pJ+xZj22NHjja73P+BqMxwlpD8IpShzGGZNcEMSjbMwRYl0
         ckYRsNNo05l/z6w4Wy5RQVhtSHcLeVbZ/TyVT5DdFVaDxn2lviq84VAeaTwymTmw1tKr
         g0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lyTAA/Hf54XGXc6dU7WmelZoLs7AcLBXbvSAQJQ6yfc=;
        b=UWtO4akN8BBPAtPTM8CE/nEdoBmJTK8sIFKePLbF2mKgqDqonXgdgEyBUqakEv/KQ/
         l7RU0P2ZnCyCAnPXpJa37ZLu51jmfX62qdi5unaL+Sdl7oFv1nNh81Zb82+l9lH+vg5E
         JjUryQWEiFMiiM1SAuPuU0FWiGnFixTxJgN7HOP/eo8iU2hZktccAubIXYnQtGKFbWAb
         AEndEzBTUYMhY53VoFlaAeIgbkknf03uP/mCrvW3A0H6e6lmxeYAKKIXDCN2j+tJMQVi
         kVDqeVcvD7aWR1/VRJxMSiMzasxoZieA2rbtNGPWk4gm3+tMDzIM9vmVnb+ixV8yvV3C
         s9qg==
X-Gm-Message-State: APjAAAUoouAigeyPFKcRZwGjuqhvTYcaoew3tw+IsvV9k2DaJqTs5tyl
	kBR7gO8MoRPk811LSFtsn0CLGFpzxltNUPzUhfUxIA==
X-Google-Smtp-Source: APXvYqww4DedbBaaZqyv4MdEnw3AqrjT0uRIrqX00f/pPLIiBx+zmByTYPCykAwa7GK+TvHqEuAIWYrWZsl1fpnIMvM=
X-Received: by 2002:aa7:d145:: with SMTP id r5mr13490931edo.337.1580126442543;
 Mon, 27 Jan 2020 04:00:42 -0800 (PST)
MIME-Version: 1.0
References: <Groupsio.1.jJyU.1580118950042896932.myMR@lists.yoctoproject.org>
In-Reply-To: <Groupsio.1.jJyU.1580118950042896932.myMR@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 27 Jan 2020 13:00:30 +0100
Message-ID: <CA+chaQef9R5r4nAo_y4vHhkhQBxoskTF2C+oiOVpXMdk1gq9KA@mail.gmail.com>
Subject: Re: [poky] Qt sample fails to compile using meta-qt5
To: Ashish <ashish.emailaddress@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004edd42059d1ddbfc"

--0000000000004edd42059d1ddbfc
Content-Type: text/plain; charset="UTF-8"

You probably need to enable examples PACKAGECONFIG to get them build.

On Mon, Jan 27, 2020 at 10:59 AM Ashish <ashish.emailaddress@gmail.com>
wrote:

> [Edited Message Follows]
> Hi All ,
>
> - I am trying to build QT5 setup for evaluation .
>   I have added "qtdeclarative-examples" in the image , but the compilation
> fails
>   with error
>
> *" - nothing provides qtbase-examples needed by packagegroup"*- I
> have "qtdeclarative-examples "  & both "qtdeclarative" added in local.conf
>   If i remove "qtdeclarative-examples " but retain "qtdeclarative" , image
> gets compiled properly.
>
> Can group member please provide any pointers  as to get the sample  code
> on target
>
> Thanks
> Ashish
>
>
>
>
>
>
>
>
>
>
>
>
>
> 
>

--0000000000004edd42059d1ddbfc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You probably need to enable examples PACKAGECONFIG to get =
them build.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, Jan 27, 2020 at 10:59 AM Ashish &lt;<a href=3D"mailto:as=
hish.emailaddress@gmail.com">ashish.emailaddress@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>[Edited Messag=
e Follows]</p>
Hi All ,=C2=A0<br><br>- I am trying to build QT5 setup for evaluation .=C2=
=
=A0<br>=C2=A0 I have added &quot;qtdeclarative-examples&quot; in the image=
 , but the compilation fails=C2=A0<br>=C2=A0 with error <strong>&quot;=C2=
=A0- nothing provides qtbase-examples needed by packagegroup&quot;<br><br>=
</strong>- I have=C2=A0&quot;qtdeclarative-examples=C2=A0&quot;=C2=A0 &amp;=
 both &quot;qtdeclarative&quot; added in local.conf=C2=A0=C2=A0<br>=C2=A0 I=
f i remove &quot;qtdeclarative-examples=C2=A0&quot; but retain &quot;qtdecl=
arative&quot; , image gets compiled properly.<br>=C2=A0<br>Can group member=
 please provide any pointers=C2=A0 as to get the sample=C2=A0 code on targe=
t=C2=A0<br><br>Thanks=C2=A0<br>Ashish<br><br><br><br><br><br><br><br><br><b=
r><br><br>=C2=A0<strong><br><br></strong>
<br>
</blockquote></div>

--0000000000004edd42059d1ddbfc--
