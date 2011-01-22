Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C3B94C81065
	for <poky@yoctoproject.org>; Sat, 22 Jan 2011 10:52:50 -0600 (CST)
Received: by wwb31 with SMTP id 31so3073031wwb.11
	for <poky@yoctoproject.org>; Sat, 22 Jan 2011 08:52:49 -0800 (PST)
Received: by 10.216.86.9 with SMTP id v9mr608313wee.73.1295715169763;
	Sat, 22 Jan 2011 08:52:49 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id n78sm5573735weq.3.2011.01.22.08.52.48
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sat, 22 Jan 2011 08:52:48 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <a171ecc46ea9275b537cbedf6b08c6cbfe1c0fc3.1295483757.git.scott.a.garman@intel.com>
Date: Sat, 22 Jan 2011 17:52:47 +0100
Message-Id: <63E3D4C5-50C4-40FB-9463-2E3212369870@dominion.thruhere.net>
References: <cover.1295483757.git.scott.a.garman@intel.com>
	<a171ecc46ea9275b537cbedf6b08c6cbfe1c0fc3.1295483757.git.scott.a.garman@intel.com>
To: Scott Garman <scott.a.garman@intel.com>
X-Mailer: Apple Mail (2.1082)
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
X-List-Received-Date: Sat, 22 Jan 2011 16:52:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Op 20 jan 2011, om 01:39 heeft Scott Garman het volgende geschreven:

> * Upgraded binutils to v2.21
> * Incorporated libtool sysroot patches from OE
> * Removed patches no longer needed or obsoleted by OE patches
>=20
> Signed-off-by: Scott Garman <scott.a.garman@intel.com>

Hmmm. This patch seriers creates a lot of headaches for the angstrom =
layer for several reasons:

1) it removes a pinned binutils version and 2 days are not enough to =
test such a vital component
2) at the same time it introduces other changes like the libtool sysroot =
changes
3) on armv7a you can't use the smc instruction anymore without using =
special ASFLAGS, so the TI BSP overlay doesn't build anymore
4) With my TI hat on: changing toolchains is fairly traumatic, =
especially binutils. Getting our software ready for 2.20 with the =
changed linkerscript behaviour already cost me a few months to integrate =
into OE and still isn't 100% there. And that is with the TI SB folks =
having already fixed 90% of the problems in recent releases of their =
components. Imagine doing that "on your own" if your component teams =
don't have fixes already.

I'm a bit concerned how fast these changed get applied to the =
repository, especially with so little discussion.=20

Since incremental builds broke as well I had 2 choices to fix angstrom:

1) remove pseudone, sstate-cache, tmp, rebuild and hope for the best

2) remove pseudone, sstate-cache, tmp, import binutils 2.20.1 into the =
meta-oe layer, backport changes from the 2.21.0 recipes, rebuild and =
hope for the best.

I decided to go with option one, which broke because the TI 2.6.32 =
kernel tries to use secure mode for omap3 and breaks with

Error: selected processor does not support ARM mode `smc #0'

To fix that I can change the ASFLAGS to have '-march=3Darmv7-a+sec' or =
add '.arch_extension sec' to the .S files, but I was cranky allready due =
to low blood sugar. After eating a cookie and having some coffee, I =
decided to go with option 2), which is now running through a build =
cycle.

After the caffeine and the sugar wore off, I was venting my annoyance to =
Philip Balister and he said:

 "Send a polite email to the yoctopus pointing this out, they need to =
learn these sorts of things. As they acquire users, more of these things =
will occur."

So here it is :)  Having said all that, binutils 2.21 is neat, since it =
adds TMS320C6000 support, but that's a different (uclinux involving) =
story.=20

I'm not sure what to suggest to improve this situation, since moving =
forward is an important part of any buildsystem, but it shouldn't be the =
most important one. I have a few concrete suggestions, though:

1) keep binutils N-1, just like you keep gcc N-1
2) Be more communicative about these changes, I didn't parse "upgrade to =
2.21" as "remove 2.20.1 while I'm at it"
3) work out an agreement with "3rd parties" who have layers with version =
pinnings on what to do. I'm saying that yocto should keep all pinned =
versions, but checking layers and sending a heads up would be a good =
start. Ideally people who want to keep N-1 agree to help with =
'backporting' fixes from version N to N-1 to lessen the support burden.

Binutils is especially nasty, the previous angstrom release used 4 =
different binutils: one from armv7a, one for the other arms, one for =
ppc603e and one for avr32. We didn't have skilled binutils hackers who =
could port fixes from one release into the other to get at least one =
version for arm or try to forward port the atmel patches for avr32.=20

Provided my updated 2.20.1 recipes work, can the go "back" into the core =
layer if I keep them working till angstrom switches to a newer version? =
This layer thing has the potential to turn into a huge silo mentality (I =
couldn't find a direct translation for the dutch phrasing, but according =
to the interwebs this comes close enough), which isn't a good thing in =
my book.

If this comes accross as too cranky, my apologies,  I do need another =
cookie, I'm not used to writing long emails right before dinner :)=20

regards,

Koen=

