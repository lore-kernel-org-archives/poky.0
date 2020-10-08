Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web12.1913.1602191817374909307
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 14:16:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=c39IGHEv;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id q26so6374947qtb.5
        for <poky@lists.yoctoproject.org>; Thu, 08 Oct 2020 14:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=afGPR/Xx6/SUXD7i9OgNpN+Mn/0zQCkykviIMaRFH3w=;
        b=c39IGHEvpjbgqQA7T4VNC1THXCUqXu6TGQhy4zdiKBGth2qD5F1NAzM5YWMXlad2VG
         8XJLU9yS9/s+E3qpIuuSiPn/5+0pvhAzUdA5l0IdM5rRTODxHjAff81NHOT0tRuOVQ1D
         uqTLo2OwvU8im8ePDDIHFS3Y92HW3mwX0eX4yNvhTPPPdUHyPta1c+LY2tGsDl8fn/3Z
         Tbyes9ignsD7IqVjf2c1b9aYpBepzuMW6iZPuhfXT/2WR6GVF3+YYO/6wZXA5Nf81RVH
         15hlLFztkrs/cu2chlKbixwYto8UBSpUWd22L9LYW+heq1dBrTe2kNUDSuT9Fa7pSUZ4
         RasA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=afGPR/Xx6/SUXD7i9OgNpN+Mn/0zQCkykviIMaRFH3w=;
        b=QYozpi7J5f/RhKdzzmY/WLYFavuGruhGkiRpFbyOPFZPhANuDlgbdAfmgsJMy+YJ6o
         Ef8hZoifp3cW+wXzEEYDuqbEOtQtzPyvdWqI66c4uUAtIAV5m4tR2+7e8aJLLXmVsJay
         OcFkvN/O4124SQK9YhuQU2zVYZ9nENR5CbtaQrYll0AOwNIQ1V813E5xsOyoXz6fD8Ki
         iIB4Qgq/p3tiXs8Dkm8IKg8palo9Pxxj/DjPu6RTQlfyVKvHDW9bYCwWBvM8rJoWb7LA
         FzO4AFmcyPWy7z1At79Rhfuur5g+3EKOYu3EryxMIRfHk1PuSY3TrYWyyDS3Rga8qFJ6
         JV1Q==
X-Gm-Message-State: AOAM530gIVssS7jhbYfLp1901VNiehpEzhe8LuTD64NAqIeBdm9O2nbf
	7rRDD0hO8X8tju8Itv/hVfm9/ywoRBkH2B9XYb0=
X-Google-Smtp-Source: ABdhPJyvYzs50Pz43AaslFVQzc+v010ZVdiThGh+rwtv+repSxcgWKOzUQXFEktjpdcuEO2rp5W9D9TB2vOYnAAOVdQ=
X-Received: by 2002:ac8:544f:: with SMTP id d15mr10896556qtq.378.1602191816508;
 Thu, 08 Oct 2020 14:16:56 -0700 (PDT)
MIME-Version: 1.0
References: <ECz8.1602163483141309304.eYmj@lists.yoctoproject.org>
In-Reply-To: <ECz8.1602163483141309304.eYmj@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 8 Oct 2020 14:16:30 -0700
Message-ID: <CAMKF1sp-z6wRj8QQv0xb+rhMNcWQgEF6GuDr50AtzyzSuR9EcQ@mail.gmail.com>
Subject: Re: [poky] relation between inherit, TOOLCHAIN_HOST_TASK, and BBCLASSEXTEND = "nativesdk" #yocto #poky #esdk #compiler
To: anandshastry88@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 8, 2020 at 6:24 AM <anandshastry88@gmail.com> wrote:
>
> Hi,
>
> I have an example image where my image bbclass has
> TOOLCHAIN_HOST_TASK =3D "nativesdk-myprgog"
>
> myprogram.bb file has BBCLASSEXTEND =3D "nativesdk" and it inherit mono.
>
> Problem what I am facing is when I try to build image, it fails to start=
 mentioning that nothing provides nativesdk-mono. I assume that writing bbe=
xtends for mono will solve this. however, is there any way to still inherit=
 mono and not to make it part dependency chain for TOOLCHAIN_HOST_TASK?

removing is easy e.g.

DEPEND_remove_class-nativesdk =3D "nativesdk-mono"

but will this recipe build without mono for nativesdk is the real question=
.

>=20
>
