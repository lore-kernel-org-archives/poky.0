Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6F68C25B75
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 13:09:12 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.14780.1715778546568230877
 for <poky@lists.yoctoproject.org>;
 Wed, 15 May 2024 06:09:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lK7c6h9v;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5238fe0cfc9so749635e87.0
        for <poky@lists.yoctoproject.org>; Wed, 15 May 2024 06:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715778544; x=1716383344; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8a5WhB4mOhTRcgibEiDPmVpfedeLGxpfKJA3ugnI7WY=;
        b=lK7c6h9vN/A63oGx3sxmvy8rvALLScbCo+059LabcRi3kz1Zrad5q01PLJHifPDB1g
         9xW803fHitXeAzRyAiaMEg3vP5Jz9B7f7jyAeZIttK9ThvSjs2ApcnxIXzcj8NyFXuGr
         Yel1pJDRu3qYoA3HsWvOzSTVc+GmO07UOaBOJSy0hX5apW4GrFS5dMbiF1KLV/N4d9r0
         hiGo2F6qMGz4KH40z+XjGve7bJfrZzihO08JdeRx6kTtWlSH2DrOguCp//5GD9m9MRtn
         JDhfm7ASB3SHW/3pZkxGpFCVwWo5movltiMSNLqfSJ1ubfKlGEfGzK1pPC0rBvjNWh00
         gVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715778544; x=1716383344;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8a5WhB4mOhTRcgibEiDPmVpfedeLGxpfKJA3ugnI7WY=;
        b=OhQsABwfze8IqY4uknhW/2k/0zmiIU9j31PPTrxLigSnnV6kH827hHNpNFufRnFchS
         lb2jIbQHB9eKTwRx8vbSngVw3E3kHarBk7nJoGZu3tl0SG5f2YG4kEO4gbJEQaK33Hgl
         NqhE53E2Y24AoZ96/2fiwSuAFbVmngeL4lUoemxfEs3rDiybisMcT89vYdl5VGXdX3jq
         sRuNcKSOhwlLmJQe2pWSDDhocXNm05V3qVQhYS07rV10KRTyFSWdo8i3d3iPRlM5ulmy
         H7ZjGtXN7tjXAVazHD4P5QxupZu1frsdIoLdYlIrQw50GoQdTOtdWk5k7C9tDDF7sCcs
         xl4A==
X-Gm-Message-State: AOJu0YyzAMPk3VPbzR9RmLgTHANOOT82MquHKfyLSJ/h4TKrvbSfSqT1
	17GsxnyLkQYqA24iQeQYYqZIwGoU3mWHPrxVkthrrwgpBcLZ7j+E7iG2EzPZkm/i4opCvW8mZsT
	xwulFvNBqx+qeSJen235qoKbl94g=
X-Google-Smtp-Source: AGHT+IE5jBymyCtncH1eprpzuIn7APWNo8L1pvUPle888wtf4XVWAhx94q0hnl0uzD5OG5mzo6GZlGEppkCTyr7+vwY=
X-Received: by 2002:a05:6512:4024:b0:523:a935:df29 with SMTP id
 2adb3069b0e04-523a935e017mr159258e87.7.1715778544326; Wed, 15 May 2024
 06:09:04 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_14fsnt6RV1cZyf0qSFD=58MBh59LammMkrGx53DHXng@mail.gmail.com>
 <19808.1715776447222316220@lists.yoctoproject.org>
In-Reply-To: <19808.1715776447222316220@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 15 May 2024 15:08:52 +0200
Message-ID: <CANNYZj8_HTT8Us+ko0s-ffw4hGg-iGZ9OscU17T8kVrpV06kXA@mail.gmail.com>
Subject: Re: [poky] Running chroot-like command in Yocto #yocto
To: nicolas.wirth@speedgoat.ch
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 May 2024 13:09:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13352

I have no idea what this does, but MBR is not a file in the root
filesystem, it's data structure in the first disk sector.
Unfortunately I don't remember how legacy pre-UEFI ootloaders are
installed 'offline' during yocto builds.

Can you do this on target during first boot?

Alex

On Wed, 15 May 2024 at 14:34, Nicolas Wirth via lists.yoctoproject.org
<nicolas.wirth=3Dspeedgoat.ch@lists.yoctoproject.org> wrote:
>
> Really good point, my example can be misleading. I didn't wanted to add c=
onfusion by fully explaining my goal.
>
> The goal is to run extlinux --install ${IMAGE_ROOTFS}/boot/syslinux, as I=
've understood, this command install the sylinux required file but also doe=
s write some bytes at the start of the partition, for the MBR. In debbos, I=
 could do that using the following code and now I'm trying to reproduce tha=
t in the Yocto build system:
>
>   - action: run
>     description: Set up Syslinux
>     chroot: true
>     command: extlinux --install /boot/syslinux
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13351): https://lists.yoctoproject.org/g/poky/message=
/13351
> Mute This Topic: https://lists.yoctoproject.org/mt/106112604/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/poky/mutehashtag/yocto
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

