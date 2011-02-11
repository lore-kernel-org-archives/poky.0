Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7E2F64C8006D
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 08:42:52 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Feb 2011 06:42:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,455,1291622400"; d="scan'208";a="387438344"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by azsmga001.ch.intel.com with ESMTP; 11 Feb 2011 06:42:51 -0800
Message-ID: <4D554AE5.2030402@intel.com>
Date: Fri, 11 Feb 2011 22:42:45 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1297432560.git.edwin.zhai@intel.com>
	<1297433374.20543.10587.camel@rex>
In-Reply-To: <1297433374.20543.10587.camel@rex>
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
X-List-Received-Date: Fri, 11 Feb 2011 14:42:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



Richard Purdie wrote:
>
> On Fri, 2011-02-11 at 22:01 +0800, Zhai Edwin wrote:
> > From: Zhai Edwin <edwin.zhai@intel.com>
> >
> > RP,
> > Current sstate's fetch code doesn't reflect latest fetcher changes, 
> so old
> > fetch style cause exception and fail silently. This patch fix it.
>
> I've merged the fix to master, thanks.
>
> > Another issue is "import xxx" in python function from sstate.bbclass 
> can only
> > sit in the head of the function, else have UnboundLocalError: "local 
> variable
> > XXX referenced before assignment".
> >
> > We don't know if it is a known limitation of *.bbclass or some 
> potential bug.
> > Can you give some comments?
>
> Good question. The import should really always be at the top of the code
> block in question so I think its a python constraint, not a .bbclass
> one...
>

Seems in-middle "import" is widely used in other *.py,
See bitbake/lib/bb/fetch/ssh.py,
    def go(self, url, urldata, d):
..........................
        import commands
        cmd = 'scp -B -r %s %s %s/' % (
            port,
            commands.mkarg(fr),
            commands.mkarg(ldir)
        )

I found only bb has such limitation:all the "import bb.xxx" are in the 
head of function, and adding stuff before it will cause same problem. 
Anything special for bb module?

> Cheers,
>
> Richard
>
>
>
>
>
>
>

