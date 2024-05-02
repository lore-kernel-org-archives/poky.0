Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 717AFC4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 17:45:10 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web10.1113.1714671902880223249
 for <poky@lists.yoctoproject.org>;
 Thu, 02 May 2024 10:45:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VzGqAwYx;
 spf=pass (domain: gmail.com, ip: 209.85.210.45, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6ee35146ac5so2513964a34.0
        for <poky@lists.yoctoproject.org>; Thu, 02 May 2024 10:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714671902; x=1715276702; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N1inT+H0idNySc1arKStZblD4nzHphFPjARoB9a7iyg=;
        b=VzGqAwYxDMkrDOT0hVv2wXpraczhI8CUyDYfF+AzsUI1EQbOmVsTrB7vQsf7HRXjez
         jqt2C91Vy8f0tUsCH5F6tGnTwJv9T6Ez8UvpY4Sdyv6O0U6s1/XfmsqjBOreBGw+erH8
         Xh2+l1z6+jlBj8lL2Gx7w4RlhDS6up7KrLlOb32qEC7wqaUGEUcktuQBIK+gnJaer9+i
         KJFLZ6fwg8iDYIebGFf0g6p7WpCT6eJVbyhcTalOG3ijuQmld1GSUJ/6GqXXp3cmTKCN
         nzmfLmpJbv44lhqVvc02h4HUHqy4/HBDQxPDmfd91kRxHKZoIDkXcANZOCzwRRzWDaPb
         QpqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714671902; x=1715276702;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N1inT+H0idNySc1arKStZblD4nzHphFPjARoB9a7iyg=;
        b=RvLjRxjxzfEk3yfyMVTDJEJGSYBZ2KUrwo+jUhtPd1gkHncWNQHthv95nDa12e6lBp
         81SgYH9sypH0t3iqkJevCWLg9E52yFHDDGyIraXhOFHOPJJjL4ErATuk4KFGFPhgHgwC
         3nKr5xvGm+wmaFMKBckOQF6pQfS0d8BTEL5OdDBKp2kuKGfMKd+JfxR3cTQyKyxgEYeU
         jzxuiTmheLGgueMxJ13NLISzL+ZcDrrestfe/Ro7Dl5XDHzrNJWqV/M/Va5EM3SWflNP
         0+QBswj5U9+BIrM7HyWs8fRZPKZ6pXigXUFFe+XFIydr2gKrBpO/CidVgbD6z6CW09Rb
         KbkA==
X-Gm-Message-State: AOJu0Yxi07QVQnKkWvADRX46q+lehJlEsb5eWGS6Gh43U6OBUyrO47D8
	HAeFvDevUAgfYOim9URf+JwgiT5qnmWb4aeIKKSC+1LD611VRZwOywxca61rkKKHewTTOvLbNKM
	ftDhIBqAynWSu/ZQW/Q8MwgLhbcznx1gSTpE=
X-Google-Smtp-Source: AGHT+IH6Pca/GApcPTF40fiJZJp1VoTZQ2/iVo4Skq0EmtO99wSa9j39hFPgKEZyxEfHaqIVsIiWPqV3X+tqBYLbqcI=
X-Received: by 2002:a05:6870:3c8c:b0:22a:582a:9bcc with SMTP id
 gl12-20020a0568703c8c00b0022a582a9bccmr672942oab.53.1714671902045; Thu, 02
 May 2024 10:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <eWbR.1714653545631818818.tnUz@lists.yoctoproject.org>
In-Reply-To: <eWbR.1714653545631818818.tnUz@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 2 May 2024 10:44:34 -0700
Message-ID: <CAMKF1soBMG8ezyarjChVZvHwVfmBTEUGCK04mykxQr7P6prQoA@mail.gmail.com>
Subject: Re: [poky] Adding extra pam modules to the image
To: ruom9900@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 02 May 2024 17:45:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13341

On Thu, May 2, 2024 at 5:39=E2=80=AFAM ruom9900 via lists.yoctoproject.org
<ruom9900=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> I'm new to yocto, I'm trying to add the 'pwquality' pam module to my imag=
e but I'm struggling with it, initially I have added this line to the local=
.conf file:
>
> DISTRO_FEATURES:append =3D " pam
>
> which added pam and some modules but the module that i want which is 'pwq=
uality' was not part of the installed modules, any idea how to add it?
>

maybe you want to look into libpwquality recipe provided in meta-oe
layer and add that to your image deps. e.g. via IMAGE_INSTALL

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13336): https://lists.yoctoproject.org/g/poky/message=
/13336
> Mute This Topic: https://lists.yoctoproject.org/mt/105861650/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

