Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DD274C80FA4
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 05:42:20 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 5402A12EC1C5;
	Fri, 10 Dec 2010 06:20:36 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1291923332.18502.158.camel@elmorro>
References: <4CFF8C70.7010803@mlbassoc.com>
	<1291921712.6078.48.camel@scimitar>  <4D012B68.1000201@mlbassoc.com>
	<1291923332.18502.158.camel@elmorro>
Date: Fri, 10 Dec 2010 11:42:09 +0000
Message-ID: <1291981329.2483.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: README.hardware
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
X-List-Received-Date: Fri, 10 Dec 2010 11:42:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 13:35 -0600, Tom Zanussi wrote:
> On Thu, 2010-12-09 at 11:18 -0800, Gary Thomas wrote:
> > On 12/09/2010 12:08 PM, Joshua Lock wrote:
> > > On Wed, 2010-12-08 at 06:47 -0700, Gary Thomas wrote:
> > >> This file seems quite out of date, in fact it's not been updated
> > >> for 9 months :-(
> > >>
> > >> I don't know enough details to suggest a patch, but I think it
> > >> would be useful to update it to reflect "today's Poky/Yocto" world,
> > >> especially with the new visibility of the project.
> > >>
> > >
> > > I agree, although I'm also wondering if it would be better to have this
> > > information on the wiki where it can be more easily maintained by the
> > > community.
> > >
> > > Or a balance? any machine in meta/conf/machine documented in
> > > README.hardware and anything else on the wiki.
> > >
> > 
> > Wikis are great, but I tend to think of the Poky "checkout" tree
> > as self-sufficient.  It has the full manual, etc, already so forcing
> > the user to have to go to the Wiki for such information (which is
> > really only overview anyway) would not be ideal.  A combination
> > of hard files and Wiki would be OK as long as the README.hardware
> > at least mentions the "well sanctioned" ports, which right now
> > it does not.
> > 
> > I also tend to err on the side of my [sadly] many customers
> > that may have to work in non-internet-connected environments,
> > so making them have to get to a Wiki to find such answers is
> > not really acceptable.
> > 
> 
> I touched a bit on the current README.hardware in this posting, which
> suggests converting each machine into a BSP layer:
> 
> https://lists.yoctoproject.org/pipermail/poky/2010-December/001104.html
> 
> In that scheme, the individual sections in README.hardware would be
> moved into their own machine-specific READMEs for each BSP, keeping
> everything together.  The individual READMEs could also be made
> separately available on the 'BSP downloads' page and/or wiki for
> convenience.  Does that sound reasonable?

This sounds reasonable to me.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


