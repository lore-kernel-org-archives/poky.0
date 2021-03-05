Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.14358.1614961082252335450
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 08:18:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=hnNQkP8h;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.48, mailfrom: steve@sakoman.com)
Received: by mail-wr1-f48.google.com with SMTP id u14so2715603wri.3
        for <poky@lists.yoctoproject.org>; Fri, 05 Mar 2021 08:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Dd6wcKK8qemP5SBhh/Ku3uS3ccPzxEktCCTYp+fMAqM=;
        b=hnNQkP8hWEcWihqjSGQ9u1KEiDrclYQWuL/uQm544TQoaO44Awn3Otgvgcnc/4G/9T
         lxHfbILFKVwnRAwhso0UC/UQ74RSkSZzE6YMYFRq2ZT/Bp5XIbtGqTfnoviLReeM8YzE
         WH2+ORwzxKN0U9IcyygzhQhzu81fsCYwS/IxA7goYs3pxepeC+PtlNj0HOxcul1lEvs0
         644iUWN10avN7lTi7GSpY/PY5hkMF59SHI7YmqJhj0My1AOtIp4qoBA8kqTAVVioG6zW
         gS9xRbDkBFLtWQ/Lk79iWcd/yj6pQ2lu+p31txbRc0AwD6IaJzwS2xLSpWT1qeIPlXFd
         FClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Dd6wcKK8qemP5SBhh/Ku3uS3ccPzxEktCCTYp+fMAqM=;
        b=XOSdBeF5IM2B6Z5wWTynL1W3C8Wltl7JpHnlGUhq/Q1GH6iKx+Li4KM08Eg6jz7+n9
         8YpWRfiwksasRJNIPRRlCiVtVrN6i6loc3z/D1jJUTwf4RlMxVrGoNW+pOmYYLDaF2YE
         mbx+P+8KYakwMNaWUYBFyuXkSscHHwbt7J2bTs6/ZdEnAYAaP2IHv8VOr9E5HV6ZTW1l
         E/Ep3Q0o9VIyg/2ziqqhDwA+Z+O7Bie5NMsCq00la3H5aw6sGxFgqW6MH2D2RtXtYshv
         bQMyK4uAtKinfdVjN9STsnJ0cGYN6eI9ufZJTZHlUp6SIIZ7atkgEg0GuN+IqKsBgwu/
         LJvQ==
X-Gm-Message-State: AOAM531p8PIiUouSEc5IAop4E7MdC8QSB8ORGUO7SwWTS+gLRhTRE9mh
	p9hrpfjGD6hu/+Ui1RFWoZJxuMLO1xzjKJXeRH1KKg==
X-Google-Smtp-Source: ABdhPJzPUFm+tw/T0bnSyNZ/WmGtnPMIDDeG8XbMNIA/reQHoGr2Yx2UyidQR0dbfAAfNftWPKENEj7horyE1jDtzuc=
X-Received: by 2002:a5d:4587:: with SMTP id p7mr10185745wrq.205.1614961080674;
 Fri, 05 Mar 2021 08:18:00 -0800 (PST)
MIME-Version: 1.0
References: <cover.1614954239.git.steve@sakoman.com> <d0aa2708a0e66bff19a84385a8227e933e0a09a3.1614954239.git.steve@sakoman.com>
 <CAMKF1sqGz6iWrgn9BHXcBHauQZ0cEwZHfuAxW_3t79UbZ2LLPw@mail.gmail.com>
In-Reply-To: <CAMKF1sqGz6iWrgn9BHXcBHauQZ0cEwZHfuAxW_3t79UbZ2LLPw@mail.gmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Fri, 5 Mar 2021 06:17:48 -1000
Message-ID: <CAOSpxdbC5TRtaYYhGbo1b5uAmgN8tFYqczAZw02opg=WBFmqBA@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][dunfell 3/6] local.conf.sample.extended: Bring back into sync with OE-Core
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 5, 2021 at 5:49 AM Khem Raj <raj.khem@gmail.com> wrote:
>
> check if all it recommends is available in dunfell, e.g. I am not sure about lto

Thanks for catching this Khem.  The other two patches were the
important ones, I'll drop this one from the pull request.

Steve

> On Fri, Mar 5, 2021 at 6:38 AM Steve Sakoman <steve@sakoman.com> wrote:
> >
> > From: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > (cherry picked from commit ea6e777cac72f22b56b2c8be0ba05ba164efe5de)
> > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > ---
> >  meta-poky/conf/local.conf.sample.extended | 29 +++++++++++++++++++----
> >  1 file changed, 24 insertions(+), 5 deletions(-)
> >
> > diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
> > index 9e85736..54ba7ce 100644
> > --- a/meta-poky/conf/local.conf.sample.extended
> > +++ b/meta-poky/conf/local.conf.sample.extended
> > @@ -23,6 +23,13 @@
> >  #
> >  # For a quad-core machine, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
> >  # be appropriate for example.
> > +#
> > +# Some users are behind firewalls or use servers where the number of parallel connections
> > +# is limited. In such cases you can limit the number of fetch tasks which run in parallel by
> > +# setting the option below, in this case limiting to a maximum of 4 fetch tasks in parallel:
> > +#
> > +#do_fetch[number_threads] = "4"
> > +#
> >
> >  # If you want to get an image based on directfb without x11 alter
> >  # DISTRO_FEATURES:
> > @@ -87,10 +94,7 @@ DISTRO_FEATURES_remove = "x11"
> >  # PACKAGE_DEBUG_SPLIT_STYLE = 'debug-file-directory'
> >
> >  # Uncomment these to build a package such that you can use gprof to profile it.
> > -# NOTE: This will only work with 'linux' targets, not
> > -# 'linux-uclibc', as uClibc doesn't provide the necessary
> > -# object files.  Also, don't build glibc itself with these
> > -# flags, or it'll fail to build.
> > +# NOTE: Don't build glibc itself with these flags, or it'll fail to build.
> >  #
> >  # PROFILE_OPTIMIZATION = "-pg"
> >  # SELECTED_OPTIMIZATION = "${PROFILE_OPTIMIZATION}"
> > @@ -191,7 +195,8 @@ DISTRO_FEATURES_remove = "x11"
> >  #                           commercial_lame \
> >  #                           commercial_libmad \
> >  #                           commercial_libomxil \
> > -#                           commercial_mpeg2dec"
> > +#                           commercial_mpeg2dec \
> > +#                           commercial_qmmp"
> >
> >
> >  #
> > @@ -374,3 +379,17 @@ DISTRO_FEATURES_remove = "x11"
> >  #INIT_MANAGER = "sysvinit"
> >  #INIT_MANAGER = "systemd"
> >  #INIT_MANAGER = "mdev-busybox"
> > +
> > +#
> > +# Use a full set of packages instead of busybox for base utils
> > +#
> > +#PREFERRED_PROVIDER_base-utils = "packagegroup-core-base-utils"
> > +#VIRTUAL-RUNTIME_base-utils = "packagegroup-core-base-utils"
> > +#VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
> > +#VIRTUAL-RUNTIME_base-utils-syslog = "syslog"
> > +
> > +#
> > +# Enable LTO system-wide
> > +#
> > +#require conf/distro/include/lto.inc
> > +#DISTRO_FEATURES_append = " lto"
> > --
> > 2.25.1
> >
> >
> > 
> >
