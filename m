Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web12.13561.1654613549724644626
 for <poky@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 07:52:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=I8VVWG9d;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id y32so28713988lfa.6
        for <poky@lists.yoctoproject.org>; Tue, 07 Jun 2022 07:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=C41iHesvkLDKRyFYTC19flNCSuX+PQMG3IWod51er+8=;
        b=I8VVWG9ddcZVziVSOlFxBc/aiJk3QfnfXPsXiSY6d1lmCsdcqYZZfhlVR6uefuHIuK
         ClkAGVeogHcaKYw2wFfBxz+71F8SdUWCQDxQekqC21RykP2LCdwnOfPrOIc7GEZMUOVB
         AF45jGYcMVQyMTmnI3WIR4UmIb7uwcLOHs2txF3UxE6NlWukxuIq/AnxCIJs7PFwPZi/
         vzG54kUIo62nMsaF0EtNNYCy0DEV3gT3vSAYMWFDChtlXXPvFI3Yg86R4hDogAEV/mDm
         cVjLVRIVvqgduIiOmAd+jiP8XkuCwTl+tcNROLbNkkzArHPdzObsVx0qe1gVo9c9Aqph
         o+eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=C41iHesvkLDKRyFYTC19flNCSuX+PQMG3IWod51er+8=;
        b=ItIatv14X/5uxU/Tkv/t9aYERGDnDMxqGy0ob0OX/Y9ng/hmJCzf4q3pQJ5FLzZ3qo
         TJuLQqKLdVKS2xM6eFR1/FbtCOcb6Ht+KivHIKMn4JJiC0WL9IyEBt1ruAS6vgJl4xmX
         Ko1kqjBCuC3oh/gSD7wDQ5xTMwKbqHbQWt/ecVYmeEixFde1S0Hu6/LFjP8hGa4HzqLT
         1R+n9zgMEA8oU4HCpMMmhw0evBtx+Y2gYRsaHCaxsenwGe80DgErzRn6l6pkwqfj5oOQ
         xur2YetoUZ30OxANVR04puXQhj1F6iKZsT/hPvA42jGwiHbat/wTE63zM4t/Ds+ms1jH
         76kQ==
X-Gm-Message-State: AOAM532JZ3c5fyvrKNQYudA99zJhUPLe/+0VLSnwAF+qH3ZYoRkbBPEO
	UBISS8L77gvD8yjISgwodSnlsSKmhJ9oG31W/K0=
X-Google-Smtp-Source: ABdhPJyChsLFkUSBOldxJWcmKc7ORbUGu3lmrtJFoQge/cCYu2lykyFy8+xRlhhexnlgGbZMzDdmARDnqAqEZrjP0oQ=
X-Received: by 2002:a05:6512:3f8f:b0:479:64f9:4420 with SMTP id
 x15-20020a0565123f8f00b0047964f94420mr2218267lfa.534.1654613548082; Tue, 07
 Jun 2022 07:52:28 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-ubKi15iLszdohnTdOxsRgFdZUGi1=pr0-4F_H3kTPXw@mail.gmail.com>
 <17758.1654613353559176429@lists.yoctoproject.org>
In-Reply-To: <17758.1654613353559176429@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 7 Jun 2022 16:52:16 +0200
Message-ID: <CANNYZj-QOoNCQFx-0FsSWt1J9F7sXCmTPuQhmxdVJeX1UmO9yA@mail.gmail.com>
Subject: Re: [poky] [PATCH] [honister][PATCH]weston-init: when x11 is enabled set xwayland=true
To: Sebastian.Suesens@baslerweb.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You need to read weston tests in meta/lib/oeqa/runtime/cases, then
execute them like this (build for the qemux86-64 machine):
bitbake -c testimage core-image-weston

Alex

On Tue, 7 Jun 2022 at 16:49, S=C3=BCsens, Sebastian via
lists.yoctoproject.org
<Sebastian.Suesens=3Dbaslerweb.com@lists.yoctoproject.org> wrote:
>
> Hey Alex,
>
> where can I find a description how to test weston like you suggest?
>
> Sebastian
>=20
>
