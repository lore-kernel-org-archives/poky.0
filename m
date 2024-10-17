Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72114D3C530
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 19:51:33 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.7100.1729194690094485187
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 12:51:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=h5KE6IJ2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4315839a7c9so14173525e9.3
        for <poky@lists.yoctoproject.org>; Thu, 17 Oct 2024 12:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1729194688; x=1729799488; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V/hXMVaPdnnXkCaak/QOniUGwIsyaA3kgdpxTOzHwrc=;
        b=h5KE6IJ2ZjPBSEIbBVfR+Sb+5RW/FBkQ8PzdRIraiFD2fgOV8ZReZKkfWOU2D2Jj+m
         cqki6l/6XrNhmtZ6O/R9U3fpamYVAvh/23qZbue55W1uuCglB7dlEfZ3gFYnslY2on+K
         nLsCBSvmy6QpLwuD6tqcVR9xTnrsy/jtiXQVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729194688; x=1729799488;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V/hXMVaPdnnXkCaak/QOniUGwIsyaA3kgdpxTOzHwrc=;
        b=fLa5a6ZczhELOD0qBvd8xSuqnAGEveb06iomF3Hkhs0/h47iMUMJHzsFGgoWp3pqXi
         1kA9Z4ZX42+bfSCWaMHWP8hWa/UIgbxjNmlNNZbD1/JgXJeOIkUOdJo5bBXJXDvFAIKs
         wXQATrquYSOs0bgKZIb1JxCbe6zHq8KC38gd+DYnmtPqmbld3sj6qQ9NDXzzeKLl/6ni
         vGodGrQMOtPv+ErGzB6Ngapg2V4NxSW15t7frMkK5lDOIwg08A8Smq4d7sbKDOsPzVeT
         1yiiQQvtmNPODWtdaXW3on0QhEbEYcThElpPAbPpah2Jrq4xc3glrZ3brkrv4xGJzBw5
         s1YA==
X-Forwarded-Encrypted: i=1; AJvYcCWeyj+N9qzi8ZSSlgIbSDGNgU7ydWuItCo4XDQcc8t/T8SGGSnsZQ26gSPo8iQQb/vRhZzy@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwfRwVlkwPS/emOrfqngrmq1rEYlUwHZQdaEiZ1NvTb6w5GmKgB
	3T74Hih+VUQDGgxDwHzak2tJtelGHnnxTyUyR+UmC4Zuu37kf5kDkWqybDWHJ+U=
X-Google-Smtp-Source: AGHT+IHqc+8GNKRYccVTxplsXUzxJiddYZ/B4qST+H3EGLWZ6rTb5rexK30sZze5fqbFTpc3I3Hu3A==
X-Received: by 2002:adf:fe86:0:b0:37d:47ee:10d9 with SMTP id ffacd0b85a97d-37eb4895bf7mr55454f8f.34.1729194688242;
        Thu, 17 Oct 2024 12:51:28 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:77cc:fe29:74b3:1210? ([2001:8b0:aba:5f3c:77cc:fe29:74b3:1210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fbf81b4sm8192942f8f.79.2024.10.17.12.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 12:51:27 -0700 (PDT)
Message-ID: <aacb8ab514a79162881abbd8e0abd051bf32d734.camel@linuxfoundation.org>
Subject: Re: [poky] Multiconfig Build using local.conf and multiconfig by
 design or bug?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: jayson.k.mendoza@gmail.com, poky@lists.yoctoproject.org
Date: Thu, 17 Oct 2024 20:51:26 +0100
In-Reply-To: <QRup.1729178545953250610.As7C@lists.yoctoproject.org>
References: <QRup.1729178545953250610.As7C@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Oct 2024 19:51:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13456

On Thu, 2024-10-17 at 08:22 -0700, jayson.k.mendoza via
lists.yoctoproject.org wrote:
> Good Morning,
> =C2=A0
> In my current project I was debugging why some DISTRO_FEATURE was
> missing from my environment when I used an multiconfig target in my
> build. When I checked the record in bitbake -e mc:mymulticonfig:core-
> image-weston I noticed that a DISTRO_FEATURE removed in the default
> local.conf build was applied to mymulticonfig's configuration.=C2=A0
> =C2=A0
> The lines in question that someone had in the local.conf were.
> ```
> DISTRO_FEATURES:remove =3D " pulseaudio"
> MACHINE_FATURES:remove =3D " pulseaudio"
> ```
> =C2=A0
> Now I am aware this is flawed in the current version since pulseaudio
> and if I wanted to do that it should be added to
> DISTRO_FEATURES_BACKFILLED_CONSIDERED. However, I am interested to
> know why it even impacted my build at all. From documentation it's my
> understanding that local.conf is not used aside from the
> BBMULTICONFIG settings. It shouldn't have affected the global
> configuration which should be sourced from mymulticonfig.conf at=C2=A0
> build/conf/multiconfig/mymulticonfig.conf.=C2=A0
> =C2=A0
> Is the local.conf supposed to be used by all multiconfigs?
>=20

Yes, it is supposed to be used by all of them. It is included by a line
in bitbake.conf and the multiconfigs don't change that.

Cheers,

Richard

