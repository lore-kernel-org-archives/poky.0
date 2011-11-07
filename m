Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61689E00307
	for <poky@pokylinux.org>; Mon,  7 Nov 2011 08:39:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA7GdpTx021764;
	Mon, 7 Nov 2011 16:39:51 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21458-03; Mon,  7 Nov 2011 16:39:47 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA7Gdfrp021758
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 7 Nov 2011 16:39:42 GMT
Message-ID: <1320683982.23708.24.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 07 Nov 2011 16:39:42 +0000
In-Reply-To: <CADkTA4N=My0k31D2moYzK6gi70r2B9hL_-Bqw5T320pLqGGZ1g@mail.gmail.com>
References: <j9172o$j0s$1@dough.gmane.org>
	<CADkTA4N=My0k31D2moYzK6gi70r2B9hL_-Bqw5T320pLqGGZ1g@mail.gmail.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: gmane@reliableembeddedsystems.com, poky@pokylinux.org
Subject: Re: workflow - kernel config
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
X-List-Received-Date: Mon, 07 Nov 2011 16:39:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-11-04 at 15:15 -0400, Bruce Ashfield wrote:
> On Fri, Nov 4, 2011 at 1:23 PM, Robert Berger
> <gmane@reliableembeddedsystems.com> wrote:
> > Hi,
> >
> > I'm playing with poky-edison-6.0 and the default 2.6.37.6 kernel on a
> > beagle board with core-image-sato-sdk.
> >
> > Interestingly enough there is user space support e.g. for oprofile, but
> > oprofile is not configured in the kernel.
> >
> > The same for lacencytop and powertop,...
> 
> We have feature descriptions for all of the above as components in the
> linux-yocto
> kernel repository, but they do need to be turned on and tested on a per board
> basis.
> 
> We can trigger kernel options based on userspace packages being enabled or
> disabled, but that still wouldn't be a guarantee that they'd work. The
> options that
> are within the tree are a documentation of what has actually been tested.
> 
> The 2.6.37 tree was a transition point,and we've continued standardizing the
> options and feature set in the later kernels. For yocto 1.2 we'll have a better
> defined and consistent set of feature blocks. It's a building process
> and we move
> forward.
> 
> As others will point out there are other/deeper beagle board BSPs and layers
> (i.e. meta-texasinstruments) that likely already have support for these options\
> (but I haven't checked recently), so that's an avenue to explore as well.
> 
> >
> > So I was wondering what's the preferred workflow to start with the
> > "yocto-default" kernel config and add kernel configuration options
> > afterwards.
> >
> > What's I've tried so far is:
> >
> > bitbake virtual/kernel -c clean
> > bitbake virtual/kernel -c configure
> > bitbake virtual/kernel -c menuconfig
> > bitbake virtual/kernel -c compile
> > bitbake virtual/kernel -c deploy
> 
> This is one flow that will work to make changes to the default kernel, and
> test them on a board. I use something like:
> 
>  bitbake -f -c configure linux-yocto
>  bitbake -f -c menuconfig
>  bitbake -c linux-yocto

I suspect you mean:

bitbake -f -c configure linux-yocto
bitbake -f -c menuconfig
bitbake linux-yocto

:)

Cheers,

Richard
 




