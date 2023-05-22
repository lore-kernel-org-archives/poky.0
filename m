Return-Path: <javier.tia@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2293AC77B73
	for <webhook@archiver.kernel.org>; Mon, 22 May 2023 19:58:25 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.1834.1684785501237872005
 for <poky@lists.yoctoproject.org>;
 Mon, 22 May 2023 12:58:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=x9RO3siM;
 spf=pass (domain: linaro.org, ip: 209.85.216.48, mailfrom: javier.tia@linaro.org)
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2533a03388dso4387805a91.2
        for <poky@lists.yoctoproject.org>; Mon, 22 May 2023 12:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684785501; x=1687377501;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NDhkpz6tvZW/2K66aDWena0z3zm7umSYN9PufGJ8cKw=;
        b=x9RO3siMWhilvAQtE5qwM00MbMPpPTkn0M6LbS+kHusPqJbAK14Kyt0vuBGLcGfi9K
         rhcDkXKY82m4Sen1g5JB9tJK7AZ91GooS8Iuf9TkFdoPABEc3aELGOt4TMrqf/YV/ScJ
         FFAHgWJrU3uXgknPaViMQe2z9TnhwiL6U7se+xU+zEGipJx2GOpNFxAiYX3Ul+EIkQHG
         fKF8Tfk3M9ta73IFYHa9F9xCJxmXirX7hWovTdRWTYf32iBBclF+w8T7R/Z6ce7Xsgpa
         8lzDsllA0tw2Ct+P4AGODjSa37UZPrKDA6NmU9ncTxHr6ZRei/6MsRgCUEeLFudcgNGO
         f8/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684785501; x=1687377501;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NDhkpz6tvZW/2K66aDWena0z3zm7umSYN9PufGJ8cKw=;
        b=VqWc+yg94MUtMUP22N1HO7J9q4oU8jJ79RddgHbwgNfGY1u5kBEkGuI0b/1WuO0D/A
         Qtoa45e9d6HQcZGQhZILRUhUzaptmU2/W/YseZzu18BwSsuf9L6ylRAc0BsLz5zZ8NZd
         zZrATfvDm4eLoVpJGxUlokZbiZKEMsEuOYNCFfmVmAwoj5rSYmHkzpDM6dsFmZEEsbtI
         US3UIXzM6J51fIZzdJVUKh19SF9jUp3Q0d+4o32A2Uyv7Dlg9+DclgrS6q1VUYfkSETn
         y5JoZMl0BBdAah2y81NLMVxOtAmKgZl6LkIXxUInrJw0KWQT0hXN+2S5U9AHNiNRTp9t
         HBzA==
X-Gm-Message-State: AC+VfDxMES79S0QWEHjebSwUVgsbvO34HBT4EDh4YpJ7JnHOvXytlsgx
	0RM35YYDhlXrPQgrEUwtCfqpnKvoq/jsZnhD9A4uJw==
X-Google-Smtp-Source: ACHHUZ5bNBS+2ISU9RkEezbHmmUWzruuok9q+0sTKUVQ4NJvDq8yrUlcPBEmIRYd7G14soYN+L3SEm9QCtVtWOnWfT8=
X-Received: by 2002:a17:90a:d302:b0:23f:2661:f94c with SMTP id
 p2-20020a17090ad30200b0023f2661f94cmr11503277pju.47.1684785500552; Mon, 22
 May 2023 12:58:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230516132024.686605-1-javier.tia@linaro.org> <0FA0380B-061C-4E7B-92DE-63C2BB98BA25@arm.com>
In-Reply-To: <0FA0380B-061C-4E7B-92DE-63C2BB98BA25@arm.com>
From: Javier Tia <javier.tia@linaro.org>
Date: Mon, 22 May 2023 13:58:09 -0600
Message-ID: <CAP2F5LZP0EO1jKrdkvxnAt7fwuKHhekjpHOpKATxLcdqM9RcKA@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: Add Fedora 38 as supported distro
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000048992305fc4db17b"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 22 May 2023 19:58:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13070

--00000000000048992305fc4db17b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 16, 2023 at 8:51=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> w=
rote:

> On 16 May 2023, at 14:20, Javier Tia via lists.yoctoproject.org
> <javier.tia=3Dlinaro.org@lists.yoctoproject.org> wrote:
> >
> > For a while, I have been building with Fedora 38 and crops containers
> > without issues.
>
> To be clear, this isn=E2=80=99t a list of distributions which people say =
works,
> it=E2=80=99s a list of distributions that are tested.
>

Thank you for your clarification.

Regards,
=C2=BB Javier Tia =F0=9F=96=8B

--00000000000048992305fc4db17b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 16, 2023 at 8:51=E2=80=AFAM R=
oss Burton &lt;<a href=3D"mailto:Ross.Burton@arm.com">Ross.Burton@arm.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On 16 May 2023, at 14:20, Javier Tia via <a href=
=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lis=
ts.yoctoproject.org</a> &lt;javier.tia=3D<a href=3D"mailto:linaro.org@lists=
.yoctoproject.org" target=3D"_blank">linaro.org@lists.yoctoproject.org</a>&=
gt; wrote:<br>
&gt; <br>
&gt; For a while, I have been building with Fedora 38 and crops containers<=
br>
&gt; without issues.<br>
<br>
To be clear, this isn=E2=80=99t a list of distributions which people say wo=
rks, it=E2=80=99s a list of distributions that are tested.<br></blockquote>=
<div><br></div><div>Thank you for your clarification.</div><div>=C2=A0</div=
><div>Regards,</div><div>=C2=BB Javier Tia=C2=A0=F0=9F=96=8B<br class=3D"gm=
ail-Apple-interchange-newline"></div><div><br></div></div></div>

--00000000000048992305fc4db17b--

