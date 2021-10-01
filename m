Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.7870.1633094205018365369
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 06:16:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eJ7L34Ow;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id m22so9991546wrb.0
        for <poky@lists.yoctoproject.org>; Fri, 01 Oct 2021 06:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=bEVTHDPGPSgpblSEDxEgKsRoCuT5fz/4iFXj1bddu7M=;
        b=eJ7L34OwANpvouZDKtouuiLBxiyFNfEbfuq5YFqQuPcI5C0rvbhCR4bXR/ClSO7fYW
         IZ0toAYTzxhRp0AjbZFLtav8seu72QMbRdVCyiWt0sK+Ss26ybVqVlCJ/X23GsCjb8X0
         ob2e5FXiLHG43DERZOa/5SQvbrYdaLjVyfk1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=bEVTHDPGPSgpblSEDxEgKsRoCuT5fz/4iFXj1bddu7M=;
        b=wQm4nUcI8wQKOtb1xGVFE78v3fUhFJw2Z2Xw43Edix4EGz/0NmtLls83Noyn5I9IuO
         0h+eKcFvug1sLaQLPGFcrqjjzw7iJLs2Zy+y9qHpVxnGCS0cZa4iwUpsUzAZ9Eb+EtBg
         JlFKv2W+VdiUi0vUe1LOJ3ZxVa/MfShxDTQsBgGPnxpTDNTHYo+QIXICir0eoGvaeNam
         4DlpaMtzlQSkAcwdm+vwVii7ReJnz3XlNpJ+LO7I/XK5Ap8r0xm4Kz47X6Xp6EG17wdh
         JiI+eXslJQvpcUoxYLaFp43MNdUK4pzCrw0Ky/gUQy/Gh4XE6bsM+BYloSYGqO/pObFT
         G7rQ==
X-Gm-Message-State: AOAM531CrFJGQ2TcTj8mxgyiCKMiqhwFmR/Ao4icXl7Oo51adnOfZ8+e
	YaqUsfkQTgP5BoMANRwpSHuYwA==
X-Google-Smtp-Source: ABdhPJzRGyTPnVdDVsm8jWiOP1jD0hE/9lD7uMj/PkUW1II4ayzkY6apHX45ipthKtqLdP283Zla3w==
X-Received: by 2002:adf:ff8f:: with SMTP id j15mr12510532wrr.115.1633094203511;
        Fri, 01 Oct 2021 06:16:43 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:415a:6029:9a90:9863? ([2001:8b0:aba:5f3c:415a:6029:9a90:9863])
        by smtp.gmail.com with ESMTPSA id r16sm4467264wrw.74.2021.10.01.06.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Oct 2021 06:16:43 -0700 (PDT)
Message-ID: <99fdc768454aa12f73bb863f19e6026dda17f76a.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] sstate: Add ZStandard compressor support
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, "hkleynhans@fb.com"
 <hkleynhans@fb.com>, "poky@lists.yoctoproject.org"
 <poky@lists.yoctoproject.org>
Cc: "rmikey@fb.com" <rmikey@fb.com>
Date: Fri, 01 Oct 2021 14:16:42 +0100
In-Reply-To: <9e6cc87314854416861d13b5d1ec887c@axis.com>
References: <20211001101118.2526538-1-hkleynhans@fb.com>
	 <9e6cc87314854416861d13b5d1ec887c@axis.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-10-01 at 13:13 +0000, Peter Kjellerstedt wrote:
> > -----Original Message-----
> > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf
> > Of Henry Kleynhans via lists.yoctoproject.org
> > Sent: den 1 oktober 2021 12:11
> > To: poky@lists.yoctoproject.org
> > Cc: hkleynhans@fb.com; rmikey@fb.com
> > Subject: [poky] [PATCH] sstate: Add ZStandard compressor support
> > 
> > This patch adds support to optionally use the Zstandard compressor for
> > ssate cache files.
> > 
> > Zstandard compression provides a significant improvement in
> > decompression speed as well as improvement in compression speed and disk
> > usage over the 'tgz' format in use.  Furthermore, its configurable
> > compression level offers a trade-off between time spent compressing
> > sstate cache files and disk space used by those files.  The reduced disk
> > usage also contributes to saving network traffic for those sharing their
> > sstate cache with others.
> > 
> > Zstandard should therefore be a good choice when:
> > * disk space is at a premium
> > * network speed / resources are limited
> > * the CI server can sstate packages can be created at high compression
> > * less CPU on the build server should be used for sstate decompression
> > 
> > Signed-off-by: Henry Kleynhans <hkleynhans@fb.com>
> > ---
> >  meta/classes/sstate.bbclass        | 49 +++++++++++++++++++++++-------
> >  scripts/sstate-cache-management.sh | 40 ++++++++++++------------
> >  2 files changed, 58 insertions(+), 31 deletions(-)
> > 
> > diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
> > index 92a73114bb..a73d631679 100644
> > --- a/meta/classes/sstate.bbclass
> > +++ b/meta/classes/sstate.bbclass
> > @@ -1,17 +1,30 @@
> >  SSTATE_VERSION = "3"
> > 
> > +SSTATE_USE_ZSTD ?= "0"
> > +SSTATE_ZSTD_CLEVEL ?= "3"
> > +SSTATE_ZSTD_NTHREADS ?= "0"
> 
> Do we really need to make this configurable? Can't we just decide 
> to use zstd and be done with it?

I have to admit I was also wondering that. We started requiring zstd on the host
system so it may just be better to switch over?

Cheers,

Richard



