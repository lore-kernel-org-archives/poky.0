Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.8241.1633095912130354158
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 06:45:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KTrk/RQG;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id t8so15629443wri.1
        for <poky@lists.yoctoproject.org>; Fri, 01 Oct 2021 06:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=woHIod0a59yiGsJsGySWLlgFuKvoRPfq9yWxNYqvR/M=;
        b=KTrk/RQGk7KKSdimLSsimJtbZQdyiXGnrMDC0jNyp/j1VSH//x/PR9SDB4emrfqTT1
         QvJTlzCtmafcpq3xE8gCR1edP86icPs1mk6Af07O315kl7BZPzduocSqmyRRJUjttbly
         rT4yEqKRWedYHVh6/m6X/+h3d7fHsifmFppYoNedUoNo0ycUulSnHPZYIo8W8KpVGy+J
         YQsdoFRpgOI9q1ETmkQ8s9D9iBmoqON9P9od+SNP4n8sjo5QZEAk5ktIW1kUi+BGw7e+
         MnzaRHqvHn96+bKwmifdO22atbmXKojFacbxfTxfhYyRJ9aPw1icjjRp3uRVhmibPZe9
         z1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=woHIod0a59yiGsJsGySWLlgFuKvoRPfq9yWxNYqvR/M=;
        b=Ml96+WksAd4Y9up3dvDrICdUiHBDtpdvtw+HGmSxnWoahFBl/4uFXhKugFTfQN6l/e
         LEXqKM1QmtPLBDfUDBtJkS/RoW/ek9fhnBK/jbHGAEklvdviJ08UTo+e+ypa/nnFJjjv
         CoJWJ00vpLFvEwylBjf9Ybz/7wRffn0TH4o/3HequX5A0RHb5M8jKO5j2cK/JljW+ITM
         Ma6zwkEOdgPcbAuNg/h955APhfexMAbj4SHlbhdCzckUlMDDYWoKjmhCXHu6Q04aJNUU
         +3VAqJwyY/8lGGTly6oxFQT5uQ7VbXh4tnwYTlWM1LQXr5ZeGSG+80UrKfA9ssrRo7SR
         nmhw==
X-Gm-Message-State: AOAM532UQ6K3u3tj4vHSDTsdnBTteO4eaMP23ga8YGI9GGU8uUUQbm9g
	4fZNQgEG/4EZHzbAKUU5F6gT+dLgtBDuFheALnM=
X-Google-Smtp-Source: ABdhPJxLpOPbeYGAnKOkjJ9pXpvJXL0Rz6208dxBCHwxT0Cs5GRhBSJEAqLoEiD6/tlwjjYepPNcd19n8Yy+Oin5ppU=
X-Received: by 2002:a05:6000:1866:: with SMTP id d6mr12346077wri.205.1633095910282;
 Fri, 01 Oct 2021 06:45:10 -0700 (PDT)
MIME-Version: 1.0
References: <20211001101118.2526538-1-hkleynhans@fb.com> <9e6cc87314854416861d13b5d1ec887c@axis.com>
 <99fdc768454aa12f73bb863f19e6026dda17f76a.camel@linuxfoundation.org>
In-Reply-To: <99fdc768454aa12f73bb863f19e6026dda17f76a.camel@linuxfoundation.org>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Fri, 1 Oct 2021 08:44:59 -0500
Message-ID: <CAJdd5GZFWVxUTZXMApYie9QiQTAwxvSiBOeXGQz4oSWt2CQwRg@mail.gmail.com>
Subject: Re: [poky] [PATCH] sstate: Add ZStandard compressor support
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, "hkleynhans@fb.com" <hkleynhans@fb.com>, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, "rmikey@fb.com" <rmikey@fb.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 1, 2021 at 8:16 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2021-10-01 at 13:13 +0000, Peter Kjellerstedt wrote:
> > > -----Original Message-----
> > > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf
> > > Of Henry Kleynhans via lists.yoctoproject.org
> > > Sent: den 1 oktober 2021 12:11
> > > To: poky@lists.yoctoproject.org
> > > Cc: hkleynhans@fb.com; rmikey@fb.com
> > > Subject: [poky] [PATCH] sstate: Add ZStandard compressor support
> > >
> > > This patch adds support to optionally use the Zstandard compressor for
> > > ssate cache files.
> > >
> > > Zstandard compression provides a significant improvement in
> > > decompression speed as well as improvement in compression speed and disk
> > > usage over the 'tgz' format in use.  Furthermore, its configurable
> > > compression level offers a trade-off between time spent compressing
> > > sstate cache files and disk space used by those files.  The reduced disk
> > > usage also contributes to saving network traffic for those sharing their
> > > sstate cache with others.
> > >
> > > Zstandard should therefore be a good choice when:
> > > * disk space is at a premium
> > > * network speed / resources are limited
> > > * the CI server can sstate packages can be created at high compression
> > > * less CPU on the build server should be used for sstate decompression
> > >
> > > Signed-off-by: Henry Kleynhans <hkleynhans@fb.com>
> > > ---
> > >  meta/classes/sstate.bbclass        | 49 +++++++++++++++++++++++-------
> > >  scripts/sstate-cache-management.sh | 40 ++++++++++++------------
> > >  2 files changed, 58 insertions(+), 31 deletions(-)
> > >
> > > diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
> > > index 92a73114bb..a73d631679 100644
> > > --- a/meta/classes/sstate.bbclass
> > > +++ b/meta/classes/sstate.bbclass
> > > @@ -1,17 +1,30 @@
> > >  SSTATE_VERSION = "3"
> > >
> > > +SSTATE_USE_ZSTD ?= "0"
> > > +SSTATE_ZSTD_CLEVEL ?= "3"
> > > +SSTATE_ZSTD_NTHREADS ?= "0"
> >
> > Do we really need to make this configurable? Can't we just decide
> > to use zstd and be done with it?
>
> I have to admit I was also wondering that. We started requiring zstd on the host
> system so it may just be better to switch over?

Since zstd is required and a clear winner in compression/decompression
time, I think requiring it and simplifying the sstate code to only use
zstd would be fine.

>
> Cheers,
>
> Richard
>
>
>
>
> 
>
