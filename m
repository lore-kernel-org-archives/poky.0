Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com [209.85.161.65])
 by mx.groups.io with SMTP id smtpd.web11.52087.1606224224105261888
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 05:23:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=hpvapeK3;
 spf=pass (domain: konsulko.com, ip: 209.85.161.65, mailfrom: paul.barker@konsulko.com)
Received: by mail-oo1-f65.google.com with SMTP id h10so4777880ooi.10
        for <poky@lists.yoctoproject.org>; Tue, 24 Nov 2020 05:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DRqQvH4sow6oTz/RWE0xpXazdpkEsRNgGqGH/FTGYeA=;
        b=hpvapeK3yKVdbXt0Gktgg5K1ZVQO9lnA5sS9G631h7Vkqk8MQ41pIe/AK+cnqEPRBJ
         L6+DttFVdBa4PS/0VGglTFALQ2USrl3KD+Pyns3lY/TZTVm4WI6I+RgAFFA80Ee7BRCz
         cWMjpZWmLA/SOG81eD0UY5H8+pBk4/8syXiU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DRqQvH4sow6oTz/RWE0xpXazdpkEsRNgGqGH/FTGYeA=;
        b=AzwMutL7n1ROTMxKtrMuh1e9K6pnRRvfq4jPA2BDymCgCm9kArbjHnaDbaR6tVGQrc
         qdoXq+KhkWCVUY2Qv/eZN3C0mr8tp5FOqGlhaUu73tG2Z35euMwdutuqlPITj6Div5Bu
         dj+rfPpkuGXYSnIDFyvZ8ZQZhY56lJ8C93cjrG8+97VSDEXOTrJBxa9Z3jtUtAwfScL/
         7mjChLnuBJiNPHYdtILditBVRD6if9mxpvNFYO6THwuEDXEWinYLePXy8CbNgmVSZarb
         v/488RSXfVK0hi7oT5yLRTOyLRgDFvqLCWGinrdupfR/RzU9eiNiz6okjFO7KR448Akw
         kGXQ==
X-Gm-Message-State: AOAM532bwaImUoWUEq0aY+jGH2pfz5Y0laJrXDoQ44419p1dM7HjFF57
	6xO2yd4EjWOD6C4shHeCLXeVjAK0xfURbkvPOGzvgg==
X-Google-Smtp-Source: ABdhPJzQmHmhxNN5hCFXFvD2pEJuHwiFDwf9YDd+n1Jh2WxZX+xz9Eiu77rfUqCj/kp4pJCqKc8rgS90R0U2+UVHQvg=
X-Received: by 2002:a4a:b481:: with SMTP id b1mr3231272ooo.88.1606224223401;
 Tue, 24 Nov 2020 05:23:43 -0800 (PST)
MIME-Version: 1.0
References: <20201124124431.25294-1-pbarker@konsulko.com> <d99fb8c9fbc13a0ff994fec17a8331f4913c3c41.camel@linuxfoundation.org>
 <CAM9ZRVsQJFvDvM1F0U7As+JkxasmBhV74iXqHEz0ahN0V4ugLw@mail.gmail.com>
In-Reply-To: <CAM9ZRVsQJFvDvM1F0U7As+JkxasmBhV74iXqHEz0ahN0V4ugLw@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 24 Nov 2020 13:23:32 +0000
Message-ID: <CAM9ZRVt3s1X3UGWe9D+jQ46QZYC0XoqAgBsxW=41w6QoPNjc4w@mail.gmail.com>
Subject: Re: [poky] [master/gatesgarth/dunfell PATCH] local.conf.sample: Update list of qemu machines
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 24 Nov 2020 at 13:13, Paul Barker <pbarker@konsulko.com> wrote:
>
> On Tue, 24 Nov 2020 at 12:51, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> > On Tue, 2020-11-24 at 12:44 +0000, Paul Barker wrote:
> > > The `qemuarmv5` and `qemuriscv64` machines have been support since
> > > the
> > > warrior and zeus releases respectively. Add them to the local.conf
> > > sample so that they're easier for new users to discover.
> > >
> > > Signed-off-by: Paul Barker <pbarker@konsulko.com>
> > > ---
> > >  meta-poky/conf/local.conf.sample | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/meta-poky/conf/local.conf.sample b/meta-
> > > poky/conf/local.conf.sample
> > > index 68e71b930b..df23af0a71 100644
> > > --- a/meta-poky/conf/local.conf.sample
> > > +++ b/meta-poky/conf/local.conf.sample
> > > @@ -19,11 +19,13 @@
> > >  #
> > >  #MACHINE ?= "qemuarm"
> > >  #MACHINE ?= "qemuarm64"
> > > +#MACHINE ?= "qemuarmv5"
> > >  #MACHINE ?= "qemumips"
> > >  #MACHINE ?= "qemumips64"
> > >  #MACHINE ?= "qemuppc"
> > >  #MACHINE ?= "qemux86"
> > >  #MACHINE ?= "qemux86-64"
> > > +#MACHINE ?= "qemuriscv64"
> > >
> >
> > I think those ones aren't listed as we don't actually test them
> > currently...
>
> I reviewed the test matrix in
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/config.json
> after your pointer on IRC. Neither of these is covered by the
> autobuilder so perhaps it is right to leave them out of the sample
> config for now.

After further discussion, let's drop this for now. We don't have
sufficient test coverage at the moment for either of these machines to
list them in the sample config file.

-- 
Paul Barker
Konsulko Group
