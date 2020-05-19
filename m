Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.46.1589922332332924371
 for <poky@lists.yoctoproject.org>;
 Tue, 19 May 2020 14:05:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cdDgrehY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id m12so647032wmc.0
        for <poky@lists.yoctoproject.org>; Tue, 19 May 2020 14:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=v5JJ53mYeIRzDVVi53QR8zXJlZUzBvKlHiKb7RfZ+Is=;
        b=cdDgrehYVTAZjJ1dBELxC6KCLCfl/kgf0gdNq5dznI8t1m518BIdWxXwLLDufmk5hq
         t1KZ6DySxTU5h1+rjf764Q40YmOIynPwQai2hTkRWuPp85AB102J4QTcMMFH3nBjneeu
         kl4OIbQ7SVjx0fDWWrZP8uYKMZDl6adby+CnQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=v5JJ53mYeIRzDVVi53QR8zXJlZUzBvKlHiKb7RfZ+Is=;
        b=BE2P8MMzTse6COVm3az8ib+L1wFbjAUh9VE7ZOwq1E/BPmIXIeaeqY8C45FZuqfN6f
         cLOZRayXk3/nEX7JipbOLVID+QE2vBvySpfhXFwAnYiAJjb7ptkXxtoWhtkOiCSd+E8z
         Z/BjaMmP0F0akL/RfRuFzihv/sHIIKmeY5sbp+wu2CsTk6Z8W4YMt9aLEis/s1oDMm/I
         zDJUU39ZD5oWHaLj0g4ODtERwXaVwPDRszEAGkOSDhQQpcXZgOzyamN4YqXrZEFDM6v/
         Ae/LPq9HVWR7ef2nzlYhiF4LcqVG+EnOze9hixpctSkRg7txrxVkv11FN7yGkh9XS+rT
         0DpQ==
X-Gm-Message-State: AOAM533ilSXS4XJfsmLOpo3MRjgROXz4+SIvzLvDt8/GS7LJSEiqIZ9+
	nHghiB0M5PRE12x3Mfh8vL8eJg==
X-Google-Smtp-Source: ABdhPJwHejCVzYkc9fpj7aFgoPWpwJquOAgRKfblfON1zALtl6WUr0yBDbspCbMebSR3hZMHFXcDoA==
X-Received: by 2002:a05:600c:2102:: with SMTP id u2mr1229968wml.19.1589922330802;
        Tue, 19 May 2020 14:05:30 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id n17sm638875wrr.42.2020.05.19.14.05.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 14:05:29 -0700 (PDT)
Message-ID: <38fe9dc192f312a12b73323581383c9ed5842f06.camel@linuxfoundation.org>
Subject: Re: [poky] Problem building meta-mono gtk-sharp with dunfell release
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, 
	poky@lists.yoctoproject.org
Date: Tue, 19 May 2020 22:05:28 +0100
In-Reply-To: <Tkjn.1589910615239216242.Ajap@lists.yoctoproject.org>
References: <Tkjn.1589910615239216242.Ajap@lists.yoctoproject.org>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-05-19 at 10:50 -0700, Alex J Lennon wrote:
> Hi,
> 
> I've run into a problem with my CI building meta-mono gtk-sharp
> recipe with dunfell and I wonder if anybody can advise?
> 
> > File: '/data_drive/git/monotest/poky/meta/lib/oe/sstatesig.py',
> > lineno: 548, function: process
> >      0544:                    add_perm(stat.S_IXOTH, 'x')
> >      0545:
> >      0546:                if include_owners:
> >      0547:                    try:
> >  *** 0548:                        update_hash(" %10s" %
> > pwd.getpwuid(s.st_uid).pw_name)
> >      0549:                        update_hash(" %10s" %
> > grp.getgrgid(s.st_gid).gr_name)
> >      0550:                    except KeyError:
> >      0551:                        bb.warn("KeyError in %s" % path)
> >      0552:                        raise
> > Exception: KeyError: 'getpwuid(): uid not found: 1000'
> >  
>  Full log is here

It means the ownership of files in the output of that recipe is
questionable. Adding some "chown root.root ${D}/XXX" would probably fix
it.

Cheers,

Richard

