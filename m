Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E174ECA0FF9
	for <webhook@archiver.kernel.org>; Fri, 29 Aug 2025 14:08:31 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.14689.1756476505263811911
 for <poky@lists.yoctoproject.org>;
 Fri, 29 Aug 2025 07:08:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jbznPDXK;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-55f4345cfd3so2239985e87.1
        for <poky@lists.yoctoproject.org>; Fri, 29 Aug 2025 07:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756476503; x=1757081303; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OJ/m3+J9Y6E70tJXE9HXVCo2hcymJFVDvhoE7EhBuic=;
        b=jbznPDXKByXk9blFsOewOUGiGDGj2yQ+YBAjqd1Q1TPRbpkvHVH6HpsPCqLf4A4T3O
         OYefEdvt1aopHwzux6XefDA557gwlnamACo8RRiqklBCm23SrA1Tn/kfzVXB76eRiwNc
         gmoEAeThNYf3aF10DI7uD6571y1+CrrCFe42F30hwu7T3oenpgAqDYQzo5QoMEn5t7nT
         3WbW4wHtAcuOc9D6R18ZdmOxL70s6lu9PKZzoyRpqk4Sn35dK+fxhLT9Yle4XTq9l7Ht
         cQ44BRiCA2/fCCHcMUD7/vzyI8M274Z2t7ZBc8UgQ9QG5Y84gqVylDehUUQB2iMW+cBI
         fGnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756476503; x=1757081303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OJ/m3+J9Y6E70tJXE9HXVCo2hcymJFVDvhoE7EhBuic=;
        b=B+ynBlNoAb+5RIKH869IWkuI/NUMnbmjZ8DHhSrS1TJdm3WIOC9Gck4Rx1v38eWApG
         qhSDcMqzal3f1CHUV9R6/fyBdASHqFBq98EsLkkLU42+eeux3IlhScsDHE+wT1mIvrBH
         i8LPnJiskI/LrKdkCDOopnAGgjhPWluSpdyEKVBxIH/gMs1pKwM32PgH+yNhI6fI5hS2
         Z/jjC/Mod8D1ekbIl44+9h7BzkCIuq8Rxn0vfCVTDUdEYeXizFVTkTRhlzoIPkRjMRJb
         ZCjnhbBvidjKMTzx2CXCKmo6oQR3MySRCMuFSgclEpvFPXvPBatIgymqzz3021N1qnM7
         72vA==
X-Forwarded-Encrypted: i=1; AJvYcCXigvnVKNS1Z+B1anhLLwgk3/Ye/Yq23fMvqgvVv8b0yM4SfS9DvJXuuPBZiG67gZAZISde@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyuVwsBCqoS74s4CDjBrh4B0dW9xuz4VsYZ3AgJKviEj/9aRDFp
	6E9XM9Cgd3Xl1yulgIJ0l3qSiWev/KxLrFfJuZIEpe5W0a46Jv4Z6XjEx/ivKjZjyYQyma6650+
	IKGtuh05ahmE49GFNw2wJb64NvntJsZU=
X-Gm-Gg: ASbGncuP/d/h55AoySTey2+cu83m8sft3ICKtumR4YqfpUAoxpL8Gb3oTvBly9N9K15
	q++B6LeRIdBwaO78EszZdlAlLmZeaME0ypKx5chzo88qMrbEhdQeh2rSMyN2vTNZDPH/fP4+922
	H8qTijvqzJlZkS6h9Pn80P/9tTL7a2EPsyg7z8vbgHlSRlnyV5+INWKcQxpdAocuLYaV4spT2J2
	V5AcGRaarbLf9jjY1dPzUZI+7ulEMQ=
X-Google-Smtp-Source: AGHT+IG0pTkqyKqgR8zsC2CRVbahkah+gLjXzSU+334EnDRuan3jf44YuhhHKgYfy1W8N6qcv/Pg/cVUPN/CASdgzFc=
X-Received: by 2002:a05:6512:3e06:b0:55f:4ac2:a59a with SMTP id
 2adb3069b0e04-55f4f4c6857mr4135650e87.22.1756476503009; Fri, 29 Aug 2025
 07:08:23 -0700 (PDT)
MIME-Version: 1.0
References: <20250829114713.1577609-2-frederikbraendstrup@gmail.com> <DCEX6TVTI931.30FYANZVK020H@bootlin.com>
In-Reply-To: <DCEX6TVTI931.30FYANZVK020H@bootlin.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 29 Aug 2025 16:08:10 +0200
X-Gm-Features: Ac12FXyDDznJ4Gc5-YtdncSEY7cdb1E0qVu1IwYlLhfVsfYl-s_D-egQfrLdnOY
Message-ID: <CA+chaQehYqJ1uVf3iThO_KW77dcy1zjjnTW_15tQNY10g3_QaQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] fix: use pkgconf instead of pkg-config
To: antonin.godard@bootlin.com
Cc: frederikbraendstrup@gmail.com, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 29 Aug 2025 14:08:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13738

And the prefix should be "pkgconfig.bbclass: " instead of "fix: " as
it's rather change in behavior/feature not fix of a bug. FWIW:
pkgconfig-native builds fine here even with gcc-15 on host and it
surely builds fine on autobuilder as well, so the explanation in
commit message should be improved a bit to describe how it's actually
failing in your setup.

On Fri, Aug 29, 2025 at 2:45=E2=80=AFPM Antonin Godard via
lists.yoctoproject.org
<antonin.godard=3Dbootlin.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> To get reviewed this patch should be sent to the openembedded-core mailin=
g list
> and should apply to the openembedded-core repository, not Poky.
>
> Please see https://docs.yoctoproject.org/contributor-guide/identify-compo=
nent.html.
>
> Thanks,
> Antonin
>
> --
> Antonin Godard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13737): https://lists.yoctoproject.org/g/poky/message=
/13737
> Mute This Topic: https://lists.yoctoproject.org/mt/114950667/3617156
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [martin.jansa@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

