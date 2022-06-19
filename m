Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.19664.1655651647148995940
 for <poky@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 08:14:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TLS9QjJN;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: fede.evol@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id g4so1252508lfv.9
        for <poky@lists.yoctoproject.org>; Sun, 19 Jun 2022 08:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GVFaNu3TzitUKWUyTHolozCi92C4LwOzUbNGKQlrVHc=;
        b=TLS9QjJNmkjp+R5NOULrR5zZo1kT5DD9kV05RMnks2ydgJs+FBdfOsAjgP1jcNMQzS
         QGNHHXRb66Gg3+VutJ8L9qiTuh+ch9dgojUNbm7wd2HUlggAg18wPXsuq6FmN8JQKjGA
         nZNwE0F+H0WVHm97oFZnwfrWNr50FiN5QwBshRgDH9661jpihQuUmu2YveVzBy65/wjJ
         vN8YD7kHfRKR7V4EPyofqCbwZzKWlgZd+GJ6Xs03UtNieoJFr3zyVod4+/aY2Hyn1oEH
         lugFiYWkHSKQo74/5TMcSQlhnFBgNoIe2G7/ofGvYEhrVLVM+363W9pbCh5PekBWFFO3
         IifA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GVFaNu3TzitUKWUyTHolozCi92C4LwOzUbNGKQlrVHc=;
        b=NwSYfW2etdFj7Cww/w3jybUb8ePxY0tIfft/Htbnb9kjx9Iyt+vhAIZ3aa6KxqifUy
         MTPmx8yu1Qotjgw/NJjxUQGYKu/JINyB9vPvIHPOaTVcYuOt2dxVUSR9zlIaRBkXNZQd
         W+da29M781KzBw8oh9TQMvty4vVkQQ1eKl9EHCdvU7doE65e0cQagmHXoHVEoNsjvs7w
         2QnbgXKqqem/azm1GJY9MU3nLOkcDLmazMzWEpNedbfJp2F8ONSCRrKJYjdss6UkJLpI
         KHj+eVy/I/aHoBXlbKXgeAS6cphYQFH5u7/ZsJL8l4Yn4wtohzokhSq8W/6fcVxBgRDB
         kHxA==
X-Gm-Message-State: AJIora/ZFTTsaDbSLtGFLI81a+YOmAP9+DvyGU66sE6G/mR1hMbnhGOt
	gw/3DjHUqwzBOgNVJtKH6Wfldlu0f3tRWBEz5xQ=
X-Google-Smtp-Source: AGRyM1thR5yHSHGHFi461+rD3ZsFtKilN2w85Ilhf6C/HtRD/Ft1GlMbi8RQtHpdwfNtxl9OvFOGXTBmptmPssVBkfw=
X-Received: by 2002:a05:6512:1508:b0:47f:46c4:82db with SMTP id
 bq8-20020a056512150800b0047f46c482dbmr10025605lfb.56.1655651645303; Sun, 19
 Jun 2022 08:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220618052305.304352-1-fede@evolware.org> <dd08964309c24d7985a45c774710c13b@axis.com>
In-Reply-To: <dd08964309c24d7985a45c774710c13b@axis.com>
From: "Federico Pellegrin" <fede.evol@gmail.com>
Date: Sun, 19 Jun 2022 17:13:54 +0200
Message-ID: <CAM6O0ZiOE-SgaKHyc_cA_TUYHgHbiBLh9M4vaR=VHO-c_azg=A@mail.gmail.com>
Subject: Re: [poky][PATCH] signing-keys: add RDEPENDS to signing-keys from specific provider
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000030b0a905e1ce70ca"

--00000000000030b0a905e1ce70ca
Content-Type: text/plain; charset="UTF-8"

Hi Peter,
Many thanks for your feedback!

Il giorno dom 19 giu 2022 alle ore 15:06 Peter Kjellerstedt <
peter.kjellerstedt@axis.com> ha scritto:

> > +RPROVIDES:${PN}-rpm += "${PN}"
> > +RPROVIDES:${PN}-ipk += "${PN}"
> > +RPROVIDES:${PN}-packagefeed += "${PN}"
>
> This is incorrect. The correct thing to do is to instead remove the
> dependency from ${PN}-dev on ${PN}, i.e.:
>
> RDEPENDS:${PN}-dev = ""
>
>
Thanks for the correction. Indeed as per commit comment I was a bit unsure
which way would be correct (or better).

I'll send now (hopefully to the right address!) a v2 of the patch. I've
tried your better solution locally and works of course very fine.

Thanks again and a v2 in a few moments,

Cheers,
Federico

--00000000000030b0a905e1ce70ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Hi Peter,<br></div></=
div><div>Many thanks for your feedback!<br></div><div><br></div><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno dom 19 giu=
 2022 alle ore 15:06 Peter Kjellerstedt &lt;<a href=3D"mailto:peter.kjeller=
stedt@axis.com">peter.kjellerstedt@axis.com</a>&gt; ha scritto:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">&gt; +RPROVIDES:${PN}-rpm +=
=3D &quot;${PN}&quot;<br>
&gt; +RPROVIDES:${PN}-ipk +=3D &quot;${PN}&quot;<br>
&gt; +RPROVIDES:${PN}-packagefeed +=3D &quot;${PN}&quot;<br>
<br>
This is incorrect. The correct thing to do is to instead remove the <br>
dependency from ${PN}-dev on ${PN}, i.e.:<br>
<br>
RDEPENDS:${PN}-dev =3D &quot;&quot;<br>
<br></blockquote><div><br></div><div>Thanks for the correction. Indeed as p=
er commit comment I was a bit unsure which way would be correct (or better)=
.</div><div><br></div><div>I&#39;ll send now (hopefully to the right addres=
s!) a v2 of the patch. I&#39;ve tried your better solution locally and work=
s of course very fine.</div><div><br></div><div>Thanks again and a v2 in a =
few moments,</div><div><br></div><div>Cheers,</div><div>Federico</div><br><=
/div></div>

--00000000000030b0a905e1ce70ca--
