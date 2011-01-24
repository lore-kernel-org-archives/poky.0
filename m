Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 208FC4C8109B
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:37:34 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0OEdROJ010735; Mon, 24 Jan 2011 14:39:28 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id T+pVP9cyVdGo; Mon, 24 Jan 2011 14:39:27 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0OEdOPX010727
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 24 Jan 2011 14:39:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <F70A90DF-1281-4FEE-9F65-0CADAA8E3891@dominion.thruhere.net>
References: <cover.1295483757.git.scott.a.garman@intel.com>
	<a171ecc46ea9275b537cbedf6b08c6cbfe1c0fc3.1295483757.git.scott.a.garman@intel.com>
	<63E3D4C5-50C4-40FB-9463-2E3212369870@dominion.thruhere.net>
	<1295743879.14388.37255.camel@rex>
	<F70A90DF-1281-4FEE-9F65-0CADAA8E3891@dominion.thruhere.net>
Date: Mon, 24 Jan 2011 14:37:11 +0000
Message-ID: <1295879831.14388.45248.camel@rex>
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
X-List-Received-Date: Mon, 24 Jan 2011 14:37:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-01-23 at 13:28 +0100, Koen Kooi wrote:
> Op 23 jan 2011, om 01:51 heeft Richard Purdie het volgende geschreven:
> > On Sat, 2011-01-22 at 17:52 +0100, Koen Kooi wrote:
> > 
> > Firstly, I'm sorry this change caused pain. I was under the impressive
> > binutils was a little more stable these days but I guess I have that
> > wrong. Certainly my past few experiences of upgrading it were a lot
> > better than the bad old days but I guess I was lucky.
> > 
> > Requiring Yocto to check some set of other layers and figure out which
> > versions of a given package they're using isn't going to be particularly
> > easy to do and it doesn't cover those with private layers either. It
> > also doesn't help understand whether a given layer can or can't upgrade.
> 
> Yocto doesn't exist in a vacuum, so completely ignoring other peoples
> layers isn't good way to proceed.

Which is why nowhere did I suggest this and we're still exchanging
emails ;-).

>  That doesn't mean you need to hand-hold everyone and their dog, but
> posting "binutils 2.20.x will be gone in 7 days" to the list would
> help a lot.

What I'd like to do is try and find a way to whereby Yocto can get the
information it needs, and/or get people using it the information about
whats changing better. It sounds like getting this on the mailing list
clearly and waiting a while for feedback would be desired. This part of
the solution is straightforward and I hope Saul+team are taking
notes! :) The only question is which components this applies to? All
versions or just "core" components like binutils/gcc/libtool and then
for minor version increments or major ones?

At the back of my mind I'm also wondering if we can automate collection
of "pinned" versions somehow, maybe by standardising on a
location/naming of .inc file and then scripting something to collect
data.

What I'm trying to do here is work out what information people need to
share, then make it as simple as possible for everyone to have access to
that information as I think this is primarily an information problem.

> In this case the final version of this patchset was posted to the list
> and without warning or reply it got pushed to master 2 days later. I'm
> closely following development, but I am not telepathic :)

We need to improve this, we've just got a little eager and the
development phase is drawing to an end, sorry. I will also warn there
are a few more invasive patches likely to merge this week to do with the
toolchain bootstrap process, the bitbake fetchers and machine specific
sysroots (but not toolchain versions changes).

> > One cornerstone principle of Yocto is to provide a consistent set of
> > high quality metadata known to build over 4 architectures and pass the
> > test cases we have.
> 
> I think you're currently closer to "4 machines covering 4 archs" than
> "4 archs", since armv7a stops working with the security extension
> change with certain kernels and other lowlevel asm.

The indication here is that we should perhaps make qemuarm a v7 type
machine since those are more likely to break than the stabilised older
versions?

> > Having N and N-1 versions of everything would imply
> > we'd test the N and the N-1 versions which we don't have the resources
> > for. I also seriously doubt we'd be able to keep it to N and N-1 since
> > there would be requests for N-2 which would be needed by some other
> > user, another would need N-3 and before you know it, we end up with many
> > versions.
> 
> Slippery slope, I know. But "high quality metadata" doesn't mean
> anything when it suddenly stops working for people. 'Suddenly' being
> the operative word in this case. And I'm not saying keeping 2 versions
> of everything, but binutils and gcc would sure be good candidates.

I'd like to try and work out a process for handling this kind of
problem, its that process question which worries me a lot more tbh.

> > The trouble appears to be people expecting the behaviour of stable
> > branch whilst also wanting the latest and greatest when its convenient
> > to them. I know Koen appreciates the differences more than most but a
> > lot of people don't recognise these are two competing goals.
> > 
> > Yocto is going to go through some pretty defined cycles, at times active
> > development and aggressively moving forward on versions and features, at
> > other times stabilising and releasing. Directly working off master
> > during a development window is going to have drawbacks as you're
> > observing. I can imagine a model where people work off the last stable
> > release, they then around the stabilisation time period look at updating
> > to the new "core". If pinned versions disappeared, they'd migrate them
> > into their layer if the needed them. We could even write tools to handle
> > that.
> 
> To make this easier, patches shouldn't mix behaviour changes and
> upgrades, that makes it real hard to migrate old versions to layers.
> In this case I got lucky because OE already had the needed patches for
> 2.20.1, but that won't be the case for everything.

Agreed, I was partially under the impression that we needed binutils as
updating the older one to the latest libtool was painful but that
doesn't appear to be the case. We'll separate that out in future.

As it happens, using binutils 2.21 is needed for the gcc version and
patches in Poky as there is an issue with dso linking that version
resolves.

> > I don't think this is a clear cut issue, I suspect the answer may
> > involve layer handling tooling we don't currently have to allow
> > "upgraded" versions to be preserved/restored in layers that need them.
> > This is definitely a discussion we need to have though.
> 
> The easiest way out is to split those 'upgrade' commits into 2, the
> first adds the new version, the second deletes the old one. They can
> be spaced a few days apart to allow testing and have an easier way for
> people to compare behaviour.

So we have binutils and gcc as cases where we need this, what others?

Cheers,

Richard



