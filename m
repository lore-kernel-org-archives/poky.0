Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9ADB24C800B2
	for <poky@lists.pokylinux.org>; Mon, 21 Feb 2011 17:16:47 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LNGkr5021760;
	Mon, 21 Feb 2011 23:16:46 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21445-06; Mon, 21 Feb 2011 23:16:42 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LNGb1V021754
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 21 Feb 2011 23:16:40 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D62AF6E.4020304@mlbassoc.com>
References: <4D628A56.6020002@mlbassoc.com>
	<1298310097.11289.3185.camel@rex>  <4D62AF6E.4020304@mlbassoc.com>
Date: Mon, 21 Feb 2011 23:16:34 +0000
Message-ID: <1298330194.11289.3243.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: kernel versions
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 Feb 2011 23:16:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2011-02-21 at 11:31 -0700, Gary Thomas wrote:
> On 02/21/2011 10:41 AM, Richard Purdie wrote:
> > On Mon, 2011-02-21 at 08:52 -0700, Gary Thomas wrote:
> >> I have my own kernel recipes (historical reasons...) which I
> >> now have 2 versions of.  Some platforms have not yet been
> >> ported to the latest version and I need to keep using the
> >> older one for those platforms until the porting is complete.
> >>
> >> Sadly, I can't get this to work.
> >>
> >> Here's what I have
> >>     $ tree meta-amltd/packages/linux/
> >>       meta-amltd/packages/linux/
> >>       ├── linux-am_2.6.32.bb
> >>       ├── linux-am_2.6.37.bb
> >>
> >>     $ tree meta-cobra3530p60/packages/linux/
> >>       meta-cobra3530p60/packages/linux/
> >>       ├── linux-am-2.6.32
> >>       │   └── cobra3530p60
> >>       │       ├── cobra3530p60.patch
> >>       │       └── defconfig
> >>       ├── linux-am_2.6.32.bbappend
> >>
> >> I tried these settings in my machine/cobra3530p60
> >>     PREFERRED_PROVIDER_virtual/kernel = "linux-am"
> >>     PREFERRED_VERSION_virtual/kernel = "2.6.32"
> >>
> >> However, it still wants to build version 2.6.37
> >>
> >> What am I missing?  How can I force it to use the 2.6.32 version
> >> for this machine?
> >
> > PREFERRED_VERSION_linux-am = "2.6.32"
> 
> That does seem to work, but only if I put it in the <MACHINE>.conf
> file, not local.conf.
> 
> Why specify it one way (PREFERRED_PROVIDER_virtual/kernel) for the provider
> (recipe basis) and then a different way (PREFERRED_VERSION_linux-am) for
> the actual version?

Each recipe has a list of things it provides. This is usually PN but in
the kernel case each recipe provides "virtual/kernel" so we can group
them and make a selection with PREFERRED_PROVIDER.

Bitbake first determines the provider. Once it has this it looks up the
version. It looks this up using PN and not using what could be an
arbitrary list of items in PROVIDES.

Summary, you always use PN with PREFERRED_VERSION as that is what makes
sense in the general case.

It should however work to put this in local.conf unless you're setting
it with an = and not a ?= somewhere else?

Cheers,

Richard



