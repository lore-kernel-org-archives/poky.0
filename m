Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 177AFC001E0
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 15:57:00 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web11.164350.1692201411630201221
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Aug 2023 08:56:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=dFxbqOBd;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-1c4c6717e61so3062977fac.1
        for <poky@lists.yoctoproject.org>; Wed, 16 Aug 2023 08:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692201411; x=1692806211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+0yeZbwWy35F+Hzw1dIVhdjdLbaSwpZnWi5Y2WOomv8=;
        b=dFxbqOBdOng9N5x7/htJTphlPTOTKLFLPoVjhL318azw8bi306UvyLlNypAcphj4w8
         IZff6AgeGfco3sBRtvXg7zX9kFReBWstDiW/yez/wpTKY1wyIMXyUWvTZzjUjvwTZ0Hf
         K25NDziM/1L11cZpFBKsImp8wkuluoH0Rc9qw7CXpHqjIZIaPBZFqf/8RwuTpVJhT2b6
         m52ljYCDr9CUFf4aX7yKhwRXHvOib+N0KoElAEoFZMaFF/5k7tr4YYUV4RnYqfYYq8i0
         38G6rfScv0vjUevkDqHmkk4IN4asR5VokZFdHC4yO8Lq8cFigGy/RuCJPpIeRUbo0Siu
         +GQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692201411; x=1692806211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+0yeZbwWy35F+Hzw1dIVhdjdLbaSwpZnWi5Y2WOomv8=;
        b=gs3iGb2pZMvKlbvtpGAWDISxXi5XNyANmv2PP7OpXpboTJ05GGLN7W0wk7ai8LOQeM
         2xE6raZq8OEsky0CbBNBZQEsMxdhbqb9h23oYYY6AVZeiA4LIOgyZJ/WtpJ8hUXcIVPr
         r9vbgY3MSrM36xrzcb+4h1l5FDCLTW1CjIzmTTC4ACYdBECnmAjzH0pdJGdsU6os9Sx6
         /bllSgbWpFWXBIPfqVrEeyoALaLIu+ZEgjleOauoVRwK7Aef60K793NzTjCoxBRuRSFC
         1h9AriAbWqbEHxtBTDaRyIDcOpgOCWH153lClhtK0PLaJ7wYyTSZX89oNsmWt6WdzZvP
         v+TA==
X-Gm-Message-State: AOJu0YxxyZ8qw7yBn8rt5JYqPEYyMMQesUqa6ADByFR3nyZbhDkk6IW8
	JNLs5tmcKEceE3qxf4PpBznzx49YcS1v7E6eXYU=
X-Google-Smtp-Source: AGHT+IFdwGRQJU2Xa5CbLeK6FdG8Ou205di1A5ZKjufK3e279O1pd7KbwPomIT1DZXCya79F/NDahXAb+W/HBMUJU7c=
X-Received: by 2002:a05:6870:a79e:b0:1bf:304f:80cd with SMTP id
 x30-20020a056870a79e00b001bf304f80cdmr2711615oao.51.1692201410857; Wed, 16
 Aug 2023 08:56:50 -0700 (PDT)
MIME-Version: 1.0
References: <29355.1692107670535769906@lists.yoctoproject.org> <19617.1692182682229094718@lists.yoctoproject.org>
In-Reply-To: <19617.1692182682229094718@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 16 Aug 2023 08:56:24 -0700
Message-ID: <CAMKF1soF17RupXdOv8od_1pTrkR3xXx1jbge2RuXMBt0WRBJJg@mail.gmail.com>
Subject: Re: [poky] GCC configuration issue: nanosleep does not seems to be available
To: nicolas.wirth@speedgoat.ch
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 16 Aug 2023 15:57:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13127

On Wed, Aug 16, 2023 at 3:44=E2=80=AFAM Nicolas Wirth via
lists.yoctoproject.org
<nicolas.wirth=3Dspeedgoat.ch@lists.yoctoproject.org> wrote:
>
> My issue is now fixed, there was an include missing from my code that did=
n't throw an error on GCC 10.2 but did in GCC 11.2 ...
>

it would be good to add some details to how you solved it.

> Thanks to RIchard for the help !
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13126): https://lists.yoctoproject.org/g/poky/message=
/13126
> Mute This Topic: https://lists.yoctoproject.org/mt/100755110/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

