Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F8ECC71157
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 14:02:49 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.8889.1750773766294419831
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 07:02:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AaL//LjX;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6fae04a3795so5526056d6.3
        for <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 07:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750773765; x=1751378565; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qtPRVgu7bAanUp2DQYh1ROl/J7mr5bLTbEVU1zhAKYk=;
        b=AaL//LjXsjA3OTlfb5r8UKpmyq8zYW1xQUd290UUWt7mAephID5EkjsDRcU8r2Gh5t
         WNd/2sR56BIyLTHdGMpeYNuhFU4hgV08ArdGhaxV1+ZVEYaSjtsgZMdBDK9CsFk97lbY
         PcUjdmc1YXZ71o1Ojl+2s8Nrt+2A6LxOGylIO/HgBaIZAa8gCrAVfzF8WGHGZUbLihmn
         lKtOdwglRapPPQ/R6r0n0WMct7QQJ0qorpCcYDp4t+z+X4PPxyHGcrDXxBvl/mpgc95x
         2+nE2DLTgsoDxa2LuHoopcAkoCIR6LrwRnbJJNILpRrp3jrTDVyn5XBVb3DV3vyviHwb
         QPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750773765; x=1751378565;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qtPRVgu7bAanUp2DQYh1ROl/J7mr5bLTbEVU1zhAKYk=;
        b=N8JKn/r8q0FcPX7Crjw7u+cbACGl+JxJ4+IbYf5gT/bJU9GWOZGzw3vLfuioP0Zk9b
         Dt/OOIAXOeHwqtRjL4aV4xRS9Nj4OaVUP+s8IJ6umkkwq4yjkAuagxXKn1VuYFgUP0DU
         nh0b/5pEaMweGFAdC4CahWy1DbE50nc+GHLMyuCklxt2NP8aU/cr5MFd5ZSLg12tDSdp
         tK+1YIJE1xnPwvw/OXqnRbh0DPZzXW3YTMoxSTOMJ61XkMdRg+9qJ4dDEndCZUoU+nDU
         w5M4wQH2Dw2lRPvmMOTGnt98Sbl3jf5NlOl8w55gdkqY+iwFsBz/AxL+hdK1Vpp0sTie
         fJjA==
X-Gm-Message-State: AOJu0YwA+aExVzEAlG4Zr5BBBLPg6hzJhHgff4xPcWdKu0YaYHN3Fyfi
	NY2PUBLdipSJCfCeKDsCOA6H5vE92OXti+FwVKleXg4G5s4W1M84TQtu8nU71ngGy86d2kWywba
	3OLN+vPVza9zVf2tVXdhK+SuWOptTGIQmIg==
X-Gm-Gg: ASbGncuoIpyEWmOwjEhqBHEfCEUAHXET+TEgJIDcR4XwFe7I/Wo8APl2AVht/WspXR+
	lIDEd1vtdgnX7z4ZwV52QGPIjvYTOKZ349iLjSXWMPj5dGhx89GbUiIcDxjhCmXVesd8donP4RK
	7KI2TiH7qDS7T7YENCwUDO8i5ZOTYP+4OdR/LrHKI59I5D88uwMNJL7zn/MmMqD12/g7VJkCkSE
	FzNnQ==
X-Google-Smtp-Source: AGHT+IE4xgH39I6BgR7xFc3lDOm3EeAtwvpmIK02LmoqIKYmmkiOD0pyQJDTW8yM/B4vVkrbk36/rpfBi3Oi/2Gyshc=
X-Received: by 2002:a05:6214:590a:b0:6fa:fdb3:587b with SMTP id
 6a1803df08f44-6fd0a4699e0mr226616246d6.1.1750773765115; Tue, 24 Jun 2025
 07:02:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250623165507.1633860-1-alex.kanavin@gmail.com>
 <6fb30604dfb196088f07c6b59f437eeb0f1df788.camel@linuxfoundation.org>
 <CANNYZj8bcMto=-OHPNEZs_aEM4vr9K1ujVOZ77EDBT-9xC5sRw@mail.gmail.com> <749dde0c3ed74dc938085cd15316245eeaa15cc4.camel@linuxfoundation.org>
In-Reply-To: <749dde0c3ed74dc938085cd15316245eeaa15cc4.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 24 Jun 2025 16:02:33 +0200
X-Gm-Features: Ac12FXwOdttwvS71B_whjTxcnqBuPbv-TUqJvpgONhTT2MZN-ZHBHGO48SN3YCs
Message-ID: <CANNYZj-J09egi3tEb+a3c+g6KSE-_8g21Q-axnVUcUjibyHuJQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] meta-poky/conf/templates/default/bblayers.conf.sample:
 do not assume integrated poky repo
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 14:02:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13672

On Tue, 24 Jun 2025 at 15:58, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> >
> > The patch follows the suggestion that such a tweak is possible:
> > https://lists.openembedded.org/g/openembedded-architecture/message/2129
>
> Ah, that is a bit different. There aren't tweaks of a similar nature.
> I'll need to give this more thought...

No problem. I'll adjust the commit message meanwhile.

Alex

