Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.507.1609803461347176601
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 15:37:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=ihpDslQj;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.53, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f53.google.com with SMTP id ce23so39000224ejb.8
        for <poky@lists.yoctoproject.org>; Mon, 04 Jan 2021 15:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8ZNFMR7Ci9lBgK0I/t4onPEYLuKwaY2t4/DjSKFFcs0=;
        b=ihpDslQjcld3o67IieBQq+jc9cwc7wHvvNGXaFlLhAfwR2VgTWmzuA4Swav4vJEOl/
         JnCGRAalfWZ0hi2WaqQZooue7x1kbAb1J5v5/VhulY5yKGaNTVSDAfvuMmFBwmMTlcyS
         VfhQbNYLN7wu912AMKhFgnM0l5ZTA4o+XDReYXsUSswwEQ/VVY4OzVYGTyKP6MK4FBm5
         uogKOVxgIzfs0XW8/+m1EdkUk4TbKzVmW1QVSz0kaXtAJJ6golIFEFdz61YQnCwlmldY
         IsN8nGDcZA5+4ObXZtFzfNFNQ1h1ysX8mIP7JXy+9+4tObmCV4drN+XFonyNLU8dcQHW
         Rcfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8ZNFMR7Ci9lBgK0I/t4onPEYLuKwaY2t4/DjSKFFcs0=;
        b=Ya5Dg3xtjWW10wVYnX+CPzbm9hV0LcGhcNcC+LvdiCuo05sQKmlCEMvVF58h7BD7K4
         gc/Bfgb9PdbZe/QXDuvt8F9R5moD4soj27XpJ6iYY8v+DbD7ZVYShizfjqypa751ZrD2
         yNYcvvx41AboycTuxVl1n2O7AO1AJxWxkx/mBW9J/5Pt6SqOTfS6rnQmhOS2YqYIWE/R
         lEM6zEtnLSPm5daLjbErSHpg/vY3uVhC98CUTLR/gkxLICJJQP21uhzpPTQYxwmES60y
         HU+RNkQteg+lDFUGwJtWdkytE5FozIUB4aXLFX5KGDY6hCwj/fuQMeFrla6axC5/fFsk
         IzUg==
X-Gm-Message-State: AOAM5311nZvGH2WC2AjrHGXx295d6SBy0PoGR21xDtxtB7dIZBSkJ3Rb
	PQ3YV5Frue3YO52oTY8WcfrEbKZsiknemB0O7XoN6w==
X-Google-Smtp-Source: ABdhPJxd7hfPFRyDh8Fud5iG5tznTgqhhgc7ULOjUlSMVvs1RI1N54ai43cf3DjF7t6pHBvsAMAxg6XHn2MHyPPG/gc=
X-Received: by 2002:a17:906:fa8b:: with SMTP id lt11mr68339887ejb.94.1609803459836;
 Mon, 04 Jan 2021 15:37:39 -0800 (PST)
MIME-Version: 1.0
References: <20210104173741.1070515-4-vdidelot@pbsc.com> <c1f0211ce522552065b53581c76f990e53c5f532.camel@linuxfoundation.org>
 <20210104131311.GC1075440@t480s.localdomain> <3e5d2993e54881c09f5dfe84bd41f9963271e73c.camel@linuxfoundation.org>
In-Reply-To: <3e5d2993e54881c09f5dfe84bd41f9963271e73c.camel@linuxfoundation.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Mon, 4 Jan 2021 13:37:28 -1000
Message-ID: <CAOSpxdY6a5rhcS=S7ouc_X9SN=Eg3cchf1kn1a8FjHPqfdBJKw@mail.gmail.com>
Subject: Re: [poky] [PATCH 4/5] wic: fix 'founded' typo
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Vivien Didelot <vivien.didelot@gmail.com>, poky@lists.yoctoproject.org, 
	Vivien Didelot <vdidelot@pbsc.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 4, 2021 at 1:08 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Mon, 2021-01-04 at 13:13 -0500, Vivien Didelot wrote:
> > On Mon, 04 Jan 2021 18:02:07 +0000 Richard Purdie <
> > richard.purdie@linuxfoundation.org> wrote:
> > > On Mon, 2021-01-04 at 12:37 -0500, Vivien Didelot wrote:
> > > > Replace 'founded' with 'found'.
> > > >
> > > > Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
> > > > ---
> > > >  scripts/lib/wic/plugins/source/bootimg-partition.py | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/scripts/lib/wic/plugins/source/bootimg-partition.py
> > > > b/scripts/lib/wic/plugins/source/bootimg-partition.py
> > > > index 138986a71e..5dbe2558d2 100644
> > > > --- a/scripts/lib/wic/plugins/source/bootimg-partition.py
> > > > +++ b/scripts/lib/wic/plugins/source/bootimg-partition.py
> > > > @@ -141,7 +141,7 @@ class BootimgPartitionPlugin(SourcePlugin):
> > > >                      break
> > > >
> > > >              if not kernel_name:
> > > > -                raise WicError('No kernel file founded')
> > > > +                raise WicError('No kernel file found')
> > > >
> > > >              # Compose the extlinux.conf
> > > >              extlinux_conf = "default Yocto\n"
> > > >
> > >
> > > Thanks, I've queued the other patches in this series. This one is
> > > against the oe-core repository and needs to go to the openembedded-
> > > core
> > > list. It was also fixed back in August so I'm guessing this was
> > > against
> > > an older branch?:
> > >
> > > http://git.yoctoproject.org/cgit.cgi/poky/commit/scripts/lib/wic/plugins/source/bootimg-partition.py?id=f39694933ace695e2dfe917c5ac74349a2e00409
> >
> > I'm not sure, these patches are based on latest dunfell:
> >
> > d45ec07e5e87 ("sphinx: update link to bitbake docs")
> >
> > where scripts/lib/wic/plugins/source/bootimg-partition.py contains
> > the typo.
>
> You're right, its not in dunfell but I believe the stable maintainer
> for dunfell now plans to backport it.

Yes, it should be in next week's pull request.

Steve
