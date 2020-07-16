Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web12.224.1594939700817666980
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 15:48:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=DOBC+UgO;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.43, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f43.google.com with SMTP id o18so8489005eje.7
        for <poky@lists.yoctoproject.org>; Thu, 16 Jul 2020 15:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0hrO4GKyX5qlrj1mWbg5yodrAzxhCHI0P2vImsxB0bU=;
        b=DOBC+UgODTC3gHpkrgszKwe0h9Kj42bFd2dxGTY+/EYGOQLeT+W1pXPG7YBPv6/WqX
         hV/sezvwlEpv4pmDIzjsLpiBxzWseQmQPprsm4ZBysMbYuSc3tfV5Oa+3bWPS+CBr3Wm
         eBYV5QlaSdce6z4x2iSKQJfr7VH3NTYP0sj8m+CiJGzXhzNGWzNxF99orTeDSX80q6jP
         hcbM87tbEhQbNqNPIIqUQK5nrGtNQEUAGt3Aw87P7//BFPq/+nXCBuQirhMMI/7np+6/
         C3U7amCNhzb1Z4MfDCpFlGLx8weLnHRCKTEk7LM2vIQ/s+q9I9eWQz36p5ZXhcbXsuHg
         KWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0hrO4GKyX5qlrj1mWbg5yodrAzxhCHI0P2vImsxB0bU=;
        b=dzDtihk90yfhr8BDS/BnwI9EESgZOKF9gSDek1tQUEOPvXMGxeZgUA3o384eW3dbLc
         xwiDHw329GguTaSIIMjcgUMOZ/JzVWedfjVgvDt4LHAB2iY2+2Pxdj1vwGLqbFZ+03nE
         qrXP8yUk22SVNkvsUjUd6qbydcVo4Eh9bTlwSa6dqOdK7xPE92do4PSaTN/nu9isEQxG
         RTy68zZo9G/8uIUPpQ1yRrQcbOllekB1uHar7KXzo2SZBv5ifrb01npYbwPhKppmqN5m
         NGsx9bGoeJjl9EXYh/FK+AG1Qw6L6E7ygZfdTjLWATzOibb7tcwKlBbJQAj24/yLAetL
         lH7g==
X-Gm-Message-State: AOAM533vzVLAncfZxX6UVZJhyMKHwZemM/7o6wZsBIkACnckcwrf4dC4
	q2QWzGXLSy+hvexDwfhTolCO042i4d72L97xvkVGMA==
X-Google-Smtp-Source: ABdhPJxCoFvISrOW2vIp6DoFN2OCDh+zIVSEWm/bnrTLCbIWv0FaANrRICAWOiEAyfQO3n9yePfch9M0d+69Cos+bCY=
X-Received: by 2002:a17:906:488b:: with SMTP id v11mr6096635ejq.173.1594939699277;
 Thu, 16 Jul 2020 15:48:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1594937430.git.steve@sakoman.com> <aff81f13dec648e6546b0ec2887c55c49fdacb7f.1594937430.git.steve@sakoman.com>
 <bbfbd6da-0398-8c60-664c-b5bd6c19b06a@gmail.com>
In-Reply-To: <bbfbd6da-0398-8c60-664c-b5bd6c19b06a@gmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Thu, 16 Jul 2020 12:48:08 -1000
Message-ID: <CAOSpxdax5K5ty-PgyfCdnvZoZVruPcX2+-n-+7CT7a4ZjgXvaQ@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][dunfell] poky: Add fedora32 as a supported distro
To: akuster808 <akuster808@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 16, 2020 at 12:31 PM akuster808 <akuster808@gmail.com> wrote:
>
> I believe Ubuntu 19.x has been removed from the AB. Not sure if this file need to reflect that or not?

I think not, otherwise users who are currently using Ubuntu 19.x will
get an error when they upgrade to the latest version of dunfell.

Of course things may break on Ubuntu 19.x at some point since we
aren't testing it, but we can deal with that when we get reports.

Steve


Steve

>
> -armin
>
> On 7/16/20 3:11 PM, Steve Sakoman wrote:
>
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>  meta-poky/conf/distro/poky.conf | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 7c4a285..7f0a157 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -59,6 +59,7 @@ SANITY_TESTED_DISTROS ?= " \
>              ubuntu-20.04 \n \
>              fedora-30 \n \
>              fedora-31 \n \
> +            fedora-32 \n \
>              centos-7 \n \
>              centos-8 \n \
>              debian-8 \n \
>
>
> 
>
>
