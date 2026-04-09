Return-Path: <ernstp@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08F86F364A8
	for <webhook@archiver.kernel.org>; Thu,  9 Apr 2026 17:30:19 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.138056.1775755818256867719
 for <poky@lists.yoctoproject.org>;
 Thu, 09 Apr 2026 10:30:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=KsitNu+W;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: ernstp@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-66fb5f2183fso1971961a12.3
        for <poky@lists.yoctoproject.org>; Thu, 09 Apr 2026 10:30:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775755816; cv=none;
        d=google.com; s=arc-20240605;
        b=bzvF7K9QsrwRaYI46YEIEDVlS80lKD1xn3bcPq3iP/FPrJ7n566nqHJMcJnUwDQxzs
         32BhpuuZJSR0hrXBB8N/4pRJpctvPR7qdYjop1/XwtRp6dEiwOazXLDdaOZVYYmUocPj
         BoWnVGmfN5HUbJvEuSey9T24TrJtVPsGxaMAJOMj16RvgCdnQ6dn95u+vsRG3i4ITFB8
         rLLHIMCdh2tO/CpiuFhEF3+rLxf/Ne6tPJMieaHAfpPcGQmI7M9LOmr+4UjFFKnU1+7c
         9mL1HGRZfm59HNtDallznU978v3XaapkM+Z1OC8awcklycfjIP/jO8N3j+tjqZOCjtZS
         1QHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CQGobQqfppMfN5Lf1QrwQJX8y3FlQ85mfSGW2dQ1cWg=;
        fh=YtLOcrWLsufhGxS9hi86xqMsKkYQ9XL/G4/hdwv1JVE=;
        b=TmGU6JdJohbUmCgtGC498HbyGFRF/a9ZT/Jz743oqk1OTp8Mz1zcZBPGYGA2/EOsJY
         mscIQQnD0Yh0xLAlDypHH3quxF0QRiMo+r9LTkpPquBzzzzzF3R4o6AolxPVlJtPfzNh
         zmny3EzED0gpqwn24YOU1iTJpmAdV4OiVGlZWFIHbsevXBeJHdCYxzmQ6HX4Lhk3f0JN
         Jn1RlTTYI2ONcax88CznVdfM4mL04MxorKGgDj+IPeIxoEHFDcBNTbjfWoDZmz9Pm2EB
         cVZ1XPgjsG7Bi2Eii1Hnyxu0wB7s95TWpidzkZGmovCNxfiq7urNoTgB9k1YggZKblcN
         5tSg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775755816; x=1776360616; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CQGobQqfppMfN5Lf1QrwQJX8y3FlQ85mfSGW2dQ1cWg=;
        b=KsitNu+WG8d+yo9/AwxDahQZiSY2UooMbJaIsf4m827U1pXrkS9a0/pAsUHklBxvqa
         E6n4hDZQsdLhHh7tC1J/SFbUBjCiJVM0kgSqbhG8R1Fgrt5BobAf1A2DdsYkQOTbHB9t
         yxXoe2nTybXfSfh5GKyRf3uz3AbNpZc8t5iAYZFmn8oSK+Hh13qZZnRbYS9w79yTWDcV
         hmD69j99akXViLOzqsYliApFKKdGV7E0HPPyzhIw5fDApzPZGHXyTEaizyqxjD7pd+n9
         QT2DZaUIb4iu7n2w+4fsef4/SA8fPkXf1ihldBQBDhCtCgzKBq4Qv2t7R+hmOm3dEdEk
         /jgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775755816; x=1776360616;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CQGobQqfppMfN5Lf1QrwQJX8y3FlQ85mfSGW2dQ1cWg=;
        b=tV4JAX35fMsDrvkUL5hP3aL+Fa7p9qd7pUR/IwyrspYpNIYea/+Hqx4iotG3aHAYoo
         4WCsSx0odq4kQcDGkM14jyJdXmGiKH0G/D3V3hwAxBoViAVboynsgewDIxCyrHEG2XYx
         XNFcTytPWaeXDJONXl1x74wZDtdXGSRxJiD5Z+u1TGSyqBFDmWRkwJ5+5a0T7HBZy0fp
         07SG6eXmLBHWHvfuxTmtPVnu8r67DtXAr0K2e3KSdMstRYViO06aQA1ct/Z7/dAyUz0h
         6BNWMF3pV8MFLL0dKYeePjTU6kckyZoitRW+hUv7UWYx4o7uJaI+eGlobjojO1U7s6XU
         +Xlw==
X-Gm-Message-State: AOJu0YwpezrG6DNf+ZPVxSboFC6nVx8aRpO7MaLifqeELCZSbgqpKbUz
	aGV/Ks/nC7qxI87i1SVgvHN60MiTiLqKZOTKISVuaWGEAKFtnYsiymD/aOKf80y95wnXcr0MpP4
	6AOwglptjPNJ3GdMOs17DMzZzVonOWDE=
