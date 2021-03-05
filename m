Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web08.13786.1614959369299011737
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 07:49:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rW0WSvUZ;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id b3so2009840qtj.10
        for <poky@lists.yoctoproject.org>; Fri, 05 Mar 2021 07:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DMVkBvRVY+NxuTxgQyahjJ4pXj2eC4GCE2LRz9kZRKA=;
        b=rW0WSvUZM78CDNxg24i9uQHgSv7hmD5m42I77Bg9rZfBw98WRTISgsWQz/wh8rA8Iq
         gvrPGMT5D4MUhU7yBOQnaxtCE7fg+AM/zzq7X/Ps4oYJmHxEjWZBgUUFO6f2ZR1YrSWL
         TjSwC/LKw4kYoHY7IHKGguAqrkNOjkw/zqCCeZUjCvzYC0cb6z0Xe0fn+x/eueF9dZKx
         KKix0R21gpl6YxS9bJndRe5WnL7CpHADXNkbyfmVssYquDJMH/QWNTLSb3Ejgj+cQ5kT
         kC3d4LNC8HSqicLpBfPhCFs8RRgbfZJom2P4Xaq+srdu+PjtRf9cgkIX44nV5/Htn0Ne
         +drw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DMVkBvRVY+NxuTxgQyahjJ4pXj2eC4GCE2LRz9kZRKA=;
        b=R9TeA4h9j0J/yy4ER9V8IZe6XW3Rl8/BV/ZF+WIRxL3W41ypsxzy6asjxqAKQEn1DT
         oZVM+YmfAzDSRiO3TZ5eUTB6joXeN05ocoJaAdYhmp5aM0c7/Hzw4SCjEqg6UO3BUBv/
         EOz7vrjZY3tCoIfzmcBJPKY332YxI2iBEr2Xsvm5iWCs2+2WPLmh3+rCk+8c/YgC3xSu
         dKd399qFI10bIk8QjomlH4cgW6tzfgQ9kcujBt4d3kSARoTpG6jxpvkqjwga8SVZGA9z
         AbYVp+RcfSEQmvytBKGPeOU6+0XjEwTjHL5XUH0sOdDTFBGbd95jGB4NZxEPeXyeO4Xt
         +SVA==
X-Gm-Message-State: AOAM531VvIHOLQ5K/MKIUXcfwW4ojvBupHEdvcDPPCRGuGExwYUOxtQl
	AsgL2WvfAL5XkMVDu4BHX9q1OW1U3vg7vQIMrc8=
X-Google-Smtp-Source: ABdhPJyAoalahG6pV7gtYcKI9hOL2ms7f8kHyk40n1gq8Jmo0w9gvv3cZQ5r0GlEGAElsp0kIxmiIb69b6Bwyxy5+jU=
X-Received: by 2002:ac8:74c9:: with SMTP id j9mr9323438qtr.369.1614959368239;
 Fri, 05 Mar 2021 07:49:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1614954239.git.steve@sakoman.com> <d0aa2708a0e66bff19a84385a8227e933e0a09a3.1614954239.git.steve@sakoman.com>
In-Reply-To: <d0aa2708a0e66bff19a84385a8227e933e0a09a3.1614954239.git.steve@sakoman.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 5 Mar 2021 07:49:00 -0800
Message-ID: <CAMKF1sqGz6iWrgn9BHXcBHauQZ0cEwZHfuAxW_3t79UbZ2LLPw@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][dunfell 3/6] local.conf.sample.extended: Bring back into sync with OE-Core
To: Steve Sakoman <steve@sakoman.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

check if all it recommends is available in dunfell, e.g. I am not sure about lto

On Fri, Mar 5, 2021 at 6:38 AM Steve Sakoman <steve@sakoman.com> wrote:
>
> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> (cherry picked from commit ea6e777cac72f22b56b2c8be0ba05ba164efe5de)
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>  meta-poky/conf/local.conf.sample.extended | 29 +++++++++++++++++++----
>  1 file changed, 24 insertions(+), 5 deletions(-)
>
> diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
> index 9e85736..54ba7ce 100644
> --- a/meta-poky/conf/local.conf.sample.extended
> +++ b/meta-poky/conf/local.conf.sample.extended
> @@ -23,6 +23,13 @@
>  #
>  # For a quad-core machine, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
>  # be appropriate for example.
> +#
> +# Some users are behind firewalls or use servers where the number of parallel connections
> +# is limited. In such cases you can limit the number of fetch tasks which run in parallel by
> +# setting the option below, in this case limiting to a maximum of 4 fetch tasks in parallel:
> +#
> +#do_fetch[number_threads] = "4"
> +#
>
>  # If you want to get an image based on directfb without x11 alter
>  # DISTRO_FEATURES:
> @@ -87,10 +94,7 @@ DISTRO_FEATURES_remove = "x11"
>  # PACKAGE_DEBUG_SPLIT_STYLE = 'debug-file-directory'
>
>  # Uncomment these to build a package such that you can use gprof to profile it.
> -# NOTE: This will only work with 'linux' targets, not
> -# 'linux-uclibc', as uClibc doesn't provide the necessary
> -# object files.  Also, don't build glibc itself with these
> -# flags, or it'll fail to build.
> +# NOTE: Don't build glibc itself with these flags, or it'll fail to build.
>  #
>  # PROFILE_OPTIMIZATION = "-pg"
>  # SELECTED_OPTIMIZATION = "${PROFILE_OPTIMIZATION}"
> @@ -191,7 +195,8 @@ DISTRO_FEATURES_remove = "x11"
>  #                           commercial_lame \
>  #                           commercial_libmad \
>  #                           commercial_libomxil \
> -#                           commercial_mpeg2dec"
> +#                           commercial_mpeg2dec \
> +#                           commercial_qmmp"
>
>
>  #
> @@ -374,3 +379,17 @@ DISTRO_FEATURES_remove = "x11"
>  #INIT_MANAGER = "sysvinit"
>  #INIT_MANAGER = "systemd"
>  #INIT_MANAGER = "mdev-busybox"
> +
> +#
> +# Use a full set of packages instead of busybox for base utils
> +#
> +#PREFERRED_PROVIDER_base-utils = "packagegroup-core-base-utils"
> +#VIRTUAL-RUNTIME_base-utils = "packagegroup-core-base-utils"
> +#VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
> +#VIRTUAL-RUNTIME_base-utils-syslog = "syslog"
> +
> +#
> +# Enable LTO system-wide
> +#
> +#require conf/distro/include/lto.inc
> +#DISTRO_FEATURES_append = " lto"
> --
> 2.25.1
>
>
> 
>
