Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76343D3C526
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 16:47:32 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.2851.1729183647356814249
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 09:47:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aomy0ada;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539fb49c64aso1738634e87.0
        for <poky@lists.yoctoproject.org>; Thu, 17 Oct 2024 09:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729183645; x=1729788445; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w29Vcm4SaK3ZM9FR4yv1Rw7OwqSN0Hobm9wKe3bgjFI=;
        b=aomy0ada8nJU6i4eF4eKCYwRBd5i3pCp8rcNhIiEToCkvyzHZA8bCqQlVCwZZmP7HN
         7i+ffTymdFAuFsGhEy017yaMxUOH4SO6tiSFd2Z3xgIW45ymcvSUg3qG9dhNH8OVDFAH
         7ioAfShImirv0uwAU4no61TxtMnvpVsS0mpnpet82DD1PJ2gptwDtxBypGvHptU2h+my
         qxHej9jL1F1LeBitHlVM1YOSq3JZNLQA8QrUQgQlikMNf8DdWnTu4zpwMSkfJwv4vSY1
         Zqgo2dIBv+KzhGQe0AtApvyI53PT2HFKg//kSWvmlbsQFZoU/70EoOjDt8POxPb+ColE
         xSig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729183645; x=1729788445;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w29Vcm4SaK3ZM9FR4yv1Rw7OwqSN0Hobm9wKe3bgjFI=;
        b=VfF4kOhZHvwD6J08YUqfJhHJAjuf53SoxX7XVMdaiPFONL8p7YYUZwrjeL1tijL7iE
         cLjm7KGRUyuLuDW+9rzIyqVUWjtky+s010enEc1wsmDYdgCCuplgZ0QfidKHgX5r9ym7
         jMAuffdcWCge06vjQyM/YmS2gFJaDOFXhG7UMGt1OpQ/23JtCVZ9au8ExuAfdFVwHQGe
         1aNdTDmnPXYibG+9MBVVN1giofHb2uwCKPJ3F5Kf9bh80tqHc2DZm9DydB6uiE0PvqjK
         DV5aHVZRQ/9LI+uAGb9u3fl13/xueBnfyRdoQdUSTVSFSg0JVKmRfx+m4z8ufzcqmuef
         Gllw==
X-Gm-Message-State: AOJu0YyBWA8FuMEyaRigPOR3YpSdFxXKKcdpIYfLKrrpRiw1JcZ2MNdN
	c6veo67roXBYIvu/VY9HuDUtYnom/CW+7JnSJGZh5Xve5IPl4MeB2/PiCUMtNwmk7/yjOMCsToX
	6GDptzLMcdNbKu2Nd2YPxN63bfQ8=
X-Google-Smtp-Source: AGHT+IHnRAAetSTiriU+eetZEFRtyktRRIoOSY5aKs9mDb7WRo3Yy76tlvKhj/JR2lvhZAOkybePXy7hwgtps9/aBfY=
X-Received: by 2002:a05:6512:3da3:b0:538:9e1e:b06f with SMTP id
 2adb3069b0e04-539e5501c8amr15040188e87.27.1729183645168; Thu, 17 Oct 2024
 09:47:25 -0700 (PDT)
MIME-Version: 1.0
References: <QRup.1729178545953250610.As7C@lists.yoctoproject.org>
In-Reply-To: <QRup.1729178545953250610.As7C@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Oct 2024 18:47:13 +0200
Message-ID: <CANNYZj84jPmuO_JRAJD++oFJL_0d+eok7W9aikaAcV9pjWMU1g@mail.gmail.com>
Subject: Re: [poky] Multiconfig Build using local.conf and multiconfig by
 design or bug?
To: jayson.k.mendoza@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Oct 2024 16:47:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13455

I know it doesn't really answer the question, but why don't you remove
pulseaudio at the point where it is set, which is your distro config?

Alex

On Thu, 17 Oct 2024 at 17:22, jayson.k.mendoza via
lists.yoctoproject.org
<jayson.k.mendoza=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Good Morning,
>
> In my current project I was debugging why some DISTRO_FEATURE was missing=
 from my environment when I used an multiconfig target in my build. When I =
checked the record in bitbake -e mc:mymulticonfig:core-image-weston I notic=
ed that a DISTRO_FEATURE removed in the default local.conf build was applie=
d to mymulticonfig's configuration.
>
> The lines in question that someone had in the local.conf were.
> ```
> DISTRO_FEATURES:remove =3D " pulseaudio"
> MACHINE_FATURES:remove =3D " pulseaudio"
> ```
>
> Now I am aware this is flawed in the current version since pulseaudio and=
 if I wanted to do that it should be added to DISTRO_FEATURES_BACKFILLED_CO=
NSIDERED. However, I am interested to know why it even impacted my build at=
 all. From documentation it's my understanding that local.conf is not used =
aside from the BBMULTICONFIG settings. It shouldn't have affected the globa=
l configuration which should be sourced from mymulticonfig.conf at  build/c=
onf/multiconfig/mymulticonfig.conf.
>
> Is the local.conf supposed to be used by all multiconfigs?
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13454): https://lists.yoctoproject.org/g/poky/message=
/13454
> Mute This Topic: https://lists.yoctoproject.org/mt/109065659/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

