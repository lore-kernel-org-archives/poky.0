Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web10.7407.1676643726347829211
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 06:22:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=E0+9t1lI;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.46, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f46.google.com with SMTP id i28so4358858eda.8
        for <poky@lists.yoctoproject.org>; Fri, 17 Feb 2023 06:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DeBoEgYu8ke+Xzng9LK0TXNoTrE/RWBBPddDPhNVQEE=;
        b=E0+9t1lIeqRHjFaxYNmGn6NNMNaEQzFiWp5ljJagREiJr9PkJqgqvD4jD6UbSL8/oq
         v9zJBp6kGu8zLP7JH4bPzKSo6W7I1cAoVoVwOhoq0G1ghNoK62UkDkt16YKfCykDJ/7t
         O9mtMFRDZY1sprjsSVpXC1cdmIqMtQls/HUb0alVx+G3h7zt6yfUa0l97xtI1j8C/IKF
         fRgo9/mG2qluUSyoH1iJkFp1003Ii9CGGvDaldb111eltOjD0XIH5/9pkl/8jEp2CkK1
         5M4+3ZGcDulANI3dnOK/0IR/3Ejn3VK3qBeLE37QTTeaKsz1INU0EPNtbnBYdocvD5ME
         +v/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DeBoEgYu8ke+Xzng9LK0TXNoTrE/RWBBPddDPhNVQEE=;
        b=NetvexYk/4u0dlPtf27OO/C5uvjsiB7k5EIfpBvW+n+gf2bI9SO8aeE8vi+jwDQhbz
         Jsc/+2uQPznwaV7GatnwHMSAAEDY/diJzilJC8qPxBSZdYBH1AhaNy7POrZ/e7kPlS/Z
         P5gdFzUFRs7LizoqKMR74ab0jMhPIggGXG2/czZ6fpy5FTdOxUfsqJuFrozSBg8UwYEx
         vAxztGzgwG3XgMzY7KYkV1J8ofZonM4E1CK/FiEpZ8NOHIv9jl8QSX6oO4AAGbfAqbi+
         6X17oDdiUebRJT3lAVagKU+bsLp0gWiIY+XgrVC5TgFGUMflblNHLr8VAB1v+kEpsBw5
         ptdw==
X-Gm-Message-State: AO0yUKWYfUrs9OQYu0lKKcAZC2aZBUV0qSan14lZI5wk79hKcN8yRdAd
	DmqM7WioXzxNAwU876oN8r+Jfw0f8eiAdzuNhTJhCA==
X-Google-Smtp-Source: AK7set8i+1EVCLF9GyiYGmBQHCs/nE4xTrINZfhBfc4+i3i6p9Tw0e/p7NsmVPN1GpcNnR0c8j4pqsvPoERcgXnM824=
X-Received: by 2002:a17:907:c081:b0:8b1:2410:3b4b with SMTP id
 st1-20020a170907c08100b008b124103b4bmr4215485ejc.2.1676643724516; Fri, 17 Feb
 2023 06:22:04 -0800 (PST)
MIME-Version: 1.0
References: <BooD.1676632109346078064.HPtY@lists.yoctoproject.org> <CANNYZj8DU7twqWsXKq3F95efV80i3jQHRF1bBnNk8kZR_xR+pA@mail.gmail.com>
In-Reply-To: <CANNYZj8DU7twqWsXKq3F95efV80i3jQHRF1bBnNk8kZR_xR+pA@mail.gmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Fri, 17 Feb 2023 04:21:53 -1000
Message-ID: <CAOSpxdZsZ-LE6-y-M3=0Tg79=UYNX61v3F+WhomwHEheQp83JA@mail.gmail.com>
Subject: Re: [poky] Test dunfell LTS release on UBUNTU LTS 22.04 #yocto
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Kamel Fezzani <kamfezz@gmail.com>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 17, 2023 at 2:24 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> The list of distributions is simply what the yocto CI is using to run
> test builds. It doesn't mean that 22.04 will not work, but you may run
> into issues, mostly caused by newer ubuntu compiler building an older
> set of native recipes in dunfell. If you have compelling reasons to
> move to 22.04, you can also install buildtools tarball which will
> insulate you from the host tools: scripts/install-buildtools

You should be fine with 22.04 and dunfell.

I've been using it for my local test builds for a few weeks now, and
was just preparing a patch to enable it on the autobuilder.

Once I have a week or two of testing on the autobuilder I'll send a
patch to add 22.04 to the "officially supported" list.

Steve

> > On one of my Yocto projects, I am using dunfell LTS release, and I'm tracking latest dunfell releases (3.1.22 (January 2023)).
> > I am using build machines with native UBUNTU distribution.
> >
> > Ive seen that dunfell LTS release si not tested on UBUNTU LTS 22.04 (https://git.yoctoproject.org/poky/tree/meta-poky/conf/distro/poky.conf?h=dunfell#n49).
> >
> > Si there any reason for that ? This test is planned ?
> > Or should I keep my build machine on UBUNTU20.04 ?
> >
> > Thanks for help.
> > Regards.
> > Kamel FAZZANI.
> >
> >
> >
>
> 
>
