Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8A25E00ACF; Tue, 13 Jun 2017 15:15:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58829E00888
	for <poky@yoctoproject.org>; Tue, 13 Jun 2017 15:15:08 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5DMF6kD031228
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 13 Jun 2017 15:15:06 -0700
Received: from [128.224.23.56] (128.224.23.56) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 13 Jun 2017 15:15:05 -0700
To: <leonardo.sandoval.gonzalez@linux.intel.com>, <poky@yoctoproject.org>
References: <20170613194818.28140-1-leonardo.sandoval.gonzalez@linux.intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <72702332-2607-7413-eb04-270f62a97297@windriver.com>
Date: Wed, 14 Jun 2017 00:15:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <20170613194818.28140-1-leonardo.sandoval.gonzalez@linux.intel.com>
Subject: Re: [PATCH] linux-yocto: remove user-specific description/config files from machine description
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 13 Jun 2017 22:15:10 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 06/13/2017 09:48 PM, leonardo.sandoval.gonzalez@linux.intel.com wrote:
> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
> 
> Remove user-specific descrition files and config fragments from main machine
> description file otherwise double patch/config inclusion may happen. These
> files/fragments are already included on the SRC_URI (see poky commit 2db8f3),
> so no need to reference these inside machine.scc files.

Looks good to me.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Bruce

> 
> [YOCTO #11586]
> 
> Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
> ---
>   .../substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc    | 2 --
>   .../arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc     | 2 --
>   .../substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc   | 2 --
>   .../substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc   | 2 --
>   .../substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc | 2 --
>   .../target/arch/powerpc/recipes-kernel/linux/files/machine.scc          | 2 --
>   .../substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc   | 2 --
>   .../substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc | 2 --
>   8 files changed, 16 deletions(-)
> 
> diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
> index 828400df40..fb3866f119 100644
> --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
> +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
> @@ -4,5 +4,3 @@ kconf non-hardware {{machine}}-non_hardware.cfg
>   
>   include features/usb-net/usb-net.scc
>   
> -kconf hardware {{=machine}}-user-config.cfg
> -include {{=machine}}-user-patches.scc
> diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
> index 0b6b413377..64d3ed181b 100644
> --- a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
> +++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
> @@ -14,5 +14,3 @@ kconf hardware {{=machine}}.cfg
>   # These are used by yocto-kernel to add config fragments and features.
>   # Don't remove if you plan on using yocto-kernel with this BSP.
>   
> -kconf hardware {{=machine}}-user-config.cfg
> -include {{=machine}}-user-patches.scc
> diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
> index 3d32f111b0..3e4c54fcf5 100644
> --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
> +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
> @@ -17,5 +17,3 @@ include cfg/usb-mass-storage.scc
>   include cfg/boot-live.scc
>   include features/power/intel.scc
>   
> -kconf hardware {{=machine}}-user-config.cfg
> -include {{=machine}}-user-patches.scc
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc
> index f39dc3edf1..792fdc94a4 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc
> +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc
> @@ -4,5 +4,3 @@ kconf hardware {{=machine}}.cfg
>   include cfg/usb-mass-storage.scc
>   include cfg/fs/vfat.scc
>   
> -kconf hardware {{=machine}}-user-config.cfg
> -include {{=machine}}-user-patches.scc
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc
> index f39dc3edf1..792fdc94a4 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc
> +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc
> @@ -4,5 +4,3 @@ kconf hardware {{=machine}}.cfg
>   include cfg/usb-mass-storage.scc
>   include cfg/fs/vfat.scc
>   
> -kconf hardware {{=machine}}-user-config.cfg
> -include {{=machine}}-user-patches.scc
> diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc
> index 7aac8b0801..89bb97efd6 100644
> --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc
> +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc
> @@ -6,5 +6,3 @@ include cfg/fs/vfat.scc
>   
>   include cfg/dmaengine.scc
>   
> -kconf hardware {{=machine}}-user-config.cfg
> -include {{=machine}}-user-patches.scc
> diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
> index 8301e05f7d..d25d0a0377 100644
> --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
> +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
> @@ -1,5 +1,3 @@
>   # yocto-bsp-filename {{=machine}}.scc
>   kconf hardware {{=machine}}.cfg
>   
> -kconf hardware {{=machine}}-user-config.cfg
> -include {{=machine}}-user-patches.scc
> diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc
> index 9b7c291a8f..9d20d199b2 100644
> --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc
> +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc
> @@ -10,5 +10,3 @@ include features/i915/i915.scc
>   include cfg/usb-mass-storage.scc
>   include features/power/intel.scc
>   
> -kconf hardware {{=machine}}-user-config.cfg
> -include {{=machine}}-user-patches.scc
> 


