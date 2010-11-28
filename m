Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8527A4C81110
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 15:20:23 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLKILk021132;
	Sun, 28 Nov 2010 21:20:18 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20810-08; Sun, 28 Nov 2010 21:20:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLK8uW021113
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 21:20:11 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CED06A9.8060806@mlbassoc.com>
References: <4CECEF5D.2040702@mlbassoc.com> <4CECF7F0.3080303@mlbassoc.com>
	<1290599248.2799.16.camel@scimitar>  <4CED06A9.8060806@mlbassoc.com>
Date: Sun, 28 Nov 2010 16:19:17 +0000
Message-ID: <1290961157.27143.348.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: bitbake package-index broken?
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
X-List-Received-Date: Sun, 28 Nov 2010 21:20:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-24 at 05:35 -0700, Gary Thomas wrote:
> On 11/24/2010 04:47 AM, Joshua Lock wrote:
> > On Wed, 2010-11-24 at 04:33 -0700, Gary Thomas wrote:
> >> On 11/24/2010 03:56 AM, Gary Thomas wrote:
> >>> With a recent build, bitbake package-index doesn't seem to do anything.
> >>> e.g. if I look at tmp/deploy/ipk/*/Packages.gz before and after, there
> >>> are no changes.
> >>>
> >>> I tried to build a simple package and add it to my database. Sadly,
> >>> it's not being updated at all, so the new package does not appear on
> >>> the board.
> >>>
> >>> Any ideas what might be wrong?
> >>
> >> A quick check shows that do_build() in the package-index recipe is never
> >> really run!
> >>
> >> I found a workaround by just building an image which has a root file system.
> >> This also forces a package database rebuild.  It would be nice to figure out
> >> what's broken though (it certainly _used_ to work)
> >>
> >
> > I'm not really familiar with the ipk classes so can't offer a quick
> > solution, could I ask you to file a bug so that we can track this issue
> > and assign resources to fix?
> 
> Done - bug #544

I've a fix I'll push shortly. The reason was that we marked do_build as
noexec and package-index did all its work in do_build. The updates
changes this and marks more tasks in that recipe as noexec to make
things more efficient.

Cheers,

Richard



