Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web09.4798.1579257556732043668
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Jan 2020 02:39:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IyQUZbUq;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id q9so6907608wmj.5
        for <poky@lists.yoctoproject.org>; Fri, 17 Jan 2020 02:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=THkVmJAMgMv1FmC9CduXmgcGqA3iTApEs02tmuU3VFI=;
        b=IyQUZbUqPSfIV0O25ONgzRwjHBWlZWOqVAcVMawCOBGb6a31T118AHqoZHOZePY1NP
         Xb6uQ9SLNBCR9mmMYwmeewwhozY/X8kIjvnnTSqOK09kSeX69d9/aba7iR6oGh9BeDLI
         zvRDFx31uwcxbONdwF4EjYaQ5/pVKEDvsA+BM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=THkVmJAMgMv1FmC9CduXmgcGqA3iTApEs02tmuU3VFI=;
        b=JK7jDIkh5qpHIsUkHFQb6CZVBgZX4fUod0T1MyJcpNy3Pe+Fjzo+a9byYnNdQSGtM4
         +rLTz3ylSyinv4MbBCnG8cuJkBpu4EFPr2ebdSbsHwKBmQf+m7tG1N+NA0U7vWcD/EL8
         zyuE84PrM5fOZpVpUqwKrbA4GlT+z0+PMZ32/rCrnyvPDFxM+dXGASzpqVhf2y8xCQOf
         iY4zoSfNGTQY9diWnuEJ2NmCmRP0mqpmEQ1ZGLGkcGAdcZHaQgntKA0+GwyAMK8NioHy
         peV6h1B+EK1R6zYWJ+9SGg/szAbFGhjNUYtY9KRSkkje5m+NqdO7JZ1i7az1q5rjZbTn
         Q/yw==
X-Gm-Message-State: APjAAAWXGUKdzARnQ2u5u0dNZew2MqiE6HDCPQQhoNxmmyr8gcsNENqu
	4G94zE7s5iGikC3rXc0EtW4peg==
X-Google-Smtp-Source: APXvYqwfRIkBVx7TMDkc4zsZR1Hrkv0ifJ47xs98ro5Lslfyes7E7LXby8cH17pQfMfY9E0LB7tihQ==
X-Received: by 2002:a7b:cbc8:: with SMTP id n8mr3870855wmi.35.1579257555138;
        Fri, 17 Jan 2020 02:39:15 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id f1sm8846941wmc.45.2020.01.17.02.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 02:39:14 -0800 (PST)
Message-ID: <bf7d3662107cd71986505e69ad8caaf8c891117f.camel@linuxfoundation.org>
Subject: Re: [poky] Selecting libraries for the SDK
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: macphyter@gmail.com, poky@lists.yoctoproject.org
Date: Fri, 17 Jan 2020 10:39:13 +0000
In-Reply-To: <3UNh.1579249647788730408.uBJb@lists.yoctoproject.org>
References: <3UNh.1579249647788730408.uBJb@lists.yoctoproject.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-01-17 at 00:27 -0800, macphyter@gmail.com wrote:
> I've recently been thrust into an intense project with an insane
> deadline (shocking, I know) and I've had to quickly get up to speed
> building images with Yocto.  I've managed to overcome most issues
> with lots of trial and error... and googling, and now I'm reasonably
> confident in my abilities, but there's one thing I've been unable to
> figure out.
> 
> I have one or two developers that need to build outside of the yocto
> image build, so it makes sense to create an SDK for them to use. 
> When I create the SDK, it appears to be missing many libraries that
> exist in my full image build.  These are mostly dev libraries that
> are needed to compile apps for the system.  Even common libraries
> like glib-2.0 are missing. I've struggled to figure out how the Yocto
> build selects these when populating the SKD, and I can't seem to
> figure it out.
> 
> Incidentally, the platform I'm building for is very similar to the
> Qualcomm RB3 robotics dev kit from Thundercomm, and I have a copy of
> their SDK which contains most of the libraries I need.  I can use
> their SDK to build much of what I need, but there are a few libraries
> missing from theirs as well.  I suspect the Qualcomm image build
> process is a little more complicated than most other platforms, which
> would explain why I can't seem to find the help I need on Google.
> 
> The bottom line, I just need someone to point me in the right
> direction regarding the SDK population, and how I can select
> libraries from my existing build to be included in the SDK.  Thanks.

The libraries in the SDK should match those in the corresponding image.
If that isn't the case I worry about what changes you've added on top
of the base system as the base system does behave like that.

I assume you're doing "bitbake <image> -c populate_sdk" ?

You probably could force things into the SDK but I'd personally want to
understand why its not working as intended.

Cheers,

Richard


