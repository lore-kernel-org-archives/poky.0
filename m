Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C421BC5472D
	for <webhook@archiver.kernel.org>; Wed, 28 Aug 2024 07:28:10 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.7826.1724830082622667832
 for <poky@lists.yoctoproject.org>;
 Wed, 28 Aug 2024 00:28:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Rf+MuyJL;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2f4f2868621so61722171fa.0
        for <poky@lists.yoctoproject.org>; Wed, 28 Aug 2024 00:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724830081; x=1725434881; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3grQ8jYkuGHDgffyOVBmT/yclNspsx+p9LgIMSTp+JA=;
        b=Rf+MuyJLurioA9f6nM8zx0yMQlZlTCuJ38YCtwzAG1qp7CcELx5lIJF/4P3WvW11r7
         kwVxuB5Ie/tyd62KhXXqP2MEJocvV+aB/oRKymjrsC1XeHTn7utMaIqMf047XjtMPGdb
         2mFjD1FnPGkZtsO7iwyqxAAUajjuD5KNF4RcaBeeg9htryeCR6VTfvP+PCyf1zlZEanO
         1NWShCduWN/QXtU3pbxSoxJLzC6JXe6Qn3sNmi2HTu/xgComTmq++JTNvA3oAqzGZMkG
         oAjcJOhGAwaWu6tCGmNrT5fSSx7+Gh6UbirMOjhYs6GY8+EaelFYJqAteQcT8+z5/pzp
         JGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724830081; x=1725434881;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3grQ8jYkuGHDgffyOVBmT/yclNspsx+p9LgIMSTp+JA=;
        b=OVyCoc0994fYUxa8ntBw1kv6ysAr59DPR+gezpxax+ayeMFGRNChSGQ6DPRcDKjIix
         SmYo+X9kiN0uHxB0zLjvTAlEH9dLcEJmEjMhy1ixvR+Utx2UWS4zvi4Pq4ZGIhy0lUp8
         H/7TmYzgoAFyTG6cAkncPkCd0zJEmW6ZabtKkb4Fcf5mq0FLI1kXHrAs6vUEjs4mkKSx
         S6SIWPSyiodLfhZd/64YbD89IdxJA2ZzK3m1azEa+FrzkforssZyNgOfhqe4z2LO/Hm8
         OYkV0aEcK33VGFZs4E1hSdSH5TLZDJ+kuDpEWnDkW0mj23QvbJNUqc+uofkWw0XE1tUb
         Xqgw==
X-Gm-Message-State: AOJu0YxUKjK646i9MKTk71TYnfmV5WpmE77ZiS6RfuJQGcLhushQWxBa
	Lv4oxfNujETbOQqgBhic5UegfBeiQH3YvuVmuTOLVztU7jtcqKfoTDaKky5RrFzBYRlOSelNeXO
	ipSFVwKaXWqAylFUMLdcMzk4joCSZrA==
X-Google-Smtp-Source: AGHT+IFh4FI3+Z/JAFfa9+83zI8jw6n8a4FUokNEyyIomhcTHRSY07w7UK8BCSu5golU5v9xHLGtc2//Yf/wWjGAyO0=
X-Received: by 2002:a2e:f09:0:b0:2f0:20cd:35fc with SMTP id
 38308e7fff4ca-2f4f573a316mr109455991fa.7.1724830080039; Wed, 28 Aug 2024
 00:28:00 -0700 (PDT)
MIME-Version: 1.0
References: <R3R3.1722259968114512623.2es7@lists.yoctoproject.org> <31109.1724829852993038505@lists.yoctoproject.org>
In-Reply-To: <31109.1724829852993038505@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Aug 2024 09:27:48 +0200
Message-ID: <CANNYZj_cQNPWbPxpz6JcctP2gDiGe9ggg-WrD4jPr_wGTJsiGA@mail.gmail.com>
Subject: Re: [poky] Issues with Extensible SDK: Checksum Mismatch and Sstate Warnings
To: nicolas.wirth@speedgoat.ch
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 28 Aug 2024 07:28:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13428

You need to start with a plain poky build, produce an esdk from one of
the standard poky images, and see if the issue is still there.
Otherwise if no one can see the issue on their side, no one can help
either, because we don't have time for a guessing game.

Alex

On Wed, 28 Aug 2024 at 09:24, Nicolas Wirth via lists.yoctoproject.org
<nicolas.wirth=3Dspeedgoat.ch@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I wanted to follow up on my earlier post regarding the issues with the Ex=
tensible SDK (eSDK). I'm still experiencing challenges, particularly with t=
he first-time build of a recipe. The process is taking a significant amount=
 of time as it fetches the sources instead of utilizing the sstate, which I=
 suspect is related to the issues mentioned earlier.
>
> Any insights or suggestions on how to resolve these problems would be gre=
atly appreciated.
>
> Thank you for your help!
> Best regards,
> Nicolas
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13427): https://lists.yoctoproject.org/g/poky/message=
/13427
> Mute This Topic: https://lists.yoctoproject.org/mt/107608539/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

