Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web10.1076.1597281407138266198
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 18:16:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=FJjPPmjB;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.219.180, mailfrom: jonathan.richardson@broadcom.com)
Received: by mail-yb1-f180.google.com with SMTP id x10so2375092ybj.13
        for <poky@lists.yoctoproject.org>; Wed, 12 Aug 2020 18:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mqEovvZ8YTJdl1+U50fxDOD8a33tuvZIKw9UZHIIedg=;
        b=FJjPPmjBZbP5t9cWFY+JVBXkL0oax91nQrB3ejSTS9EW2kA61b3KBDwu6YiVL0UfKg
         xV2Bn+rko12vUXXKw8O3Ctq9tc3J/+Q5wp/dpvZLCmR04SratDHyi2W8Etj8kU8HR1vJ
         XQ425tbUd01ktN74vw3M3UPSllEbfGo3FLIFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mqEovvZ8YTJdl1+U50fxDOD8a33tuvZIKw9UZHIIedg=;
        b=ejiHwGG6XVsqjlbQFddKH5fQwFtFrSSxNmL9Cbxu8C1hO+/J/YzwcHoD0QiC6VOljh
         OoJY8K9uCDvbBeDPP7sETEVgEuUAI1dcwLCaH1qP9nDJGYBM8FznSMGgrzZ3N+BjGcDY
         GzGMAa0JdLk9h/RsbBjJOVKTiL5F+b1Bd8wrjNyf1ELmcwibUes3/Ql49A64IHACmPEI
         H7JKEaWyMyt/geCuvHDiEFqBVaddUqwCNHeHtN0g+ciZTViENNNA8VYJyBJgrm7obQH+
         5UQNrlGavk9h7KiUk7uZQHkUDW682v3+V9ME8NkczqgI8v+wy7ewwGQ4KljjnwfSitQV
         LAlg==
X-Gm-Message-State: AOAM5336PtruPNVkAKyvp6pyMPbLE4YaiCH28HJPCo+bRHAE/l8xgcwr
	rBPk6kgd08daPp67/UlY3KSV/NHftvQJHUkZ+uwuOw==
X-Google-Smtp-Source: ABdhPJzAig+uCVcAiwaw1mwBx9/7P4ywjbAP6LppnX32nCAPqZVOfQRQ+V9v4e4FILXyhPI10nUIQ0uYWP7WNAJ9//Y=
X-Received: by 2002:a25:2513:: with SMTP id l19mr3325529ybl.367.1597281406318;
 Wed, 12 Aug 2020 18:16:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
 <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
 <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com>
 <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com> <CANx9H-CyHBzacbPsDKPO4DpHMANRvP2_YLd3=w00NRvnuEn_Cg@mail.gmail.com>
 <CAHrpVsV4EpjidokvZcidNPH_mDo0pOcCRpfQN=QggS5FbwP4Dw@mail.gmail.com> <CANx9H-DihAhruQHsPpKEJqyry9MAHuT4FwnQhaWXRCBBHByERQ@mail.gmail.com>
In-Reply-To: <CANx9H-DihAhruQHsPpKEJqyry9MAHuT4FwnQhaWXRCBBHByERQ@mail.gmail.com>
From: "Jonathan Richardson" <jonathan.richardson@broadcom.com>
Date: Wed, 12 Aug 2020 18:16:34 -0700
Message-ID: <CAHrpVsWBmE7=SnB_WRhos5scSbKXYC2f2B3d-+vnq=HnS5zzyg@mail.gmail.com>
Subject: Re: [poky] TCLIBC with newlib
To: Tim Orling <ticotimo@gmail.com>
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, Khem Raj <raj.khem@gmail.com>, 
	poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 12, 2020 at 5:48 PM Tim Orling <ticotimo@gmail.com> wrote:
>
> Can we see if we can bring your changes to the meta-zephyr layer for the benefit of everyone?
>

Sure, I'll upstream it once these toolchain problems are worked out
and it's cleaned up more.
