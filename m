Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7E99F4C8007E
	for <poky@lists.pokylinux.org>; Mon, 14 Feb 2011 06:35:36 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1ECZXKS010027;
	Mon, 14 Feb 2011 12:35:33 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09580-08; Mon, 14 Feb 2011 12:35:29 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1ECZOHt010021
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 14 Feb 2011 12:35:25 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <AANLkTikp04oEA4EL8tKC2VbDthfBHUgXPhkUMOqX=Zgn@mail.gmail.com>
References: <4D569EC5.6040609@mlbassoc.com>
	<44134B64-2531-4D6A-9C7C-C2FE68D18434@dominion.thruhere.net>
	<4D57F169.8040705@mlbassoc.com>
	<59686AEF-1509-4F1B-B722-66D2465E274F@dominion.thruhere.net>
	<4D57F378.90406@mlbassoc.com>
	<58A0EE94-D37C-4643-AF5D-13078B549E08@dominion.thruhere.net>
	<4D57F979.4040002@mlbassoc.com>
	<AANLkTikp04oEA4EL8tKC2VbDthfBHUgXPhkUMOqX=Zgn@mail.gmail.com>
Date: Mon, 14 Feb 2011 12:35:22 +0000
Message-ID: <1297686922.4945.23.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Booting BeagleBoard
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
X-List-Received-Date: Mon, 14 Feb 2011 12:35:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-02-13 at 19:14 +0100, Frans Meulenbroeks wrote:
> 2011/2/13 Gary Thomas <gary@mlbassoc.com>:
> > On 02/13/2011 08:21 AM, Koen Kooi wrote:
> >>
> >> Op 13 feb 2011, om 16:06 heeft Gary Thomas het volgende geschreven:
> >>
> >>> On 02/13/2011 08:00 AM, Koen Kooi wrote:
> >>>>
> >>>> Op 13 feb 2011, om 15:57 heeft Gary Thomas het volgende geschreven:
> >>>>
> >>>>> On 02/12/2011 08:01 AM, Koen Kooi wrote:
> >>>>>>
> >>>>>> Op 12 feb 2011, om 15:52 heeft Gary Thomas het volgende geschreven:
> >>>>>>
> >>>>>>> I have a BeagleBoard C3 (not the new xM).  Trying to run the
> >>>>>>> latest Poky ran into some problems:
> >>>>>>>
> >>>>>>> * The boot commands in README.hardware are no longer accurate
> >>>>>>>  for the 2.6.37 (linux-yocto) kernel.  At least you need to
> >>>>>>>  use ttyO2 for the serial console.
> >>>>>>> * There is no video?  /dev/fb0 is not being created.
> >>>>>>>
> >>>>>>> I know that the previous (Angstrom based) 2.6.32 kernel had
> >>>>>>> lots of additions which support video (DSS subsystem) and
> >>>>>>> also camera (ISP).  Has this support been ported forward
> >>>>>>> into the Yocto kernel?
> >>>>>>
> >>>>>> Even better, there is a proper BSP with beagleboard support:
> >>>>>> http://gitorious.org/angstrom/angstrom-layers/commits/master
> >>>>>
> >>>>> How is this used?  I tried just adding a pointer to that tree
> >>>>> in my conf/bblayers.conf.  I also tried moving that tree into
> >>>>> my poky sources at the same level as meta-emenlow, etc.  Both
> >>>>> attempts immediately yielded this error:
> >>>>>  ERROR: Unable to parse conf/bitbake.conf: Could not include required
> >>>>> file conf/machine/include/omap3.inc
> >>>>>
> >>>>> Perhaps you can give some guidance for how to use this?
> >>>>
> >>>>
> >>>> http://thread.gmane.org/gmane.linux.distributions.angstrom.devel/4698/focus=4700
> >>>
> >>> Obviously this is not what I'm looking for.
> >>>
> >>> What I had wanted to test was your layering on top of my extant
> >>> Poky/Yocto environment.  I don't want to start over as I have my
> >>> own layers that work just fine with Poky.
> >>
> >> I obviously misunderstood your request on the angstrom mailinglist on how
> >> to setup angstrom on top of yocto as a request on how to setup angstrom on
> >> top of yocto. I'm sorry that I fail to understand such obvious things. I
> >> will from now on stop trying to understand your requests to avoid any
> >> confusion and perceived wrongdoing on my part.
> >
> > That would be reasonable except that this entire thread was on
> > the Poky mailing list :-)  If you look closely, I asked about
> > running the BeagleBoard on the latest Poky/Yocto and you replied
> > with this info about your angstrom layers.
> 
> Gary, you're better off ignoring Koen.
> Apparently he hasn't taken his medicine this morning.
> And, frankly speaking, the reply above is among hismore friendly ones.
> His mission in life seems to be to drive everyone away from OE (unless
> of course you're one of his fan-boys). Guess he tries to pull the same
> trick with poky/yocto.
> Sometimes I really pity Richard, having to deal with someone like Koen..

Until now we've managed to keep the Poky/Yocto lists clear of this kind
of discussion. I'd like to point out:

https://wiki.yoctoproject.org/wiki/Community_Guidelines

and

http://www.yoctoproject.org/tos

Specifically, its usually better to keep discussions to technical
grounds and not make them personal.

Cheers,

Richard



