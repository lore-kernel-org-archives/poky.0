Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id A350E4C81065
	for <poky@yoctoproject.org>; Sat, 22 Jan 2011 18:51:45 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0N0rVwi003253; Sun, 23 Jan 2011 00:53:32 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id CBFXtSGdfsqG; Sun, 23 Jan 2011 00:53:31 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0N0rQ5Y003250
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sun, 23 Jan 2011 00:53:28 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <63E3D4C5-50C4-40FB-9463-2E3212369870@dominion.thruhere.net>
References: <cover.1295483757.git.scott.a.garman@intel.com>
	<a171ecc46ea9275b537cbedf6b08c6cbfe1c0fc3.1295483757.git.scott.a.garman@intel.com>
	<63E3D4C5-50C4-40FB-9463-2E3212369870@dominion.thruhere.net>
Date: Sun, 23 Jan 2011 00:51:19 +0000
Message-ID: <1295743879.14388.37255.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 08/12] binutils: upgrade to 2.21 and add libtool sysroot support
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
X-List-Received-Date: Sun, 23 Jan 2011 00:51:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-22 at 17:52 +0100, Koen Kooi wrote:
> Op 20 jan 2011, om 01:39 heeft Scott Garman het volgende geschreven:
> 
> > * Upgraded binutils to v2.21
> > * Incorporated libtool sysroot patches from OE
> > * Removed patches no longer needed or obsoleted by OE patches
> > 
> > Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> 
> Hmmm. This patch seriers creates a lot of headaches for the angstrom
> layer for several reasons:
> 
> 1) it removes a pinned binutils version and 2 days are not enough to
> test such a vital component
> 2) at the same time it introduces other changes like the libtool
> sysroot changes
> 3) on armv7a you can't use the smc instruction anymore without using
> special ASFLAGS, so the TI BSP overlay doesn't build anymore
> 4) With my TI hat on: changing toolchains is fairly traumatic,
> especially binutils. Getting our software ready for 2.20 with the
> changed linkerscript behaviour already cost me a few months to
> integrate into OE and still isn't 100% there. And that is with the TI
> SB folks having already fixed 90% of the problems in recent releases
> of their components. Imagine doing that "on your own" if your
> component teams don't have fixes already.
> 
> I'm a bit concerned how fast these changed get applied to the
> repository, especially with so little discussion. 
> 
> Since incremental builds broke as well I had 2 choices to fix
> angstrom:
> 
> 1) remove pseudone, sstate-cache, tmp, rebuild and hope for the best
> 
> 2) remove pseudone, sstate-cache, tmp, import binutils 2.20.1 into the
> meta-oe layer, backport changes from the 2.21.0 recipes, rebuild and
> hope for the best.
> 
> I decided to go with option one, which broke because the TI 2.6.32
> kernel tries to use secure mode for omap3 and breaks with
> 
> Error: selected processor does not support ARM mode `smc #0'
> 
> To fix that I can change the ASFLAGS to have '-march=armv7-a+sec' or
> add '.arch_extension sec' to the .S files, but I was cranky allready
> due to low blood sugar. After eating a cookie and having some coffee,
> I decided to go with option 2), which is now running through a build
> cycle.
> 
> After the caffeine and the sugar wore off, I was venting my annoyance
> to Philip Balister and he said:
> 
>  "Send a polite email to the yoctopus pointing this out, they need to
> learn these sorts of things. As they acquire users, more of these
> things will occur."

We do need to establish an understanding of how to handle this, yes.

> So here it is :)  Having said all that, binutils 2.21 is neat, since
> it adds TMS320C6000 support, but that's a different (uclinux
> involving) story. 
> 
> I'm not sure what to suggest to improve this situation, since moving
> forward is an important part of any buildsystem, but it shouldn't be
> the most important one. I have a few concrete suggestions, though:
> 
> 1) keep binutils N-1, just like you keep gcc N-1
> 2) Be more communicative about these changes, I didn't parse "upgrade
> to 2.21" as "remove 2.20.1 while I'm at it"
> 3) work out an agreement with "3rd parties" who have layers with
> version pinnings on what to do. I'm saying that yocto should keep all
> pinned versions, but checking layers and sending a heads up would be a
> good start. Ideally people who want to keep N-1 agree to help with
> 'backporting' fixes from version N to N-1 to lessen the support
> burden.
>
> Binutils is especially nasty, the previous angstrom release used 4
> different binutils: one from armv7a, one for the other arms, one for
> ppc603e and one for avr32. We didn't have skilled binutils hackers who
> could port fixes from one release into the other to get at least one
> version for arm or try to forward port the atmel patches for avr32. 
>
> Provided my updated 2.20.1 recipes work, can the go "back" into the
> core layer if I keep them working till angstrom switches to a newer
> version? This layer thing has the potential to turn into a huge silo
> mentality (I couldn't find a direct translation for the dutch
> phrasing, but according to the interwebs this comes close enough),
> which isn't a good thing in my book.
> 
> If this comes accross as too cranky, my apologies,  I do need another
> cookie, I'm not used to writing long emails right before dinner :) 

Firstly, I'm sorry this change caused pain. I was under the impressive
binutils was a little more stable these days but I guess I have that
wrong. Certainly my past few experiences of upgrading it were a lot
better than the bad old days but I guess I was lucky.

Requiring Yocto to check some set of other layers and figure out which
versions of a given package they're using isn't going to be particularly
easy to do and it doesn't cover those with private layers either. It
also doesn't help understand whether a given layer can or can't upgrade.

One cornerstone principle of Yocto is to provide a consistent set of
high quality metadata known to build over 4 architectures and pass the
test cases we have. Having N and N-1 versions of everything would imply
we'd test the N and the N-1 versions which we don't have the resources
for. I also seriously doubt we'd be able to keep it to N and N-1 since
there would be requests for N-2 which would be needed by some other
user, another would need N-3 and before you know it, we end up with many
versions.

The trouble appears to be people expecting the behaviour of stable
branch whilst also wanting the latest and greatest when its convenient
to them. I know Koen appreciates the differences more than most but a
lot of people don't recognise these are two competing goals.

Yocto is going to go through some pretty defined cycles, at times active
development and aggressively moving forward on versions and features, at
other times stabilising and releasing. Directly working off master
during a development window is going to have drawbacks as you're
observing. I can imagine a model where people work off the last stable
release, they then around the stabilisation time period look at updating
to the new "core". If pinned versions disappeared, they'd migrate them
into their layer if the needed them. We could even write tools to handle
that.

I don't think this is a clear cut issue, I suspect the answer may
involve layer handling tooling we don't currently have to allow
"upgraded" versions to be preserved/restored in layers that need them.
This is definitely a discussion we need to have though.

Cheers,

Richard



