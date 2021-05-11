Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.10601.1620729078311559828
 for <poky@lists.yoctoproject.org>;
 Tue, 11 May 2021 03:31:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KpYWUsjo;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id p14-20020a05600c358eb029015c01f207d7so941945wmq.5
        for <poky@lists.yoctoproject.org>; Tue, 11 May 2021 03:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Z1n1Isw6Q19VzJv6sVtsoGhGaC74I6NADa/18EnYV5Y=;
        b=KpYWUsjoQWqqpu5eKFTlQqE8YXWpepLPlyC1P8sLIHNm/A2dcD8N4R1Z16+mKODMoU
         0KifuqZzkvOHstRSk4KqPW1mkynHbRQR/eiknJt0NOzTycvu+YE+3QM7vm7G72KhsBGG
         a44h9vmlcFFCBDPhpMcbqr0t7yko8qL129LsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Z1n1Isw6Q19VzJv6sVtsoGhGaC74I6NADa/18EnYV5Y=;
        b=o0CCCkazZLVcf9N6OcztP40cI7mo4x1nQgLpzWYHOcDhHVzhMyFh1SOAOGPysHHKRe
         cBVVeM5EYDWYZ1aM+vZezhtU79yhSFWemkawnrGL0G9hV7OQtnqonBCTTX80V2+9NmFp
         5Nmne/D4NYffv575p28fUnsSF/7Tw53MP/Iud05zANJG9nATtCwUHlm1SQYwq9Bq0/yb
         1/UFFhmq2FVWQMrh046FQxJQomagPfVRSzuTkn8ehBJkaDAkxIDNVEbB7URWuwMSyL/S
         1/XCU6gLUZvhN92jv8q7dGK+2F2EuBw62pqy26QMQtHavMhv8BkDm3SIjCKJL65MYt31
         Dtow==
X-Gm-Message-State: AOAM531x2t0co2MM+MrlHljzmJ5aRC3W6igCLW4slxbrs034/gniQAJN
	AVH01GiLwuR0DEscdA9zHAAoeA==
X-Google-Smtp-Source: ABdhPJz7P9jXf6YZxNMky3Bnq4jnaZ4WFK5Fo8VzP6ZrF3kfgV6dTqZqBzow/oXMiLeszhwcJtGOPg==
X-Received: by 2002:a05:600c:430a:: with SMTP id p10mr4634602wme.29.1620729076728;
        Tue, 11 May 2021 03:31:16 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:29c0:3873:464b:b647? ([2001:8b0:aba:5f3c:29c0:3873:464b:b647])
        by smtp.gmail.com with ESMTPSA id s10sm26142452wru.55.2021.05.11.03.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 03:31:16 -0700 (PDT)
Message-ID: <7e749b3463997a3777ad452c1cecbaeb0c847b08.camel@linuxfoundation.org>
Subject: Re: [poky] win create failing at mcopy #poky #raspberrypi
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mike Jones <proclivis@gmail.com>
Cc: poky@lists.yoctoproject.org
Date: Tue, 11 May 2021 11:31:13 +0100
In-Reply-To: <167DFBEC8E48E145.20137@lists.yoctoproject.org>
References: <Swdb.1620063420405659881.gFTl@lists.yoctoproject.org>
	 <B91BF6BE-6B17-4435-A258-8737508AC69F@gmail.com>
	 <167DFBEC8E48E145.20137@lists.yoctoproject.org>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-05-11 at 11:20 +0100, Richard Purdie via lists.yoctoproject.org wrote:
> On Mon, 2021-05-10 at 18:54 -0600, Mike Jones wrote:
> > I have a little more info on this and a more specific question.
> > 
> > I copied the mtools code and hooked it into the layer so I could put in debug statements.
> > 
> > The problem occurs in charsetConv.c in the function cp_open, when it tries to do an iconv_open using
> > “CP850”, which fails.
> > 
> > I ran “iconv —list” to see what it can convert, and CP850 is not listed.
> > 
> > To prove this is the problem, I hardcoded the iconv_open with “ASCII” and bit bake can go all the way
> > through and “wic create” works properly.
> > 
> > So I ran iconv —version and saw it was “GNU libc 2.31” so I poked around those layers.
> > 
> > Best I can guess is this line from the mtools layer should tell the libc to provide CP850 via this line:
> > 
> > RDEPENDS_${PN}_libc-glibc = "glibc-gconv-ibm850”
> > 
> > Except that that is for runtime, and this is build time.
> > 
> > So I am not sure how glibc decides what converters are used. Is it just a set of defaults? Is there a layer
> > somewhere defining them I could not find?
> > 
> > It seems that somewhere along the way, mtools changed its default to use 850, and it is not compatible
> > anymore.
> > 
> > The solution is probably to tell glibc to provide CP850.
> > 
> > Does anyone know how to do that?
> 
> Which version of Yocto Project are you using? Are you using buildtools-tarball 
> or uninative in your build?
> 
> I suspect you need a newer buildtools-tarball version which includes CP850.

In particular, the CP850 requirement was removed recently:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=aaef86ad03d0d7904e42056c5a3e93a960e04ede

I remembered a dependency being added:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=268ea5544d204ca35d7709104382bad16705434b

but that was a while ago in 2012 so it seems unlikely you'd be missing the dependency.

The dependency was added to uninative in 2015:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=d8d4ce720e5c5823d00c2000d182e0f409240138

Cheers,

Richard

