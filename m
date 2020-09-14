Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
 by mx.groups.io with SMTP id smtpd.web12.64631.1600101103817143068
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 09:31:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=XEJJK23O;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.65, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f65.google.com with SMTP id i22so872376eja.5
        for <poky@lists.yoctoproject.org>; Mon, 14 Sep 2020 09:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TurZWQTOfeXEeJ8MX6joU31Hu6710YXG8Wdwf1uwP/E=;
        b=XEJJK23OnmwtJxTmcly5j/REMXvkPCQRmp+9jl/NXFwjcoNmNF98YmA3CjZB+XzgJf
         eCIgLqwN131FNjpWXLyvLetvHEGvMW/q4j0nyQaYMkYGKz5lCJ8cP1plldIBchRugL/x
         1ctOIucRMgTJxKv3gFc5SnCNF5Ux5B24NFR2RpmZTPUMUPgkiwx0MM2zyhq9+wJwoAfx
         Fmhagohr4JILxjawUg6AcKxb7GfVN+0hvewLMPQ8xmu1ySGf8EG59ucPIZJrV89Ln9Bk
         AwAzJalLz3SHuxgg1SxUGU19YK3SLIuY97d0KWGyw42aWewqMreAxHvvZnfUx56bWsIB
         r0xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TurZWQTOfeXEeJ8MX6joU31Hu6710YXG8Wdwf1uwP/E=;
        b=auZRFeYtyb3g6iakUuGDh9yimKcXx31nKUbzREy0f7ALbJwkl7u7wGz9WMqfwz5kId
         CcES6oey3aNBB+huLoc1l7/P2SptQ3lk64Lp2PQhcCmQnppcYoM4hBgka+Ar1XKfdCH6
         OyK1itg0WHJS+na/VSIOzDsdYgdFD6n/YwhPZKJGAhehs4yNTSIrJkZho8GUGw+Fh5Xj
         zrJEYdjqPVfeUXM1ggDi0UYYhBMqWhxxbV7T17kwbBDw034GsZ6LqIMZWpQ4+7moPkew
         BeL2MBx4Re7rPChq+mKwgNV52QgZ0zXsEIH0IfJaWNAcqEkVwjm7/QAQpf+/fm0tcJUk
         Aiyw==
X-Gm-Message-State: AOAM530LbbiI9hC3pZnPXGPZBNWRV3y79r4lMKXTOpxwuAc3nX8tmLBb
	AmxPJoGifFzOQJfT6CRcoxzsXQyHm4Mc/ohKjaokmg==
X-Google-Smtp-Source: ABdhPJxulMG2udtXvG6y/RQquI5L7yEZLXKfRDvclGx4aEuJkopEwWzb3JnQWMKGr/WmAtUHXt53MqZMsWldkB/faA0=
X-Received: by 2002:a17:906:3bca:: with SMTP id v10mr15293216ejf.57.1600101102172;
 Mon, 14 Sep 2020 09:31:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200903181055.1299273-1-ross.burton@arm.com> <CAOSpxdac=88OW-Z7rk02_urKt7iP-uNzFhTEAX2m3PUQQNO=aA@mail.gmail.com>
 <CAMKF1sqDP3=x0JS4XoPs2p_qMKoGvTviYPEq-H_scCZGDyvc-A@mail.gmail.com>
In-Reply-To: <CAMKF1sqDP3=x0JS4XoPs2p_qMKoGvTviYPEq-H_scCZGDyvc-A@mail.gmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Mon, 14 Sep 2020 06:31:30 -1000
Message-ID: <CAOSpxdZWajg8ZD7GXsUuNsTXOn7n5nxZiCA=oV4p_3ddvc5pbg@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample.extended: remove help2man reference
To: Khem Raj <raj.khem@gmail.com>
Cc: Ross Burton <ross@burtonini.com>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 14, 2020 at 6:02 AM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Mon, Sep 14, 2020 at 8:59 AM Steve Sakoman <steve@sakoman.com> wrote:
> >
> > Is this patch (and the matching oe-core patch) suitable for dunfell too?
> >
>
> I dont think so. There are other changes in metadata that it depends
> on which we are not backporting.

Thanks Khem, I suspected that was the case but wanted to verify.

Steve

> > On Thu, Sep 3, 2020 at 8:11 AM Ross Burton <ross@burtonini.com> wrote:
> > >
> > > help2man isn't part of the early build anymore, so there's no point in
> > > referring to it here.
> > >
> > > Signed-off-by: Ross Burton <ross.burton@arm.com>
> > > ---
> > >  meta-poky/conf/local.conf.sample.extended | 3 ---
> > >  1 file changed, 3 deletions(-)
> > >
> > > diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
> > > index dc92a16f6c..44a01690e3 100644
> > > --- a/meta-poky/conf/local.conf.sample.extended
> > > +++ b/meta-poky/conf/local.conf.sample.extended
> > > @@ -124,9 +124,6 @@ DISTRO_FEATURES_remove = "x11"
> > >  #This enable mklibs library size optimization will be for all the images.
> > >  #MKLIBS_OPTIMIZED_IMAGES ?= "all"
> > >
> > > -# Uncomment this if your host distribution provides the help2man tool.
> > > -#ASSUME_PROVIDED += "help2man-native"
> > > -
> > >  # This value is currently used by pseudo to determine if the recipe should
> > >  # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
> > >  #
> > > --
> > > 2.28.0
> > >
> > >
> > 
