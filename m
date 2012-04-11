Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EB39E013A8
	for <poky@yoctoproject.org>; Wed, 11 Apr 2012 05:21:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3BCKt9p008046;
	Wed, 11 Apr 2012 13:20:55 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07356-07; Wed, 11 Apr 2012 13:20:51 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3BCKlEn008040
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 Apr 2012 13:20:48 +0100
Message-ID: <1334146846.10826.175.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bob Cochran <yocto@mindchasers.com>
Date: Wed, 11 Apr 2012 13:20:46 +0100
In-Reply-To: <4F84D5A9.3080509@mindchasers.com>
References: <4F7B3409.8000905@mlbassoc.com>
	<CABcZANkiFDcOdLfJy5y0OZTkQzUEaC3ip_CF84iZKp6MV3aZYQ@mail.gmail.com>
	<4F84D5A9.3080509@mindchasers.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Chris Larson <clarson@kergoth.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: ccache
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
X-List-Received-Date: Wed, 11 Apr 2012 12:21:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-10 at 20:51 -0400, Bob Cochran wrote:
> On 04/03/2012 01:36 PM, Chris Larson wrote:
> > On Tue, Apr 3, 2012 at 10:31 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
> >> Why is ccache being used for Poky/Yocto builds?  My understanding is
> >> that it's a win for _rebuilds_ of the same/related files, but there's
> >> not a whole lot of that going on.
> >>
> >> If I build core-image-sato from scratch, I end up with ${BUILD}/tmp/ccache
> >> which is 1.8GB - quite a bite!  Is there some way to disable this?, other
> >> than not have ccache on my host computer (not an option as it is useful
> >> for other builds I do)
> >
> > I think the default behavior of using ccache when it's installed is
> > extremely bad, and dangerous, in that the ccache object cache is of
> > both limited usefulness, as you say, and the object cache can get
> > corrupted, leading to extremely odd behavior (and it's rarely a place
> > you think to look as a cause). At Mentor we disabled this behavior,
> > and I really, really think we should do so in the default oe-core
> > bitbake.conf.
> 
> 
> It would be nice / cleaner to not build out the hollow ccache directory 
> structure under tmp when ccache isn't installed or being used.  Seeing 
> it there under tmp with levels of empty sub directories beneath it is 
> somewhat confusing.

I'm tempted to move all the ccache stuff into a separate class and then
drop the inherit by default.

Patches welcome for 1.3...

Cheers,

Richard


