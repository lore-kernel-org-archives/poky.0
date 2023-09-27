Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CA75E810C2
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 10:36:10 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.14190.1695810964642503234
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 03:36:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iTtw0SbM;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2bfea381255so181973091fa.3
        for <poky@lists.yoctoproject.org>; Wed, 27 Sep 2023 03:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695810963; x=1696415763; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXdIU8DB8yp333hoFIWuxSqsGWz3f9gU9VJ04fQqpqI=;
        b=iTtw0SbMbrgwK2LK9bkt3yvcI56YXiU0qdiG2iBZTI5Z5HcUCjuEJ1ufyb+cs50YJI
         vwFZg36+zT3fLB3ItwJ5M1kPyC8yHdiHUYuiTNmebyYZHUQmBoTNw4Bdd8jweO6kWIyX
         8vc0pxUA3mwC8zO/CfvkNI8RfQOJIgqTO9IartQHFN7XGH1rw9dUXmwURhfFr2qJY1lC
         58gtWa5KVYOgZ5uXquosQ0OmT3eazV9kj5AqfUUZFaGfpwSmvlO/tM0VFfI1iG1khhv4
         HIAc0U7j6QftLPdlp+zDHQYk7xsRTM5t+5tAHL3LeE07aXeskH0Wmc7vTSMgFpu2mvey
         mwdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695810963; x=1696415763;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXdIU8DB8yp333hoFIWuxSqsGWz3f9gU9VJ04fQqpqI=;
        b=UWsx/EY2Qd2iv3nT7ZWlxRx8BexmFeUl6XF9ni2GKSHere2ePtmGF/fxqdCldZYx4i
         BcrGoIvqe1Mhe9G4X7Td38/WYJqDOGH7k2l+DHi+BrQMV5rNXysIiWghZcz8Xj0hNYbk
         ZqifWSPKkxlc8rVGpICiyMvKy/t8eJrD8y6IMYuhxIbZECOLXcgC4ZF4ApMLuh1dcELX
         H+1Ba6KFcXW2/Ix1Hg8eAsyi140gVEItkXN08+MDsL6QMXxcj2xel2IzddT3MM8BH4y8
         O5cltOtTo56cayUrd7MaSP3ymzbtvLzra5xgcI0FR6ad6Nh+vaD1+k+H1vCjkOu9xeG0
         MYNw==
X-Gm-Message-State: AOJu0YzZrzn7Q+EJ9/7IRsJU+5J2XPqIL5+imZYd/L6cogy1zLf1Ia7x
	g0Ga/smRpaflFTr3Ugd111B9mdUmfzwXPvrom14=
X-Google-Smtp-Source: AGHT+IEPFHFlf3eYV0B8dIrfxE3h8flGhKir2pHoifdAObTOE51yGIQCLpYTG81byu/+VQGmIQJ32bj3YiJAVocxN94=
X-Received: by 2002:a05:651c:104:b0:2b9:e53f:e201 with SMTP id
 a4-20020a05651c010400b002b9e53fe201mr1541919ljb.31.1695810962540; Wed, 27 Sep
 2023 03:36:02 -0700 (PDT)
MIME-Version: 1.0
References: <u4Qv.1695810230302704632.p2jb@lists.yoctoproject.org>
In-Reply-To: <u4Qv.1695810230302704632.p2jb@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 27 Sep 2023 12:35:51 +0200
Message-ID: <CANNYZj8pYX-PUQUyKRcBO80vUeZtKL5LEAXw1Qc_VqvLddpP1Q@mail.gmail.com>
Subject: Re: [poky] Enable ensurepip on Kirkstone?
To: bosinski@genesismobo.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 27 Sep 2023 10:36:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13169

--without-ensurepip is not about whether module is built or installed,
if I understand this right. On master, the ensurepip package coming
from python3 recipe is available and in fact some other recipes rely
on it.

You should build python3 in master, then compare what goes on during
the build with kirkstone, if kirkstone truly doesn't package
ensurepip.

Alex

On Wed, 27 Sept 2023 at 12:23, <bosinski@genesismobo.com> wrote:
>
> Dear everyone,
>
> For reasons outside of my influence I need to have python3's "ensurepip" =
module available in rootfs, but I see that python3 is deliberately compiled=
 with "--without-ensurepip" flag. I've tried removing it, but then build co=
mpletely breaks. In some other commits I've seen a package called "python3-=
ensurepip" but it's not available in newest Kirkstone. Do you know if there=
 is any way to get around it?
>
> With kind regards,
> bosinski
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13168): https://lists.yoctoproject.org/g/poky/message=
/13168
> Mute This Topic: https://lists.yoctoproject.org/mt/101614506/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

