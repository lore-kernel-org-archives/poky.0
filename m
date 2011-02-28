Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D6F24C800B1
	for <poky@lists.pokylinux.org>; Mon, 28 Feb 2011 00:21:01 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Feb 2011 22:20:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,238,1297065600"; d="scan'208";a="394889951"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by azsmga001.ch.intel.com with ESMTP; 27 Feb 2011 22:20:59 -0800
Message-ID: <4D6B3F0E.50701@intel.com>
Date: Mon, 28 Feb 2011 14:22:06 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D67B298.9030107@mlbassoc.com>
In-Reply-To: <4D67B298.9030107@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Out of date warning?
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
X-List-Received-Date: Mon, 28 Feb 2011 06:21:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Gary,

Most of this check has already removed except for ARM.
In theory, check for ARM should also be removed. But there is some 
corner case need to be tested, and I'll try them.

Pls. see
http://bugzilla.pokylinux.org/show_bug.cgi?id=543


Gary Thomas wrote:
>
> Poky just presented me with this warning (on a new machine), when 
> building for
> an ARM (OMAP/3530) platform:
>
> =================================================================================== 
>
> $ bitbake omap-installer-image
> Pseudo is not present but is required, building this first before the 
> main build
> ERROR:  Poky's config sanity checker detected a potential 
> misconfiguration.
>      Either fix the cause of this error or at your own risk disable 
> the checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
>
>      /proc/sys/vm/mmap_min_addr is not 0. This will cause problems 
> with qemu so please fix the value (as root).
>
> To fix this in later reboots, set vm.mmap_min_addr = 0 in 
> /etc/sysctl.conf.
> =================================================================================== 
>
>
> I know this warning was in place because Qemu was used to run some
> tasks, e.g. locale generation.  My impression is that this is no longer
> the case, so do we still need this warning?
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

