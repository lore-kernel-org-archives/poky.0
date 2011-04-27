Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A1D44C80570
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 14:07:46 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Apr 2011 12:07:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="426597517"
Received: from unknown (HELO [10.255.13.11]) ([10.255.13.11])
	by azsmga001.ch.intel.com with ESMTP; 27 Apr 2011 12:07:45 -0700
Message-ID: <4DB8697F.9000802@linux.intel.com>
Date: Wed, 27 Apr 2011 12:07:43 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1303929862.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1303929862.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto: create SMP config fragement
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
X-List-Received-Date: Wed, 27 Apr 2011 19:07:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/27/2011 11:46 AM, Bruce Ashfield wrote:
> Richard/Saul,
> 
> Please pull this SRCREV update, the patch pretty much says 
> it all. We are adding a SMP config fragement so that BSPs
> can re-use and optionally enable this (for BSPs that may
> or may not want to always be SMP).

This is required to address Bug 1010, which is targeted for 1.0 Point
Release. Please apply to the bernard branch. There will be no impact to
any BSPs with only this change. As soon as this is in, I will commit
updates to the meta-intel/meta-n450 BSP to build an SMP kernel. The n450
will be the only affected BSP.

> 
> cc: Darren Hart <dvhart@linux.intel.com>
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: zedd/smp
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/smp
> 
> Thanks,
>     Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> 
> 
> Bruce Ashfield (1):
>   linux-yocto: create SMP config fragment
> 
>  .../conf/distro/include/poky-default-revisions.inc |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

