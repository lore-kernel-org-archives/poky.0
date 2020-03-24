Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.1533.1585036389101008291
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Mar 2020 00:53:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: k.kozlowski.k@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id z65so19690363ede.0
        for <poky@lists.yoctoproject.org>; Tue, 24 Mar 2020 00:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BTzgYu1kSpNlqnH+5tYcxkaI+uMT1W1GDrq32R96koQ=;
        b=a/UhQqjhCAPsEohqz5eN7W6w6v/RehcWEF2CgBg0rgukqn+/OZISXPvUT1xsQt1w3Y
         3s7F2OQqPIMpo/ZxY3N/PfyESp9Z06ysvrg77C7Zl5abnWy4IysQASEZbV9h/ZQ+vFZl
         46fB1c03TlVOViGwydkgICyMxJrbO/EFvMehchB+4SK07LPjZh+zT3/ZsR3hywb2+QvA
         8YDennrQ6NSaBlOJTHEiNK9O/494fZPaKpUNl6TmHs/ouZxVPVsa8BtfLhVt3kvkadUZ
         TLsgfQmcVy8an0icNlzMsN/4hFfTvlLw/W3zjh3S3vuiyHN7SOtJzWzCCvQj++xi4gYk
         pijg==
X-Gm-Message-State: ANhLgQ09fApM4MXPMFWm6r13cSdcqmU9pjOa6ZgSHmLUcWQgWxnk11Wh
	folnnOU/wIcn+peKNcixUfE=
X-Google-Smtp-Source: ADFU+vt/UVJt2dXm6MOBWs7LOeBLnTcPZwP3Wme/FuQj40/j3ANsZDtLHCCFpRHy/kPzilRT6HWAYw==
X-Received: by 2002:a50:a7a6:: with SMTP id i35mr24662531edc.130.1585036387552;
        Tue, 24 Mar 2020 00:53:07 -0700 (PDT)
Return-Path: <k.kozlowski.k@gmail.com>
Received: from kozik-lap ([194.230.155.125])
        by smtp.googlemail.com with ESMTPSA id m21sm1186075edb.90.2020.03.24.00.53.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Mar 2020 00:53:06 -0700 (PDT)
Date: Tue, 24 Mar 2020 08:53:04 +0100
From: "Krzysztof Kozlowski" <krzk@kernel.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [RFC] poky.conf: Drop CentOS 7 from supported distributions
Message-ID: <20200324075304.GA4641@kozik-lap>
References: <20200323153336.15859-1-krzk@kernel.org>
 <3637f558bddea68f993feb159d9810911ef40afb.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <3637f558bddea68f993feb159d9810911ef40afb.camel@linuxfoundation.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Mar 23, 2020 at 03:51:48PM +0000, Richard Purdie wrote:
> On Mon, 2020-03-23 at 16:33 +0100, Krzysztof Kozlowski wrote:
> > Since Yocto v3.0, the extensible SDK cannot be built on CentOS 7 because
> > of old tar:
> > 
> >     $ bitbake xxx-image -c populate_sdk_ext
> >     Your version of tar is older than 1.28 and does not have the support
> >     needed to enable reproducible builds. Please install a newer version of
> >     tar (you could use the projects buildtools-tarball from our last
> >     release).
> > 
> > Drop it then from officially supported distributions.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  meta-poky/conf/distro/poky.conf | 1 -
> >  1 file changed, 1 deletion(-)
> 
> The plan is to suggest people use buildtools-tarball on such systems
> and there are open bugs for this.

Yes, I understand the suggestion but the message is hidden behind
big-red-error with last lines:
    Exception: FileNotFoundError: [Errno 2] No such file or directory: 'build/tmp/work/col_vf50_proceq-poky-linux-gnueabi/console-proceq-image/1.0-r0/sdk-ext/image//opt
    /eagle/3.0.2/conf/local.conf.bak' ->
'build/tmp/work/col_vf50_proceq-poky-linux-gnueabi/console-proceq-image/1.0-r0/sdk-ext/image//opt/eagle/3.0.2/conf/local.conf'

So the user might not even spot the suggestion.  The second point is
that if by default distribution cannot compile one of basic features of
Yocto, then I doubt that it has the same level of support as others.

Best regards,
Krzysztof
