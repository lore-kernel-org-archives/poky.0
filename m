Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web12.16054.1598458453530634329
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 09:14:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RA46IWcP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f67.google.com with SMTP id k20so2342076wmi.5
        for <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 09:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=9VXeRxxliHD+7GcXae6tpacRB/eJewdKrnDFchrYeG0=;
        b=RA46IWcP6fr+86Ryv6GVZi3ZOjdyyFtBxjKvBAEqwQ/gkiNdVDHZ7q0u41xmXrZvaq
         fCt92o4o3/DexwrV3RrCOSLsQhaW9WJL/8L9jn6VJ5ksMtJQfNdmT4vS2SKR5+jBSZoC
         287WtllegG/mhivSdJ/fA/HJ7KO5/hTuMd0P4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=9VXeRxxliHD+7GcXae6tpacRB/eJewdKrnDFchrYeG0=;
        b=X35snuEx09nuI6OwUhMi9jMUy0HMOmtv17eDiXWjGk5FfoxfwHScRy7O/cUr5NN+pQ
         tBzeEPJW3ShWrP9brQIgCF3h5/wtqTwEw5mSIaisWV6ycC4ZLF6fyL3jF+luTTixEO+X
         ctE7JakQh21S8hGRWo11eKNciQr2JGM/hG4jfRxB5VOd4VfFnVHRoUr9BNZXbDrBcH7D
         Ygpfbw0YvPQptJiyRhGsnU+xByvd7WM0RSP8yIHZyjso91+dXxe0ghmUeEcI32UQkw1Z
         03/U9YrEtwKMK1HUAD7dBT/2lbo1OZngVbCtzDA2M/htCQQLi8rDHF0Fhf2CLivte2ZM
         tKVw==
X-Gm-Message-State: AOAM531U9Jj8i8OL4rzSKtHK8LIy01yLyBczxy/VgYE7FBt7EVhYPrmx
	ZfBtj29wtjWAi23sl87+f/mKzA==
X-Google-Smtp-Source: ABdhPJxffF/MV5CEmVrtCbuX/LlraJUGdBvs/GGpQG6Az7ZW2fFKKuv+fGhxfd/251PQjiEWW8numg==
X-Received: by 2002:a1c:7c17:: with SMTP id x23mr7678066wmc.30.1598458451862;
        Wed, 26 Aug 2020 09:14:11 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id c8sm7322698wrm.62.2020.08.26.09.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 09:14:11 -0700 (PDT)
Message-ID: <aea26ec4a292d5179170b6020e61d4062b099053.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: do not install packagegroup-core-device-devel into qemu images
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org
Date: Wed, 26 Aug 2020 17:14:10 +0100
In-Reply-To: <CANNYZj94DOMzkj8ND65SDZNAF7ytaSJXE6L_fKkVtU9Dt6mwFQ@mail.gmail.com>
References: <20200826145206.6871-1-alex.kanavin@gmail.com>
	 <3adabcedbdb85a19e12d0bb3f50a99d6030affa2.camel@linuxfoundation.org>
	 <CANNYZj94DOMzkj8ND65SDZNAF7ytaSJXE6L_fKkVtU9Dt6mwFQ@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-08-26 at 17:46 +0200, Alexander Kanavin wrote:
> On Wed, 26 Aug 2020 at 17:24, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
> > A test build is showing this isn't going to be without issues:
> > 
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/57/builds/2343
> > 
> > (the rest is still building)
> 
> The x32 test, and the multilib test both need binutils in core-image-
> sato - probably should be tweaked in config.json, as neither test is
> added to TEST_SUITES by default?

That feels extremely ugly but its one way to address it I guess :/

Cheers,

Richard

