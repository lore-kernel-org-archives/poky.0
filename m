Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web09.11114.1633184045702649944
 for <poky@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 07:14:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OLDzUwHo;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id a131-20020a1c7f89000000b0030d4c90fa87so3620307wmd.2
        for <poky@lists.yoctoproject.org>; Sat, 02 Oct 2021 07:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=F3jtD/u8AViucqV6Q2Sgnlt2dHPIO8r8hh7ArtoLE0s=;
        b=OLDzUwHo2s732oSdm3dp/Ok/AiENzNHhaILY5+NfatPQM7ZiFc44DeLkEGzVJHAt94
         8xZjRNthfomuEp7jN7vtMu0ay3+mXcotXfFLWk9ALeOmuIAnefiXTrHYL2pCMC1TrZ1D
         rbqdub24U7xXOu9/IBG6OTj6Cc5PXDXZu3/VY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=F3jtD/u8AViucqV6Q2Sgnlt2dHPIO8r8hh7ArtoLE0s=;
        b=4WdJKtHKpSZ2PSyo7HIPVa8F8sYJ8NbYgWTnjLR5U05hWotQpAn4+yIU0/Mc4cV048
         T9KuGKPO2ZKQo3ZD/9oy94g7bB5LWlWOjGH1X+tOyKc5A5LlsEBuGIC/Jj/SietKZ6AK
         P3iQezod0qPVFNIHbUOkxnIgTLeXSSxYTatKd8vXP7kCbn1hljt++UguujbsD2fMLhPz
         DNrSGjsIDkW6CqxkGqItXuFFBSLIxLGWqVT+flkGaBTj2LQv5b4XRdEb9ZTaj+D6EY3o
         w10ZT3729+RHBltdde3eUBHPkuNSOQes4o3nINXlTmfLICZopJKtvbfOYG1x7Jm3nDLc
         +EQg==
X-Gm-Message-State: AOAM5302qVS6TvAjiR/+LJtTrvLNTwx0gcl5zHh84iKbn6oXkt5I/yaZ
	WnJh8Jsv52T+nwNBbRX0p7qMoA==
X-Google-Smtp-Source: ABdhPJy/1VhBkWXbKIeS2Rlkrznr3E3j6HcPi3FANQ+GgFgr56NeRgspwY5aW7xJbKNYvzlZLoZbjA==
X-Received: by 2002:a7b:cd8f:: with SMTP id y15mr1287661wmj.135.1633184043924;
        Sat, 02 Oct 2021 07:14:03 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:bdad:e899:5209:16be? ([2001:8b0:aba:5f3c:bdad:e899:5209:16be])
        by smtp.gmail.com with ESMTPSA id l25sm8642970wmi.29.2021.10.02.07.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Oct 2021 07:14:03 -0700 (PDT)
Message-ID: <13946fc9383a0a6d08ede021466a107dc1125f81.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 1/1] sstate: Switch to Zstandard compressor
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Joshua Watt <JPEWhacker@gmail.com>, hkleynhans@fb.com
Cc: poky@lists.yoctoproject.org, rmikey@fb.com
Date: Sat, 02 Oct 2021 15:13:59 +0100
In-Reply-To: <CAJdd5GbXDoX5hvuB_CQuQAc1Uj8vUJ18upjbAsn4nsj--F2kFQ@mail.gmail.com>
References: <20211001173152.3015007-1-hkleynhans@fb.com>
	 <CAJdd5GbXDoX5hvuB_CQuQAc1Uj8vUJ18upjbAsn4nsj--F2kFQ@mail.gmail.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2021-10-01 at 20:17 -0500, Joshua Watt wrote:
> On Fri, Oct 1, 2021 at 12:32 PM Henry Kleynhans via
> lists.yoctoproject.org <hkleynhans=fb.com@lists.yoctoproject.org>
> wrote:
> > 
> > Patch revision, changes from the last version:
> > * Switch to Zstandard rather than adding it as an option.
> > * Specify 'zstd' threading and compression as arguments instead of
> >   using environment variables
> > * Remove debug output
> > * Non-posix if statements were removed as a result of replacing 'gzip'
> >   with 'zstd'
> > 
> > I am not sure if we need support for 'pzstd'.  If this is a requirement
> > I can add it in a subsequent revision.
> 
> Thanks, this looks pretty good. I was curious about the performance
> difference between pzstd and "zstd -T", so I ran a few numbers;
> specifically, I ran these on Ubuntu 18.04 which is our oldest
> supported distro that uses the host zstd.
> 
> It appears that pzstd is about 20% faster to decompress data than
> "zstd -T"; I think this is because zstd never does threaded
> decompression (at least on Ubuntu 18.04). Would you mind switching to
> using pzstd?
> 
> ---
> 
> root@0df785908a53:/bin# time seq 1000000000 | zstd -10 -T36 | zstd -d
> -T36 > /dev/null
> 
> real    0m35.503s
> user    11m34.695s
> sys     0m9.405s
> root@0df785908a53:/bin# time seq 1000000000 | zstd -10 -T36 | pzstd -d
> -p36 > /dev/null
> 
> real    0m27.830s
> user    15m18.733s
> sys     0m13.895s
> root@0df785908a53:/bin# time seq 1000000000 | pzstd -10 -p36 | zstd -d
> -T36 > /dev/null
> 
> real    0m28.134s
> user    14m42.322s
> sys     0m12.886s
> root@0df785908a53:/bin# time seq 1000000000 | pzstd -10 -p36 | pzstd
> -d -p36 > /dev/null
> 
> real    0m27.911s
> user    15m28.182s
> sys     0m17.036s
> 

I agree, I think we should try and use pzstd where it is available. This code
can be similar to the pigz code we have right now which was written for a
similar fallback reason.

As Peter mentions, the patch needs to go to the openembedded-core mailing list
too.

Cheers,

Richard

