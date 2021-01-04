Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web09.129.1609801700298647554
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 15:08:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gXMAZO98;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id q75so742479wme.2
        for <poky@lists.yoctoproject.org>; Mon, 04 Jan 2021 15:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=0IKFE1PDKl6cB3XdoCW1gWsTTZDkyt91UcFm0ijlK3k=;
        b=gXMAZO98wHBm5VIlUUmSe2XrQM+Y430z4+8cxW3/CmZT9MKDj2SPMpJs5WTMtkCt/+
         qapbGIy1x/UWwHKjCphgO70aWcZ17R5UK8D5LcP7zoDLBf+gi2rUUZvdUGVgLVZbXEJN
         XgsZQfRCb3ockWIi+gGOKqKf0rLvHMvfBS1M0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0IKFE1PDKl6cB3XdoCW1gWsTTZDkyt91UcFm0ijlK3k=;
        b=Iseh9Awq219glyGuRKUdEPHT9FiElnz1HTu044nA1npWGb3b270HHJvGZXZp4V+y+P
         APlmJCMWZJwgoClgKzeh4CAu4mW6axZKhgMCuJMHqz3Q+ZiXmIpLXGrtKXyOYenjM2Pp
         mZHrxfiUGxqA6gdUA0Z37EoSwMJH9i/tL+N3EWXgDPwuKeriOwjuqkCzNlCp3EI0ZOsr
         8w+TxwwyKIxAIDNpd7gOVoKBaoWLw7giU+1v08YUB608k2CoD2sEwIj0mIE8mivff6nN
         MPjpegxdFJ0dwnL5A+akccf9+1NZ6u9FxEX+F2lBxD/LyashRIDXybE36k9jozYPNJIP
         0YbQ==
X-Gm-Message-State: AOAM530AXJO7JFbXcFHb6okje2TohtInGufnVYW7622AvkKZq1bDNglP
	f5TteMGZAQimAokS3jEaHCL3MQ==
X-Google-Smtp-Source: ABdhPJyA7F5meQ06DsLsuzJq4jlWOD5ukTvnRudfJEt6LQHVb4sEe9ycmoJOl0LJyfhSfbbrH4/l6g==
X-Received: by 2002:a1c:41c5:: with SMTP id o188mr931393wma.18.1609801698801;
        Mon, 04 Jan 2021 15:08:18 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:fe9c:e0b5:40a1:adaf? ([2001:8b0:aba:5f3c:fe9c:e0b5:40a1:adaf])
        by smtp.gmail.com with ESMTPSA id b73sm1886514wmb.0.2021.01.04.15.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 15:08:18 -0800 (PST)
Message-ID: <3e5d2993e54881c09f5dfe84bd41f9963271e73c.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 4/5] wic: fix 'founded' typo
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Vivien Didelot <vivien.didelot@gmail.com>, Steve Sakoman
 <steve@sakoman.com>
Cc: poky@lists.yoctoproject.org, Vivien Didelot <vdidelot@pbsc.com>
Date: Mon, 04 Jan 2021 23:08:15 +0000
In-Reply-To: <20210104131311.GC1075440@t480s.localdomain>
References: <20210104173741.1070515-4-vdidelot@pbsc.com>
	 <c1f0211ce522552065b53581c76f990e53c5f532.camel@linuxfoundation.org>
	 <20210104131311.GC1075440@t480s.localdomain>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2021-01-04 at 13:13 -0500, Vivien Didelot wrote:
> On Mon, 04 Jan 2021 18:02:07 +0000 Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
> > On Mon, 2021-01-04 at 12:37 -0500, Vivien Didelot wrote:
> > > Replace 'founded' with 'found'.
> > > 
> > > Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
> > > ---
> > >  scripts/lib/wic/plugins/source/bootimg-partition.py | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/scripts/lib/wic/plugins/source/bootimg-partition.py
> > > b/scripts/lib/wic/plugins/source/bootimg-partition.py
> > > index 138986a71e..5dbe2558d2 100644
> > > --- a/scripts/lib/wic/plugins/source/bootimg-partition.py
> > > +++ b/scripts/lib/wic/plugins/source/bootimg-partition.py
> > > @@ -141,7 +141,7 @@ class BootimgPartitionPlugin(SourcePlugin):
> > >                      break
> > >  
> > >              if not kernel_name:
> > > -                raise WicError('No kernel file founded')
> > > +                raise WicError('No kernel file found')
> > >  
> > >              # Compose the extlinux.conf
> > >              extlinux_conf = "default Yocto\n"
> > > 
> > 
> > Thanks, I've queued the other patches in this series. This one is
> > against the oe-core repository and needs to go to the openembedded-
> > core
> > list. It was also fixed back in August so I'm guessing this was
> > against
> > an older branch?:
> > 
> > http://git.yoctoproject.org/cgit.cgi/poky/commit/scripts/lib/wic/plugins/source/bootimg-partition.py?id=f39694933ace695e2dfe917c5ac74349a2e00409
> 
> I'm not sure, these patches are based on latest dunfell:
> 
> d45ec07e5e87 ("sphinx: update link to bitbake docs")
> 
> where scripts/lib/wic/plugins/source/bootimg-partition.py contains
> the typo.

You're right, its not in dunfell but I believe the stable maintainer
for dunfell now plans to backport it.

Cheers,

Richard

