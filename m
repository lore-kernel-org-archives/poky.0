Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1575.1576575849449102286
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 01:44:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=f/yHK7cT;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1151E01261; Tue, 17 Dec 2019 01:44:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D548EE0125D
	for <poky@yoctoproject.org>; Tue, 17 Dec 2019 01:44:07 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id z7so10478653wrl.13
        for <poky@yoctoproject.org>; Tue, 17 Dec 2019 01:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=iHTXTgA83MNnEUAuYsWpXObRdpamRDolGqCHpJHNoOM=;
        b=f/yHK7cTvWf3Sf5Z6upXy1uHp4XIpSOgBZ5fJk2yNNKvVGq8vde2PcGctwRb8FmbCh
         HRPIilqgVUCNcbS1rTYxnAMFeR95ijMb5OQKOL7p2t7x6GP21OmDNRFDjnJsYybXzLIj
         gwAWZGvRlYZfesXPIk3qdbHZP1i62WkRvcQOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=iHTXTgA83MNnEUAuYsWpXObRdpamRDolGqCHpJHNoOM=;
        b=uiVH0we4rrlfLNi/a9nCQIGPRTubhXvnx2IR1AoW04lDvBv8ymUPg0R9Eop8gt3R4t
         ljO4jo6iLCW60WcygJ2Eegnh1xWANgPsmQI4Q130JakYxeHyGyywRwW0OWvydaxWakcy
         j4QcGAbDnfXIAnITHaevIyo9CxLnXF2SGuyXPhCyIHMBmQBHQNse1py7MYmP7XOoFeT/
         7IXYD9gezcAWg7TilWmH+snaghOrcBo0uOPmSAPqciZDfFiIvWw/simYgVJoZ+2gwgld
         cCg7VKPmQTZxZPoUyEDbOeLWL47Ve48ZvZArwdgrQj7SpCXa+UukyV9IIiwAViTC7q86
         TSxw==
X-Gm-Message-State: APjAAAVXmuN163G+c7SiFSOyEeeRhVioeE2I96hPRJv/AkGlOj7CgGGc
	ugZJ476Wf2zf8WGXzYL5fx/BJA==
X-Google-Smtp-Source: APXvYqw8FairR51ICn88zP0Ch0AWENAjSMmMMGbquxUt8ckwqHXg8sOFNmTdyD2okSLLrmc2C2u+CQ==
X-Received: by 2002:adf:f64b:: with SMTP id x11mr37268247wrp.355.1576575846815;
        Tue, 17 Dec 2019 01:44:06 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id x132sm2428697wmg.0.2019.12.17.01.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 01:44:06 -0800 (PST)
Message-ID: <ebd5740f277d5d397d6dc3c169b0e989c3b77cd6.camel@linuxfoundation.org>
Subject: Re: [poky] [meta-poky][PATCH] poky.conf: Debian 8 is no longer supported
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Adrian Bunk <bunk@stusta.de>, akuster808 <akuster808@gmail.com>, 
	poky@yoctoproject.org
Date: Tue, 17 Dec 2019 09:44:04 +0000
In-Reply-To: <20191217032756.GA32000@localhost>
References: <20191216040627.29272-1-bunk@stusta.de>
	 <9dfc6360e37ff298058ae89a9ca289dc973c3b32.camel@linuxfoundation.org>
	 <0f4abf32-abc4-8413-3e6b-600f3cf7c1f4@gmail.com>
	 <20191217032756.GA32000@localhost>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-12-17 at 05:27 +0200, Adrian Bunk wrote:
> On Mon, Dec 16, 2019 at 04:06:22PM -0800, akuster808 wrote:
> > 
> > On 12/16/19 3:55 PM, Richard Purdie wrote:
> > > On Mon, 2019-12-16 at 06:06 +0200, Adrian Bunk wrote:
> > > > Upstream LTS EOL will be June 2020,
> > > > and Python 3.4 is now too old for bitbake.
> > > > 
> > > > Signed-off-by: Adrian Bunk <bunk@stusta.de>
> > > > ---
> > > >  meta-poky/conf/distro/poky.conf | 1 -
> > > >  1 file changed, 1 deletion(-)
> > > > 
> > > > diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> > > > poky/conf/distro/poky.conf
> > > > index 8a0f28a863..995dd826ac 100644
> > > > --- a/meta-poky/conf/distro/poky.conf
> > > > +++ b/meta-poky/conf/distro/poky.conf
> > > > @@ -59,7 +59,6 @@ SANITY_TESTED_DISTROS ?= " \
> > > >              fedora-29 \n \
> > > >              fedora-30 \n \
> > > >              centos-7 \n \
> > > > -            debian-8 \n \
> > > >              debian-9 \n \
> > > >              debian-10 \n \
> > > >              opensuseleap-15.1 \n \
> > > We still have such a worker in the autobuilder right now as it
> > > can work
> > > using our buildtools tarball...
> > 
> > Is there a recommend process we should consult when adding or
> > subtracting host support for the project?
>
> And what does "SANITY_TESTED_DISTROS" actually mean?

It represents the list of machines we test upon, which in reality are
the workers installed in the autobuilder at this point.

The autobuilder still has a debian8 worker.

> If this might require the buildtools tarball, the next issue is that 
> there is not yet an aarch64 buildtools tarball available in stable 
> series supporting aarch64 hosts.

Should be straightforward to add one, nobody has pointed that out
before!

Cheers,

Richard


