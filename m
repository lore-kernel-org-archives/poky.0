Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A286E4C80044
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 17:19:04 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2TMJ2P3030471;
	Tue, 29 Mar 2011 23:19:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30329-03; Tue, 29 Mar 2011 23:18:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2TMItwX030465
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 29 Mar 2011 23:18:56 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
In-Reply-To: <AANLkTi=GPAEXD4CRPrhwGtd82ZfEx=HmW7_zWRxe+ev6@mail.gmail.com>
References: <AANLkTi=zGTsBJ4t6MR=7pp2cSjwNFhSMJC=xQGy_mMBF@mail.gmail.com>
	<1301414580.24596.64.camel@rex>
	<AANLkTim-tPhaRCWsCP=sDW30FUL1MfyxTOHabCSHyeQK@mail.gmail.com>
	<1301416170.24596.73.camel@rex>
	<AANLkTi=GPAEXD4CRPrhwGtd82ZfEx=HmW7_zWRxe+ev6@mail.gmail.com>
Date: Tue, 29 Mar 2011 23:18:49 +0100
Message-ID: <1301437129.24596.80.camel@rex>
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
X-List-Received-Date: Tue, 29 Mar 2011 22:19:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-29 at 13:04 -0400, Colin Walters wrote:
> On Tue, Mar 29, 2011 at 12:29 PM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> > I can do better than that, we have some limitations in the way .conf
> > files are parsed compared to .bbclass files. If you create a
> > "localchanges.bbclass" containing:
> 
> Of course I can code it locally, but I think this mechanism would be
> of value to other people creating systems, and hence my proposal to do
> it upstream.

For the reasons I've outlined I really don't want to encourage people to
be doing this so I'm reluctant to accept such a patch. Note that
removing them from the install directory removes them from the sysroots
too and may have undesired side effects on dlopened libraries for
example.

> > Right, but with our build environment, this really becomes a non-issue
> 
> I agree it's a non-issue for building the OS.  But it will be an issue
> for people who *after* having the OS installed, want to temporarily
> override system libraries with other versions.   And there's just no
> sane way to fix it without just nuking the files from the OS.

My questions are: How many people actually use the system that way
rather than generating a new image? Is deleting the .la files really
that hard if you're doing development on the system?

I appreciate for you it is an issue but I'm not yet convinced this is a
widespread problem.

> > (and I've been trying to get patches upstream which stop -L/usr/lib
> > being injected anyway as that is a libtool bug).
> 
> I think a better fix would actually be an automake option to stop it
> from even installing them, and I looked into this (it's not trivial,
> and effectively requires disabling "make uninstall"), and even if the
> fix landed every project would have to be updated for it.

The nice thing about OE is that it reautoconf's the sources so if you do
change libtool, we can cascade it to pretty much every package bar some
of the toolchain pieces automagically!

Cheers,

Richard


