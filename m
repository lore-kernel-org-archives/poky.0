Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.web09.1328.1632322820800259187
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 08:00:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IRghFB8l;
 spf=pass (domain: gmail.com, ip: 209.85.222.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f54.google.com with SMTP id r8so2074875uap.0
        for <poky@lists.yoctoproject.org>; Wed, 22 Sep 2021 08:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AKpDLRjD1H3lu1AARqrDgZINgHyrNy4et4ZxJB5k7r4=;
        b=IRghFB8lYDs0NixEeFdg7GD6mfqjjfzpmXRNgWWcen+fvwHJsT8lOl56DdxyHaOKm9
         8HdhJ2hydLMM+m2iLvgs87VIPdMq8wOKHcz1Rbl4MA4ha24hHaecA54zrVoVWyf5p4Hs
         P7yDjB5TtYr7E34c9yMQJ1k3L1QSRug2c7wIm7AWyMjj6epzweQNEGxjNPkITNJj6lXn
         H1isWK/qYA6bjULoAzU8EbN2zncUAHR1W6YrAG3Ehi1Y1beSh6qZQ9dxz/bOX4TlkaZB
         FXO4gr48l9IFZopP8G6RORhfdxZRqhj9uYYXNqXddTFpsxXfOIEcXNXYDso0nYQjjNn/
         QUww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AKpDLRjD1H3lu1AARqrDgZINgHyrNy4et4ZxJB5k7r4=;
        b=TOtx4jdSOezFkm47vR0PjkzmprXhvIZ0fFqMnNOvKc/7OhQeOwyIULhYxT5TOscrgJ
         +lk7VHSPN5+jKe7E9UuU4jIpvLD2s9D0LaKc7y8zRWh1iEOz6ggrE5zrzWv8nZvUPSmM
         autLcH2D8v5neMYOtqsck9yp8ZOEurXl38QWaeceZZ+G1GOHZFwMCc1Kc5JufNXi5kys
         JyIGKkY3L6lHDG8qCUgidvRNZ6KIkp4Vj0Bhekf0GGkGru8AL8D+LNELhmgpVRpA5FLr
         hFoMxJsGvc0JCSL4Js3E24id//zjeUjt+5wI8LPXuLRfojpIEwdhu5kchGFCDFY6hysf
         OnfQ==
X-Gm-Message-State: AOAM533zu3ypUkzmoWpaNDoR2N5ukkguiaBsPK8a0TDq5nRfwzfVnyOg
	oDkeVBkeLCYYXIwYIRxt1j/HueLgIQy73fXCHYc=
X-Google-Smtp-Source: ABdhPJzgtqdZqUrv9wcEtw56I0XikG1jRToccWvRlFAKiLt7fr1PGHHo8H68YBgizqXyFqFHSAmGVfSYiIsWCBzFIYk=
X-Received: by 2002:a05:6130:392:: with SMTP id az18mr107249uab.71.1632322819925;
 Wed, 22 Sep 2021 08:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9gtwCPEOaBrCV=KuZFqpikXUAQONFdNWNWn7UT=Pn6Fw@mail.gmail.com>
 <9092.1632314464757056597@lists.yoctoproject.org>
In-Reply-To: <9092.1632314464757056597@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 22 Sep 2021 17:00:07 +0200
Message-ID: <CANNYZj9Db0L-P0mHxc27E=miepAm_-ZK84+j8R9QF9Bp-CGD=w@mail.gmail.com>
Subject: Re: [poky] [PATCH] connman: Fix critical CVE-2021-33833 for dunfell branch #poky
To: Damien HACKETT <damienhackett@eaton.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d7286e05cc96c531"

--000000000000d7286e05cc96c531
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 Sept 2021 at 14:41, Damien HACKETT <damienhackett@eaton.com>
wrote:

> For this point are you sure because my changes are on poky layer not
> meta-openembedded one ??
>

poky is a composite repo made of several original repos, oe-core is where
the recipes are. meta-oe is an 'extended' layer and not a part of it.
Patches to oe-core go to oe-core list, patches to meta-oe go to oe-devel
list. Only patches to poky/meta-poky directory go here.



> - the patch should apply to current poky master; if it's not relevant or
> needed for master this needs to be clarified.
>
> I see some people add [dunfell] in message subject to specify a specific
> branch on which appling the patch.
>

Yes, but the policy is that it goes to master first, if it is applies to
both, then backported.

Alex

--000000000000d7286e05cc96c531
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, 22 Sept 2021 at 14:41, Damien HACKETT &lt;<a href=3D"mailto:=
damienhackett@eaton.com">damienhackett@eaton.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">For this point are you sure=
 because my changes are on poky layer not meta-openembedded one ??<br></blo=
ckquote><div><br></div><div>poky is a composite repo made of several origin=
al repos, oe-core is where the recipes are. meta-oe is an &#39;extended&#39=
; layer and not a part of it. Patches to oe-core go to oe-core list, patche=
s to meta-oe go to oe-devel list. Only patches to poky/meta-poky directory =
go here.<br></div><div><br></div><div>=C2=A0<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><blockquote><div dir=3D"ltr">
<div>- the patch should apply to current poky master; if it&#39;s not relev=
ant or needed for master this needs to be clarified.</div>
</div>
</blockquote>
I see some people add [dunfell] in message subject to specify a specific br=
anch on which appling the patch.<br></blockquote><div><br></div><div>Yes, b=
ut the policy is that it goes to master first, if it is applies to both, th=
en backported.</div></div><div class=3D"gmail_quote"><br></div><div class=
=3D"gmail_quote">Alex<br></div></div>

--000000000000d7286e05cc96c531--
