Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.10463.1648048201238827052
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 08:10:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=CQhYG07Q;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.41, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f41.google.com with SMTP id a8so3439192ejc.8
        for <poky@lists.yoctoproject.org>; Wed, 23 Mar 2022 08:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bcT1X60FIKfG4d+RyplhQXWSAwzgiHSoARENr+bSkQs=;
        b=CQhYG07QkEuSefy+dLn4Nu+C3GifMWQkFgcXAqBB4ryqQeMt/n9yo2mpN4w5Y8WiOx
         Pzs1TNx44EHo2nBMUUHbeZetYQXXyPWGCRiV/6SWoUFP8tMqCqvnYs/QWdqzLupm2tQA
         vI95JP8t1WFKcgbRChTOVFlz4fKHKRi6PtQ3e6jrYVMz0RFnup9bA6mC8Wbsz1ZKOBYU
         bE8aV5rxXEysgNymEKoXUh4ZjK88Bb7eMcOlTB6PPYs1IjsuUBOLXvVvidD7jSMp8dh7
         KdANhjfycJfEj8weg4gYCMnFQ2UsbvRi7R4k62Sg8eO6995fv4l+tA+cZtCnF5UHsqPC
         vjwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bcT1X60FIKfG4d+RyplhQXWSAwzgiHSoARENr+bSkQs=;
        b=y2uE4RFkJAS7jRjUXIJxPy3nu5EdAXehILA4Uflmsv4Z7+8dV0oPbaaAnM6AaY2tUU
         tyKrhwIYJAN7CbYVIaMRXB5zQMRPpTbpfGp3X68bsi2cEcQFsLRwCbbJR28fQNE36DEa
         AJopgI/Xr/5SspXDnABYQmxS7VmPlrw30ihuHPTIR1fEA+GUgznyPB04+GBXwT9wpCfz
         l1+4jLRmh0T5hX+nDOqis6+BUfHPo/iRpUfIHgKDzuu7GW5w+acqjuGc/5NwsUyhNGDO
         HB2BmetJMWzUzs3jKOPrEZyimvF0EEiimPed+PY4giSM1M0umlSA8g93zzwCMZ4EbRKg
         jlfw==
X-Gm-Message-State: AOAM531TQvMA8Yi7TqTpWO9GXf+cyUO7YsDUzA3AdW5160eaib5iy4mu
	A3G24BpjReW/0XIKrsYqsPZgLufph9QTFoNBIrfEqg==
X-Google-Smtp-Source: ABdhPJyVCQpYZQ56tpDAExqv+wE2eqlhoGEZgQDOFnsCtD/QBxfLgClAsCCwqXzviwW2iHRIz522vx+98vOxlD3M2zw=
X-Received: by 2002:a17:907:1c0a:b0:6da:7ac4:5349 with SMTP id
 nc10-20020a1709071c0a00b006da7ac45349mr457602ejc.596.1648048199342; Wed, 23
 Mar 2022 08:09:59 -0700 (PDT)
MIME-Version: 1.0
References: <MW4PR15MB447343CF64A820024D3AF8D69C189@MW4PR15MB4473.namprd15.prod.outlook.com>
 <96d2ead58457f34b4c2651cc0cbbb015eac0fcd6.camel@linuxfoundation.org>
In-Reply-To: <96d2ead58457f34b4c2651cc0cbbb015eac0fcd6.camel@linuxfoundation.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Wed, 23 Mar 2022 05:09:48 -1000
Message-ID: <CAOSpxdYPvur2-4Nb8cpVOP0Zb6KhD+02+MgAKPPUcKgkjg1V0g@mail.gmail.com>
Subject: Re: [poky] git lfs support
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Jon Richardson <jon.richardson@generac.com>, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 23, 2022 at 1:00 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2022-03-23 at 00:54 +0000, Jon Richardson wrote:
> > Hi,
> >
> > I added lfs=1 to my SRC_URI that uses a git repo. I see code for supporting lfs,
> > but I don't see a git-lfs checkout being called. Does yocto not support lfs?
> > I'll have to had a postfunc to do the git-lfs fetch otherwise the files aren't
> > checkout out properly. What is the purpose of lfs=1 in SRC_URI? It even checks
> > for the existence of git-lfs yet doesn't use it anywhere that I can see.
> >
> > I'm using dunfell (52b59e884110b2d48ad83438eef1fed7a28f01cf).
>
> This could be a bug in dunfell, does:
>
> https://git.yoctoproject.org/poky/commit/?id=45c02843d181b5f1872ad30f4d847c395233a676
>
> help fix the issue?

The above commit is already in dunfell:

https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/fetch2/git.py?h=dunfell&id=977b7268bf4fd425cb86d4a57500350c9b829162

As well as a follow-on patch to fix an issue with the above patch:

https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/fetch2/git.py?h=dunfell&id=34597b96d94cd4d7aae38c394181df7bebec4171

Steve
