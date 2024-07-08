Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CD0BC3271E
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 14:20:48 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.80913.1720448446798698304
 for <poky@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 07:20:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IB4zTh79;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52e9f863c46so4237114e87.1
        for <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 07:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720448445; x=1721053245; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=INaHdiINR8+g03e2if93QPT5g5shTdq8pdFOpa093yY=;
        b=IB4zTh79eehfQNZD8P/iYWjZXoz7pD6QlgwspBR4k3EpY/H5zybKum2gAbmK8x0rJ5
         S/G9lEHjV7a6WkcMD2U0jBozxZUcmN2jVHIGE9kVXbHxCWB1mOwaJARRilrrhnMp20j0
         irdCVO63Dl/usC8/iaUx6YhbVA72mfGSisAfgRb197RPH4DiiTF0jAu4kyoAvCqWlSvm
         54ZscaVukDS4UA7TSRpSX3wAwcRcKBmoLppZvxyaOE4ZINthi2sfRx5Iq4JKq+S5ZAsX
         ituqGwu3o+r9jtTmxLJv6xWbSXjchVuEdtZZaL6KxcKTa2KXlBi2SEEHuVscnI6bIVPr
         CIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720448445; x=1721053245;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=INaHdiINR8+g03e2if93QPT5g5shTdq8pdFOpa093yY=;
        b=AleW0ftQ+Zio3JJHvTngGaj67009thS1jycrAgCllsJbzjBllLOjP6zQWjAz/QbxXo
         QYIVZ0O1oL/Bc5ybUbApxkcd9II8VGrP17hPQdMZfZ2n8s4VstlnWz9Iey6EepOCzWvJ
         FDLNEo2OUHWqpNdvjheQBnCyfNymtALj11Djl3GZEdtOSeiMZDgYYEJcajEuV4H0BtML
         eeJm+eNTHzJwr6UOo9lyPmg0fQCX21zIt6SA8Yq/bUzXLmsk206EMnGvQeJzp/s7XI+9
         7SkIC5XEgtGVzj7q9Hp+QXy9Ui0wQCZksQKkx3eZFXGS6qzOGLkwOLbwkmp3xltwS9JU
         VuQg==
X-Gm-Message-State: AOJu0YzPLrxAME3dvBbNFEOzEu+qQAKlH0mdg2NCUYc3dTZQ5Qm0uPvk
	vP+HRGljQ62bf/smd76mz32ByoEEysD0M8NOd2o5LKVakuV5LjeMryESaCZmwYdas5+pNJ2/WRg
	DWHs1npy5nXhX7/jiKu/TBuuAF6M=
X-Google-Smtp-Source: AGHT+IFhxwwuDg4Dn2rOgb34t3HW8FfeLcZ1977JiigND9LqqZPUdHbWeFnq0gM5n32ii4Ae2j1NDI+jZecje1JJsBU=
X-Received: by 2002:ac2:5e66:0:b0:52c:ab2c:19c4 with SMTP id
 2adb3069b0e04-52ea0618a38mr7822062e87.10.1720448444559; Mon, 08 Jul 2024
 07:20:44 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9bsqRc6+fSmseKeMS1+1M_+-bkr3Q69cH96sJi2HvPJQ@mail.gmail.com>
 <20061.1720448113215907691@lists.yoctoproject.org>
In-Reply-To: <20061.1720448113215907691@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 8 Jul 2024 16:20:32 +0200
Message-ID: <CANNYZj9atWGAnwbkcaaratBi62kHeW7HqLT_w3tyhSm7_++YOQ@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 14:20:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13419

Then I suppose everything is ready to produce a patchset and send it
to oe-core mailing list for official review/integration?

Alex

On Mon, 8 Jul 2024 at 16:15, Gassner, Tobias.ext via
lists.yoctoproject.org
<Tobias.Gassner.ext=karlstorz.com@lists.yoctoproject.org> wrote:
>
> Does it fail without the patch and pass with it?
>
> Yes.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13418): https://lists.yoctoproject.org/g/poky/message/13418
> Mute This Topic: https://lists.yoctoproject.org/mt/106869018/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

