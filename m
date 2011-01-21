Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DBC54C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 21:39:54 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2011 19:39:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,355,1291622400"; d="scan'208";a="595051079"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 20 Jan 2011 19:39:53 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pg7l7-0002xg-7h; Fri, 21 Jan 2011 11:33:57 +0800
Date: Fri, 21 Jan 2011 11:33:57 +0800
From: Qing He <qing.he@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110121033357.GD9774@qhe2-db>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
	<20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
	<4D374390.5040500@windriver.com> <1295472284.14388.23266.camel@rex>
	<4D3758A8.1010805@windriver.com> <1295473809.14388.23356.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1295473809.14388.23356.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/3] util-linux: split out libuuid and libblkid
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
X-List-Received-Date: Fri, 21 Jan 2011 03:39:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, 2011-01-20 at 05:50 +0800, Richard Purdie wrote:
> On Wed, 2011-01-19 at 15:33 -0600, Mark Hatle wrote:
> > On 1/19/11 3:24 PM, Richard Purdie wrote:
> > > On Wed, 2011-01-19 at 14:03 -0600, Mark Hatle wrote:
> > >> On 1/19/11 1:51 PM, Koen Kooi wrote:
> > >>> Tangent: have you considered switching to util-linux-ng?
> > >>>
> > >>> Op 19 jan 2011, om 17:55 heeft Paul Eggleton het volgende geschreven:
> > >>>
> > >>>> Split libuuid and libblkid from util-linux into separate runtime packages.
> > >>>> Slightly reduces the overall footprint of other packages that depend on these 
> > >>>> libraries.
> > >>
> > >> The util-linux-ng components are licensed GPLv3, so they could be alternatives,
> > >> but we need a GPLv2 version of the components for some systems.
> > > 
> > > According to the license headers, only lscpu is GPLv3 and since we
> > > package that separately from everything else and clearly identify its
> > > license, we are currently using util-linux-ng for this purpose as things
> > > stand.
> > 
> > Ok good then, for some reason I thought various utilities have been moved to
> > GPLv3 (other then lscpu).. I must have been mistaken.
> > 
> > (and yes I agree changing the name would be a good idea, matching upstream
> > naming makes it much less confusing.)
> 
> My comments apply to the 2.17 version we're using. We'll need to check
> when upgrading there aren't any new v3 issues.

This reminds me to do some additional check when upgrading util-linux. I
was about to upgrade recently, and didn't think about this much.

Thanks,
Qing

