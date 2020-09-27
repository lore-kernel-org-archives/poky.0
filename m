Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web11.7266.1601184894289418650
 for <poky@lists.yoctoproject.org>;
 Sat, 26 Sep 2020 22:34:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sadms69E;
 spf=pass (domain: gmail.com, ip: 209.85.160.171, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id g3so5764819qtq.10
        for <poky@lists.yoctoproject.org>; Sat, 26 Sep 2020 22:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JYTNrhVGmTNgKbpQYYO1/dA9NMa/Ma6orU716viao3A=;
        b=Sadms69EGgPGIghDHsgIdA4sh2ygTEAKdaDSzDhOSk9Zx7zkFJwOIBs/sxftuRNQ/S
         sFFNGte4uF7FPvtJot08aEdr81KeFSCDO5avue7Ot9IpdlVu1ecTH/C+JvX2uugMDmTk
         lJt+J7HYTYr9MgPihK9mBgybxq37UDjRhSJAb+Keaca8pTshevdbhhYuylKRlw7288/d
         yjlxSuautOWdqog+1lQNJHq56ehaaXnyPjtZfJlMB04hnQDEcEyPq/tInRcxHmAoX9Ph
         pn08eRBYFgo+A2JhvqI14qFwVCHxsqGZ0TVIqykL7/mBPhL9S1M2D+B5kDlnOfrCgpec
         Q+tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JYTNrhVGmTNgKbpQYYO1/dA9NMa/Ma6orU716viao3A=;
        b=mzkROPrCJHQO9rgXC0jsDnprvxnjmVQRc/cnPWbKqa9OPg6fWWK2BV3Zds3XDBEEa0
         FqTh3VDJJxDg03vvDCkyHpY3Xx/qYpH1IZzHoa6s/hdLqQX+DBW1wgHcQOGB2OVpoSxG
         u4d2re9DdglmPkC/Vv1AA6GBdyfb+iVMKJRNUROAsJqmQH4ZzXz2CmjZCxV+LXyUJfPk
         7A8VnIORECvbuI2zCAE5MzPXYTxdTqA3jZ8DZ8wtMeZXlGoNjhjlfs9/4xr4iEHbuqrt
         6Q1Ayk+0Jbbzk02355vbc6k1JMZFKP5jgJ+n1mCr92LXfJiGdCLtuphKTzS3OHWjl/+q
         R/4g==
X-Gm-Message-State: AOAM533g6bVaziaOu7S2oXk4tZcNjSL73ZNrtGIh8ILGcR8OdB+7ryWa
	hESrkoFbmvoAUq2S0fgKhlP+fxWoZP/0IVDo2mA=
X-Google-Smtp-Source: ABdhPJyI1a3aiK0nU+QFs6Atvb2f5v0sXG6W3fNG6wkqdrhAN1W5Kj4nEu3KEYOxMydsu2+jtwKbBEpwvKHSZ3RgiY8=
X-Received: by 2002:ac8:3417:: with SMTP id u23mr5647685qtb.80.1601184893371;
 Sat, 26 Sep 2020 22:34:53 -0700 (PDT)
MIME-Version: 1.0
References: <f4cadfd0-a78a-89bc-4900-925ecee08ecf@groskopf-embedded.com> <780021b6-e4a4-1140-9e02-97011a6ae116@groskopf-embedded.com>
In-Reply-To: <780021b6-e4a4-1140-9e02-97011a6ae116@groskopf-embedded.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 26 Sep 2020 22:34:27 -0700
Message-ID: <CAMKF1sob26+C19UR8qvL6uMKQcWfrq5G_mFHaTDqod5GEeLWQQ@mail.gmail.com>
Subject: Re: [poky] Header only packages not included when populating the SDK
To: Paul Groskopf <paul@groskopf-embedded.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

perhaps you can add

RDEPENDS_${PN}-dev = "" in the concerned recipe to unbreak depending on empty PN

then you can add

TOOLCHAIN_TARGET_TASK_append = " catch2-dev"

On Fri, Sep 25, 2020 at 5:25 AM Paul Groskopf
<paul@groskopf-embedded.com> wrote:
>
> Hi,
>
> I have a setup where I'm building a SDK for a yocto generated image. The
> package recipes are working fine and ends up in the image. But now I
> would like to create a SDK where I include the packages as precompiled
> libraries to be used when doing application development. This is done by
> appending them to TOOLCHAIN_TARGET_TASK. This also works fine for the
> most cases. But all packages that is header only is NOT populated. I
> found a solution where I add ALLOW_EMPTY.. to the recipes. But is this a
> feature or a bug in yocto SDK populate?
>
> E.g. I had to include a catch2_2.9.2.bbappend containing:
>
> ALLOW_EMPTY_${PN} = "1"
> ALLOW_EMPTY_${PN}-dev = "1"
>
> To the headers and cmake stuff included in the SDK.
>
> My package class is set to IPK.
>
> PACKAGE_CLASSES ?= "package_ipk"
>
> Thanks!
>
> /Paul
>
>
> 
>
