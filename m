Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.527.1597265637204700768
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 13:53:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YlE893zJ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 3so3186796wmi.1
        for <poky@lists.yoctoproject.org>; Wed, 12 Aug 2020 13:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=1EIPWuyzsJfbxE+z1fIX+ln8Xeb4l9/PWh1lMkPEG3o=;
        b=YlE893zJTCC2ieuPfBrDczKhxHvc0oXU013vzG+vr/A4k7QtP6yaO9e8qGUyV0+zip
         NNaByWwckPyix7304etXQ0LCASIXOMQHaQ5aR2oSy2KJxT/YOYBSOLC1hJ2zFMD5pexf
         syzln7ew2nQEWfTpRXCTdavCCAB1K4TK3BUNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=1EIPWuyzsJfbxE+z1fIX+ln8Xeb4l9/PWh1lMkPEG3o=;
        b=dIN/jjIg5z4nyfxqIYUqAZS5jinlD9eglVH8XvTH/hIOg0sgJcJ77kpPQJTNstX9qU
         h1Ju4Z1c11zr4MBnb1ky3IbXiaEey5KkopOEIDMKUu5z/Q5mUYIjRoNAPY9Fksqiwl9o
         FsFHLoOMfXlNC56QdsZpSln3XDOswLZPkqk0/s/Tyf2GIp9xqLAxSbSTB5NPvEt3qREg
         wD9m5GRI2fEUVmNJEJJjSVg6MynJ9DMsd+fXTJmpBPhv648yLqfDw0uHm29n8Nb5MFAP
         VcTWH8t6ANS7ktLeFiJr/3VEP9ECV3nhkd4UtDgkMSE110AKvct4EGnN4/hgCsMehmQi
         EhPQ==
X-Gm-Message-State: AOAM533GNNARgmw2egyXgAyw/Ji35CBuiS/aFaafaqD4Zn7Q7X4pNPiW
	r/oE20tcFFjjU3X2gLf5Ifgeow==
X-Google-Smtp-Source: ABdhPJxLSZWnKlRG8iAMHcw7jTTqBB+MG71Tm8OzcRW+0qeqK7aLiPCqVONw4oRCJmw/9MXYENmT1g==
X-Received: by 2002:a7b:cd97:: with SMTP id y23mr1351270wmj.21.1597265635641;
        Wed, 12 Aug 2020 13:53:55 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 9.a.c.c.d.f.6.e.e.7.9.e.9.0.c.e.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (9.a.c.c.d.f.6.e.e.7.9.e.9.0.c.e.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:ec09:e97e:e6fd:cca9])
        by smtp.gmail.com with ESMTPSA id 31sm6015842wrj.94.2020.08.12.13.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2020 13:53:55 -0700 (PDT)
Message-ID: <56cd2afc638250e5707682a8cf8852c719ea2347.camel@linuxfoundation.org>
Subject: Re: [poky] TCLIBC with newlib
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: jonathan.richardson@broadcom.com, Alejandro Hernandez Samaniego
	 <alhe@linux.microsoft.com>, Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Date: Wed, 12 Aug 2020 21:53:53 +0100
In-Reply-To: <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com>
References: 
	<CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
	 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
	 <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
	 <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com>
	 <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2020-08-12 at 12:03 -0700, Jonathan Richardson via
lists.yoctoproject.org wrote:
> Hi Alejandro,
>  
> Thanks for your feedback. I narrowed it down. It builds when building
> simple code that uses a makefile to compile some MCU code running on
> a cortex-m0. Now we’re compiling zephyr OS for a cortex M0-plus. The
> toolchain is a bit more complicated because of all the x86 native
> build dependencies.
>  
> Ignoring that for now I created a simple helloworld recipe with an
> empty main compiled with autotools (attached). The problems arise
> when autotools pulls in libtool-cross. If you switch to a makefile
> instead of using autotools then libtool-cross doesn’t get pulled in
> and it builds fine. I think the toolchain should be buildable when
> using autotools class and newlib.
>  
> Here is how to reproduce. You can use any machine tuning.
>  
> build/conf/local.conf:
> MACHINE = "cortexm0"
> TCLIBC = "newlib"
>  
> conf/machine/cortexm0.conf:
> DEFAULTTUNE = "armv6t-novfp"
> require conf/machine/include/arm/arch-armv8a.inc
>  
> Apply attached patch then bitbake helloworld.
>  
> Note that with this simple example I don’t have the issue having to
> redefine LIBC_DEPENDENCIES. The zephyr recipe pulled in various
> native python modules that likely caused some issue there. Also there
> are no circular dependencies with this. Thanks.

I'm not sure you actually need/want libtool-cross? Have you tried
setting INHIBIT_AUTOTOOLS_DEPS = "1" ? That would let you set your
dependencies manually and only pull in the bits you really need/want
which might get you further. You may then need to add autoconf-native
and or automake-native to DEPENDS manually for your recipe.

Cheers,

Richard

