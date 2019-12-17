Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2074.1576553286744180212
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 19:28:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=mTu1NUsh;
 spf=neutral (domain: stusta.de, ip: 140.211.169.56, mailfrom: bunk@stusta.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47B08E01257; Mon, 16 Dec 2019 19:28:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4305FE00963
	for <poky@yoctoproject.org>; Mon, 16 Dec 2019 19:28:03 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 47cNrH70v0zCK;
	Tue, 17 Dec 2019 04:27:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1576553280;
	bh=/iFR6zbfRINBkpQ9D7w7oCpvYN/JFhxPIzE0qFjDfzw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=mTu1NUshvuNcxbKCUz+/iDQ5VQjkGE+fjOrfHeP9lheeNvDInlLrmAq6X+RsnCQPF
	 co5HQcEUAQO5ftlZDk86JK3mmmsp4d6QHydHL03sJ+kSuFPDGC3I53AxPmeMx6lVfy
	 0uvUUaCtCtOGw94iGNst0wwaCkoQQOLA/MUY/3t6nuMUxeeVEgXE06nwwKZ78SKJfB
	 DnK9k0tqtN6uArh+/Yp3MY9r+8fG/RxbNfHClWNa1rXmhMGAZO1X/5w93L4RnR9Ifu
	 TT+WWFvfBPb3+PLJJ8p67T216vkiuhnmcrHtcMr0eLw9+z9Wxg+X9yW2dxNOXK/fZW
	 NMoXlyR0S54XGo+e6oYG9w3o6pl703NuImpBAUl2/kBeqqTNIxBAPeq62oTpgCljGa
	 yGvm0ZNhr3FUyGHcPWtUfipi3fsckgfqH/AXDRJUidlUX/+RP1oH44kZ8VCUwzr9wl
	 2MuBt3VIRlwrtZ6aHlLtz2GEjlysstKOnMhSGCobMIlGwXy3ErbbQ6UvnjTjM0laKn
	 On3Ze1vaK89LmCXF4UZqfGFmKsnh9v41mnytjzL2b6E0Qoi/trwjGO+IzXLJ2ajy0B
	 MQf7xbUwXPDTzTnv5mqfMwihWmIdUnWlQFG1jH0J9CcFGr0GK6glbfAIdj18A0YaVF
	 leIsjfvxcYsgNQfuffj7LCLE=
Date: Tue, 17 Dec 2019 05:27:56 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: akuster808 <akuster808@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	poky@yoctoproject.org
Subject: Re: [poky] [meta-poky][PATCH] poky.conf: Debian 8 is no longer supported
Message-ID: <20191217032756.GA32000@localhost>
References: <20191216040627.29272-1-bunk@stusta.de>
 <9dfc6360e37ff298058ae89a9ca289dc973c3b32.camel@linuxfoundation.org>
 <0f4abf32-abc4-8413-3e6b-600f3cf7c1f4@gmail.com>
MIME-Version: 1.0
In-Reply-To: <0f4abf32-abc4-8413-3e6b-600f3cf7c1f4@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Dec 16, 2019 at 04:06:22PM -0800, akuster808 wrote:
> 
> 
> On 12/16/19 3:55 PM, Richard Purdie wrote:
> > On Mon, 2019-12-16 at 06:06 +0200, Adrian Bunk wrote:
> >> Upstream LTS EOL will be June 2020,
> >> and Python 3.4 is now too old for bitbake.
> >>
> >> Signed-off-by: Adrian Bunk <bunk@stusta.de>
> >> ---
> >>  meta-poky/conf/distro/poky.conf | 1 -
> >>  1 file changed, 1 deletion(-)
> >>
> >> diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> >> poky/conf/distro/poky.conf
> >> index 8a0f28a863..995dd826ac 100644
> >> --- a/meta-poky/conf/distro/poky.conf
> >> +++ b/meta-poky/conf/distro/poky.conf
> >> @@ -59,7 +59,6 @@ SANITY_TESTED_DISTROS ?= " \
> >>              fedora-29 \n \
> >>              fedora-30 \n \
> >>              centos-7 \n \
> >> -            debian-8 \n \
> >>              debian-9 \n \
> >>              debian-10 \n \
> >>              opensuseleap-15.1 \n \
> > We still have such a worker in the autobuilder right now as it can work
> > using our buildtools tarball...
> 
> Is there a recommend process we should consult when adding or
> subtracting host support for the project?

And what does "SANITY_TESTED_DISTROS" actually mean?

If this might require the buildtools tarball, the next issue is that 
there is not yet an aarch64 buildtools tarball available in stable 
series supporting aarch64 hosts.

> - armin

cu
Adrian
