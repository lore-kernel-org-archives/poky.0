Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693D9C02185
	for <webhook@archiver.kernel.org>; Mon, 13 Jan 2025 15:53:07 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.20383.1736783581858552449
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Jan 2025 07:53:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KDqWvEZH;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7bcf32a6582so174921085a.1
        for <poky@lists.yoctoproject.org>; Mon, 13 Jan 2025 07:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736783581; x=1737388381; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0uiIPnAMtO9RWljeEiARkKpeyx416TEbeSiz7G9B+Q=;
        b=KDqWvEZHuf/XbAnE+0N/IM29HBkToxPxtvkmGSFj37lHvUmtxdffAcgcYplETQJJWk
         eYtA6MiC4wlPcVyupyGVOMzL/stASbh+kw8ZIj2OWmpUPxw9TOTAPl/wwqAucoqHRvp7
         0b//c7eMbmCcpHFuwvToqkfDIUshn9dv1RA3f35l9YlVwJNp95GeCt4X+jLCup33UUCC
         YVO7D16iEi9naCnZPBCAXASfLp77dPrUVFK1MYEhupZ/Khhk+0MeG4lK1MP+Dgy9K4Dv
         tT+JYB+8czY/EQY+HS9c0CDlLMMUR1FZHb0r2pYliNVm8MDLF90hdLz0uO0BRX7oOXeo
         3/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736783581; x=1737388381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h0uiIPnAMtO9RWljeEiARkKpeyx416TEbeSiz7G9B+Q=;
        b=RRehqy8UrsClIdTgLmPROmXmLbH1XSL+Zsa3aGjYhiOpIj+mCAxrmAygRpXxaHMSsJ
         A6bS/Tt+Hi1yWVVSt9R4l5sDnQDMu8nd2MOjeSGWrqWARAM+krnyQ8QKRm52anD3LCKO
         mNOrKgegtomno+u7DAJCLzKhuvsm/k3shBvFIn8t8d5VCBvVheznlrh3xqchEHm/FBrv
         l62BXCi1VIMqKvZdFhwnz0i8KRoLvqBrNF695fEwg28R/iagbNnpBxz4QWFthiGg/ZuJ
         t4N1nWMnJ5f0DQ18Oc9x1goWnAer97TkaSKfTFTJSYYx6eESa+Wa/cdpgnszX7iU+xWE
         3yxQ==
X-Gm-Message-State: AOJu0YzcFKP5XFT74g9SXV2aFofBAhz4FkC7Q2yRElcF7nOnSpmbHFr9
	G9kOhsUi2bN0iHalWWMsscUjfyNSXcCTpxnRsaDJFx/7ysydMqei2YJKHmn99OIFkltsIgWyrtB
	KLNe/WYFxEaIxwxbmGUT3owlyawo=
X-Gm-Gg: ASbGncszG9+rX6zET8wRm8TExbdZsXRpOLbFGMVLuoPiIWyhT8wIHHOL/8C/HBzV7aZ
	3nybkhwWcKxXsKiG3r62wb+6i58aQwz0keNmlrA7+43mYVt7F+6SonjsVNl3PnL5boWYP3IQ0
X-Google-Smtp-Source: AGHT+IFhSyfxfHCIDg4uJO3Q4qQL0Qj7fi0SpCo2TbexNxUuuPAe/QqsTN09ZInw8YENPzaG8As9tnyCyDL3BZb6Svo=
X-Received: by 2002:a05:620a:2805:b0:7b6:d393:c213 with SMTP id
 af79cd13be357-7bcd972f9ffmr3762582585a.8.1736783580958; Mon, 13 Jan 2025
 07:53:00 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj_tTFbO36CEeaVqZJROhb8LK6jFpCegD6TYFNejFcQ_XA@mail.gmail.com>
 <31827.1736777716848119510@lists.yoctoproject.org>
In-Reply-To: <31827.1736777716848119510@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 13 Jan 2025 16:52:50 +0100
X-Gm-Features: AbW1kvazRNqSRlCulCvyiuBGTYSVqK7U1rWmhj3FAv0gfsMH6KJ0XqZLYAPh5Dk
Message-ID: <CANNYZj8_ADh_GUoO7i5TmTPeNHm8f=gbwhb93B1xYXBneb9+Ew@mail.gmail.com>
Subject: Re: [poky] #package #poky #yocto connman: Bug in connman causing
 endless write to file
To: peter-simon.dieterich@vaillant-group.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 13 Jan 2025 15:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13505

On Mon, 13 Jan 2025 at 15:15, Dieterich, Peter-Simon via
lists.yoctoproject.org
<peter-simon.dieterich=3Dvaillant-group.com@lists.yoctoproject.org>
wrote:
> Will do. I agree that the statement is very broad. To be honest, I don't =
know the exact use case of this feature. From what I've seen it saves conne=
ction statistics that look very much like debug information, for which you =
also need special binaries to analyze.

Right, I'd suggest that
- you try to work out a solution with upstream; if you can propose a
proper source patch that's better than just reporting an issue and
leaving them to figure out what to do about it.
- you get a full understanding of the difference between
--enable-stats and --disable-stats by studying the connman source

If upstream shows no interest, or otherwise there's no progress, we
can revisit the disabling, but even then it should be a recipe option
that can be adjusted:
PACKAGECONFIG[stats] =3D "--enable-stats,--disable-stats"
At that point the "full understanding" would become useful to write a
good commit message for the disabling-by-default.

Alex

