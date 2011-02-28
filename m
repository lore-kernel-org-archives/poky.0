Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D55A04C800B1
	for <poky@lists.pokylinux.org>; Mon, 28 Feb 2011 00:06:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Feb 2011 22:06:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,238,1297065600"; d="scan'208";a="394885985"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by azsmga001.ch.intel.com with ESMTP; 27 Feb 2011 22:06:27 -0800
Message-ID: <4D6B3BA3.9050303@intel.com>
Date: Mon, 28 Feb 2011 14:07:31 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D6675E0.2040703@mlbassoc.com>
In-Reply-To: <4D6675E0.2040703@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Is sstate broken
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
X-List-Received-Date: Mon, 28 Feb 2011 06:06:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Gary,

Thanks for trying this.
sstate function is a little bit fragile recently. I'll look at it after 
fixing some other bugs.



Gary Thomas wrote:
>
> I tried to run an experiment with SSTATE_MIRRORS on the latest master.
>  From what I can tell, this is 100% not working, although I may just
> not have set it up properly.  Here's what I did:
>
> * Build Poky for my platform in /local/xyz_ppc_poky
> * Set up to build exact same machine/config/etc in /local/xyz_test
>    pointing SSTATE_MIRRORS at /local/xyz_ppc_poky/sstate-cache by
>    adding these lines to local.conf (only configuration change)
>      SSTATE_MIRRORS ?= "\
>      file://.* file:///local/xyz_ppc_poky/sstate-cache/"
>
> The end result is that both builds built (from scratch) the same
> set of packages.  There seems to be no reuse of anything from
> the SSTATE_MIRRORS.
>
> $ du /local/xyz_ppc_poky/* -s
> 20      /local/xyz_ppc_poky/conf
> 1456    /local/xyz_ppc_poky/downloads
> 4       /local/xyz_ppc_poky/pseudodone
> 1010392 /local/xyz_ppc_poky/sstate-cache
> 14434076        /local/xyz_ppc_poky/tmp
>
> $ du -s /local/xyz_test
> 20      /local/xyz_test/conf
> 1456    /local/xyz_test/downloads
> 4       /local/xyz_test/pseudodone
> 1010276 /local/xyz_test/sstate-cache
> 14425860       /local/xyz_test/ tmp
>
> The full build log of the second run is at 
> http://www.mlbassoc.com/poky/build_ppc_with_sstate
> Notice the many lines which say that a particular step failed.  I 
> can't see the reason, nor
> can I find any corresponding log file to help me out.  An example is:
>    ERROR: Task 0 
> (virtual:native:/home/local/poky-amltd/meta/recipes-devtools/pseudo/pseudo_1.0.bb, 
> do_unpack) failed with exit code '1'
>
> Am I missing something?  Now that the build with BB_NO_NETWORK is 
> working well,
> this is my last hurdle to making Poky truly useful for my customers.
>
> Thanks
>
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

