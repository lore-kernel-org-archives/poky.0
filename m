Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web08.5340.1624528366534261074
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 02:52:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GYFKdjv3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso4536460wmc.1
        for <poky@lists.yoctoproject.org>; Thu, 24 Jun 2021 02:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=ZdTG+MFNaQMYmeOUYz64YOzlKL2l2zQFiKTdo2FKqPA=;
        b=GYFKdjv3YxAChk9ryckvymmTDvgHA7st951p2UDZ2Shb+BMsN1vuuoeIW1p5zMjX/K
         BLBzemDRBafnudKMQ5cawFpIk93qRh3puU8vCvdHipySbuEqBZ7gvAKoNRgaFPCxZ2rU
         GRC2NBRwd8SAr2HBIAPYn5avY2pr/47SpsuWM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=ZdTG+MFNaQMYmeOUYz64YOzlKL2l2zQFiKTdo2FKqPA=;
        b=iBbdMRvMUTzMsklCqVRvUCzewvpk1hlCvIOtMlV3GbTE0YcnbMFyut2PxpD/dzBxwt
         m9NZIspRWVQiQ7gIvAEAA5sAbyJpdVboit9EXa1F6bIl/s2ONeDGHT5nZ84/bKeMinSB
         t7IacAcJhtAx8t2+scKDEJI1EC33tf562+3iZSseb/7t8ogsIc6YKG+ToV1ZEBxnSsBA
         d826se3P6sOt5Gv5ILeb6dYRbdNn/QvEQ5gi+v6TKwm71jzw4gzKkJAFM4gMnInhR590
         TAzmzEF+unij9nueWUHUoQThcAiJzffA34My3razCmkTKqfInT6E1MQKRJDS53oc0AWr
         C89w==
X-Gm-Message-State: AOAM531rfu+Ho6HHFbjQ9i+tZSj438wF7TpeWSQjf2gnowbFU/94dVRX
	hF0IzmAWA0Gdhj5nndXs9FJ1fA==
X-Google-Smtp-Source: ABdhPJyaZRtlORGpCgIrnERIxRJmNmugwSL2rlc1xauq7RzmIINDThKz163nwD9lzSu45YAiTp6HUQ==
X-Received: by 2002:a05:600c:4f4e:: with SMTP id m14mr3320154wmq.151.1624528364951;
        Thu, 24 Jun 2021 02:52:44 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:3438:b737:d8c:ddd4? ([2001:8b0:aba:5f3c:3438:b737:d8c:ddd4])
        by smtp.gmail.com with ESMTPSA id o17sm7032704wmh.19.2021.06.24.02.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 02:52:44 -0700 (PDT)
Message-ID: <f7948e22e865aa4101b80042ac12bc5b10764820.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] bitbake: Fix automatic generation of variable dependencies
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>
Cc: poky <poky@lists.yoctoproject.org>
Date: Thu, 24 Jun 2021 10:52:43 +0100
In-Reply-To: <17a3d3d8b35.e5a076c8208632.8225141840876948326@ertelnet.rybnik.pl>
References: <20210624064025.102654-1-dwrobel@ertelnet.rybnik.pl>
	 <146244a25957547cd9adf7e87025572c1341e6fb.camel@linuxfoundation.org>
	 <17a3d3d8b35.e5a076c8208632.8225141840876948326@ertelnet.rybnik.pl>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-06-24 at 10:58 +0200, Damian Wrobel wrote:
> 
> 
>  ---- On Thu, 24 Jun 2021 09:21:38 +0200 Richard Purdie <richard.purdie@linuxfoundation.org> wrote ----
>  > On Thu, 2021-06-24 at 08:40 +0200, Damian Wrobel wrote:
>  > > Automatically generate variable dependencies also for:
>  > >     - "bb.utils.contains",
>  > >     - "base_contains"
>  > >     - "bb.utils.contains_any",
>  > >     - "bb.utils.filter".
>  > > 
>  > > This is to avoid situation in which some of the variables were
>  > > added automatically but not all of them like in the test example below:
>  > > 
>  > > RDEPENDS_${PN} += "\
>  > >     ${@bb.utils.contains(                                              \
>  > >         'BB_UTILS_CONTAINS_DROPBEAR',  '1',   'dropbear',   '', d)}    \
>  > >     ${@bb.utils.contains_any(                                          \
>  > >         'BB_UTILS_CONTAINS_ANY_EXPAT', ['1'], 'expat',      '', d)}    \
>  > >     ${@oe.utils.conditional(                                           \
>  > >         'OE_UTILS_CONDITIONAL_ZLIB',   '1',   'zlib',       '', d)}    \
>  > >     ${@bb.utils.filter('BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'xyz', d)} \
>  > > 
>  > 
>  > This doesn't look quite right. Contains is given special handling
>  > which you see in the code below with "self.contains[varname].add(node.args[1].s)".
>  > 
>  > This means that the hash can reflect whether the variable contains the
>  > value or not instead of depending on the complete value. This means
>  > the hashes are optimised to a binary decision rather than varying 
>  > arbitrary values.
>  > 
>  > Can you describe more about the issue you're seeing?
>  > 
> 
> When I added above RDEPENDS_${PN} example to e.g. dash recipe and built it then I would
> expect that all of those variables should be visible in the output of:
> 
> $ bitbake-dumpsig -t dash do_package | grep 'RDEPENDS_dash is'

You'll see it actually says:

Variable RDEPENDS_dash value is       ${@bb.utils.contains(
                                                       'BB_UTILS_CONTAINS_DROPBEAR',  '1',   'dropbear',   '', d)}
         ${@bb.utils.contains_any(
                                                   'BB_UTILS_CONTAINS_ANY_EXPAT', ['1'], 'expat',      '', d)}
         ${@oe.utils.conditional(
                                                    'OE_UTILS_CONDITIONAL_ZLIB',   '1',   'zlib',       '', d)}
         ${@bb.utils.filter('BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'xyz', d)}
BB_UTILS_CONTAINS_DROPBEAR{1} = Unset
BB_UTILS_FILTER_WAYLAND_PROTOCOLS{xyz} = Unset

so the lines after the variable show that it is looking at whether those variables 
contain those values. In my case they don't and are unset.

> That wasn't the case before this change. Now if I run it I have:
> 
> $ bitbake-dumpsig -t dash do_package | grep 'RDEPENDS_dash is' 
> List of dependencies for variable RDEPENDS_dash is {'BB_UTILS_CONTAINS_DROPBEAR', 'BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'OE_UTILS_CONDITIONAL_ZLIB', 'BB_UTILS_CONTAINS_ANY_EXPAT'}
> 
> The observation is that if they're not added as a dependency then changing them 
> didn't trigger dash rebuilt all the time.

They'd only trigger a rebuild if the value of interest was added or removed.

> In practice this generates difficult to debug situations as build which used 
> sstate-cache behaves completely differently then the one made from scratch.

It shouldn't, at least not due to this particular change. There may be some other
issue such as the contains_any() or filter() usage.

Cheers,

Richard

