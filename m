Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web09.4257.1621070939088511144
 for <poky@lists.yoctoproject.org>;
 Sat, 15 May 2021 02:28:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EMYgcr7V;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id t206so924084wmf.0
        for <poky@lists.yoctoproject.org>; Sat, 15 May 2021 02:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=+H6yE8q31QXj0jHHwpJrA0nzzlRrofIOo4IZDmVrSRY=;
        b=EMYgcr7VkDhBequWixCgPUjyPeu8oGOafQHFvcnWGCelMuUJEjbsRORkaOAMktsY//
         cIVhVLmkg6G/gh/DEm6pdEa/obviIss6kqFJ5T3SbH1k6bypbVTutvFqrMM8MH8oob1h
         p3FCldllioALMfQj0pJR/1VeG2XAZfF4QAbdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=+H6yE8q31QXj0jHHwpJrA0nzzlRrofIOo4IZDmVrSRY=;
        b=BKzdlapFRVTNQZJTGeN+h15clya9tZhJ7fjOm3AmzqJzG/uJuE2K5PTb1RatFyd1yx
         xstMN2Bt42ZWwI7ggXHCM6+fYCvshccBxVb/fNgo6Nh/BPBU4HFdPGcZwRfdBH3fdRIa
         3DesmTvod03j/+WqfvQdakf7+j5+haxGX2atG4kz8Q+DM7GgMI4Q2G1BMKH3miHo/4K1
         Gf+9sfkUFW7jGD8uNu+ybRiyFC818qUth3B6C/q0pCICOCNMx7UAz0kjTzTm7yLnIYGo
         hBlcw1i/VHqnX6CDuCKsU/MyYBtX0pbkKH3zSb7PYlB2jU/8kndzuUcLbMTt03CWca9N
         cRYQ==
X-Gm-Message-State: AOAM533MwydkcgIFpaYqHfN6aAO9AXscL784WxA7goTZmpUORv+AsLJX
	Z7CUqsW1BEfI5zyl9gWTs+DhDg==
X-Google-Smtp-Source: ABdhPJwGOtQenlmg8qiEPAoHbt8w6Jvn3nvhiosTrnPApkRzHt61SWNtOmcve2s90C3nya10YVRu8g==
X-Received: by 2002:a1c:238d:: with SMTP id j135mr13674487wmj.170.1621070937378;
        Sat, 15 May 2021 02:28:57 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:df9a:d0c:2699:1a6a? ([2001:8b0:aba:5f3c:df9a:d0c:2699:1a6a])
        by smtp.gmail.com with ESMTPSA id f203sm13366117wmf.20.2021.05.15.02.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 02:28:56 -0700 (PDT)
Message-ID: <45d2e60596ae15a9528913c61745dbfce3a788ad.camel@linuxfoundation.org>
Subject: Re: [poky] [meta-yocto][dunfell] poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 5.4%
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steve Sakoman <steve@sakoman.com>, Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Date: Sat, 15 May 2021 10:28:54 +0100
In-Reply-To: <CAOSpxdZMZNeUcU__p8tmthG7WjC7DEjt+zjWZEnjezJMy=PyDw@mail.gmail.com>
References: <cover.1621037161.git.steve@sakoman.com>
	 <76aab65e84ff6faae857a303b242bf29aa133e03.1621037161.git.steve@sakoman.com>
	 <CAMKF1spadK-4KiRk-Vt85CN4DqpBF8xMkoVMdr_p3VfiX=_eoQ@mail.gmail.com>
	 <CAOSpxdZMZNeUcU__p8tmthG7WjC7DEjt+zjWZEnjezJMy=PyDw@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-05-14 at 16:47 -1000, Steve Sakoman wrote:
> On Fri, May 14, 2021 at 3:56 PM Khem Raj <raj.khem@gmail.com> wrote:
> > 
> > On Fri, May 14, 2021 at 5:08 PM Steve Sakoman <steve@sakoman.com> wrote:
> > > 
> > > We no longer have a recipe for 5.0% in dunfell
> > > 
> > > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > > ---
> > >  meta-poky/conf/distro/poky-tiny.conf | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> > > index c6d4b88..f20cd4c 100644
> > > --- a/meta-poky/conf/distro/poky-tiny.conf
> > > +++ b/meta-poky/conf/distro/poky-tiny.conf
> > > @@ -38,7 +38,7 @@ TCLIBC = "musl"
> > >  # Distro config is evaluated after the machine config, so we have to explicitly
> > >  # set the kernel provider to override a machine config.
> > >  PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
> > > -PREFERRED_VERSION_linux-yocto-tiny ?= "5.0%"
> > > +PREFERRED_VERSION_linux-yocto-tiny ?= "5.4%"
> > > 
> > 
> > seems ok to me. provided tiny config work with 5.4 as well
> 
> Dunfell has never had a 5.0 recipe -- the "note" message went
> unnoticed until this week when I added:
> 
> 94289dee37 bitbake: providers: selected version not available should
> be a warning
> 
> So now we get:
> 
> stdio: WARNING: preferred version 5.0% of linux-yocto-tiny not
> available (for item kernel-image-bzimage)
> stdio: WARNING: versions of linux-yocto-tiny available:
> 5.4.116+gitAUTOINC+b89df7433e_ea7a54fa40
> 
> So we've been building 5.4 all along!

I merged with a tweaked message to note that we never did have that version.

Cheers,

Richard

