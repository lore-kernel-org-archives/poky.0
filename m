Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641FCC28B20
	for <webhook@archiver.kernel.org>; Fri, 28 Mar 2025 20:56:14 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
 by mx.groups.io with SMTP id smtpd.web11.359.1743195366427884486
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Mar 2025 13:56:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bxP/zTIR;
 spf=pass (domain: gmail.com, ip: 209.85.161.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-601b6146b9cso1420293eaf.0
        for <poky@lists.yoctoproject.org>; Fri, 28 Mar 2025 13:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743195365; x=1743800165; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=irfDYXk1pozoSpNjHMJAUv2PMgdGGbUwgaD9XkMYiz8=;
        b=bxP/zTIRFfMHAruq3RjPoabM7sT//SBIvK8XH4WAfldPwISu7CaJ830P9yNxhOaLGS
         j1HF1eV1FTdEUmWoH1h3KS7BzHPzXJDV8PjXSQNkKJgxcx6nTZ4WAzKKAGPeF/P/bxDV
         VhKLMPdXd11YkixwCWIYWbcGUONbWAoQseOArezhwgmXAavBP3TaGn/QLgGH9AOPWapi
         0FHxmM35s3V+ZOYoxCI1ZSgZH3U8CWLsimvbaZLmDwggAhf3zwTvfBSJy5gi/th3MQn9
         dKfetXo3Gl7MM+OMCn0JYmcYtfV8CiU36vpaUKEHOHQD1/jUrNQYqUVe0cVmKXdSM7RS
         4G4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743195365; x=1743800165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=irfDYXk1pozoSpNjHMJAUv2PMgdGGbUwgaD9XkMYiz8=;
        b=VzC3GVjVDYmmV3h5Dfq9AYOjf21l5YOsIKNd/jllJtnVeK0oQCK9vN5Xe85MBZwhKT
         U83UVEvLXFodqMzy9AOThi6ijJA7y3uTFLuhmxz6FBLwM8i3krdLSS2QpUP9UlJ6OP+q
         L1pGJoUSK71sVPldVyVVF3nAQS8Q+xapFLica+XwyFsON/N9LmHX5tuG4NTjCZV7rwWn
         kpilbfzTMzyoe9CPE0nyV9w/Q3AMqJurON5UIo7Pp56uhDO8s10/XT3+Nw9z+w+aivxF
         T+FD3cZt+dfRTej59V2rc3f9yNcyahxGRJtwG4AbSQ7QaaCde93mJorX/UxiXlvMG4cY
         nRDA==
X-Gm-Message-State: AOJu0YyI8Qzz20yS+1NIf5HtxxGEQs9znFQE1pSY9we9Z/sjNQyJxHL8
	2C8idTG5RO18tWNVwpcZRb1LZJc33JtXSeBRTMrSacer9nNnExpY32BQORTvZItZN+HGPgv4ehO
	OUsrCnb6KjK4vi9HTWIfDPbpwa6A=
X-Gm-Gg: ASbGncs4MgUBOjLk5SOeyAa6sRnaTDasyAA7UuMfTRrcb4LadbUV1c42KegxTJB7tNG
	MyZiXeL0/HSPT0bO1a1y4VYSreI+8Gt4tr92eORDP0c4znNvy5tHnf/81sNcDM9RCpR6s8VvEDI
	fN3UsXWpeoOavRhOFyJtjHkMJgDg==
X-Google-Smtp-Source: AGHT+IHTZDB65L7hOAyibtyMB/K/1pEnEL/HKC1rMoZ7ka/Ey2ofy4KHNJmpwlIvzgFKIAQw7sTq8PriWlAlfU3HQ88=
X-Received: by 2002:a05:6820:206:b0:602:85a6:5c8c with SMTP id
 006d021491bc7-60290fc9bbamr399588eaf.8.1743195365513; Fri, 28 Mar 2025
 13:56:05 -0700 (PDT)
MIME-Version: 1.0
References: <20250328193233.21309-1-peter.marko@siemens.com>
In-Reply-To: <20250328193233.21309-1-peter.marko@siemens.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 28 Mar 2025 13:55:39 -0700
X-Gm-Features: AQ5f1JoZkFpTZZqg5tWmSeM0jWiKu7efPubIQUBlXbRmgiPG1mfD9EQ9lEsGrVw
Message-ID: <CAMKF1srBGW11rYvEyZDmHbG=VQJ-X4xmA3KpBBNY9LBea_+cuw@mail.gmail.com>
Subject: Re: [poky][PATCH] poky-tiny: correct override syntax in poky-tiny.conf
To: peter.marko@siemens.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 28 Mar 2025 20:56:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13583

On Fri, Mar 28, 2025 at 12:33=E2=80=AFPM Peter Marko via
lists.yoctoproject.org
<peter.marko=3Dsiemens.com@lists.yoctoproject.org> wrote:
>
> From: Peter Marko <peter.marko@siemens.com>
>
> it's a comment but should be anyway migrated to new override syntax
>
> Signed-off-by: Peter Marko <peter.marko@siemens.com>
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro=
/poky-tiny.conf
> index 20c13e6f60..075702a32c 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -39,7 +39,7 @@ TCLIBC =3D "musl"
>  FULL_OPTIMIZATION =3D "-Os"
>
>  # FIXME: consider adding a new "tiny" feature

Is this comment still valid, I wonder. I know its in there from day 1
of this file.

> -#DISTRO_FEATURES_append =3D " tiny"
> +#DISTRO_FEATURES:append =3D " tiny"
>
>  # Distro config is evaluated after the machine config, so we have to exp=
licitly
>  # set the kernel provider to override a machine config.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13582): https://lists.yoctoproject.org/g/poky/message=
/13582
> Mute This Topic: https://lists.yoctoproject.org/mt/111960658/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

