Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web11.27.1651589084779595318
 for <poky@lists.yoctoproject.org>;
 Tue, 03 May 2022 07:44:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KY+QExRg;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id c1so13761722qkf.13
        for <poky@lists.yoctoproject.org>; Tue, 03 May 2022 07:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BraGiGAe3HQr9gTICkHSH4PBbRtOmse5gW+35GmeAh0=;
        b=KY+QExRgtsS0Mr6kXhxkWlUez0AD5bpXQtq+cesqnGOibK1nUu8WY7n7T2r4a0tZ+k
         yzRVli0s+gxTIQVwWxvwfNMRj7rLjP3R6rkwrNLOvXCIO/glfvDHz/iXaVW8juD5uqqB
         HMVGma+suJqkwMJlPHIoPd5Xv2knd7Ip+GW59wFCmnPJTtdMUQEjqS3jQ8x2JGHUoIPn
         J15kLGXYpr+MFutOAqtm59D8aHQAxU44UecG4XGC0WR/jNEMUUqM2Obrq9Q5tPBVSa6x
         gSQOod92xXC94eWOIvtdeYVubcplYq3Dxat44ucRE5NlYpYU84m8GjdY1E4YVU3l2sLn
         q16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BraGiGAe3HQr9gTICkHSH4PBbRtOmse5gW+35GmeAh0=;
        b=hwmG/0g1rhlmft7H5lYrlPa7bB8exsgSogxtkLB30qNIuGHBy5DR5hQpsq9HYrCVW1
         1kHeQs2ft7Ve8bHJAutwcrYpGm/h3bk/vYoA8BZoiR/vp0sy9KjF03/1+kBfHqE3pjOF
         ya5FgsB8HhxeY+8CD67c72mRIFxBf5sIOuM+Pr6RwAxngjA4t3sKwZrkTBidFMqZXS/V
         PtLgoHxvkgolC0LweW+aJnwlDjtEOj8ztFHTKwMQ2PtulRvBmtrPw3rvSlM89sOedMiV
         tTvs8G/P7+ezl2cSsA0zO4G2ZU/we0Tc4zBpF5sH2ZtLHfd0xWSR6RzGU1jjcUJ8oQfk
         40hA==
X-Gm-Message-State: AOAM532xyTfvkgbJM8MFj9jbg7kiZJtyB6Y73hSGY5f7OChd/uCtm/zZ
	JBlUpro+Z+ZELvMXa0W0bTG+Wa7uJlqY6F72li0=
X-Google-Smtp-Source: ABdhPJyBxm3lQGyVPw6/W0Yd6ywXSyI71lhEY/At6CATuzLALyYNb8j0IbV3tEh2CvME5iQzR5Nj0fJ1xTkAPPhmN0E=
X-Received: by 2002:a05:620a:46aa:b0:69f:ff6b:2635 with SMTP id
 bq42-20020a05620a46aa00b0069fff6b2635mr2694506qkb.463.1651589083764; Tue, 03
 May 2022 07:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220501231316.4082898-1-raj.khem@gmail.com> <CADkTA4MHje3C=XKc2-vpfNSxWk+mvRZOnqsLdBZk75V4oQOGqg@mail.gmail.com>
In-Reply-To: <CADkTA4MHje3C=XKc2-vpfNSxWk+mvRZOnqsLdBZk75V4oQOGqg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 3 May 2022 07:44:17 -0700
Message-ID: <CAMKF1sqhLPD2WrPNx-Ok+YpGg-K5Oh88iTG+tQC1VUo9kN+VEQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] linux-yocto_5.15.bbappend: Bump edgerouter to 5.15.36
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, May 3, 2022 at 5:49 AM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
> On Sun, May 1, 2022 at 7:13 PM Khem Raj <raj.khem@gmail.com> wrote:
> >
> > brings in fixes with gcc-12
>
> I'm doing a bump of all the reference boards, it's better that we
> don't have them on different versions. So I can take care of this
> along with the other boards.

fine with that. This was to solve the build issue that Richard
reported with gcc12
did not want to boil the ocean.

>
> I expect to send that full SRCREV bump today.

sounds good.

>
> Bruce
>
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> > index ff85e2e64b..04cd46772e 100644
> > --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> > +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> > @@ -9,7 +9,7 @@ KMACHINE:beaglebone-yocto ?= "beaglebone"
> >
> >  SRCREV_machine:genericx86 ?= "7f685244afb3acd13e94968312580b63d7296705"
> >  SRCREV_machine:genericx86-64 ?= "7f685244afb3acd13e94968312580b63d7296705"
> > -SRCREV_machine:edgerouter ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
> > +SRCREV_machine:edgerouter ?= "b978686694c3e41968821d6cc2a2a371fd9c2fb0"
> >  SRCREV_machine:beaglebone-yocto ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
> >
> >  COMPATIBLE_MACHINE:genericx86 = "genericx86"
> > @@ -19,5 +19,5 @@ COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
> >
> >  LINUX_VERSION:genericx86 = "5.15.22"
> >  LINUX_VERSION:genericx86-64 = "5.15.22"
> > -LINUX_VERSION:edgerouter = "5.15.1"
> > +LINUX_VERSION:edgerouter = "5.15.36"
> >  LINUX_VERSION:beaglebone-yocto = "5.15.1"
> > --
> > 2.36.0
> >
> >
> > 
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
