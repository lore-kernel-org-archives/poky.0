Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A5DC4C80FAD
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 10:06:41 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 8B2DE12EC11B;
	Wed, 24 Nov 2010 10:44:05 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CED3737.70900@mlbassoc.com>
References: <4CED2DC0.2080605@mlbassoc.com>
	<1290614009.2799.19.camel@scimitar>  <4CED3737.70900@mlbassoc.com>
Date: Wed, 24 Nov 2010 16:06:31 +0000
Message-ID: <1290614791.2799.23.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Cc: poky@yoctoproject.org
Subject: Re: Extending SDK
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
X-List-Received-Date: Wed, 24 Nov 2010 16:06:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-24 at 09:03 -0700, Gary Thomas wrote:
> On 11/24/2010 08:53 AM, Joshua Lock wrote:
> > On Wed, 2010-11-24 at 08:22 -0700, Gary Thomas wrote:
> >> I've built meta-toolchain-sdk and although it was saved in the
> >> wrong place, all seems to be working well.  Until I tried to
> >> build a program that uses some package which was not part of
> >> the "default" set.   In particular, I tried to build 'xeyes'
> >> outside of Poky using the SDK, but it needs xt and xmu libraries
> >> which are built for my target, but weren't in the SDK I built.
> >>
> >> Questions:
> >>     * Did I miss something in building the SDK that left these out?
> >>     * Is there a way, hopefully straight forward, of adding additonal
> >>       packages to the SDK?  Can this be done incrementally, i.e. I
> >>       already have an SDK installed, can I do some magic to just add
> >>       the xt support?
> >>
> >
> > The SDK currently installs a fixed set of packages, the headers deemed
> > useful for gnome-mobile development - this isn't currently very useful
> > and is an area I'd like to improve.
> >
> > The SDK does come with a package manager (opkg-cl) which you should be
> > able to configure to point at your existing feeds and then use to
> > install additional headers into your SDK.
> 
> Thanks, I'll give it a try.  I suppose that I'd need to install the -dev
> packages for the stuff I want?
> 

Quite right, I'd recommend the -dbg packages too if you anticipate a
debugging session.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


