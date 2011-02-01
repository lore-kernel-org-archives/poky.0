Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FA2C4C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 11:30:48 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2011 09:30:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,411,1291622400"; d="scan'208";a="382766614"
Received: from unknown (HELO [10.255.14.170]) ([10.255.14.170])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2011 09:30:48 -0800
Message-ID: <4D484348.1020501@linux.intel.com>
Date: Tue, 01 Feb 2011 09:30:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
References: <cover.1296261421.git.darren@dvhart.com>
In-Reply-To: <cover.1296261421.git.darren@dvhart.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] linux-yocto: arm fixes, beagleboard hub and OMAP4 armv7-a +sec extension
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
X-List-Received-Date: Tue, 01 Feb 2011 17:30:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/28/2011 04:40 PM, poky-bounces@yoctoproject.org wrote:
> From: Darren Hart<darren@dvhart.com>
>
> Please apply the following patches to the yocto/standard/base branch and rebase
> at least yocto/standard/beagleboard on base. With these patches in place and
> the corresponding meta patches to follow, the Beagleboard xM will boot the
> linux-yocto kernel.
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib.git
>    Branch: dvhart/base
>    Browse: http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/base

Bruce, this set has not changed, and is still available in my 
contrib/dvhart/base branch.

--
Darren

>
> Thanks,
>      Darren Hart<darren@dvhart.com>
> ---
>
>
> John Rigby (1):
>    OMAP4: enable smc instruction in new assembler versions
>
> Koen Kooi (1):
>    omap3: beaglexm: fix EHCI power up GPIO dir
>
>   arch/arm/mach-omap2/Makefile            |    5 +++--
>   arch/arm/mach-omap2/board-omap3beagle.c |   10 ++++++++--
>   2 files changed, 11 insertions(+), 4 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

