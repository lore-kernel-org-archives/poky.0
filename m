Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
 by mx.groups.io with SMTP id smtpd.web10.64083.1600099357556363069
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 09:02:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=G4d0rqdm;
 spf=pass (domain: gmail.com, ip: 209.85.222.193, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f193.google.com with SMTP id w186so640647qkd.1
        for <poky@lists.yoctoproject.org>; Mon, 14 Sep 2020 09:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kaCG1h+HlZBsn5XWL9asHn+ur8NvMmdOX9XLtZLS9Qg=;
        b=G4d0rqdm9RnWpg5Cm+mhsB4C2DcJrvmaX6YKB9UXUkPRZugsnjqnU6BVJ3TKzo0To0
         qlm/tKSaP/zstKhTnNUA5ypTugHIoCvbOzYtC67RO1TBQdGp29MzmiTOAYEWe6ZWZXXD
         YSBIDrnPCtvdAQanE45Z0hyg+IueBfX1iIV2CByOJpiETTxPPmR2naZJ8FiJchitNRS8
         R7/tEo6+GPJX0SFigxVqJnPfUPhAPO8DWRtVwLjobY7vfPDWVZAao37x6XpyETISnpoO
         CF6YRJcGmKc7pxbOkcA2ojqij59tRDY6mwqKb6OsFpAaozn7QJRcgukgI/Xsctw+rtbj
         GiPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kaCG1h+HlZBsn5XWL9asHn+ur8NvMmdOX9XLtZLS9Qg=;
        b=Pa7kR7Mz0Ys8d11kKg4ifd2BrGOTRrDSDDETAeD7gnl4YKT3HOGPLgTg6hamlVDnNw
         PuCIJEr5QPn4Qkg0piuPmbKAlX98ngfBCAgmgKtTmKqzmQOr7smHHMkmYLGOq80u6llh
         pcQTdpdunacqFyqoEzwS2n5ydkSBC29uyoY+DJMsUPpZnYFKbBDVlUXRX0MsEg5JGExc
         qRGC8PkYRSDLyICzu4QGhX9JxZcEl35jbbPgkl2N+AJF6zPn6Zgcfs6ycljsU/Phgo+7
         RcrKI0X7LhIkbx4EAdQXTWMZPYppY0MfupAROXm0YgZyF8l9RT9jLaLA6kDLz3rJBFyZ
         pIwQ==
X-Gm-Message-State: AOAM533LnGcPKrjYfiVJb1tW8Hggt5JilqgF3U6vLNgTkmKCnTfwG/LZ
	ERJntzL7kMJ5eMi+ISNZP7WyFDBqeQh7WsI7HXk=
X-Google-Smtp-Source: ABdhPJy1HQZS12aaZ3JWPatHH0CZxWqQRqcacWVogaxRKeLBCDTufAy3I4OcMT1ECMuHweADH0e4DMVEObtO75ZOjaU=
X-Received: by 2002:a37:c408:: with SMTP id d8mr12780017qki.71.1600099356494;
 Mon, 14 Sep 2020 09:02:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200903181055.1299273-1-ross.burton@arm.com> <CAOSpxdac=88OW-Z7rk02_urKt7iP-uNzFhTEAX2m3PUQQNO=aA@mail.gmail.com>
In-Reply-To: <CAOSpxdac=88OW-Z7rk02_urKt7iP-uNzFhTEAX2m3PUQQNO=aA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 14 Sep 2020 09:02:08 -0700
Message-ID: <CAMKF1sqDP3=x0JS4XoPs2p_qMKoGvTviYPEq-H_scCZGDyvc-A@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample.extended: remove help2man reference
To: Steve Sakoman <steve@sakoman.com>
Cc: Ross Burton <ross@burtonini.com>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 14, 2020 at 8:59 AM Steve Sakoman <steve@sakoman.com> wrote:
>
> Is this patch (and the matching oe-core patch) suitable for dunfell too?
>

I dont think so. There are other changes in metadata that it depends
on which we are not backporting.

> Steve
>
> On Thu, Sep 3, 2020 at 8:11 AM Ross Burton <ross@burtonini.com> wrote:
> >
> > help2man isn't part of the early build anymore, so there's no point in
> > referring to it here.
> >
> > Signed-off-by: Ross Burton <ross.burton@arm.com>
> > ---
> >  meta-poky/conf/local.conf.sample.extended | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
> > index dc92a16f6c..44a01690e3 100644
> > --- a/meta-poky/conf/local.conf.sample.extended
> > +++ b/meta-poky/conf/local.conf.sample.extended
> > @@ -124,9 +124,6 @@ DISTRO_FEATURES_remove = "x11"
> >  #This enable mklibs library size optimization will be for all the images.
> >  #MKLIBS_OPTIMIZED_IMAGES ?= "all"
> >
> > -# Uncomment this if your host distribution provides the help2man tool.
> > -#ASSUME_PROVIDED += "help2man-native"
> > -
> >  # This value is currently used by pseudo to determine if the recipe should
> >  # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
> >  #
> > --
> > 2.28.0
> >
> >
> 
