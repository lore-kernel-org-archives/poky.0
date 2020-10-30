Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web08.14459.1604068645416922059
 for <poky@lists.yoctoproject.org>;
 Fri, 30 Oct 2020 07:37:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iPgm+oI8;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: raj.khem@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id w25so6926767edx.2
        for <poky@lists.yoctoproject.org>; Fri, 30 Oct 2020 07:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zhEmo/lx/GYhCdR6QLaTAn1jDNZCMd3rzi/bfRlBzfE=;
        b=iPgm+oI8nkmnfZf3qcPqOZr1PBiiTjeTvob46jUR652mcTSn7m9lKsnvcLsGD5Sg0O
         5Lw0Tz3G42HYJA3f+H2zpLCvK8WbTBAxi3awhNzNwKLov+KpHUPXB7EelTyE+EKsuKwY
         Sm3bQ561QZu6A+r+4GFP+dVu2YMcef5sJXc2ytQ8J3TS5PVJ+sh+rwn2WKdf/NxSynw4
         AInAED6E1OUDNEIzYITvb15k9V/UeBcitcJ7L+sDj9awzVreR9f5i4wtEzGLTQ4nzRD5
         kc3p7MM85jFR7AMPSj6lkfII9NDlH5px4WY1jgDOORKEvq3r3AHtmSL0QVtOja3ELccs
         BTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zhEmo/lx/GYhCdR6QLaTAn1jDNZCMd3rzi/bfRlBzfE=;
        b=ipd8Cb8sqq124sLWumpwjAaaI61F9st1tT33JtuECiTPssZE0Bo/gZN3C/bnRDsSFC
         YP6xznqtbmUMxHfgNRtdSDAUgsrJytgT1PhYowOXLfDxk2Wo7b1l+4n60vybx4Wj9/KW
         t8buXKbTyuM2kS6ldGmN/omZV3lVBZnUN3e8eGoEc8G8wYnibnHonqeU84insOCYA4GA
         x0GFuFmXEtMJhXNgn+EBg0WqaRdlMyguMsvpNhg1Pc4vt3hMt90/DrxUYRjqo5ngsxLg
         OX2kc0aXEk19+Vd1tmKZXS9RD/usl8brv6JW5CpOlT0ztWxqkZBofLZB4/Vdnf3QRIyk
         78lg==
X-Gm-Message-State: AOAM53117iQtV2iqbjFuwB2ri+G7KPrgZdF/GVgs8Sts484zGBQ4UW2J
	wl118cP+geMTVDC3w6X/uGoG8Mz5AjyvvfnXIrw=
X-Google-Smtp-Source: ABdhPJwVQcuYIrWAFTiLrfPKPWGB0MDiVbJVWdufuPoNKNRi94OpuL5Jf2GI5oq/AQiWvJY7BFrq5Xdg+14/F8K6YI4=
X-Received: by 2002:aa7:d64b:: with SMTP id v11mr2115785edr.253.1604068643878;
 Fri, 30 Oct 2020 07:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <20201029173930.784694-1-alhe@linux.microsoft.com>
 <CAMKF1sp0ueNXuvksM9EgKbZc1wfTg4Q8Sv8p6_tPuTtRVahEsA@mail.gmail.com> <20201030062830.GE1246345@korppu>
In-Reply-To: <20201030062830.GE1246345@korppu>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 30 Oct 2020 07:36:56 -0700
Message-ID: <CAMKF1sq7fmL=GFwgJXNWMzR_=HLTwbgVNX99VciG7Z4D+TpHTA@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky-tiny: Enable size optimization by default
To: Mikko Rapeli <Mikko.Rapeli@bmw.de>
Cc: Alejandro Enedino Hernandez Samaniego <alejandro@enedino.org>, poky@lists.yoctoproject.org, 
	Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 29, 2020 at 11:28 PM <Mikko.Rapeli@bmw.de> wrote:
>
> On Thu, Oct 29, 2020 at 09:52:02PM -0700, Khem Raj wrote:
> > On Thu, Oct 29, 2020 at 10:39 AM Alejandro Hernandez Samaniego
> > <alejandro@enedino.org> wrote:
> > >
> > > Compiler size optimization reduces the size of the root
> > > filesystem by 15%, since poky-tiny is meant to be used
> > > on size constrained devices, enable it by default
> > >
> > > Signed-off-by: Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>
> > > ---
> > >  meta-poky/conf/distro/poky-tiny.conf | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> > > index 57826037f0..9a043b1ef5 100644
> > > --- a/meta-poky/conf/distro/poky-tiny.conf
> > > +++ b/meta-poky/conf/distro/poky-tiny.conf
> > > @@ -32,6 +32,9 @@ require conf/distro/poky.conf
> > >  DISTRO = "poky-tiny"
> > >  DISTROOVERRIDES = "poky:poky-tiny"
> > >  TCLIBC = "musl"
> > > +
> > > +FULL_OPTIMIZATION="-Os -pipe ${DEBUG_FLAGS}"
> > > +
> >
> > this looks good. Thanks for doing this.
>
> Agreed! Unfortunately many, many recipes do add O2 or even O3 in
> their own build scripts so the effect of this global Os setting
> is not as good as it could be.
>
> When I played with size optimization, I build the system first with
> normal O2, then with Os and reviewed every single recipe where binary
> package sizes did not change according to buildhistory.
>

yes its a common problem and perhaps should be patched and upstreamed
into those packages.

> Cheers,
>
> -Mikko
