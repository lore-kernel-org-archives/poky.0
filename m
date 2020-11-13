Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web10.5594.1605280716751105790
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Nov 2020 07:18:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Gd7yOMRy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id b6so10308655wrt.4
        for <poky@lists.yoctoproject.org>; Fri, 13 Nov 2020 07:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=QoRGj40HWXkX0zL1aXu0GmUTdZnu4bI4xat36PXZOmw=;
        b=Gd7yOMRyctFE1XWp5qQxYJj7PnVorZAK+pZ94UXnVOWeX6dycY7ML+rLHJXQafw6qd
         mdNsLfoDKKFhqoZ1PrzTQ4mXTImXPSNsOIBpjk4NNw/XOyl7DXwxUx4VKG5iizYlkhBD
         h6JFd9b4duPHHwqqOz06Jah6ySp5Gaxnxre1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=QoRGj40HWXkX0zL1aXu0GmUTdZnu4bI4xat36PXZOmw=;
        b=GgMz4vGU9rdfBMWRpNQOxcF0oY0EcGo8eLuVCR88+nOVJIp/k6F2NYJAz9S+Q2j8aT
         HvBKmUl5EfsD0gDOlbAfp8ibdJSghK/Y7A1JNr/rUwUIGkk96MXchlg+1EauaGCzzkFt
         0QvynCbgyBqX5coqBbcNEGe9mnMGDuoScghxCBV5/FcHwyOXw1AL7TZuDQKyK0qhBhP/
         YSjy968o7APiYvbmOJfGloRoJKW18ufB9qs+Po/E/QJL/EoKn1VDFaP7beVwfcFBQ0IF
         hBjX+oVNIlIVbRPGWUlH5LfMfh4Xr4Q9ZqAB4Meq22hPPTU6+3q+xRjNEkEwVVuDPuuz
         MjjA==
X-Gm-Message-State: AOAM530uHx6wTY1eWASg4YrvlZhpeYCnDWYm7xUthLFYsAoHzMZK+t4M
	vbLMRbT7ALQec+Ssr6eXFIE1JA==
X-Google-Smtp-Source: ABdhPJwcI6j6MnIWN6eofn7dTWsOlErxAXeqlnXHChTqyK+d6pbv+alu/wojy4LirgpuUVSY41GV9g==
X-Received: by 2002:a5d:4448:: with SMTP id x8mr4035175wrr.364.1605280714634;
        Fri, 13 Nov 2020 07:18:34 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from e.3.a.b.8.4.f.3.4.e.5.7.b.c.8.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (e.3.a.b.8.4.f.3.4.e.5.7.b.c.8.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:48cb:75e4:3f48:ba3e])
        by smtp.gmail.com with ESMTPSA id u5sm6426347wro.56.2020.11.13.07.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 07:18:34 -0800 (PST)
Message-ID: <a3cc14ab6bd9a55adf257a6c993d6a082e77591d.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v5] poky-tiny: enable section removal
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, Khem Raj <raj.khem@gmail.com>, 
	poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
Date: Fri, 13 Nov 2020 15:18:33 +0000
In-Reply-To: <bece0e62-298e-f07c-5620-8cfdb45c80f3@kernel.org>
References: <20201113002727.21168-1-okaya@kernel.org>
	 <34be3f90-4b7a-a2f7-9f4e-ce2aaa1088e8@gmail.com>
	 <bece0e62-298e-f07c-5620-8cfdb45c80f3@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-11-13 at 00:13 -0500, Sinan Kaya wrote:
> On 11/12/2020 11:59 PM, Khem Raj wrote:
> > > +# omit section removal on native builds
> > > +CFLAGS_SECTION_REMOVAL_class-native = ""
> > > +LDFLAGS_SECTION_REMOVAL_class-native = ""
> > > +
> > > +# set default for all targets
> > > +CFLAGS_append = " ${CFLAGS_SECTION_REMOVAL}"
> > > +LDFLAGS_append = " ${LDFLAGS_SECTION_REMOVAL}"
> > > +
> > > 
> > I think this should be an independent .inc file in oe-core
> > much like lto.inc, perhaps something like size_opts.inc
> > and here it could just in added via a include/require directive
> > 
> > Could be useful for non-poky distros as well.
> > 
> 
> Sure, I can move there once I get a successful build hint from
> Richard.

Fails in perl this time:

https://autobuilder.yoctoproject.org/typhoon/#/builders/15/builds/2981

Cheers,

Richard

