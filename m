Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web12.25123.1662386469851958170
 for <poky@lists.yoctoproject.org>;
 Mon, 05 Sep 2022 07:01:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=a2y993Yx;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.51, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f51.google.com with SMTP id bj12so17243601ejb.13
        for <poky@lists.yoctoproject.org>; Mon, 05 Sep 2022 07:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=dnSke7akhY8VM3WYYiyrmu+r8H01eY4s8Wj9hWNjIso=;
        b=a2y993Yx6wdYNrl7OW7sxWg2KC1mqiQlWAtRE3uz0DlFDXuAEmsCzNabnvDPQzoTfD
         X5hL8hj43ug35ZQJZXnqDZ/BMtlU8kFIB5zUNXsEJJ3yL7F+qMZrscoCKgNOVitRRlHj
         Z533ZYqYHjoWJt2zFbScIZluwkyh+A77J8O+AWJ94SCRleZTztEWP6DSqvOqjp2mgSns
         TGiBQ/hU+C7THq06Yi0/wDjMdODKH1ha5zdPzRT3xSlcdEDF7MG+uP269ahM2btGlPkF
         Cmc3TTCRu5tBTVjvJnG69Bf6E3We9CjcqML69wVPFvAIgZ03fyc7D1BL6YE4jwbdgxUN
         YdJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=dnSke7akhY8VM3WYYiyrmu+r8H01eY4s8Wj9hWNjIso=;
        b=4B4XQt+lXzTGIXUHVcnyYuUIiKhLeYHm8hqh37+Dg/VmcEBiMljZWv0b/NSktpqrvG
         WQ7KgGrFzU8ll6TF0WlznLRjR6nJWyAeB9QsjTXaKSEGVkiaHN1UpHAv8s9gspjl5+57
         5zLOdINzzkjt8r7WTl+Q+S3EC6+QGVxZ0Nrxqg9E5ZeHDcaiELLorgG7tLaFiNZH/XCi
         s1IKU1sHhNWHs9LiDpdutQaHjtfwGKEaazOL4Sj03Gdtl4lxffpcGA7zIZPEEA9z0cj8
         IMXhXHBAbdCFOqWuxp8OQFjbH8eXtXiOn3ibUz5J3J6flkahbqHoL3km4OJ2+VHPaECn
         x4jA==
X-Gm-Message-State: ACgBeo1AVM6gncT3KAS9PNeEg+Ta4dbws3F6AwgI4HDov/uN91AF2D9/
	qUsTz7AnA5uo/kl4LiVGS0VY9Lxs2ip4yHEOdnaRkA==
X-Google-Smtp-Source: AA6agR5K1dalDK7woFFm47F5w+sdYHWaDulUeZjs+nXapCNBb8+MspNs/zCnb9Cp30WmVVIWs+hwtppLZccF6HYvvkU=
X-Received: by 2002:a17:906:8c7:b0:730:c1a9:e187 with SMTP id
 o7-20020a17090608c700b00730c1a9e187mr35980263eje.55.1662386468183; Mon, 05
 Sep 2022 07:01:08 -0700 (PDT)
MIME-Version: 1.0
References: <170B7F7B378D7825.6839@lists.yoctoproject.org> <0f6b522f173e36ce48d7c6a941794b7da133029d.camel@intel.com>
In-Reply-To: <0f6b522f173e36ce48d7c6a941794b7da133029d.camel@intel.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Mon, 5 Sep 2022 04:00:56 -1000
Message-ID: <CAOSpxdauV3+TzZoTDfGyF0zriw7Xz9_pZYuYxE5_2pC82jzFTg@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][master][kirkstone][PATCH] poky.conf: add ubuntu-22.04 to tested distros
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Sep 4, 2022 at 11:03 PM Anuj Mittal <anuj.mittal@intel.com> wrote:
>
> Hi Steve,
>
> On Mon, 2022-08-15 at 18:57 +0800, Anuj Mittal wrote:
> > Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
> > ---
> >  meta-poky/conf/distro/poky.conf | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> > poky/conf/distro/poky.conf
> > index 769b69c..856c885 100644
> > --- a/meta-poky/conf/distro/poky.conf
> > +++ b/meta-poky/conf/distro/poky.conf
> > @@ -38,6 +38,7 @@ SANITY_TESTED_DISTROS ?= " \
> >              ubuntu-18.04 \n \
> >              ubuntu-20.04 \n \
> >              ubuntu-21.10 \n \
> > +            ubuntu-22.04 \n \
>
> Can this please pick this for kirkstone?

Yes, I've got this queued for the 4.04 kirkstone release (as well as
an update to yocto-docs)

Steve
