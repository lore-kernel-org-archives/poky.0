Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 93E414C80B70
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 13:35:29 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Dec 2010 11:35:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,321,1288594800"; d="scan'208";a="634823056"
Received: from unknown (HELO [10.255.13.241]) ([10.255.13.241])
	by fmsmga002.fm.intel.com with ESMTP; 09 Dec 2010 11:35:28 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D012B68.1000201@mlbassoc.com>
References: <4CFF8C70.7010803@mlbassoc.com>
	<1291921712.6078.48.camel@scimitar>  <4D012B68.1000201@mlbassoc.com>
Date: Thu, 09 Dec 2010 13:35:32 -0600
Message-ID: <1291923332.18502.158.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
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
X-List-Received-Date: Thu, 09 Dec 2010 19:35:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 11:18 -0800, Gary Thomas wrote:
> On 12/09/2010 12:08 PM, Joshua Lock wrote:
> > On Wed, 2010-12-08 at 06:47 -0700, Gary Thomas wrote:
> >> This file seems quite out of date, in fact it's not been updated
> >> for 9 months :-(
> >>
> >> I don't know enough details to suggest a patch, but I think it
> >> would be useful to update it to reflect "today's Poky/Yocto" world,
> >> especially with the new visibility of the project.
> >>
> >
> > I agree, although I'm also wondering if it would be better to have this
> > information on the wiki where it can be more easily maintained by the
> > community.
> >
> > Or a balance? any machine in meta/conf/machine documented in
> > README.hardware and anything else on the wiki.
> >
> 
> Wikis are great, but I tend to think of the Poky "checkout" tree
> as self-sufficient.  It has the full manual, etc, already so forcing
> the user to have to go to the Wiki for such information (which is
> really only overview anyway) would not be ideal.  A combination
> of hard files and Wiki would be OK as long as the README.hardware
> at least mentions the "well sanctioned" ports, which right now
> it does not.
> 
> I also tend to err on the side of my [sadly] many customers
> that may have to work in non-internet-connected environments,
> so making them have to get to a Wiki to find such answers is
> not really acceptable.
> 

I touched a bit on the current README.hardware in this posting, which
suggests converting each machine into a BSP layer:

https://lists.yoctoproject.org/pipermail/poky/2010-December/001104.html

In that scheme, the individual sections in README.hardware would be
moved into their own machine-specific READMEs for each BSP, keeping
everything together.  The individual READMEs could also be made
separately available on the 'BSP downloads' page and/or wiki for
convenience.  Does that sound reasonable?

Thanks,

Tom



