Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C2AC4C80AB1
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 11:03:16 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2TG3EZV022395;
	Tue, 29 Mar 2011 17:03:14 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21914-08; Tue, 29 Mar 2011 17:03:10 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2TG35OO022385
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 29 Mar 2011 17:03:06 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
In-Reply-To: <AANLkTi=zGTsBJ4t6MR=7pp2cSjwNFhSMJC=xQGy_mMBF@mail.gmail.com>
References: <AANLkTi=zGTsBJ4t6MR=7pp2cSjwNFhSMJC=xQGy_mMBF@mail.gmail.com>
Date: Tue, 29 Mar 2011 17:03:00 +0100
Message-ID: <1301414580.24596.64.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [patch] autotools: Remove .la files by default
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
X-List-Received-Date: Tue, 29 Mar 2011 16:03:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-29 at 10:43 -0400, Colin Walters wrote:
> From 487753f1bbef085c558befba7f03b6b4f01f392d Mon Sep 17 00:00:00 2001
> From: Colin Walters <walters@verbum.org>
> Date: Tue, 29 Mar 2011 10:41:34 -0400
> Subject: [PATCH] autotools: Remove .la files by default
> 
> They are installed by libtool only to make automake's "make uninstall"
> work; but we don't care about that, since no one sane bases an
> operating system upgrade/uninstall procedure on automake.  Saner
> people use higher level abstractions like "packages" or pure image
> based synchronization.
> 
> They are otherwise unnecessary and actually can break things; see:
> https://live.gnome.org/GnomeShell/RemovingLaFiles
> http://wiki.debian.org/ReleaseGoals/LAFileRemoval

Much as I dislike libtool, I've not seen these files do us much harm and
they do sometimes give warning of linkage against things we shouldn't be
linking against. I want to try and stay close to standard libtool in the
hope we can get some of the more major problems we have like working
sysroot support sorted out.

So no, I'm not going to merge this patch at this time. If we were going
to do something like this I'd rather thrown out libtool entirely and
switch to something like dolt.

Also note in your gnome shell link above that its listed as required
because of "the dirty hacks that jhbuild plays to get it to sandbox your
system" which is hardly a glowing recommendation. We don't have this
problem.

Cheers,

Richard


