Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83FD5C4345F
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 14:14:03 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.19538.1713795242953644220
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 07:14:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DZvuY/7f;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-516ef30b16eso5549283e87.3
        for <poky@lists.yoctoproject.org>; Mon, 22 Apr 2024 07:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713795241; x=1714400041; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bbMOtGkQ6g97/TZ3TiReNyJOiXLVIYwm7p/VpiXj+u0=;
        b=DZvuY/7fNpZhC20KkZRY4ZsTuoNUHOOUx16gSFtXhk5jDfyk+FRU7yOCnTwHF0FEkT
         FktU4sIKHsTk7k8JLiUTkVo2Gsl0jLaW7cnQ51JoX0vUOh+1jsJCFhC0LGDAUxdfQYAu
         Z/m/eLlcpVo3T5B/x6Cr/4d36x0vwordYsEZLSRkG43vul0EsiacguE1ehKyKF7qChrE
         KSJLmJdIOC3IWc3TX4IT03PXLCdwW1YS7NRdrXnLak4TlhEBUibcVZ40vGLOxhk91CVr
         rVqgZlTr33VoofLZFwK56UdlO/eob8UO9uzxbUNoa10bDJbGaKb01OQerDyaPZJ5JRjc
         sJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713795241; x=1714400041;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bbMOtGkQ6g97/TZ3TiReNyJOiXLVIYwm7p/VpiXj+u0=;
        b=Du8LHSwHv7iN+74GAB4PhNM2u3zFZBekiQYB9abCTkxxs69RtzO/S6MUdBim6Q5BpV
         0+qtw4hxwJSinHkcdA+2GutE3H9NW/xN74M5AoSd1C51yuRJbQikfsm+cl6uF2TG/SnH
         9FPs7PQqrBjeU2XXmoI0lxioPW0EXOD+qennBPNCuvl7iDevuNcoZ5drc8zd9UbfIsVT
         WmJhf3d4RO5PxfVv74y5M3DUKJEFzsJud4ScuImz9TIXMJl/ZDPq3kGZWGDQpdl++PjC
         G+gI/FYodwye4YtoFSHZ03FecNGPSrq/IJb19092uJy8leUYfWC4i+IwVE1Yhtpf665P
         4CdA==
X-Gm-Message-State: AOJu0Yz9sUPLq9S8BzD44pEUYU0YhET1fep8rw646UzUzeN6S0FysDSq
	d6QNJeXq2lH1fPJRrwgCM7vCK6+kfL2VW/ixGbWNicaRndWAZtaq4n3TpGX6FvMN9jBN5h9rBpe
	dcv4MpmNXEML2cwx+ZlVSxtuSaPs=
X-Google-Smtp-Source: AGHT+IGGWCzsqHt9/Ay2bGofaeQ/tFYxQasxh/bxd/WoOsUnYfDBPyYC7qo2sqwGY9SidjHIEfoqt2tRnXDZvYupht0=
X-Received: by 2002:ac2:5fad:0:b0:516:d4c2:53f7 with SMTP id
 s13-20020ac25fad000000b00516d4c253f7mr5187422lfe.47.1713795240878; Mon, 22
 Apr 2024 07:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240422135552.83928-1-Michael.Glembotzki@iris-sensing.com>
In-Reply-To: <20240422135552.83928-1-Michael.Glembotzki@iris-sensing.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 22 Apr 2024 16:13:49 +0200
Message-ID: <CANNYZj_90xB+ZiBvU0B+KPP2pcb3vdtAPVPNpYnk8990Zn9z6A@mail.gmail.com>
Subject: Re: [master][scarthgap][poky][PATCH] rootfs-postcommands.bbclass:
 Only set DROPBEAR_RSAKEY_DIR once
To: m.glembo@gmail.com
Cc: poky@lists.yoctoproject.org, 
	Michael Glembotzki <Michael.Glembotzki@iris-sensing.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 22 Apr 2024 14:14:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13332

Incorrect mailing list. Please read poky/README.md

Alex

On Mon, 22 Apr 2024 at 15:56, Michael Glembotzki via
lists.yoctoproject.org <m.glembo=gmail.com@lists.yoctoproject.org>
wrote:
>
> If DROPBEAR_RSAKEY_DIR has already been set before, e.g. by overwriting
> the file dropbear.default, the line will still be appended a second time.
>
> DROPBEAR_RSAKEY_DIR="/path/to/dropbear"
> DROPBEAR_EXTRA_ARGS="-B"
> DROPBEAR_RSAKEY_DIR=/var/lib/dropbear
>
> Signed-off-by: Michael Glembotzki <Michael.Glembotzki@iris-sensing.com>
> ---
>  meta/classes-recipe/rootfs-postcommands.bbclass | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/meta/classes-recipe/rootfs-postcommands.bbclass b/meta/classes-recipe/rootfs-postcommands.bbclass
> index e81b69a239..920da94ba2 100644
> --- a/meta/classes-recipe/rootfs-postcommands.bbclass
> +++ b/meta/classes-recipe/rootfs-postcommands.bbclass
> @@ -206,7 +206,9 @@ read_only_rootfs_hook () {
>                 # Also tweak the key location for dropbear in the same way.
>                 if [ -d ${IMAGE_ROOTFS}/etc/dropbear ]; then
>                         if [ ! -e ${IMAGE_ROOTFS}/etc/dropbear/dropbear_rsa_host_key ]; then
> -                               echo "DROPBEAR_RSAKEY_DIR=/var/lib/dropbear" >> ${IMAGE_ROOTFS}/etc/default/dropbear
> +                               if ! grep -q "^DROPBEAR_RSAKEY_DIR=" ${IMAGE_ROOTFS}/etc/default/dropbear ; then
> +                                       echo "DROPBEAR_RSAKEY_DIR=/var/lib/dropbear" >> ${IMAGE_ROOTFS}/etc/default/dropbear
> +                               fi
>                         fi
>                 fi
>         fi
> --
> 2.44.0
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13331): https://lists.yoctoproject.org/g/poky/message/13331
> Mute This Topic: https://lists.yoctoproject.org/mt/105669771/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

