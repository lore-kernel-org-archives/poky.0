Return-Path: <rpurdie@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30EF14C81081
	for <poky@lists.pokylinux.org>; Fri, 22 Oct 2010 19:56:30 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id DE1D612EC302; Fri, 22 Oct 2010 20:32:05 -0500 (CDT)
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 718CD12EC013
	for <poky@o-hand.com>; Fri, 22 Oct 2010 20:32:05 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9N0uQAi007179;
	Sat, 23 Oct 2010 01:56:26 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07137-01; Sat, 23 Oct 2010 01:56:22 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9N0uKXQ007173
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 23 Oct 2010 01:56:21 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CC1D026.7050408@mlbassoc.com>
References: <4CADD32A.9010908@mlbassoc.com>
	<1286462951.15840.6345.camel@rex> <4CADE06F.6040308@mlbassoc.com>
	<4CADFA77.3070305@mlbassoc.com> <1286475616.15840.6565.camel@rex>
	<4CAE54A1.1080803@mlbassoc.com> <1287755439.16386.736.camel@rex>
	<4CC199D1.3000309@mlbassoc.com> <1287757765.16386.771.camel@rex>
	<4CC1D026.7050408@mlbassoc.com>
Date: Sat, 23 Oct 2010 01:56:06 +0100
Message-ID: <1287795366.16386.801.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@o-hand.com
Subject: Re: SVN woes persist
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Sat, 23 Oct 2010 00:56:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-10-22 at 11:55 -0600, Gary Thomas wrote:
> On 10/22/2010 08:29 AM, Richard Purdie wrote:
> > On Fri, 2010-10-22 at 08:04 -0600, Gary Thomas wrote:
> >> Will do.
> >>
> >> Should this address the similar issue with GIT packages.  These seem
> >> to be updating every time as well:
> >>     git_github.com.wrpseudo.pseudo.git.tar.gz
> >>     git_git.pokylinux.org.wr-kernel-tools.git.tar.gz
> >>     git_git.pokylinux.org.prelink-cross.git.tar.gz
> >
> > There are changes in master which will stop everything except the
> > linux-wrs recipe doing that. The linux-wrs recipe uses "fullclone" mode
> > of the git fetcher and this has known issues which we will address soon.
> >
> > If anything other than linux-wrs is refreshing on master other than that
> > recipe, let us know.
> 
> Looks good.  The one one that got updated today with a full build was pseudo
> and that's because the pinned revision was changed since I last merged.

Right, once its generated its tarball, it shouldn't touch the repo
again.

> >> I'm still hoping for a way to have a static (no network needed) setup
> >> soon.  I have to provide such in a training for some of my customers
> >> in about a month :-)
> >
> > It is meant to work like that!
> 
> This part is working much better now, thanks.
> 
> Any progress on a way to hot-start things with the staged packages?
> When last I tried it, it brought my system to its knees with no benefit
> (see original message from 2010-10-07)

I thought my last email made this clear, we've fixed issues, it works
better now.

Unfortunately there is an issue with the bits of the toolchain
overwriting each other so a build using the packages isn't entirely
working but you can for example generate images using them. All the
pieces are there and we just need to iron out a few bugs.

Cheers,

Richard


