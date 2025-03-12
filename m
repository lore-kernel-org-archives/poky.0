Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FF5DC28B28
	for <webhook@archiver.kernel.org>; Wed, 12 Mar 2025 09:20:48 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.32732.1741771243486420099
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Mar 2025 02:20:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RDpF4Dlg;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7c08f9d0ef3so382730485a.2
        for <poky@lists.yoctoproject.org>; Wed, 12 Mar 2025 02:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741771242; x=1742376042; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Pyh417Hu1y7qWvmzl6/P6icWt8S8AEtVzlclcOyMjgg=;
        b=RDpF4DlgH+cwOgEv/8WhMXxe2TYw20/Tds4tDd9/HNNYgEZV3SWr6opkhvwVdi6KiY
         zkahlPtTIeoB6cyC/TYQwtCkAqKJ1HSoZt745KLGVP0Til+xd+cz7XmSHuXqGT1w9cC7
         IyiSctzCdRLlMR/z9eNAv08b+TQYFmSaWiunmbzywLSwhE0PDBM3j8vK/2TVowh6s+c1
         6fqWleuWA3YUNav2WoREru4aUq08d1j6ohNhWDhozbKlAGobFP500d5nn7HRe8LxTV8z
         xvaAyw5U0ZV+SSDV7bnNm4bjoV3InKawFebRomYA0JFamL5BsN4Z02xxsiUg3WBRoXw+
         O56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741771242; x=1742376042;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pyh417Hu1y7qWvmzl6/P6icWt8S8AEtVzlclcOyMjgg=;
        b=mAnKqECLbB0xuK4eSy4jtyqOz2Wb4xAwKCdImeLiHEV7sWYl1r2o09GQdnWKRLGEsb
         3OdVygpFIL1Q4lvnnYhBQjapNrK2oQvIFJs9FmMAJcjTboSon/fjPqEgYz5h1952/JqM
         K1+MrboDe2YoWILUYyW+kt++aMZYT7qqMwAhO38xR8Pj7EZ8/ZfK+d2il3BXOkVue0QP
         HH5XUFNh3JoyoDh6ydMlMiRIssq9qJVOLwSMR15nNOZGeaGMyt9j1kMICY5TcxTgbR+P
         LEyyw0RDzjqP9Hh2Wb7mJeJrHVZHrrvoX64/ofPSdFjM6nKX48debw/10XTp6qwGYD0e
         ZLIA==
X-Gm-Message-State: AOJu0YxHSGWELAsknnKxr56Cq4WyG8Ym+5QL+Ypi8jnPXB/xwAQNE5DF
	5+CSIHCVfyFZxS6Hi43KP+i2jU8oFpn3657uc+U2dOv5hdx5h3+gLisFCrUCFEs5dSlPCH7jmJ3
	AZ6u5X+RMOiFCIvDwX1pcugnr7M8=
X-Gm-Gg: ASbGncvVClFdPTv16RvqO2SlcR0+yHlarL3HYbhHS8e9BhQr5Hix9T2MtmjEkLZyOFF
	FF3n8OzbyGwy+nEl1TeLTaJH0Pv5/CAgQNFmk1q06zKgeNCmyS37ezgAQ4+fucG+qlCUMYgqUZo
	o0suChZ4DsRK6IP80kb0yIZ2V9MrvrbaS8SHNN0IQZWL1OlXRhr/ufDoslQLvP
X-Google-Smtp-Source: AGHT+IHH6Bton9Xjsn6dfzw9s0tEGngzfcH5IaQp4fnlJmA0hm3glP7sDmuFWvu5bIYAKstpYUsvcmWp+j8SsHHb7iI=
X-Received: by 2002:a05:620a:8802:b0:7c5:3d60:7f88 with SMTP id
 af79cd13be357-7c53d607fbbmr2032421285a.16.1741771242457; Wed, 12 Mar 2025
 02:20:42 -0700 (PDT)
MIME-Version: 1.0
References: <JWjt.1741770156872359512.cgxS@lists.yoctoproject.org> <Groupsio.3.JWjt.1741770156872359512.cgxS@lists.yoctoproject.org>
In-Reply-To: <Groupsio.3.JWjt.1741770156872359512.cgxS@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Mar 2025 10:20:31 +0100
X-Gm-Features: AQ5f1Jo1_9L_PV55X4ssqyOXBC6Mv9cOT1ggOb92Q4W_Fa9hfdHPJ9LV7RRS0sY
Message-ID: <CANNYZj8LRD+XCvTwiu85gpR3zqgp1YYy35tOqaPipRQAWSfYPg@mail.gmail.com>
Subject: Re: [poky] Problem run bitbake on terminal in ubuntu #bitbake
 #compiler #poky #yocto
To: bovog@etipack.it
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 12 Mar 2025 09:20:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13560

You need to show exactly which commands you executed, and the output
of all of them. Otherwise we can't see what the problem is exactly.

Also, please do not send messages more than once.

Alex

On Wed, 12 Mar 2025 at 10:05, bovog via lists.yoctoproject.org
<bovog=etipack.it@lists.yoctoproject.org> wrote:
>
> [Edited Message Follows]
>
> Hello,
> I have an error when trying to run bitbake for running an example image of the yocto project that it is core-image-sato, it's says command not found, but I have installed the bitbake previously and there is the folder of bitbake but doesn't work.
> How I can resolve this problem?
>
> Thanks
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13559): https://lists.yoctoproject.org/g/poky/message/13559
> Mute This Topic: https://lists.yoctoproject.org/mt/111656575/1686489
> Mute #compiler:https://lists.yoctoproject.org/g/poky/mutehashtag/compiler
> Mute #poky:https://lists.yoctoproject.org/g/poky/mutehashtag/poky
> Mute #yocto:https://lists.yoctoproject.org/g/poky/mutehashtag/yocto
> Mute #bitbake:https://lists.yoctoproject.org/g/poky/mutehashtag/bitbake
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

