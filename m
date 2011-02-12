Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BDA94C8007E
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 18:20:19 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Feb 2011 16:20:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,459,1291622400"; d="scan'208";a="601913253"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by orsmga002.jf.intel.com with ESMTP; 11 Feb 2011 16:20:14 -0800
Message-ID: <4D55D236.8090002@intel.com>
Date: Sat, 12 Feb 2011 08:20:06 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1297432560.git.edwin.zhai@intel.com>	
	<1297433374.20543.10587.camel@rex> <4D554AE5.2030402@intel.com>
	<1297436057.20543.10739.camel@rex>
In-Reply-To: <1297436057.20543.10739.camel@rex>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix sstate error
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
X-List-Received-Date: Sat, 12 Feb 2011 00:20:19 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



Richard Purdie wrote:
>
> On Fri, 2011-02-11 at 22:42 +0800, Zhai, Edwin wrote:
> > Richard Purdie wrote:
> > > Good question. The import should really always be at the top of 
> the code
> > > block in question so I think its a python constraint, not a .bbclass
> > > one...
> > >
> >
> > Seems in-middle "import" is widely used in other *.py,
> > See bitbake/lib/bb/fetch/ssh.py,
> >     def go(self, url, urldata, d):
> > ..........................
> >         import commands
> >         cmd = 'scp -B -r %s %s %s/' % (
> >             port,
> >             commands.mkarg(fr),
> >             commands.mkarg(ldir)
> >         )
> >
> > I found only bb has such limitation:all the "import bb.xxx" are in the
> > head of function, and adding stuff before it will cause same problem.
> > Anything special for bb module?
>
> Is it just specific to the way we hacked the fetch vs fetch2 switch in?
>
> Also, are you saying this problem only happens in parsed python in
> the .bb and .bbclass files or that it happens in the bitbake code in
> general?
>

Also in bitbake code like bitbake/lib/bb/utils.py.

> Cheers,
>
> Richard
>

