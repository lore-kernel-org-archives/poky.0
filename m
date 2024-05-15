Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC208C25B75
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 12:19:52 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.13396.1715775590260861365
 for <poky@lists.yoctoproject.org>;
 Wed, 15 May 2024 05:19:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JsEffEq+;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-51f1bf83f06so8467471e87.1
        for <poky@lists.yoctoproject.org>; Wed, 15 May 2024 05:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715775588; x=1716380388; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hT+l+pbkW31IJFP2rkdGVQLj7E+lpzSuhVIPsh0DKSg=;
        b=JsEffEq+mvIP3/uMeu95tK8Nv4lJnC7vxwOsyX2V/Ppv2Y5ii/0le2StOdbKI4fkDO
         8ABwWG3Bay6arZVdUz945GYoOacWq0M1nHvdtQLK5529yd0sIl2PXxRt/yBJIvgWi1TC
         mW3XztLqYtMmHylog2OpIqx1F1Kjy0/v1QhMOjgEPsGJ5itwXOjlm79Z4FRRnTDGqp+Q
         m5HZTWwnOV7xVbUw4Eij3ICfGlSfrnXygtk6ajtOhj+cn7Cse6sOCZIpOEFT9fEdasqo
         LWpd8GHNeKuHQ1o4tnnkV9Elha55fAqlPv8Qp4YF6Purf4Hvdes5T6FhBKcNgh+S1Cj+
         MSoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715775588; x=1716380388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hT+l+pbkW31IJFP2rkdGVQLj7E+lpzSuhVIPsh0DKSg=;
        b=ZAU5ExPCQ7phtCD6f86NkDI41CD2ayCOq2C5bEr1Ix83cXu9aEXujQPWR0FPXvxRap
         Tr3T8Jfvyjofqqnc5mOwCTxjSZtUjV3G77rqEDkdIKuj8GgTCha5rqWiaWfGv1TBfsVM
         KJEeJi1mZ44TjX1aC9pNwAU7o69IAYvlmuNik4R/LFFsmeVI8ZsKnhgbxywJXWIKw7KM
         sMVubd1tjrj0n9XtYihTpYh0H3840AjEJ9n5xtANfczYfzvSW8wp/e/JqUKWAnt7qrZ9
         wtXOq2dZcoP2+tMgbYMifdRvnCLxXeXeobCaEKDzeOony2yx3jWaOarI/myQfxcsN1hD
         9zMw==
X-Gm-Message-State: AOJu0Yzm3NSJzWUxXlYYjewWOhfUX3lI/x+B5txGUbLrveWHTEIwSgar
	eZcsGR7Z/zDaCpWdKkpsyrjR5tSjdoV3MBFinVHgEOyqC0fjB7ee8D/Pi6MhYi7/dgCOT1739IZ
	+M7zkxb51VwP7VFqY/TLcqCCcuJexoA==
X-Google-Smtp-Source: AGHT+IF0gN+qp+8UrmNY8T4UymZa55x5jJb16UozsYwq8QRTySTGsqTJaPV0gD1XcliRv19hpAxk7L7kq1Cwl/lAKa8=
X-Received: by 2002:a19:2d0e:0:b0:51b:567e:7ea4 with SMTP id
 2adb3069b0e04-5220fc7945cmr10209245e87.26.1715775588167; Wed, 15 May 2024
 05:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <fhmz.1715775242631282768.NneV@lists.yoctoproject.org>
In-Reply-To: <fhmz.1715775242631282768.NneV@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 15 May 2024 14:19:36 +0200
Message-ID: <CANNYZj_14fsnt6RV1cZyf0qSFD=58MBh59LammMkrGx53DHXng@mail.gmail.com>
Subject: Re: [poky] Running chroot-like command in Yocto #yocto
To: nicolas.wirth@speedgoat.ch
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 May 2024 12:19:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13350

On Wed, 15 May 2024 at 14:14, Nicolas Wirth via lists.yoctoproject.org
<nicolas.wirth=3Dspeedgoat.ch@lists.yoctoproject.org> wrote:
> I would like to run a command that has to use my target-generated tools a=
nd on my target-generated rootfs. For example, I would like to install an u=
tility such as IMAGE_INSTALL =3D "unzip" and then run a command such as "${=
IMAGE_ROOTFS}/usr/bin/unzip ${IMAGE_ROOTFS}/home/user/test.zip" in ROOTFS_P=
OSTPROCESS_COMMAND or IMAGE_POSTPROCESS_COMMAND .
>
> Do you have any advices ?

It would be good to understand why this can't be done in a recipe, and
why you need to run target unzip and not native one. E.g. you can
unpack the zip in a recipe, then package the contents and install
those packages into the image, where they will be unpacked in
do_rootfs as any other packages are.

Alex

