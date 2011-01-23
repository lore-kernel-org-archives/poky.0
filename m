Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0FBFA4C811AF
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 03:00:57 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so3385513iwn.35
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 01:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=+L6in+4LfI0WIaYQ9X6R8iyuVLRB0YPo4Gkq1NUzLcY=;
	b=BBYo1MiXA/VSo1jvgBYuG3gJB5BfRshhfRjj/GPEG1yadWNglviKe5rFY+r0UR7cqr
	y6UYAJgPNb6rgBBIS9FkVTQlFYe8xdnJViNAvqYmsN18Px3I8ExOJQaMZMAFRUT40oeT
	v7hhhtMLAgR1Z9ySvODBTzylU2D0DjFJR0ZRQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=OhmMRCixLpKZe0dUAxNfqqkkswbiu44o+UiCWOCozV2FNU2ddFcUjsBYnIO24fFUKX
	5iCOi1n5poX2ihH7An5X0F68ixpBqPwV+QOZiK3Xh2jnL26SGYY8hq4aFdaMvZQxXiMH
	KSRSIfg0415RVo1ZzIczhXQF3UCMawjc1QGHo=
MIME-Version: 1.0
Received: by 10.231.37.12 with SMTP id v12mr3145925ibd.83.1295773256512; Sun,
	23 Jan 2011 01:00:56 -0800 (PST)
Received: by 10.231.36.68 with HTTP; Sun, 23 Jan 2011 01:00:56 -0800 (PST)
In-Reply-To: <1295743879.14388.37255.camel@rex>
References: <cover.1295483757.git.scott.a.garman@intel.com>
	<a171ecc46ea9275b537cbedf6b08c6cbfe1c0fc3.1295483757.git.scott.a.garman@intel.com>
	<63E3D4C5-50C4-40FB-9463-2E3212369870@dominion.thruhere.net>
	<1295743879.14388.37255.camel@rex>
