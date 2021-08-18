Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.53222.1629286119989913681
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 04:28:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WyuF6cbk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id h13so3014867wrp.1
        for <poky@lists.yoctoproject.org>; Wed, 18 Aug 2021 04:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=D5wJp9DMpatimY3wdASPC1lUFOCNQFGPYwUKKkl3W3c=;
        b=WyuF6cbkeJW61/1yuak3YDkiAym/ojlOaGXuIYHUa2BNkWniwVHyr1vs6cNBexc/Qf
         qZ2HaBoqR3CALYc2Z6bZkvSov9HJvzuL5erdonUAWMThNinIVaDegwI2MvK+Vuy+8R8r
         MlkcMSUWsY543oVp2d6/If3J5vNJXEBdv5A8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=D5wJp9DMpatimY3wdASPC1lUFOCNQFGPYwUKKkl3W3c=;
        b=BNGjlKObxZdORsFSoWvSsa4zCwWG4qmZpHu1DqtwnY60Gu/APgj8T/vMpmCOWmlEfo
         CPF9A1ufIe5Q/cCmnoThOm59UXfWAq0gaaSxpNsP3+joMk/H0Yh7Sb3wADgu8kSRKoyh
         BPMhe9+ncJwN6n5wxsKi4NqQOq7vv+6BRpWjnMzw0Hd9BZr4iPZvlZISfCqLUYGsnd21
         aQcySzj4qE2KKlJS/nkWLnetOMgA9WrVTUZLNjPYZWtoUAobNghJOM5qwhKfGL+VuxDn
         q6nVPxPLg3fJVTRyiErcTtK38/XufL/CWchdUdXEbldzceiWRqkNwCxm14spS4pyWHpE
         voxg==
X-Gm-Message-State: AOAM532fX/2Eu4LHGapO1vXT84mLH1WliNRnBvEkx6Xe4q7OVedEnkgA
	9rOtDWUMV6l8Gvr1Ft6znd49xw==
X-Google-Smtp-Source: ABdhPJwgyVZ5sfe2330qcyPFPFFDg/B2dPoIXQbLwbmFtMQ+3K16QV+a+GoaN8cyhqPP967izljhuQ==
X-Received: by 2002:adf:f741:: with SMTP id z1mr9889722wrp.201.1629286118484;
        Wed, 18 Aug 2021 04:28:38 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:2c5b:67f4:375e:5ae2? ([2001:8b0:aba:5f3c:2c5b:67f4:375e:5ae2])
        by smtp.gmail.com with ESMTPSA id r1sm5692830wrt.24.2021.08.18.04.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 04:28:38 -0700 (PDT)
Message-ID: <3d7d1c721499eff07bfabd2219bc81b56d5a7466.camel@linuxfoundation.org>
Subject: Re: [poky] multilib32: libtool-cross_2.4.6.bb configure failure
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Geller, Nir" <nir.geller@servotronix.com>,
 "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Date: Wed, 18 Aug 2021 12:28:34 +0100
In-Reply-To: <VI1PR0702MB369599699CD389BD2EA8359E90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
References: <169BCA55EF9029C7.23238@lists.yoctoproject.org>
	 <VI1PR0702MB3695095B3B3F5644E1CED65C90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
	 <3c57bb766749d9db7f179edb313574209ada5681.camel@linuxfoundation.org>
	 <VI1PR0702MB369599699CD389BD2EA8359E90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-08-18 at 07:21 +0000, Geller, Nir wrote:
> Hi Richard,
> 
> Thanks for your reply.
> 
> For a iMX8, cortex A53, yocto project I am successfully using multilib with the following configuration added to conf/local.conf:
> 
> # Define multilib target
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "armv7athf-neon"
> 
> Now I'm setting up a project for AM6442, again, a cortex A53, and I'm using the same multilib configuration, and getting this error.
> 
> Is it wrong?

Looking at the code, I think there is a bug where TARGET_VENDOR = "" 
doesn't work with multilib.

Try adding:

TARGET_VENDOR = "-oe"

Cheers,

Richard

