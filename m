Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.19903.1617017570264530190
 for <poky@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 04:32:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=jMxwvqvP;
 spf=none, err=SPF record not found (domain: srin.me, ip: 198.145.29.25, mailfrom: s@srin.me)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C72E438C063A
	for <poky@yoctoproject.org>; Mon, 29 Mar 2021 11:32:47 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id z1so13823707edb.8
        for <poky@yoctoproject.org>; Mon, 29 Mar 2021 04:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H9jRhhF2Uc4S2b7J6hQHvgcfSMxYiAfY8V/vEJRSn0g=;
        b=jMxwvqvPf2vYC0RhiGif5KvQznhEkbe/7y4sSGWuj5hqz/wj9ELhrtljE76XHG908c
         eJPSgQ8GAR9e6Jne2N6fnvmrA6HWr+tvZdwqtCuCtYjJQkp5IC7oIutIizInQE0FE2CS
         0wpdrEBJVo/7wJocX0FYJF3+kNNYBkkN7RvJ4jmqa7U5XeQYL3dHB9jaiZadFrzJnabI
         8Hs5a9mtUyRpa9EBH1qCqLosLLTtW6ZxivPFO9Auc9Eis48q0QgCUR9I/uhVBrGlkU99
         J6V5cY/8g1s/QmH6/0wG7XS2svDTN4PYNL00p6D/ni0aOpzI7OXENpL4GQFgc3a1Nc2G
         D2Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H9jRhhF2Uc4S2b7J6hQHvgcfSMxYiAfY8V/vEJRSn0g=;
        b=ChYVzIk3rwRrRPaDBHWsGS0ivnLTNmy4BVS+3bSOY8AtRq/83zaK9tt/a4YLvTXCe0
         TDe+NEnva7ziUoRkR+tznCEaobC0eN8yjcP0lSpIzAjpRVFi8tEGqPpCG9M2J0rrWaz3
         NglXANaev7IR5uqfbv/cu2qnNiT/d/4MlplSGvNdO1b/IyhBuS30UAirnMKnPjrrPl+e
         zGmgh479IKNKQP8JnDuA6j7LWB3RLHJ1o4F8Eyzo5vmgNqMz4ad3enL9JmvTnD1ujSqZ
         x2gUxCOv4R6MozI205Cm8AGHbEFrmbDl+7GZb5JWw2uC83Upuyngbsu6t8Uocm6DAEuG
         6tWA==
X-Gm-Message-State: AOAM530lQInZuIh5xcSL5MJaQt9LXod6zLx515+1KoBZ6YewZDLpOSht
	LY/6n9jbqr8TbQb4IFOkSuwy35IeokDl9HyriqmoRG2W7jA=
X-Google-Smtp-Source: ABdhPJwsN7ZvMkfezKGkF5pVWQ+5SuxRctYvNEkDoFH7WzrIl9qtZeZH1DzJLsLrgiF/X5xR2H9bs1Ty/m3b6PKDhoI=
X-Received: by 2002:a05:6402:14cc:: with SMTP id f12mr29154814edx.19.1617017566246;
 Mon, 29 Mar 2021 04:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAGNn0ha9Kvpt-Nw8USXtossi_mhLxHOC7k1OC=5jp09TiJeg-w@mail.gmail.com>
 <20210329081023.uc34ceahpv44qifb@qschulz>
In-Reply-To: <20210329081023.uc34ceahpv44qifb@qschulz>
From: "R Srinivasan" <s@srin.me>
Date: Mon, 29 Mar 2021 07:32:36 -0400
Message-ID: <CAGNn0hZ-9jJOYyDB7ao0JoMF4v=O0fxPSKR9XBOfEWmrULVa1g@mail.gmail.com>
Subject: Re: [poky] Qt version upgrade
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a1da9e05beab3dbe"

--000000000000a1da9e05beab3dbe
Content-Type: text/plain; charset="UTF-8"

Thanks Khem, Quentin, I will start investigating Hardknott first.
Appreciate your help. srini

On Mon, Mar 29, 2021 at 4:10 AM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Srini,
>
> On Sat, Mar 27, 2021 at 05:46:59PM -0400, R Srinivasan wrote:
> > We are using "warrior" qt 5.12.6 am looking to upgrade to 5.15.2 or
> later.
> >
> > Not sure where to start? Pointers requested.
> >
>
> Hardknott branch of meta-qt5 targets qt 5.15.2 currently.
>
> Either upgrade your layers to hardknott release (yet to be released, but
> should come out in April/May if it follows usual timeframe) or backport
> recipes to your version of Yocto by yourself.
>
> Cheers,
> Quentin
>

--000000000000a1da9e05beab3dbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Khem, Quentin, I will start investigating Hardknott=
 first. Appreciate your help. srini<br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 29, 2021 at 4:10 AM Quen=
tin Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com">quenti=
n.schulz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hi Srini,<br>
<br>
On Sat, Mar 27, 2021 at 05:46:59PM -0400, R Srinivasan wrote:<br>
&gt; We are using &quot;warrior&quot; qt 5.12.6 am looking to upgrade to 5.=
15.2 or later.<br>
&gt; <br>
&gt; Not sure where to start? Pointers requested.<br>
&gt; <br>
<br>
Hardknott branch of meta-qt5 targets qt 5.15.2 currently.<br>
<br>
Either upgrade your layers to hardknott release (yet to be released, but<br=
>
should come out in April/May if it follows usual timeframe) or backport<br>
recipes to your version of Yocto by yourself.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--000000000000a1da9e05beab3dbe--
