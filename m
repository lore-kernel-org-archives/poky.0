Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.29064.1636275221515371369
 for <poky@lists.yoctoproject.org>;
 Sun, 07 Nov 2021 01:53:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cQNUEiLf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id r8so21181223wra.7
        for <poky@lists.yoctoproject.org>; Sun, 07 Nov 2021 01:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Rf45L9GujbFqzd3QFTBEHY1IdjDY8uPo79NXUa4O9CM=;
        b=cQNUEiLfVMfLmLMzRpALwS1tTMUQBgsWLR+r8oWoPLlGCmQ+6Ojf+Bm5HzMWw1FWLp
         2nPdCXH8s06i7h8fvnneQWKlG/Foy+4IO7IAoVRVys2WL2WNy/G8bYiMqD4Npbdfm2iB
         uKsZiPGVBvwJiJCsJu+UxPTYwWwpszF5Bg4H4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Rf45L9GujbFqzd3QFTBEHY1IdjDY8uPo79NXUa4O9CM=;
        b=1HVatYn7Q21xDqugIkpquUfGtghrMnUGp/Drmn1+1i/PjhKD2k7k5/3y3NSuhjfFYI
         LEILsGmOWTg0vUSKGOZcpWiaHEYCL9ZYDBGdUX7LlLS2iY9FNb6iZaX/f8n/7kOVSNPc
         JRXwzRvy8G8CfYAqLeXvFHJe+bWVYt9EfhhjPvuuAqrHyHYZ2uasiIrfnr86630fQ6nl
         pppS9+IZFZbqHinIyvGUKpZ+yrYYqmIXraey8KR3h0ziEOw/PrGVRYiDRFeatk20Wnu8
         ykuWa7c82K1QoJLxd49/qL1PdAhLrDUbMyLhUmlbOrIbtXZndHrN26k6gb/iJ6Zn/BPf
         vKUw==
X-Gm-Message-State: AOAM533JgtjTqGlKDNO33wYsqpJjF+lVbWeJ7GtbTzBTFMgnHm5oJj/A
	8oUigOvXcx9L2JrCbLGzs6Dyrg==
X-Google-Smtp-Source: ABdhPJwEq1grzUo1z1uc6C0xOFZlt8Bx0jUCIF4VS812jLHG6eAIksqJhXcM6pWg77Qp+PoRYTKvQQ==
X-Received: by 2002:a5d:58ed:: with SMTP id f13mr78941713wrd.373.1636275219937;
        Sun, 07 Nov 2021 01:53:39 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:fdfa:2bc:4272:d318? ([2001:8b0:aba:5f3c:fdfa:2bc:4272:d318])
        by smtp.gmail.com with ESMTPSA id b14sm9447704wrd.24.2021.11.07.01.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 01:53:39 -0700 (PDT)
Message-ID: <fdc1d88de1d4e08a893ea8efbe25b00f9aadd44d.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] meson: make https:// wrap source downloads work
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Leif Middelschulte <leif.middelschulte@gmail.com>
Cc: poky@lists.yoctoproject.org, Leif Middelschulte
	 <Leif.Middelschulte@klsmartin.com>
Date: Sun, 07 Nov 2021 08:53:36 +0000
In-Reply-To: <CANw0+A_93EiyU1cBQVOqm-=sdwBneqjMOCW8BFRXN9cER9oiJw@mail.gmail.com>
References: <873EB729-5CCC-4B12-B45D-B9D481D38E89@gmail.com>
	 <daa53f916bec48be39888a64d2c542f712933f73.camel@linuxfoundation.org>
	 <CANw0+A_93EiyU1cBQVOqm-=sdwBneqjMOCW8BFRXN9cER9oiJw@mail.gmail.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2021-11-06 at 11:13 +0100, Leif Middelschulte wrote:
> Am Sa., 6. Nov. 2021 um 11:07 Uhr schrieb Richard Purdie
> <richard.purdie@linuxfoundation.org>:
> > 
> > On Sat, 2021-11-06 at 10:47 +0100, Leif Middelschulte wrote:
> > > Meson would fail to fetch wraps' sources on bare systems (i.e. docker images),
> > > that only provide little more than the SDK.
> > > 
> > > The SDK's SSL directory was not searched, so meson would fail when it tried
> > > to fetch sources via https, that were specified in wrap files.
> > > Specifically `urllib` would fail:
> > > ```
> > > <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate (_ssl.c:1129)>
> > > ```
> > > 
> > > Caution: this patch depends on the underlying C library (i.e. openssl)
> > > to consider this environment variable.
> > > 
> > > Signed-off-by: Leif Middelschulte <Leif.Middelschulte@klsmartin.com>
> > > ---
> > > meta/recipes-devtools/meson/meson/meson-wrapper | 4 ++++
> > > 1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/meta/recipes-devtools/meson/meson/meson-wrapper b/meta/recipes-devtools/meson/meson/meson-wrapper
> > > index d4b5187f8d..8fafaad975 100755
> > > --- a/meta/recipes-devtools/meson/meson/meson-wrapper
> > > +++ b/meta/recipes-devtools/meson/meson/meson-wrapper
> > > @@ -4,6 +4,10 @@ if [ -z "$OECORE_NATIVE_SYSROOT" ]; then
> > >     echo "OECORE_NATIVE_SYSROOT not set; are you in a Yocto SDK environment?" >&2
> > > fi
> > > 
> > > +if [ -z "$SSL_CERT_DIR" ]; then
> > > +    export SSL_CERT_DIR="${OECORE_NATIVE_SYSROOT}/etc/ssl/certs/"
> > > +fi
> > > +
> > > # If these are set to a cross-compile path, meson will get confused and try to
> > > # use them as native tools. Unset them to prevent this, as all the cross-compile
> > > # config is already in meson.cross.
> > 
> > Why is meson trying to fetch sources? Shouldn't this be happening in do_fetch?
> This happens outside of bitbake, i.e. when users of the SDK try to
> build some Meson project that uses "Wraps".
> Mesons "wraps" allow its users to build software on the spot, if it is
> missing in the host/target toolchain. See
> https://mesonbuild.com/Using-the-WrapDB.html
> 

Ok, this needs to be clearer in the commit message making it clear this is an
SDK issue with the meson-wrapper, ideally in the shortlog.

I did take a deeper look at the patch and it doesn't apply, the whitespace
somehow seems damaged as the leading whitespaces on several lines are missing
and I think there is other damage.

Also, the patch needs to be sent to the openembedded-core list.

Cheers,

Richard





