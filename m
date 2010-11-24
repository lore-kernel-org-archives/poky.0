Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3D6E4C80052
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 11:09:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 09:09:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,249,1288594800"; d="scan'208";a="577228591"
Received: from unknown (HELO [10.255.13.187]) ([10.255.13.187])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2010 09:09:33 -0800
Message-ID: <4CED46CC.5070103@linux.intel.com>
Date: Wed, 24 Nov 2010 09:09:32 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Joshua Lock <josh@openedhand.com>
References: <4CEC613A.8020005@linux.intel.com>
	<1290598927.2799.14.camel@scimitar>
In-Reply-To: <1290598927.2799.14.camel@scimitar>
Cc: poky@yoctoproject.org
Subject: Re: linux recipe PV requirements
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
X-List-Received-Date: Wed, 24 Nov 2010 17:09:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2010 03:42 AM, Joshua Lock wrote:
> On Tue, 2010-11-23 at 16:50 -0800, Darren Hart wrote:
>> Are there restrictions on what the PV variable is set to?
>>
>> I'd like to name the recipe I'm working on linux-linaro-2.6.35 and use
>> PR and the git AUTOREV to define the PV value. However, when I make the
>> following change in linux-linaro-2.6.35_git.bb:
>>
>> - PV = "2.6.35"
>> + PV = "${PR}+git${SRCREV}"
>
> You need a kernel version in there, kernel.bbclass adds a depends to the
> kernel of:
>
> virtual/${TARGET_PREFIX}depmod-${@get_kernelmajorversion('${PV}')}

Thanks Josh,

This is the sort of dependency I was looking for. Knowing this, I 
suppose the best thing to do is rename linux-linaro-2.6.35_git to 
linux-linaro-stable_git. I don't particularly care for this approach as 
"stable" is sure to change to a different version in the future - but 
then again, perhaps this is inline with Poky's goals of having a single 
known-good version of a package.

I'll work on updating this upon my return.

Thanks again for the info! While I can find things like the above, I'm 
not yet confident enough to affirmatively attribute them to the failures 
I was seeing.

--
Darren

>
> The get_kernelmajorversion() function in linux-kernel-base.bbclass is
> failing to determine the kernel version and returning None which results
> in the unbuildable dependency error you are seeing.
>
> For further reference I'd point you at the PV's set by other git kernel
> recipes:
>
> joshual@scimitar:~/Projects/Yocto/poky/meta/recipes-kernel/linux
> $ git grep PV\ =
> linux-omap-zoomsync_2.6.32.bb:PV = "2.6.32.7-${OEV}"
> linux-omap2_git.bb:PV = "2.6.26"
> linux-omap2_git.bb:#PV = "2.6.26+2.6.27-rc1+${PR}+git${SRCREV}"
> linux-omap3-pm_git.bb:PV = "2.6.31-rc7+pm+${PR}+git${SRCREV}"
> linux-omap3_git.bb:PV = "2.6.27-rc6+${PR}+git${SRCREV}"
> linux-yocto_git.bb:PV = "2.6.34+git${SRCPV}"
>
> Cheers,
> Joshua


-- 
Darren Hart
Yocto Linux Kernel

