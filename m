Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E0A9D4C800B7
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 01:00:40 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Feb 2011 23:00:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,437,1291622400"; d="scan'208";a="655055523"
Received: from unknown (HELO [10.255.14.205]) ([10.255.14.205])
	by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2011 23:00:40 -0800
Message-ID: <4D4F98A1.9030408@linux.intel.com>
Date: Sun, 06 Feb 2011 23:00:49 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D4EDF23.1010508@mlbassoc.com>
In-Reply-To: <4D4EDF23.1010508@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Can't build mtd-utils-native
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
X-List-Received-Date: Mon, 07 Feb 2011 07:00:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/06/2011 09:49 AM, Gary Thomas wrote:
> Using latest master 50387575ecdb05712958ea3c5caf023d6eb753ba
> The recipe for mtd-utils-native fails to build, log attached.
> 
> Any ideas how to fix this?
> 

I hit this earlier... let me dig up the logs...

Feb 03 14:25:35 <dvhart>	RP__, I'll see if I can resolve this, but mtd_utils do_unpack fails with the new fetcher patch - I reverted it and was able to move past it
Feb 03 14:25:44 <dvhart>	git read-tree v1.4.1 failed with signal 128, output:
Feb 03 14:25:44 <dvhart>	| fatal: Not a valid object name v1.4.1
Feb 03 14:30:38 <RP__>	dvhart: Hmm, which patch did you revert to get past it?
Feb 03 14:30:52 <dvhart>	dfc5faf717ac1f917af398097d5295128548a55d
Feb 03 14:31:00 <dvhart>	which looking at - doesn't make a lot of sense
Feb 03 14:31:00 <--	juliefl has quit (Quit: Leaving.)
Feb 03 14:31:22 <RP__>	dvhart: no :/
Feb 03 14:32:55 <dvhart>	but the do_unpack log now reports success and the do_patch followed and completed
Feb 03 14:33:11 *	dvhart kills, cleans, and rebuilds mtd_utils
...
Feb 03 15:01:28 <dvhart>	RP__, appears to have been a false alarm :/ sorry about that, can't explain it, but I'm not able to reproduce

So, two things to try.

1) do a _full_ clean and try again
$ bitbake -c cleanall mtd-utils-native
$ rm -rf downloads/*mtd-utils* downloads/git/*mtd-utils* sstate-cache/*mtd-utils
$ bitbake mtd-utils-native

If you are still able to produce it,

2) try reverting the commit above
$ git revert dfc5faf717ac1f917af398097d5295128548a55d
followed by all the commands in step 1) above.

Please let us know how it goes, if we have an elusive fetcher bug, we need all
the details on it we can get.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

