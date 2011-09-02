Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DF7FE00320
	for <poky@yoctoproject.org>; Fri,  2 Sep 2011 10:35:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p82HZDKT028050;
	Fri, 2 Sep 2011 18:35:13 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27983-01; Fri,  2 Sep 2011 18:35:09 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p82HZ44K028036
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 2 Sep 2011 18:35:05 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4E610DF8.3090104@mlbassoc.com>
References: <4E610865.1000305@mlbassoc.com> <1314983074.5939.618.camel@rex>
	<4E610DF8.3090104@mlbassoc.com>
Date: Fri, 02 Sep 2011 18:34:46 +0100
Message-ID: <1314984886.5939.629.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] Update poky-feed-config-opkg to generate a useful package setup
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
X-List-Received-Date: Fri, 02 Sep 2011 17:35:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-02 at 11:10 -0600, Gary Thomas wrote:
> On 2011-09-02 11:04, Richard Purdie wrote:
> > On Fri, 2011-09-02 at 10:46 -0600, Gary Thomas wrote:
> >> The current poky-feed-config-opkg package only generates a skeleton for the
> >> opkg setups.  In particular, the base configuration file /etc/opkg/base-files.conf
> >> is not filled in at all.
> >>
> >> The attached patch fills this file in, using variables set by the
> >> user (local.conf, site.conf, etc).  If left unset, the behaviour will
> >> be the same as current.
> >>
> >> One thing I found is that opkg is very noisy if there are databases
> >> mentioned in base-files.conf that don't exist.  For example, on ARM
> >> platforms, there are a large number of possibilities (arm, armv5, armv6, ...)
> >> that are never populated in .../tmp/deploy/ipk.  The changes to this
> >> recipe will prune the file to only include those ipk databases which
> >> have actual files present.
> >
> > Your code is one big race unfortunately since the actual file generated
> > will depend on whether any packaging task has run before it or not (and
> > what package type that was). I'm not sure how to fix that but it can't
> > go in as it stands due to that...
> 
> I agree :-)  That's what these lines are for:
>    do_compile[depends] += "base-files:do_package"
>    do_compile[depends] += "virtual/kernel:do_package"
> 
> They solve the problem for me, i.e. if I build an image which includes
> this recipe from scratch, then the do_compile step is held off until
> sufficient work has gone on to make the database useful.

Sorry, I didn't see that on the bottom. I can't say I really like it. If
you're going to do that you might as well just hardcode the list as:

"all ${TUNE_PKGARCH} ${MACHINE}"

?

Cheers,

Richard




