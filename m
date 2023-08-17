Return-Path: <jtilahun@astranis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E2C2C64E78
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 20:28:28 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web10.4223.1692304105748693474
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Aug 2023 13:28:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@astranis.com header.s=google header.b=fVZlwm9D;
 spf=pass (domain: astranis.com, ip: 209.85.128.182, mailfrom: jtilahun@astranis.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-58c4f6115bdso2373847b3.1
        for <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 13:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=astranis.com; s=google; t=1692304105; x=1692908905;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Pxsv0+Wxy32ywlh0kKFwHGywSpQ5fu4ZGrUbIuxDH0w=;
        b=fVZlwm9DO7tvafls6IcY0yR7dF1Kbov5+R1MTFXbRoMPvFfUMwWEzi8wi+7Wn2e/QB
         ky3HjUDOATt5biT4fB/1ihhY9JG4p1RaTgP/eLpzdXbjWYR70J+Skk7v19ZKjlUUKFiW
         6C0RiFU8JXagcC9I36Af4IF3Ozm9ezFN8nStwBdWVjFKarI/yKYMvBzxFBEPlIuJJ5cy
         d9dUZhoCd9/afPGuMW8yM6S22ijRrBXM39zJKxoidc1mTslv84q8wYwIbMhsTzsHzuAu
         S9c5qprh4bwcR/NYeRIGPDwjtv7Jt3UfgZ+JCvvL/PXP7gh0CNCPuiMhMbu1agV1gmBs
         8GxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692304105; x=1692908905;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pxsv0+Wxy32ywlh0kKFwHGywSpQ5fu4ZGrUbIuxDH0w=;
        b=JO5QmOrWioMjCrDy6CJ7eM4j02qerg+a+58xYm7BZn5TmTebHgH8SXPpFlZEamkxIU
         zJBqOIJXNSv9YUtuDfgAM28H4f3ZuWYTnmw9mo+qQ2be8NxHweonPL1DLpoXRoPZXwq8
         WwgT/yPp+iTSHqQ5hnGje5cpeGbUVwnBjg7f6tylhkhxMjjGSVb4WyauYguMsFAQs9/x
         3iq5erMyDYefqNLBJPekCQfxc8RvDpQxqnd40frdMknGhDAalEATtjb3oSN6eB597Xuo
         1xTDI2Qddbs0Ox6FLPTQ+na+Sj2W43KOlt/DoWIL4B0XrinN5y+hx6sVq9TEpeDPNGnU
         1xVQ==
X-Gm-Message-State: AOJu0Ywv0A6MiffeHWras5GV4QgY97ZK+zAfFPtQ/1hao2ny4PCNq/wb
	AstEfZmks3YC+YuYZpjmDr0mqbzEA9Lx20QCWBl5ya+ch+XQI9rWcOJBfl8U4y69ktz01mx5xa8
	MgBIKYF6bnAobWQkeNR7va8PokHEPos7F
X-Google-Smtp-Source: AGHT+IFjLQpGkM7NQXSu90ASrZnse1FQwt4kdf3kng73WzjEagd8KJPuOW2gutgr0d4hzyWCDFdBAOvg3d0g0A08LcE=
X-Received: by 2002:a81:9e41:0:b0:577:3aaf:c876 with SMTP id
 n1-20020a819e41000000b005773aafc876mr479883ywj.30.1692304104892; Thu, 17 Aug
 2023 13:28:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230817045433.495995-1-jtilahun@astranis.com>
 <d0d0a045-666b-47ea-9759-4d05f439fe36@bootlin.com> <b05667d60595cb9e96b2d1040d6bdc621a756399.camel@linuxfoundation.org>
In-Reply-To: <b05667d60595cb9e96b2d1040d6bdc621a756399.camel@linuxfoundation.org>
From: Joseph Tilahun <jtilahun@astranis.com>
Date: Thu, 17 Aug 2023 13:28:14 -0700
Message-ID: <CANhvTw4wAq9tD-xa9UCWAcv7CV_GJ3xd0DvtsFBH6QjF57mbPA@mail.gmail.com>
Subject: Re: [poky] [PATCH] scripts: use the monotonic clock to compute time elapsed
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: michael.opdenacker@bootlin.com, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000064aa4060324410b"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 20:28:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13132

--000000000000064aa4060324410b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the background Michael. I sent this patch to
openembedded-core@lists.openembedded.org per your message.

Richard, I understand the point you cite from the Python manual page.
Regarding this patch specifically, only the difference between the results
of two calls is used. So the concern you raise is not applicable to this
patch specifically. Given that, I'd appreciate it if you could take a look.

Thanks,
Joseph

On Thu, Aug 17, 2023 at 12:29=E2=80=AFAM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2023-08-17 at 08:35 +0200, Michael Opdenacker via
> lists.yoctoproject.org wrote:
> > On 17.08.23 at 06:54, jtilahun via lists.yoctoproject.org wrote:
> > > From: Joseph Tilahun <jtilahun@astranis.com>
> > >
> > > The monotonic clock is preferable over the system clock when
> > > computing the time elapsed.
> >
> >
> > I agree. Otherwise, if you suspend your laptop, the time information
> > counts the time spent sleeping.
> > I submitted a patch to BitBake a while ago, but there was the fear that
> > my change would break other parts (though it was working fine in my
> tests).
>
> The issue was that the python manual page clearly says:
>
> """
> The reference point of the returned value is undefined, so that only
> the difference between the results of two calls is valid.
> """
>
> and the timestamps being sent out by parts of bitbake may be used as
> absolute time values (e.g. displayed to the user), not just for
> comparison.
>
> Cheers,
>
> Richard
>
>
>

--=20


________
This email and any attachments may contain Astranis confidential=20
and/or proprietary information governed by a non-disclosure agreement, and=
=20
are intended solely for the individual or entity specified by the message.

--000000000000064aa4060324410b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for the background Michael. I sent this pat=
ch to <a href=3D"mailto:openembedded-core@lists.openembedded.org">openembed=
ded-core@lists.openembedded.org</a> per your message.</div><div><br></div><=
div>Richard, I understand the point you cite from the Python manual page. R=
egarding this patch specifically, only the difference between the results o=
f two calls is used. So the concern you raise is not applicable to this pat=
ch specifically. Given that, I&#39;d appreciate it if you could take a look=
.</div><div><br></div><div>Thanks,</div><div>Joseph<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 17=
, 2023 at 12:29=E2=80=AFAM Richard Purdie &lt;<a href=3D"mailto:richard.pur=
die@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Thu, 2023-08-17 at 08:35 +0200, Michael Opdenacker via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> wrote:<br>
&gt; On 17.08.23 at 06:54, jtilahun via <a href=3D"http://lists.yoctoprojec=
t.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrot=
e:<br>
&gt; &gt; From: Joseph Tilahun &lt;<a href=3D"mailto:jtilahun@astranis.com"=
 target=3D"_blank">jtilahun@astranis.com</a>&gt;<br>
&gt; &gt; <br>
&gt; &gt; The monotonic clock is preferable over the system clock when<br>
&gt; &gt; computing the time elapsed.<br>
&gt; <br>
&gt; <br>
&gt; I agree. Otherwise, if you suspend your laptop, the time information <=
br>
&gt; counts the time spent sleeping.<br>
&gt; I submitted a patch to BitBake a while ago, but there was the fear tha=
t <br>
&gt; my change would break other parts (though it was working fine in my te=
sts).<br>
<br>
The issue was that the python manual page clearly says:<br>
<br>
&quot;&quot;&quot;<br>
The reference point of the returned value is undefined, so that only<br>
the difference between the results of two calls is valid.<br>
&quot;&quot;&quot;<br>
<br>
and the timestamps being sent out by parts of bitbake may be used as<br>
absolute time values (e.g. displayed to the user), not just for<br>
comparison.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div>

<br>
<font size=3D"2"><br><br>________<br>This email and any attachments may con=
tain Astranis confidential and/or proprietary information governed by a non=
-disclosure agreement, and are intended solely for the individual or entity=
 specified by the message.</font><br>
--000000000000064aa4060324410b--

