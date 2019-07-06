Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B81BBE00D90; Sat,  6 Jul 2019 05:08:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97620E00CD2
	for <poky@yoctoproject.org>; Sat,  6 Jul 2019 05:08:16 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45gr8G3Nvqz3J;
	Sat,  6 Jul 2019 14:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1562414895;
	bh=hFGy1giGCAsKpA8cMZcXfaQXYOg5X/TVKq4q/HS1O4E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fHexbaH8CbZ+wJjX9mIgZDld5hAyFdxnY90em/XTXJs40rJ3JVy1hjZD3cb9lqCD2
	wr06I+J8TPlGU0NA4GlnF2WDrDMkXid8nJwP9lrFRUZtEJjGxEfCZ9S4uJq0tPHExD
	/YwUiUTD8WAvvNP61NtZLbrcfN/8lRiBXgXn0yxIYDLI5izGFvFy/6Lol8TqRxnxEP
	Tp1ZoU/M5LjrhHpJgpr3mHwFesDlQ/n3ki2t3PdjjV4uQuJeCyav0N/S8LuyVzxonR
	l2BqJOWaeySSj8qR5nX8+BqxMBaLYQvPbzpeTJgyactLjAdfwDycp5nvZha7RILbD7
	/OkA2dLI/Ijzqt25AHlVdx8fIw3/FdlKWHiUWcxDjyzGo4vQSXNScjenmJWcbMxwo8
	EOIR+lcsbdXwYeIAH40ag8N13++ZjgqPisZMNfz1dQbw3icmh2/AaQYGxP34OsfAD7
	VgU5G+AsJVhqpuiftGb9io0GsUTtznlRWMhd4gfuDmW8AhMWGVFISk7sT41XkbHpxu
	0zVcckMY7gaa+8bAKC1wXjzTIBEu/kT2kWZUgpoKTqg0YZgtnZRNAo38+H2bgy5BJZ
	oRu1lPrKTDorBchvhjGCk42H6mUC/BlUC/TtXfu1au0E9aLMbNa4w8AVB+yYFqdEp+
	VMR35JDc/aPfTcLXUNSlzOdI=
Date: Sat, 6 Jul 2019 15:08:10 +0300
From: Adrian Bunk <bunk@stusta.de>
To: kai.kang@windriver.com
Message-ID: <20190706120810.GC1877@localhost>
References: <20190704134520.16320-1-kai.kang@windriver.com>
	<20190704134520.16320-2-kai.kang@windriver.com>
	<20190706095328.GA1877@localhost>
MIME-Version: 1.0
In-Reply-To: <20190706095328.GA1877@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [oe-core][PATCH 1/2] defaultsetup.conf: enable select init manager
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 06 Jul 2019 12:08:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sat, Jul 06, 2019 at 12:53:28PM +0300, Adrian Bunk wrote:
> On Thu, Jul 04, 2019 at 09:45:19PM +0800, kai.kang@windriver.com wrote:
> > From: Kai Kang <kai.kang@windriver.com>
> > 
> > Introduce a new variable INIT_MANAGER and create 3 init-manager-*.inc
> > files to configure init manager settings. Available values of
> > INIT_MANAGER are sysvinit, systemd and mdev-busybox. 'sysvinit' is set
> > by default for compatibility.
> >...
> > --- a/meta/conf/distro/defaultsetup.conf
> > +++ b/meta/conf/distro/defaultsetup.conf
> > @@ -23,3 +23,6 @@ PACKAGE_CLASSES ?= "package_ipk"
> >  INHERIT_BLACKLIST = "blacklist"
> >  INHERIT_DISTRO ?= "debian devshell sstate license remove-libtool"
> >  INHERIT += "${PACKAGE_CLASSES} ${USER_CLASSES} ${INHERIT_DISTRO} ${INHERIT_BLACKLIST}"
> > +
> > +INIT_MANAGER ??= "sysvinit"
> > +require conf/distro/include/init-manager-${INIT_MANAGER}.inc
> >...
> > --- /dev/null
> > +++ b/meta/conf/distro/include/init-manager-sysvinit.inc
> > @@ -0,0 +1,6 @@
> > +# Use sysvinit for system initialization
> > +DISTRO_FEATURES_append = " sysvinit"
> > +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " systemd"
> > +VIRTUAL-RUNTIME_init_manager = "sysvinit"
> > +VIRTUAL-RUNTIME_initscripts = "initscripts"
> > +VIRTUAL-RUNTIME_login_manager = "busybox"
> 
> I am not sure whether this can be fixed better, but this does break 
> existing configurations that use a non-default init system.
> 
> I just ran into a build issue with
>   VIRTUAL-RUNTIME_init_manager = "systemd"
> since this now resulted in both sysvinit and systemd being attempted to 
> be installed to the image.
> 
> This was fixable in my configuration with
>   -VIRTUAL-RUNTIME_init_manager = "systemd"
>   +INIT_MANAGER = "systemd"
> 
> This at least needs to be properly documented as a breaking change.

Looking at master-next, this problem is actually fixed for me with
  meta: Improve handling of VIRTUAL-RUNTIME variables

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


