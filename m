Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08BD6C27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 13:27:26 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.56223.1718630843110284918
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 06:27:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=W+le55nK;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52b7ffd9f6eso4331388e87.3
        for <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 06:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718630841; x=1719235641; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8dt8TQl11vSRsAgMlhrh1dPnPYS5DbYo7U0Og3ait2o=;
        b=W+le55nKtfgbZeXcqySMdkd8TmXK01faDqKj/Ld/njJXIfSj7d6RTkAZOolkfkmNri
         Yz3d0Nj+487hc3ftQZwnmSu+pyGYumYf/AWKc3Uxtk5jgGfvmSpLc0z//QzNnTec25tu
         kAggrPhPyj63UaRbQmfcHajt/L2p/KyxhTBAYfwvg9ziWpThMe2vQZ5HMCa5dvS95n4Y
         L15L4Z9zL/5x9zEzkgDZg+EL+eJR2onnDJojgx1H1yeZu612gCi542nLt9/uL7uABnBR
         aY9viN0oRu+nq20rrGe7crG9s7dLmwk+n+VrNEpRnoh7rsN+5tP7rC/rfc6NYz9xC6IK
         sbeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718630841; x=1719235641;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8dt8TQl11vSRsAgMlhrh1dPnPYS5DbYo7U0Og3ait2o=;
        b=Kru6iVWZZTtOx1gmWHL+SZ9ORH9iD38YVngYraFcMei4OatCsNnCPlC4B5zibKfqh9
         DFnrpcqcrQNfLvn4zUw3DUO0iFjqMavqr9Un0YAPEbfdw6nUDdbCdd76mnNEA+mMy+tu
         xLvAOtaMAcE/0bNISRMQp/MVSrLBJfNLW3q5aNpJ6QKHpULV91HYkJwkDFD67yTx5/qg
         St6xC0MvWAXvxEQIZGNsa6/6LZ6GVrq81LlhyYEcbVHqzIXg/1ch3PXAF7+QcZ4rU7SW
         lZT2whPF3yjUAfggM9vPWf2N4FjT5jRJhA5PLtiW2OZLHyX/tvlKeFEDvO2Z+h9uQ0HD
         u66Q==
X-Gm-Message-State: AOJu0YwpHRyu8tZbuTYY2L/yq0iINjAZtGOqM31f/wYwC7hzOLuPEqea
	GYlMESsYyRNv9+o57lYaQmV14m9++co2CTgmcMlrSE7n9anWbMUfQJcJOTdKfs5s3T5iHPhZGoA
	FI178MIRfhCpOFHEeffi4GHZxf8o=
X-Google-Smtp-Source: AGHT+IFU5Hd4IZrJ4z6Sm1M4hM9L9OSzxcPdCJkBO6K0mppWIkg6+Ipq7ZKpFWSUCeTabY1BYElH7FF/s/wb6T0cWmc=
X-Received: by 2002:ac2:5316:0:b0:52c:96a:e17b with SMTP id
 2adb3069b0e04-52ca6e6e27bmr6516319e87.30.1718630840787; Mon, 17 Jun 2024
 06:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li> <CANNYZj-5jqZtOJZjfMZyR1agbj+-d_3=-sC=buNt4jJ58eDuWg@mail.gmail.com>
 <e54dd9f1-683f-435f-b191-a4dde9161f1d@gmx.li>
In-Reply-To: <e54dd9f1-683f-435f-b191-a4dde9161f1d@gmx.li>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 17 Jun 2024 15:27:17 +0200
Message-ID: <CANNYZj-G5+TOZafqyyE4G+1S2ELRdr+nck8w=XdpEXURjiwS8g@mail.gmail.com>
Subject: Re: [poky] apply a patch to a complete meta-xxx - before using it (in kas)?
To: star@gmx.li
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 13:27:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13374

Yocto 3.0 is ancient and isn't supported. Is there a reason you can't
migrate to scarthgap?

Alex

On Mon, 17 Jun 2024 at 15:24, Steve via lists.yoctoproject.org
<star=gmx.li@lists.yoctoproject.org> wrote:
>
> That is something I can do, sure. Thanks for hint, Alex.
> But in fact it's the other way around, the repo I refer to is newer, and
> I need that in an older Yocto3.0 build.
> So just in case someone knows how this works. But yes - forking a layer
> is possible too, but far massive than apply a slim patch.
>
> - Steve
>
> On 6/17/24 15:16, Alexander Kanavin via lists.yoctoproject.org wrote:
> > I'd suggest you fork the layer into a private repo and add the needed
> > changes on top as proper commits. Given that the layer doesn't have
> > the new syntax, it's almost certainly abandoned, and you won't lose
> > any changes because they will never happen.
> >
> > Alex
> >
> > On Mon, 17 Jun 2024 at 15:13, Steve via lists.yoctoproject.org
> > <star=gmx.li@lists.yoctoproject.org> wrote:
> >>
> >> I need a version of a meta-xxx repo that has new syntax ":" instead of
> >> "_". Some other minor things have to be changed too (as compatibility
> >> string)
> >>
> >> I check that meta-xxx out by help of kas tool.
> >> Do I have a chance to apply a patch right there once the meta-xxx has
> >> been cloned? The kas docu confuses me a lot.
> >> Guess I can't do it in Yocto, as my first bitbake command it will
> >> complain about the syntax, so I can't "repair" that inside yocto.
> >> Or am I wrong?
> >>
> >> Best regards
> >>
> >>
> >>
> >>
> >>
> >>
> >>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13373): https://lists.yoctoproject.org/g/poky/message/13373
> Mute This Topic: https://lists.yoctoproject.org/mt/106720251/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

