Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A04EC3064D
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 13:56:59 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.173386.1719323818469572494
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Jun 2024 06:56:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ci1XZAME;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ec002caeb3so71147801fa.2
        for <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 06:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719323817; x=1719928617; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GFDws918Tz4SXTYUdfuYk9qZG0fB4PT1e16DzcIk/D0=;
        b=Ci1XZAMERiLci3Au73t14vMveAN5fY4XI4UpsWGIhXZjLnynY0Tc50bBbp6wlldY4S
         PZXNObPzXO5RVDqbsMONrNzuy0jFS82iXMJxUirZrxgtA6LM/rPmfoDmjqSEV/o6XxCe
         nrIiuI3SXCKqSsirwSPnI3TWibQOl/YG64sWbmxPAo/Yt6fiJFwevpjogHscRiPfWIS7
         iU0qhH0Pgfb5xmH4UWapRT61xo3XxtmGbri7oiiU92iRz8HNl253s4RmAzKbPp9IrcK8
         BgbxwZXPiYaahGLs/VGzx/FRWUNglydKn0rKJJ4YZC0Jjhfcau6+QXw82gPqudqPT2lM
         YD4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719323817; x=1719928617;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GFDws918Tz4SXTYUdfuYk9qZG0fB4PT1e16DzcIk/D0=;
        b=k2vtrXdWCT9PeMAA3Qy7JWoWdpDk80B7s1XZS+F7DrMGPpAyks+quJD+kkthtP4rpE
         1BBuVUIlYK4dLMgvUmsxQi2MEvdIBPEo0g+3B4TdxsMIZRhijRArtveyrdBe6+TKuk6L
         HalgVkc9qlPawdU/6x0NKntiJXVoZV8XZuWcLkxtcZRfpj1l3Vg+Q8eL5jYELJAkDFyz
         CLcwLK3xDeWH8C2WhOZjTyYVJCVwjd9fJOEwC8ZbTTMXGwjhBPKCsW+hMZPd36iabV8Q
         gE/yAWx3Kvs03R5n7U4kFZrhkHsSsw7kBkB7939K9NOHMW9hKBGGJgw6keQvAesIBPxO
         ApoQ==
X-Gm-Message-State: AOJu0YxnyxpzCip2mGoHKXsCoaUhWjoPpoOssAhFsPKz9f//JNtt1vyI
	NLTKq9otTZgK5MM2BHZ7urYxJMRVE6FIDCw/3dZLXEJH7AdMKQz4BiTzHZd+GIkAi01PBRXhaOO
	K/8MRMYtSckI/H9afwsHphu0CXlY=
X-Google-Smtp-Source: AGHT+IFIpaujD8J1A4Gi0qLsWwNFkiAY6SMTDxM/82yY+pgRF25YD/alwDqiVoHo2ERty32fpJQzaJp4Sg4M/nfhigE=
X-Received: by 2002:a2e:3817:0:b0:2ec:5172:dbc4 with SMTP id
 38308e7fff4ca-2ec57978cb8mr50239971fa.12.1719323816339; Tue, 25 Jun 2024
 06:56:56 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_7bwTBr_P-2TnYhtAEr4wRhb2XsLwJS_63HnKwJ5g=Xw@mail.gmail.com>
 <2056.1719322997165543913@lists.yoctoproject.org>
In-Reply-To: <2056.1719322997165543913@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 25 Jun 2024 15:56:44 +0200
Message-ID: <CANNYZj_EKyhoTsvSEH5=6T35F20sGHVEgVT5k5bXXWGZhD1jQg@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 13:56:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13394

Right. I know nothing about it, I would only suggest to grep the poky
tree for read-only-rootfs-delayed-postinsts to see how it's
implemented, and whether tests exist for it (and if they do, then how
do they set things up). Then you have the full picture.

Alex

On Tue, 25 Jun 2024 at 15:43, Gassner, Tobias.ext via
lists.yoctoproject.org
<Tobias.Gassner.ext=karlstorz.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> (sent again, to post on group as well)
>
> the docu on read-only-rootfs-delayed-postinsts says:
>
> read-only-rootfs-delayed-postinsts: when specified in conjunction with read-only-rootfs, [...]
>
> so I guess I have to specify both.
>
> Greetings
> -Tobias
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13393): https://lists.yoctoproject.org/g/poky/message/13393
> Mute This Topic: https://lists.yoctoproject.org/mt/106869018/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

