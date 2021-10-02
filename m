Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web08.5852.1633137475523884783
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 18:17:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=M0lvevx3;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id j27so8416051wms.0
        for <poky@lists.yoctoproject.org>; Fri, 01 Oct 2021 18:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AdM1Gu5ugh3i2nxlBl+oevlr1JlQTfFWWQbysnk/N8g=;
        b=M0lvevx3Aaj6qELcmtZuvXRLI1AmdO94PGVFqjI75LG61a4arouE5A2XAXGtLsGfPf
         OIN4hayNmfysQupYWoCXx2257CBIcYQCbi21BMQrs0TIFcur2a5cUj40y9qeWYblbd8E
         1/ifypgsB5Epn4fysCOigWBi+mVCmw7g8ueQyXAYesUt2Ko5+cTqfZPiVGh00EuETvlO
         HHSpAFr/HbJF5AoFwUAX+K9B1jNoVeIiLd4mfc2numpOU4UTH5DwGLxCJGpc06cmoLPn
         PUMI0LR5YP87zMWTvKs0arRlSd6es+yAyseVpZxYJcbESydiL7qrVn0hwDbKVAS7TAdb
         8b2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AdM1Gu5ugh3i2nxlBl+oevlr1JlQTfFWWQbysnk/N8g=;
        b=7ih5JTglXugoQXE3mBbMT/wLY8g0mtc9h9wEFSGjX+ODvr2OYahLVXefwlUKPN0kyM
         X0G11Ve+sIEWDJHRDHn8HNbjAQBcDBi4Pp6h7kHmpQA4gEOWJ5mdOnUtv85lSaKnX0FR
         JzuqqFBP0Uo04JGmLi/RLblhOifYIISMOdnfCtNM/HRL5CkgnyxRgdxjv4349FYM6M3S
         kCibKnKcgdgK+MEP3+/pV3Y0q4HdU6icIMNV6wleLENo4GW3eXd6JXErDTM+TsQgZXPp
         rOtyJOwPh5RNd/1t/I6+OnaDEZH+u3Zsj5Kif8g2pVS+QkDz6bQaWljcndkSQ53kIq0d
         HMrw==
X-Gm-Message-State: AOAM531fRAgFCT4qNEIAGPdop/Jlmj+WydkTqeM074v8CoL0neEUZira
	ctGdYvYFtCX8IvrOWG5VszkTzPEwFQPUIY1qTMc=
X-Google-Smtp-Source: ABdhPJz3F8KI0b66I/u8WZJrxUp+YalB212PUqA+e6y+cg40O0OAIdYJLErnjNOM6aw+xRyuP0XVsGHjf9zqojiLyCQ=
X-Received: by 2002:a7b:c1d6:: with SMTP id a22mr7300465wmj.146.1633137473682;
 Fri, 01 Oct 2021 18:17:53 -0700 (PDT)
MIME-Version: 1.0
References: <20211001173152.3015007-1-hkleynhans@fb.com>
In-Reply-To: <20211001173152.3015007-1-hkleynhans@fb.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Fri, 1 Oct 2021 20:17:42 -0500
Message-ID: <CAJdd5GbXDoX5hvuB_CQuQAc1Uj8vUJ18upjbAsn4nsj--F2kFQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] sstate: Switch to Zstandard compressor
To: hkleynhans@fb.com
Cc: poky@lists.yoctoproject.org, rmikey@fb.com
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 1, 2021 at 12:32 PM Henry Kleynhans via
lists.yoctoproject.org <hkleynhans=fb.com@lists.yoctoproject.org>
wrote:
>
> Patch revision, changes from the last version:
> * Switch to Zstandard rather than adding it as an option.
> * Specify 'zstd' threading and compression as arguments instead of
>   using environment variables
> * Remove debug output
> * Non-posix if statements were removed as a result of replacing 'gzip'
>   with 'zstd'
>
> I am not sure if we need support for 'pzstd'.  If this is a requirement
> I can add it in a subsequent revision.

Thanks, this looks pretty good. I was curious about the performance
difference between pzstd and "zstd -T", so I ran a few numbers;
specifically, I ran these on Ubuntu 18.04 which is our oldest
supported distro that uses the host zstd.

It appears that pzstd is about 20% faster to decompress data than
"zstd -T"; I think this is because zstd never does threaded
decompression (at least on Ubuntu 18.04). Would you mind switching to
using pzstd?

---

root@0df785908a53:/bin# time seq 1000000000 | zstd -10 -T36 | zstd -d
-T36 > /dev/null

real    0m35.503s
user    11m34.695s
sys     0m9.405s
root@0df785908a53:/bin# time seq 1000000000 | zstd -10 -T36 | pzstd -d
-p36 > /dev/null

real    0m27.830s
user    15m18.733s
sys     0m13.895s
root@0df785908a53:/bin# time seq 1000000000 | pzstd -10 -p36 | zstd -d
-T36 > /dev/null

real    0m28.134s
user    14m42.322s
sys     0m12.886s
root@0df785908a53:/bin# time seq 1000000000 | pzstd -10 -p36 | pzstd
-d -p36 > /dev/null

real    0m27.911s
user    15m28.182s
sys     0m17.036s


>
>
> 
>
