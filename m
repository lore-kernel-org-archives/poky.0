Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web12.1986.1621046850711243682
 for <poky@lists.yoctoproject.org>;
 Fri, 14 May 2021 19:47:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=BDsexawk;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.48, mailfrom: steve@sakoman.com)
Received: by mail-wm1-f48.google.com with SMTP id k5-20020a05600c4785b0290174b7945d7eso241981wmo.2
        for <poky@lists.yoctoproject.org>; Fri, 14 May 2021 19:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N9QugmqQnviSkuoWoBAU31YxTfcCdVvjJKGswS5yxxg=;
        b=BDsexawkrhmGzxhqocvzC/VKJathxID0V8F1wiz6wj2RH1tHeBvpn6fR0Hs7rP47eJ
         wZ5/9iTkpAw+Gb6gv5nHC0Fw5W0dtcy/K9hjDrY8kpV5DLlrELF/izBwyfMbh084hGnu
         s+Jr8cOmUSE8h/K5unlLcifyvzupCCQMJhUC1h+TZpe9knBoeoGe0ZbZdofpicbsAwe7
         nYi+yCr/iYURGzWiyeC4oMHkSYR/bQsE5H9fHFcY0wkqHHA0W2RDFBysr3/PTaEU2as8
         K0mm2bIBzYX+eCaXvl7+5lXkBzgvVty8JXlnYV7NTYoFsRedb1ruyS6hvVyG0K+CrSsm
         0uyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N9QugmqQnviSkuoWoBAU31YxTfcCdVvjJKGswS5yxxg=;
        b=iKNJw9Jz5X3vS0dOq6v0HJlCfrkwm74UjjnORkLtmbFd1+lDKstzcW51aFImcgfYid
         57qTohuQsCGTF/brh5N80FQkLLq/3lbIGPF1ebyC14B1kNB/mQ+9EMDLejIFdsKkDigE
         hmYR+1yI214Ht4F7ntuiXHl6RBIvXb9n2kQjZrAT+3Bb6C5KYz3BrP6Tm0qrOEifdC/u
         LO/zTRKu5MYyYu0ssuHMDU34MJRbDip5LZ+ycFtZGblARFJmjz9YMXvmmBAH1ZPszp6D
         /q2sOeoD6/Gb8njyiHvsqLN3mkMHQUf/YSIpqwuMtMMOmfaX5KUl3OYaeu1lc5Myo86t
         A7jw==
X-Gm-Message-State: AOAM530OG8dT5hGCxnm4bh/pChCHFzuCyUoIlzEAs30ZkAyv9kY8rU1P
	8BUy7LFYnMCZvtMJY5nZHl4ckOJ6FfAU/9yIt6eI+w==
X-Google-Smtp-Source: ABdhPJwh2zS03fWRD3/FfPW1romx8HJJFGUtUUmkieyXI4T8xmWv2GInNJqp570EJqTrrO+pAVt0t44Puy4cjJkx+a4=
X-Received: by 2002:a7b:cd01:: with SMTP id f1mr12187031wmj.177.1621046849082;
 Fri, 14 May 2021 19:47:29 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1621037161.git.steve@sakoman.com> <76aab65e84ff6faae857a303b242bf29aa133e03.1621037161.git.steve@sakoman.com>
 <CAMKF1spadK-4KiRk-Vt85CN4DqpBF8xMkoVMdr_p3VfiX=_eoQ@mail.gmail.com>
In-Reply-To: <CAMKF1spadK-4KiRk-Vt85CN4DqpBF8xMkoVMdr_p3VfiX=_eoQ@mail.gmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Fri, 14 May 2021 16:47:18 -1000
Message-ID: <CAOSpxdZMZNeUcU__p8tmthG7WjC7DEjt+zjWZEnjezJMy=PyDw@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][dunfell] poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 5.4%
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, May 14, 2021 at 3:56 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Fri, May 14, 2021 at 5:08 PM Steve Sakoman <steve@sakoman.com> wrote:
> >
> > We no longer have a recipe for 5.0% in dunfell
> >
> > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > ---
> >  meta-poky/conf/distro/poky-tiny.conf | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> > index c6d4b88..f20cd4c 100644
> > --- a/meta-poky/conf/distro/poky-tiny.conf
> > +++ b/meta-poky/conf/distro/poky-tiny.conf
> > @@ -38,7 +38,7 @@ TCLIBC = "musl"
> >  # Distro config is evaluated after the machine config, so we have to explicitly
> >  # set the kernel provider to override a machine config.
> >  PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
> > -PREFERRED_VERSION_linux-yocto-tiny ?= "5.0%"
> > +PREFERRED_VERSION_linux-yocto-tiny ?= "5.4%"
> >
>
> seems ok to me. provided tiny config work with 5.4 as well

Dunfell has never had a 5.0 recipe -- the "note" message went
unnoticed until this week when I added:

94289dee37 bitbake: providers: selected version not available should
be a warning

So now we get:

stdio: WARNING: preferred version 5.0% of linux-yocto-tiny not
available (for item kernel-image-bzimage)
stdio: WARNING: versions of linux-yocto-tiny available:
5.4.116+gitAUTOINC+b89df7433e_ea7a54fa40

So we've been building 5.4 all along!

Steve

> >  # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
> >  #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
> > --
> > 2.25.1
> >
> >
> > 
> >
