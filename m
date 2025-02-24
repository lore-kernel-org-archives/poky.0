Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2B92C021A4
	for <webhook@archiver.kernel.org>; Mon, 24 Feb 2025 17:10:37 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
 by mx.groups.io with SMTP id smtpd.web11.95817.1740417031437941622
 for <poky@lists.yoctoproject.org>;
 Mon, 24 Feb 2025 09:10:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HUVK9bVu;
 spf=pass (domain: gmail.com, ip: 209.85.167.181, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3f3fca56050so2410642b6e.0
        for <poky@lists.yoctoproject.org>; Mon, 24 Feb 2025 09:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740417031; x=1741021831; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hYmesVslvsBORqoU1q0eIdRqnJqRm4Drzw5yIB0WHvM=;
        b=HUVK9bVunKornQyEwq0AwAciM4b80N4QO6zNWoyrssAKBR0lJe1MV/9GYbpxBRVhOA
         S1lCAU7UB56vmBjS1WgrztSISGs2/kFxkzVUqqlSJGo4F9ISWQBkHJyZVfUFoNgiLXw2
         8NpxjGwYkHzWIdiCiYnOheaPb3thl16c3l5IrWeY/M5nZJkMFBiRp8sDCJgCp7vsFXQJ
         apMPOQqBPEvAWvpkv6y/+3fhWVhDS/GCGFDDBQxdKgP+XZb8xVPq3if1J5bGaHuJ/6Ol
         K9c/pz/GN6NOulC+pQmgyKVOLuDuDgjz6IOuRpCiZGZMuTC2mvJfjg6B2+nPNUs5w7bl
         /1qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740417031; x=1741021831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hYmesVslvsBORqoU1q0eIdRqnJqRm4Drzw5yIB0WHvM=;
        b=nRB+Ihkvbsctcfu7XL3ow5KD/Nm3BCcFjUpFUNeuB06NZZeJLTWEm9EdcNX69GXdgD
         LkjWlW9uU10V33wymLHiaZW1Kwv9JBBSmFMvNJuFn9HjKSMjIytIrYLQUZqhyE17r3E5
         pUbS7PWpyKhrO3AEpN5hzAngB4xFhJ1pOurry9wVsT1+yKY8VG0aT5GZN5kKOudsMzU2
         ZRM3s3cCRnnLY6OgWixG4KrjejqonYMBNCnE+GjUtK38nttwS/4npjElG4YLS2UVy0ZN
         /ZxiprC6XIIpC2vIcRelvMyiYSSxukH2RFuLUyWD3NdYxPihbyWPnIXXNW7EQCv+2eSX
         f6YA==
X-Gm-Message-State: AOJu0YyuJkEZ0KrjK/JJcVXtGuJdwAHcrB4DAEUIPrIjwxlwL33L4vaM
	vPKSoWug5Ju9bXi7sGOEAy3N5yWPBukZsqM4gME4Exa7PzKRKmrDQPLkpdNwvG/ixnFYodWilQ2
	+q9zjhZkoC58/YoPuejxleVuImqGEve8sUrY=
X-Gm-Gg: ASbGncvFCqz4a7TosCfgy1/mhISl3Uv5dNezxr75+lyS5CspamKimMSE4cfQhRW18Xp
	wakUSwBsHjtfMh1EEw552F2r8eyoQd96vxefWByyatTWJZbKKNWCp5OiSPNoPwoAHBpT4pG1pW1
	7qiXQq4w==
X-Google-Smtp-Source: AGHT+IEIm9XbiBOG3bXHHO+8t2WTIOmeBTo0EAzCgKeCfw7xaL5GEanFYIVWn+RL25d4ul9u0wPqgS6VdpGkMq5P8vE=
X-Received: by 2002:a05:6808:3c8c:b0:3f4:21af:6d41 with SMTP id
 5614622812f47-3f42469bef8mr12171928b6e.5.1740417030634; Mon, 24 Feb 2025
 09:10:30 -0800 (PST)
MIME-Version: 1.0
References: <QK77.1740413838157605018.WWmF@lists.yoctoproject.org>
In-Reply-To: <QK77.1740413838157605018.WWmF@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 24 Feb 2025 09:10:04 -0800
X-Gm-Features: AWEUYZmqQFv-MTV5ym4iVQPzQugzNbwHeC16iLcv2szQSCBLGbsGm7Q71kNusdA
Message-ID: <CAMKF1sq6pqY7A0pWpFj=ovtG5yhbqmYrS3u7H6LWH6mhE0jNyg@mail.gmail.com>
Subject: Re: [poky] Adding Pulseaudio to raspberry Pi Zero image #poky #raspberrypi
To: jdowd@slashdevslashnull.org
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 24 Feb 2025 17:10:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13539

On Mon, Feb 24, 2025 at 8:17=E2=80=AFAM John via lists.yoctoproject.org
<jdowd=3Dslashdevslashnull.org@lists.yoctoproject.org> wrote:
>
> I'm trying to get bluetooth working on my raspberry Pi Zero. I've traced =
it down to the pulseaudio driver and tools missing. I've attached my local.=
conf file to show how I'm including it into my project. I can build it dire=
ctly using
>
> bitbake pulseaudio
>
> but if I do the build for core-image-minimal there are no pulseaudio s/w =
or tools in the image. I do have the ALSA support included and it appears t=
o be there.
>
> Thanks in advance for any help or advice.

pulseaudio recipe will produce multiple output packages and one of
them could be name pulseaudio as well, in pulseaudio package
the package is empty and the binaries you might be interested in are
packaged in another package, if you know which binary you are looking
for then easy way to locate the name of output package housing it is
to use oe-pkgdata-util on your build e.g.

oe-pkgdata-util find-path /bin/ls

will tell you the name of package which provides it and you can
include that in your IMAGE_INSTALL

>
>
> Cheers!!
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13538): https://lists.yoctoproject.org/g/poky/message=
/13538
> Mute This Topic: https://lists.yoctoproject.org/mt/111360363/1997914
> Mute #poky:https://lists.yoctoproject.org/g/poky/mutehashtag/poky
> Mute #raspberrypi:https://lists.yoctoproject.org/g/poky/mutehashtag/raspb=
errypi
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