Date: Sun, 23 Jan 2011 10:00:56 +0100
Message-ID: <AANLkTim_gHP9d1AoR5EgsSaN2smoQ89ZCHb5OQtsMD-T@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
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
X-List-Received-Date: Sun, 23 Jan 2011 09:00:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2011/1/23 Richard Purdie <richard.purdie@linuxfoundation.org>:
> On Sat, 2011-01-22 at 17:52 +0100, Koen Kooi wrote:
>> Op 20 jan 2011, om 01:39 heeft Scott Garman het volgende geschreven:
>>
>> > * Upgraded binutils to v2.21
>> > * Incorporated libtool sysroot patches from OE
>> > * Removed patches no longer needed or obsoleted by OE patches
>> >
>> > Signed-off-by: Scott Garman <scott.a.garman@intel.com>
>>
>> Hmmm. This patch seriers creates a lot of headaches for the angstrom
>> layer for several reasons:
>>
>> 1) it removes a pinned binutils version and 2 days are not enough to
>> test such a vital component
>> 2) at the same time it introduces other changes like the libtool
>> sysroot changes
>> 3) on armv7a you can't use the smc instruction anymore without using
>> special ASFLAGS, so the TI BSP overlay doesn't build anymore
>> 4) With my TI hat on: changing toolchains is fairly traumatic,
>> especially binutils. Getting our software ready for 2.20 with the
>> changed linkerscript behaviour already cost me a few months to
>> integrate into OE and still isn't 100% there. And that is with the TI
>> SB folks having already fixed 90% of the problems in recent releases
>> of their components. Imagine doing that "on your own" if your
>> component teams don't have fixes already.
>>
>> I'm a bit concerned how fast these changed get applied to the
>> repository, especially with so little discussion.
>>
>> Since incremental builds broke as well I had 2 choices to fix
>> angstrom:
>>
>> 1) remove pseudone, sstate-cache, tmp, rebuild and hope for the best
>>
>> 2) remove pseudone, sstate-cache, tmp, import binutils 2.20.1 into the
>> meta-oe layer, backport changes from the 2.21.0 recipes, rebuild and
>> hope for the best.
>>
>> I decided to go with option one, which broke because the TI 2.6.32
>> kernel tries to use secure mode for omap3 and breaks with
>>
>> Error: selected processor does not support ARM mode `smc #0'
>>
>> To fix that I can change the ASFLAGS to have '-march=3Darmv7-a+sec' or
>> add '.arch_extension sec' to the .S files, but I was cranky allready
>> due to low blood sugar. After eating a cookie and having some coffee,
>> I decided to go with option 2), which is now running through a build
>> cycle.
>>
>> After the caffeine and the sugar wore off, I was venting my annoyance
>> to Philip Balister and he said:
>>
>> =A0"Send a polite email to the yoctopus pointing this out, they need to
>> learn these sorts of things. As they acquire users, more of these
>> things will occur."
>
> We do need to establish an understanding of how to handle this, yes.
>
>> So here it is :) =A0Having said all that, binutils 2.21 is neat, since
>> it adds TMS320C6000 support, but that's a different (uclinux
>> involving) story.
>>
>> I'm not sure what to suggest to improve this situation, since moving
>> forward is an important part of any buildsystem, but it shouldn't be
>> the most important one. I have a few concrete suggestions, though:
>>
>> 1) keep binutils N-1, just like you keep gcc N-1
>> 2) Be more communicative about these changes, I didn't parse "upgrade
>> to 2.21" as "remove 2.20.1 while I'm at it"
>> 3) work out an agreement with "3rd parties" who have layers with
>> version pinnings on what to do. I'm saying that yocto should keep all
>> pinned versions, but checking layers and sending a heads up would be a
>> good start. Ideally people who want to keep N-1 agree to help with
>> 'backporting' fixes from version N to N-1 to lessen the support
>> burden.
>>
>> Binutils is especially nasty, the previous angstrom release used 4
>> different binutils: one from armv7a, one for the other arms, one for
>> ppc603e and one for avr32. We didn't have skilled binutils hackers who
>> could port fixes from one release into the other to get at least one
>> version for arm or try to forward port the atmel patches for avr32.
>>
>> Provided my updated 2.20.1 recipes work, can the go "back" into the
>> core layer if I keep them working till angstrom switches to a newer
>> version? This layer thing has the potential to turn into a huge silo
>> mentality (I couldn't find a direct translation for the dutch
>> phrasing, but according to the interwebs this comes close enough),
>> which isn't a good thing in my book.
>>
>> If this comes accross as too cranky, my apologies, =A0I do need another
>> cookie, I'm not used to writing long emails right before dinner :)
>
> Firstly, I'm sorry this change caused pain. I was under the impressive
> binutils was a little more stable these days but I guess I have that
> wrong. Certainly my past few experiences of upgrading it were a lot
> better than the bad old days but I guess I was lucky.
>
> Requiring Yocto to check some set of other layers and figure out which
> versions of a given package they're using isn't going to be particularly
> easy to do and it doesn't cover those with private layers either. It
> also doesn't help understand whether a given layer can or can't upgrade.
>
> One cornerstone principle of Yocto is to provide a consistent set of
> high quality metadata known to build over 4 architectures and pass the
> test cases we have. Having N and N-1 versions of everything would imply
> we'd test the N and the N-1 versions which we don't have the resources
> for. I also seriously doubt we'd be able to keep it to N and N-1 since
> there would be requests for N-2 which would be needed by some other
> user, another would need N-3 and before you know it, we end up with many
> versions.
>
> The trouble appears to be people expecting the behaviour of stable
> branch whilst also wanting the latest and greatest when its convenient
> to them. I know Koen appreciates the differences more than most but a
> lot of people don't recognise these are two competing goals.
>
> Yocto is going to go through some pretty defined cycles, at times active
> development and aggressively moving forward on versions and features, at
> other times stabilising and releasing. Directly working off master
> during a development window is going to have drawbacks as you're
> observing. I can imagine a model where people work off the last stable
> release, they then around the stabilisation time period look at updating
> to the new "core". If pinned versions disappeared, they'd migrate them
> into their layer if the needed them. We could even write tools to handle
> that.
>
> I don't think this is a clear cut issue, I suspect the answer may
> involve layer handling tooling we don't currently have to allow
> "upgraded" versions to be preserved/restored in layers that need them.
> This is definitely a discussion we need to have though.
>
> Cheers,
>
> Richard

Richard, I understand and agree with your reasoning (so I won't ask
you to support binutils 2.17.50.0..12, which is the latest binutils
version that supports nios2).
Also testing-wise having multiple versions become a combinatioral nightmare=
.

Then again I feel it would help if
- toolchain upgrades were announced some time in advance
- there would be a policy to keep the last version around for say a
month, after adding a new version.(for toolchain and maybe some other
key recipes, not as a default rule).
The latter would allow testing to be done on the newest version while
giving out-of-yocto layers some time to adapt to the latest version
without having to go through the hassle of fetching the old version
back, putting it in a private layer etc.
Of course a release would go with only one version.

Keep up the good work! Frans

