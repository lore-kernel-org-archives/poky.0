Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CDD8CD98CC
	for <webhook@archiver.kernel.org>; Thu, 11 Jun 2026 14:00:27 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.46349.1781186419343509835
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Jun 2026 07:00:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=eHRFRk4k;
 spf=pass (domain: smile.fr, ip: 209.85.128.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-490b4a8e28bso67719015e9.1
        for <poky@lists.yoctoproject.org>; Thu, 11 Jun 2026 07:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1781186418; x=1781791218; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=otkhRoheR667p6Qfpj89qMQhlHjKWIJiYtv/5L+jdmg=;
        b=eHRFRk4k9JowheucHatShZa44mKI4kJ9Jt96D7RVg9tly4ifgfj1mB2n/+qqBP2uZU
         3+6G56QvUYKJ4/9YSPUmsESIiurCqpY0/BVtAl9qrZpBfRbJAv/30y9RKtng6MkeF4TW
         4JIrSFRGt8ox334faH8Sb8FtjG22LkiYmgjSM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781186418; x=1781791218;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=otkhRoheR667p6Qfpj89qMQhlHjKWIJiYtv/5L+jdmg=;
        b=pzSIO6yizcMhvPJ8P/WbY4jU2c/A9bnxWaWX0H2jd3qGflzvCpsF/epSjIdxCIZpOh
         2tR4K7dJA2FBevOewbDZazDZ6TpqspGNUigvXVZq0jUkvseDn8Jr/uJpX3haoQcWqKmN
         FtoJflp2KQujB/9DEZ2tpWwSe8eqvcrGPcpEJ8OfsnaeJJNxOgJr3dZUZCGo09dda4iu
         Wn74OhiaP7qvS4bA2fJX84pcholcVi5WcVDtBcYm597ZHPXU0zoyv2ckmFw5Wa1LvZnt
         jW5iOqMcXN8QpiQgfV84EHa9vmGRUBhXZFEnV1DTZX0L2Hq5ibpWU+L1ImDJgRW3XB7z
         /YXg==
X-Forwarded-Encrypted: i=1; AFNElJ8uoKfZxOtw4jDMwSP/VInM7AaB/O6WoVtwzvlbHxS43rzoZa2qi0RCtpJ4yG1ApV9TsjEd@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yye9Y4icjuqsOuTzbiAwF+uXwQTkq8cDTxyTvHWNzKvKQvNbpcw
	64x2DOwNecUHePVKi9U6EOjYrtsMKLqs46G2VxuRZ/t7PtTDkal1Lrs1MThQM6PHOfE=
X-Gm-Gg: Acq92OEFLZPw0d+DesN/6qkxKwfgLGgd85RyYTWzEwR861R2IlmXfj5UKHiZ0YARwN+
	RcwFZ8LjJ4iuDs9WxRkUVWIuoMIi9r0s0WXwX2mKirz2tNHsMa9+xHE0+DPpHsl7WsgGkvZNdUT
	34BsTX1OECdvLX/Pql/HBZO97xkUR013TB6wl12hPp/Y2yqpsEbS4zE+krvSlqhJnkFqKULhpAL
	D8uTPiNICo1hFgjjxkQ+2qRDpjPrcE7yOa3yrc1AoVNptKDlnlSF6RANu/MfBs8xIsociQMIkR+
	L4km8xwuuvXUdr+Xo14Q/zC+IQBezUCbPJTQnylCthcYP4n3LkjHdB9MMEgrKcji/dIK2ssqj9H
	bSkSxUKaWfnpLM4EHr1qoZIcH0nM+AypcwuDrbzz7bxhZa3X+brygUSVoDT0t4esM/JO5SZpkKI
	/z6opatqLc/tRiVOMUCqxxFzfH6B8UF38HivFmkCxZyszhuSsCOyKe0vVYFNitFzKFM8a9usOpH
	mN81WLZI6JTMJUSToS4r23F/PU=
X-Received: by 2002:a05:600c:8a16:20b0:490:be9e:fd03 with SMTP id 5b1f17b1804b1-490e55cc3acmr29278495e9.7.1781186417445;
        Thu, 11 Jun 2026 07:00:17 -0700 (PDT)
Received: from localhost (2a01cb001331aa0084744357c26c6744.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:8474:4357:c26c:6744])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490e2cf582bsm74474705e9.10.2026.06.11.07.00.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 07:00:16 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 11 Jun 2026 16:00:15 +0200
Message-Id: <DJ69VZ38GL17.X6YU4OT6TK7E@smile.fr>
Subject: Re: [poky] [scarthgap][PATCH] poky.conf: add Ubuntu 26.04 to
 SANITY_TESTED_DISTROS
From: "Yoann Congal" <yoann.congal@smile.fr>
To: "Quentin Schulz" <quentin.schulz@cherry.de>, "Poky ML"
 <poky@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <20260611132836.489169-1-yoann.congal@smile.fr>
 <0edfc7e8-c636-4278-b074-d7d15fd6c0e8@cherry.de>
In-Reply-To: <0edfc7e8-c636-4278-b074-d7d15fd6c0e8@cherry.de>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 11 Jun 2026 14:00:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13923

On Thu Jun 11, 2026 at 3:44 PM CEST, Quentin Schulz wrote:
> Hi Yoann,
>
> Can you consider sending a patch to the scarthgap docs once that's merged=
?
>
> I believe documentation/ref-manual/system-requirements.rst should be=20
> modified to list the newly supported distro (but haven't checked if=20
> there are other places where changes need to be made as well).

Sure! Since system-requirements.rst list is generated from
yocto-autobuilder2, I'll wait for this to merge first and then, send the
doc patch.

Regards,

>
> Cheers,
> Quentin
>
> On 6/11/26 3:28 PM, Yoann Congal via lists.yoctoproject.org wrote:
>> From: Yoann Congal <yoann.congal@smile.fr>
>>=20
>> A Ubuntu 26.04 worker is available on autobuilder and ran successfully:
>> * bringup-fast https://autobuilder.yoctoproject.org/valkyrie/#/builders/=
97/builds/22
>> * bringup https://autobuilder.yoctoproject.org/valkyrie/#/builders/96/bu=
ilds/34
>>    This one was from the -nut branch but it did not change during merge
>>=20
>> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
>> ---
>>   meta-poky/conf/distro/poky.conf | 1 +
>>   1 file changed, 1 insertion(+)
>>=20
>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/pok=
y.conf
>> index a7dc4046..177e5e04 100644
>> --- a/meta-poky/conf/distro/poky.conf
>> +++ b/meta-poky/conf/distro/poky.conf
>> @@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?=3D " \
>>               ubuntu-22.04 \n \
>>               ubuntu-23.04 \n \
>>               ubuntu-24.04 \n \
>> +            ubuntu-26.04 \n \
>>               fedora-38 \n \
>>               fedora-39 \n \
>>               fedora-40 \n \
>>=20
>>=20
>>=20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#13921): https://lists.yoctoproject.org/g/poky/messag=
e/13921
>> Mute This Topic: https://lists.yoctoproject.org/mt/119756398/6293953
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [quentin.schulz=
@cherry.de]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>=20


--=20
Yoann Congal
Smile ECS


