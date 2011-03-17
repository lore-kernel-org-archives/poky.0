Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DE4D04C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 21:07:35 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2011 19:07:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,197,1299484800"; d="scan'208";a="898093327"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2011 19:07:34 -0700
Date: Thu, 17 Mar 2011 10:13:34 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110317021334.GA26323@kyu3-hedt>
References: <4D812FD5.5050504@linux.intel.com>
	<1300320837.30423.1924.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1300320837.30423.1924.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Darren Hart <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH A or B] Fix for bug #853 - matchbox-panel segfaults, X becomes unusable
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
X-List-Received-Date: Thu, 17 Mar 2011 02:07:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mar 17, 00:13, Richard Purdie wrote:
> On Wed, 2011-03-16 at 14:47 -0700, Darren Hart wrote:
> > The root cause of the matchbox-panel segfault is the same as for the 
> > previous two bugs addressing the same issue:
> > 
> > o Bug 224 - [Netbook/emenlow] matchbox-panel segfault after X startup
> > o Bug 738 - matchbox-panel segfault after X startup
> > 
> > There apparently is a bug in gcc which results in the omission of some 
> > code leading to the segfault on core2. The following flags resolve the 
> > problem.
> > 
> > FULL_OPTIMIZATION = "-fexpensive-optimizations -frename-registers -O2 
> > -ggdb -feliminate-unused-debug-types"
> > 
> > We can continue to patch each new machine's gtk+ recipe that is based on 
> > atom-pc.conf, or we can just add the above to tune-atom.conf. I've 
> > tested both on both the n450 and a Toshiba NB305 netbook, and each 
> > solution is effective.
> > 
> > Chaging it in tune-atom.conf likely fixes other bugs we either haven't 
> > solved yet or simply haven't hit. It is also much more invasive, and we 
> > may not be willing to accept that this close to 1.0. The patches follow, 
> > and we can include one or the other.
> > 
> > Preferences?
> 
> I'm in favour of C which is to add this to tune-atom.inc:
> 
> FULL_OPTIMIZATION_pn-gtk+ = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
> 
> :)
> 
> Cheers,
> 
> Richard

I have an option D :)

i.e. in gtk+_2.22.1.bb, add:
FULL_OPTIMIZATION_core2= "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"

because this issue is caused by gcc optimization for core2 arch, so in theory, all machine with core2 arch setting will be affected, no only limited to atom machine

Regards
Ke

