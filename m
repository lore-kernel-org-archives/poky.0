Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B6FCCF9E0
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 12:48:08 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web10.10752.1761655681867633773
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Oct 2025 05:48:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PVw1O0NQ;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-87c1f607e72so67335266d6.0
        for <poky@lists.yoctoproject.org>; Tue, 28 Oct 2025 05:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761655681; x=1762260481; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uFuhbfxwaMiGKsxoqUjXZf6WCKMfx+NgtoFoBkk4erQ=;
        b=PVw1O0NQe17R5f2V4IGjlxk/F+lN8mGLXcwSIS1fdX88/TJIXoWZ1fJLO0bMzsTFWE
         J9uhze/aDN3rYsO+B9i7TeS5Mzz3pDwWWZyFf5a3iOrUriGWW1uILAZF8rEpp/LRJIGB
         qnLwKswfqpRblfRZqBsCzZ7hQ5Klg/qD43VDVzocQa20UsvYQD6HfwL14CoN0U4Ws6P/
         7Fl2TH6/zykKOZFXmiwz66hhC75wT00Dr3J2E+j4g8jFOjI3trJkLd5tCDWLcyYvDahG
         vd5U3Q5BW4SJn5LtfMPHJchU+UnaO32Dv9H6QAY4vR1PSmYQSr7QCqDXq1lflUw5XpJM
         iH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761655681; x=1762260481;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uFuhbfxwaMiGKsxoqUjXZf6WCKMfx+NgtoFoBkk4erQ=;
        b=RI7pVh6opmrtSazMEzkgQ9W6XFiGBZYj8PtBuiqXP8Ag45bbvTAWbsuhklGUriIJPW
         428ttx7QmTyr6BrPKd8oXzG5toEPJSdrEPK5I9OnHEn7MpqHQZXfX57nZF4qNTT27DtS
         dO08qXRAz4cGQi028BCAfDCIVDzjuz6WZ+a3OB73jexbLCGbFxPVMyb2sZ9Dd5R5DcxZ
         6FY7wHLT6yRk+SI7/EXiBUWynrHr14D45sE6lwEpZCbCvdWUU6g+bsWeZfsVFXHt3ifL
         CFpBrNNPCc7VQAIRxd4Ys8VbIu4coq6DpyN7mqI8IHH1B5yf1aVWOHpMQKdfVGmsVB2S
         2CKg==
X-Gm-Message-State: AOJu0YywWNjupkeJdp0Raamr830gJN7OI/MmFpVeoOwMJYV7wB5/Nh6O
	l4EHk9Q1/WJhYLNqrPwj8427Xbd5LKHZPQFY+L5+Tj9TQTWDOk5pljUifZChwY8t/Ulk+yPgat0
	x6JJ/NnwF8PX7VWmUw+LSvX/9Tbhh3hE=
X-Gm-Gg: ASbGncuYmDtWNEqXbUsYKclCfBisLzK/VdRsLYx3VW+4pOGbIy9gvd+rjddpaxsNKNt
	eW5AOnEOCgp3SWbmbUA2VvXm5jdodcrB5GprMpnkXx8o/MEL8Xsw20iakMZhmitkbEvihqZO2Jt
	ig68jrKTny2goxUtNAc9y8/SM4QzSrt5hZzPrGGi05mGdDmRiwlgmPCL4wmoTfzmYYK/JtvUA0Z
	ZCYvLCPbNqoEUZm/QRyszHekumHYIwyGyspaNOED9b6hRzkW6CsHFarc7IPL2e9UkAeSn5rf2CR
	r9N2uiSOIGMZXWi9FQ5sEdRMXLdnRaYYZrb9UN9MezQrTKAWxslXzTSlYw//nydbZh+Svkdmch7
	+DKcognAGaa42li8+Sg==
X-Google-Smtp-Source: AGHT+IFKK56lWDk+dxQhH5kIMfTVOQL1hMeCIE1HxmuEnn40uH5tyW99yrgTx+jlz+o8ZIta6Ho8izaUfBP/4ufpn0c=
X-Received: by 2002:a05:6214:1bcb:b0:87d:fc0c:a62a with SMTP id
 6a1803df08f44-87ffb4a9ea8mr37538376d6.18.1761655680847; Tue, 28 Oct 2025
 05:48:00 -0700 (PDT)
MIME-Version: 1.0
References: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
 <CANNYZj-oJqZm5AE+DCAw7Am462LPhn3y7iJFgEpXK=HuZre8GA@mail.gmail.com> <DDTY80FV2DL6.3RTKQPRRRTRMK@bootlin.com>
In-Reply-To: <DDTY80FV2DL6.3RTKQPRRRTRMK@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 28 Oct 2025 13:47:49 +0100
X-Gm-Features: AWmQ_bnf6ZhMqliONwLv-rSEp-6I6kuOVDxrydkXCnZBJzjLRmA9b1f5PvBo2ro
Message-ID: <CANNYZj9kGHhK-AG+y+=Q-EREJcqbqi5WexAfoAnBbJKrSTaVpw@mail.gmail.com>
Subject: Re: [poky] [PATCH] meta-poky/conf: bblayers.conf.sample: move
 meta-yocto repos out of oe-core
To: Antonin Godard <antonin.godard@bootlin.com>
Cc: poky@lists.yoctoproject.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 28 Oct 2025 12:48:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13777

On Tue, 28 Oct 2025 at 13:19, Antonin Godard <antonin.godard@bootlin.com> w=
rote:
> I haven't tested this, but maybe in the meantime we can have a temporary
> template to set this up? Something like:
>
> templates
> =E2=94=9C=E2=94=80=E2=94=80 default
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf.sample
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 conf-notes.txt
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 conf-summary.txt
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 local.conf.sample
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 local.conf.sample.extended
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 site.conf.sample
> =E2=94=94=E2=94=80=E2=94=80 no-poky-repo
>     =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf.sample
>     =E2=94=9C=E2=94=80=E2=94=80 conf-notes.txt -> ../default/conf-notes.t=
xt
>     =E2=94=9C=E2=94=80=E2=94=80 conf-summary.txt -> ../default/conf-summa=
ry.txt
>     =E2=94=9C=E2=94=80=E2=94=80 local.conf.sample -> ../default/local.con=
f.sample
>     =E2=94=9C=E2=94=80=E2=94=80 local.conf.sample.extended -> ../default/=
local.conf.sample.extended
>     =E2=94=94=E2=94=80=E2=94=80 site.conf.sample -> ../default/site.conf.=
sample
>
> With the only difference in no-poky-repo being the layers layout, compare=
d to
> the default one.

Yes, I'll be ok with this. Don't know about RP or others :)

Alex