X-Gm-Gg: AeBDiev4WqEYBHicnOE6ZOJMaVG0D/XpLvjjddEmtlEN6IC/gSs6Gq9vyHDh23QX/W1
	DWukJkwD7AGdYfW3e6ifznSBbwe9TCp0IcD6N8TZTm/iMIBwrrzLZp1enhf5QxgoIc/4uNGgj9h
	7eNINsYNHD/7bq1B6pFMKYiVoW/kN0wzItRMxh5C3exHwfS72eHjpBXACrjUngeqkznqQe7mc4p
	BD3+Mp+rVNoDA64VZrPo18s/7Aiuzmt7pYKs93AWbkMWSCLvvKH7/qMM8tKhkeW8TjqfvXPEJFe
	58g6ci9tI0zBbtCk0EFm1tONsB0/hpCVRNNPluz1uO3E5uIKcBf+ITw/VggvuHNYSIdfNlkb3jS
	O8TfN+fXqmOMw6qZlvJfERBri3vSpwrfAbp7QnhXXZ9AEyAdY07QyBIxK9zKAuVfKwfDZYuHOFu
	wovE8OvUrgDbZdA6VNMTILxA6Kt9b31vdBdEGlfikuXguE6fYudl6649+jCimm8E8xIKTn
X-Received: by 2002:a05:6402:5107:b0:66a:526b:96a7 with SMTP id
 4fb4d7f45d1cf-66e3f707a81mr12265200a12.19.1775755815970; Thu, 09 Apr 2026
 10:30:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260303172109.2081848-1-alex@linutronix.de> <275547.1775745237087663847@lists.yoctoproject.org>
 <DHOP88O48DYH.374EOELZ42STB@bootlin.com>
In-Reply-To: <DHOP88O48DYH.374EOELZ42STB@bootlin.com>
From: Ernst Persson <ernstp@gmail.com>
Date: Thu, 9 Apr 2026 19:30:03 +0200
X-Gm-Features: AQROBzCmN9oPjrQWdTB8B--x1Z3TO6asq3hOdNmmZq5Mdl-Y7EhFatDMPuaqxtU
Message-ID: <CAD=4a=UpC8BH9P5tF0pK-Gf+og+oOoEe-nw8MpQGSme1HxRTkQ@mail.gmail.com>
Subject: Re: [poky] [PATCH v2] meta-poky: remove the default template
To: Antonin Godard <antonin.godard@bootlin.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009e6d52064f0a5eae"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 09 Apr 2026 17:30:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13889

--0000000000009e6d52064f0a5eae
Content-Type: text/plain; charset="UTF-8"

Hmm I'm not sure what it should be. Simply

source ./layers/openembedded-core/oe-init-build-env

then?

Den tors 9 apr. 2026 kl 16:37 skrev Antonin Godard <
antonin.godard@bootlin.com>:

> Hi,
>
> On Thu Apr 9, 2026 at 4:33 PM CEST, Ernst Persson via
> lists.yoctoproject.org wrote:
> >
> https://git.yoctoproject.org/yocto-docs/tree/documentation/dev-manual/poky-manual-setup.rst?h=master-next#n97
> >
> > This TEMPLATECONF path is now wrong in the docs for manual-setup:
> >
> > $TEMPLATECONF=$PWD/layers/meta-yocto/meta-poky/conf/templates/default
> source ./layers/openembedded-core/oe-init-build-env
>
> Good catch thanks. Can you send a patch to docs@lists.yoctoproject.org
> fix it?
>
> Antonin
>

--0000000000009e6d52064f0a5eae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hmm I&#39;m not sure what it should be. Simply=C2=A0</d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,hel=
vetica,sans-serif"><span class=3D"gmail-im">source ./layers/openembedded-co=
re/oe-init-build-env</span></div><div class=3D"gmail_default" style=3D"font=
-family:arial,helvetica,sans-serif"><span class=3D"gmail-im"><br></span></d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif"><span class=3D"gmail-im">then?</span></div></div><br><div class=3D"gm=
ail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Den =
tors 9 apr. 2026 kl 16:37 skrev Antonin Godard &lt;<a href=3D"mailto:antoni=
n.godard@bootlin.com">antonin.godard@bootlin.com</a>&gt;:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Thu Apr 9, 2026 at 4:33 PM CEST, Ernst Persson via <a href=3D"http://lis=
ts.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoprojec=
t.org</a> wrote:<br>
&gt; <a href=3D"https://git.yoctoproject.org/yocto-docs/tree/documentation/=
dev-manual/poky-manual-setup.rst?h=3Dmaster-next#n97" rel=3D"noreferrer" ta=
rget=3D"_blank">https://git.yoctoproject.org/yocto-docs/tree/documentation/=
dev-manual/poky-manual-setup.rst?h=3Dmaster-next#n97</a><br>
&gt;<br>
&gt; This TEMPLATECONF path is now wrong in the docs for manual-setup:<br>
&gt;<br>
&gt; $TEMPLATECONF=3D$PWD/layers/meta-yocto/meta-poky/conf/templates/defaul=
t source ./layers/openembedded-core/oe-init-build-env<br>
<br>
Good catch thanks. Can you send a patch to <a href=3D"mailto:docs@lists.yoc=
toproject.org" target=3D"_blank">docs@lists.yoctoproject.org</a> fix it?<br=
>
<br>
Antonin<br>
</blockquote></div>

--0000000000009e6d52064f0a5eae--

