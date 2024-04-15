Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32756C4345F
	for <webhook@archiver.kernel.org>; Mon, 15 Apr 2024 10:46:37 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.18079.1713177989578988657
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Apr 2024 03:46:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BCud3Y8a;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d094bc2244so34400791fa.1
        for <poky@lists.yoctoproject.org>; Mon, 15 Apr 2024 03:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713177988; x=1713782788; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MxUXeXm5fKs2cls/5jHdAiWOvxAtrpVSIiYmBdwmjx4=;
        b=BCud3Y8a/elJ8c8ntewCeP7uFXkzauHcQ/l7J/YO3N/6gTzHqzZAc3Pqgo+F0RPhYq
         ZLdcRfV1qThwg6eZNPc+v6QkNg25c7eFP5qQZaxI6T6W7gEBhygOXZqQCivArAfS23M+
         cWYcBD1BxMqLi0Svp3cKv/3EA8fYdmEZ5Fl7B1L5c7JdYQgOOOHVb9eqzoDU66v792Uh
         fI/GvLU2gTnCxuSn7iNF88cop/sO9CouxlSQWwfSabfu7ywYrIL1QM8Gs7sqF5z996HP
         PWgWe5XxTVISmXaVN+T7C6ABrDiqQLtErL9JfZ0vsHM2M4rLI5lOySlhqn+D9HidJn+r
         jXJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713177988; x=1713782788;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MxUXeXm5fKs2cls/5jHdAiWOvxAtrpVSIiYmBdwmjx4=;
        b=dErULI6MVBpv2p0rmgmJX10Di8hRm8+yHcauBM7dk5QIDRqgmqojrNJ7idUQr7qWct
         uKX2ROEwSHNdREsF5BzHNmXlLVxubf0/xZJNnQaGGCw96N8Ez5QlqOz9pKTLBC82+CEd
         TMxpH+LJoloLIxxsufqPBzE5zlQDGRw+GIvCEsZQoLanQa7BJjrX7IKScvJk+m5DgR04
         erKUdlivk28+Z+ylkRx+yeXsh4AJKV9DM2t68CJ+BZ8MpmED/ide03JZjvksJSEIgMtM
         NbaeVOWp+c2VMfh4drpGOie9mvJy9dtXuiZvAcBKATAAsAFucQ33JJ3/94aRgiuYP6NM
         ot3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU5WATm6T6d23Ahqx3xQITSTHVGI8D8x2iBETzbcIp4q5Mf5ZPwXAteEOoY61iP/fJkR/n95K8+GZO0fe4VW/LU2iUX4Hm4ONsg1gw=
X-Gm-Message-State: AOJu0Yy1HeRFRsgkrL9E/7Pa0rip8OlohEQkHkjtM2EmBqj2CwteR+5C
	CaRVEwMtaMdp4VV72uYf/MeP4wnA/RB054/+2pKkXpvDv1ue8iHspNG6DaAC11eblIC7yv8iQTG
	IMWPervhOciDtHwordtPmKR4nVXc=
X-Google-Smtp-Source: AGHT+IHFYfD9/TpWLs096ZttnEGrNcx7Bs7GMb0tWHVvMaJGjhEKP8FE5H/6BixUVBbyr4LoMwSBU9+OCy4tJbF7M4Q=
X-Received: by 2002:a2e:86d4:0:b0:2d6:c5cd:144a with SMTP id
 n20-20020a2e86d4000000b002d6c5cd144amr5700987ljj.16.1713177987638; Mon, 15
 Apr 2024 03:46:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240412153301.87391-1-ninette@thehoodiefirm.com>
 <CANNYZj-hF8PvDsLhaPf+iHyHqjcm7HoQePnz3u_bDvAo=NeexQ@mail.gmail.com> <CAG1aeW31Dov+0DAw5NTWcr9Lgm7W+=sTz3C8jy7-CsZvP5ApbQ@mail.gmail.com>
In-Reply-To: <CAG1aeW31Dov+0DAw5NTWcr9Lgm7W+=sTz3C8jy7-CsZvP5ApbQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 15 Apr 2024 12:46:16 +0200
Message-ID: <CANNYZj9hmATK-hhBBr=s1uFDJdJ+8siPsWsT=nCxRwGg+UKmRA@mail.gmail.com>
Subject: Re: [poky] [PATCH 0/3] Improvements for performance test report view
To: Ninette Adhikari <ninette@neighbourhood.ie>
Cc: engineering@neighbourhood.ie, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 15 Apr 2024 10:46:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13326

On Mon, 15 Apr 2024 at 12:40, Ninette Adhikari <ninette@neighbourhood.ie> wrote:
> I had the impression that I would have to send poky related patches to the poky mailing list. So sorry for blasting everyone unnecessarily! I will send the patches to the openembedded-core list.
> Thanks for your response.

No need to be sorry, beginner's mistake. You should have a README.md
in the top level poky/ directory that explains which patches should be
going where (and why is it that way).

Alex

