Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web10.274.1609783993396995848
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 10:13:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l62m2uCJ;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id a6so19120167qtw.6
        for <poky@lists.yoctoproject.org>; Mon, 04 Jan 2021 10:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:message-id:from:to:cc:subject:in-reply-to:references
         :mime-version:content-disposition:content-transfer-encoding;
        bh=Qolp/URrC3jKqW5X/LBgY84IzayLIDyBVl1VmNIrQiE=;
        b=l62m2uCJebSJBCiV0rrSksEbT1VeNNmjDN6MspXvKmWpLp+9oeqPjN1NJvYIG6tiXb
         vwEvo01gRNrjrSfkg+ukrjycpv/awpP63T3c8MGGreGTub6wuqtGtEAgePWW+tW6kYZN
         o/diS63sbpxDlHQ/hq/yV7O45sgntsBhDJ2sT0Flftl1K2R2GN44gRILXdVmGSgxF5wY
         u0HUBQjoVh0/XvnILvm93wxZvvA7BGZ8pZpniNBbxO3WOLKvX5cjMbc0ZCXFQP2bz4fu
         78NxuKlqsC94zRIoDL/nneq3E36LavYscTUKYdkVbfPDEIr+0aEfk+RVqJbbWjFBVHO3
         +PuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
         :references:mime-version:content-disposition
         :content-transfer-encoding;
        bh=Qolp/URrC3jKqW5X/LBgY84IzayLIDyBVl1VmNIrQiE=;
        b=Yv922hUJqRL8rbyzhxQ2D5yYOHei9y8/I3ToSxdz0vj/dTPNmBKAETGQj4wSPi4Nvw
         rF8/N43RUp2FMzw1MUKsTdn2a4fi5Wx+Jui5QI5lUrQxTPb4FJn5faucCvVtA+kuFjlI
         J3doThbHpx9t3V7G89utMJj8aAWNVIVouhMjlfjSddpU3IiotzUJ4PCPwN7zeeOGa4tr
         J0r/xbV5QxI2w1CfekaOHf3U3zKubfMGvgHBo8vzNVQ38QuByib6NwN6WsKwpXOGTq4E
         BzKOZExZcCzwuTKH0ebSX8j6H+J1cZYRBAreWWUI/UHTtze32A29iaj6BGzTc3FQIZA8
         +6Ww==
X-Gm-Message-State: AOAM5326xS1EnLU77xZTVbzihj3Z2Ku0YfQgt2wTPU78iZIsRZdMJmqj
	kjpPwmwuDHXC9w3HKZkE2go=
X-Google-Smtp-Source: ABdhPJxt+Rg9gTHwRxHeWNaN6NL2MsycN+InLbi4t6afX3Dj4+raWiLbvvw80CF4aw/MhIPyshqIkA==
X-Received: by 2002:ac8:4e4f:: with SMTP id e15mr73118068qtw.110.1609783992534;
        Mon, 04 Jan 2021 10:13:12 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id d84sm29950092qke.47.2021.01.04.10.13.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 10:13:11 -0800 (PST)
Date: Mon, 4 Jan 2021 13:13:11 -0500
Message-ID: <20210104131311.GC1075440@t480s.localdomain>
From: "Vivien Didelot" <vivien.didelot@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Vivien Didelot <vdidelot@pbsc.com>
Subject: Re: [poky] [PATCH 4/5] wic: fix 'founded' typo
In-Reply-To: <c1f0211ce522552065b53581c76f990e53c5f532.camel@linuxfoundation.org>
References: <20210104173741.1070515-4-vdidelot@pbsc.com>
 <c1f0211ce522552065b53581c76f990e53c5f532.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, 04 Jan 2021 18:02:07 +0000 Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> On Mon, 2021-01-04 at 12:37 -0500, Vivien Didelot wrote:
> > Replace 'founded' with 'found'.
> > 
> > Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
> > ---
> >  scripts/lib/wic/plugins/source/bootimg-partition.py | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/scripts/lib/wic/plugins/source/bootimg-partition.py
> > b/scripts/lib/wic/plugins/source/bootimg-partition.py
> > index 138986a71e..5dbe2558d2 100644
> > --- a/scripts/lib/wic/plugins/source/bootimg-partition.py
> > +++ b/scripts/lib/wic/plugins/source/bootimg-partition.py
> > @@ -141,7 +141,7 @@ class BootimgPartitionPlugin(SourcePlugin):
> >                      break
> >  
> >              if not kernel_name:
> > -                raise WicError('No kernel file founded')
> > +                raise WicError('No kernel file found')
> >  
> >              # Compose the extlinux.conf
> >              extlinux_conf = "default Yocto\n"
> > 
> 
> Thanks, I've queued the other patches in this series. This one is
> against the oe-core repository and needs to go to the openembedded-core
> list. It was also fixed back in August so I'm guessing this was against
> an older branch?:
> 
> http://git.yoctoproject.org/cgit.cgi/poky/commit/scripts/lib/wic/plugins/source/bootimg-partition.py?id=f39694933ace695e2dfe917c5ac74349a2e00409

I'm not sure, these patches are based on latest dunfell:

d45ec07e5e87 ("sphinx: update link to bitbake docs")

where scripts/lib/wic/plugins/source/bootimg-partition.py contains
the typo.


Thanks,

	Vivien
