Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A2C0F4C800C0
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 18:36:42 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Jun 2011 16:36:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,372,1304319600"; d="scan'208";a="15324771"
Received: from unknown (HELO [10.255.13.47]) ([10.255.13.47])
	by orsmga001.jf.intel.com with ESMTP; 15 Jun 2011 16:36:41 -0700
Message-ID: <4DF94208.2000002@linux.intel.com>
Date: Wed, 15 Jun 2011 16:36:40 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <it8ite$i96$1@dough.gmane.org>	<4DF80B84.9000304@linux.intel.com>	<4DF890F0.1020307@reliableembeddedsystems.com>	<4DF8E01F.8040209@linux.intel.com>
	<itaphs$mug$1@dough.gmane.org>
In-Reply-To: <itaphs$mug$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: bernard 5.0.1 and beagle-xm rev c
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
X-List-Received-Date: Wed, 15 Jun 2011 23:36:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/15/2011 10:18 AM, Robert Berger wrote:
> Hi,
> 
> On 06/15/2011 07:38 PM, Darren Hart wrote:
>>
>> For details on that effort and it's status, please see:
>>
>> https://lists.yoctoproject.org/pipermail/yocto/2011-June/001599.html
>>
> 
> I'm aware of this.
> 
>>
>> Both Koen and Jason K. have been helping to get the right bits merged
>> for the kernel. I had hoped to use mainline u-boot, but it appears we
>> may need at least a set of patches in support of Rev C.
> 
> What else is needed in addition to [2]?


Mainline u-boot appears to be adequate according to Jason.


> 
>>
>> The updated BSP will be released with 1.1. My patches and commits will
>> of course hit the list before then and you can build from master once
>> they arrive there. Within a week I suspect.
>>
> 
> I hope we'll have something which works without graphics on the Beagle
> XM - Rev C before October (1.1) - before summer would be great.
>


We won't be making another 1.0 release for the Beagleboard. The refresh
will come with 1.1. If you don't want to build master for the entire
image, you could build the linux-yocto recipe from master and install
uImage and the kernel modules over a bernard image. I should have all
the necessary bits committed in the next few days.


> This means, I would assume, gcc 4.6.0 fixes and the Beagle XM Rev C
> stuff. I did not dare to touch master due to the gcc 4.6.0 issues.
> Will this be fixed as well in the near future?


This is resolved for ARM with the following patch from mainline
linux-2.6.git:

commit 139540170d9d9b7ead3caaf540f161756b356d56
Author: Rabin Vincent <rabin@rab.in>
Date:   Wed Apr 27 21:07:28 2011 +0530

    USB: ehci: remove structure packing from ehci_def

    As pointed out by Arnd Bergmann, in include/linux/usb/ehci_def.h, struct
    ehci_caps is defined with __attribute__((packed)) for no good reason,
    and this triggers undefined behaviour when using ARM's readl() on
    pointers to elements of this structure:

    http://lkml.kernel.org/r/201102021700.20683.arnd@arndb.de

    The same problem exists with the other two structures in ehci_def.h too,
    so remove the __attribute__((packed)) from all of them.

    Cc: Arnd Bergmann <arnd@arndb.de>
    Signed-off-by: Rabin Vincent <rabin@rab.in>
    Signed-off-by: Greg Kroah-Hartman <gregkh@suse.de>



> 
> I also played around with the patches in the meantime and
> 
> [1] for the x-loader
> [2] for for u-boot
> 
> seem to apply cleanly on whatever comes with bernard 5.0.1
> 
> [1]
> http://gitorious.org/x-loader/x-loader/commit/2efa178acd56d83c86210b5934895cfb9ea62125
> 
> [2]
> http://git.denx.de/?p=u-boot.git;a=commitdiff;h=f6e593bb1255d1e15201cb5dec8c95264489e729
> 
> The kernel patch against 2.6.37 seems to be a bit more involved.
> 
> Of course more code might be needed to make the Beagle XM Rev C work.
> 
> Regards,
> 
> Robert
> 
>> --
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Linux Kernel
> 
> ..."In my egotistical opinion, most people's C programs should be
> indented six feet downward and covered with dirt." - Blair P. Houghton
> 
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

