Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E5D64C80263
	for <poky@yoctoproject.org>; Tue, 10 May 2011 10:33:05 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 08:33:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,346,1301900400"; d="scan'208";a="690700943"
Received: from unknown (HELO [10.255.12.71]) ([10.255.12.71])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2011 08:32:55 -0700
Message-ID: <4DC95AAB.5090202@linux.intel.com>
Date: Tue, 10 May 2011 08:32:59 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1304710036.git.dvhart@linux.intel.com>
	<59d2c786f63843c31a236080fbd1b7e5402cc111.1304710036.git.dvhart@linux.intel.com>
In-Reply-To: <59d2c786f63843c31a236080fbd1b7e5402cc111.1304710036.git.dvhart@linux.intel.com>
Subject: Re: [PATCH] atom-pc: use linux-yocto (2.6.37) kernel
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
X-List-Received-Date: Tue, 10 May 2011 15:33:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Now that Bruce's patches moving machines into meta-yocto are in, this
one is ready to pull.

--
Darren

On 05/06/2011 12:28 PM, Darren Hart wrote:
> From: Darren Hart <dvhart@linux.intel.com>
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dvhart/atom-pc
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/atom-pc
> 
> Thanks,
>     Darren Hart <dvhart@linux.intel.com>
> ---
> 
> 
> Darren Hart (1):
>   atom-pc: use linux-yocto (2.6.37) kernel
> 
>  meta-yocto/conf/machine/atom-pc.conf               |    2 +-
>  .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> 
> Tested boot, network, sato desktop, amixer, and audio playback on a Toshiba
> NB305 netbook.
> 
> Depends on "linux-yocto: move non-core machines to meta-yocto" from
> Bruce Ashfield to the yocto list:
> Message-Id: <a258388e5b8d134009bb37cfc9f6b1c1dd8ba94e.1304707341.git.bruce.ashfield@windriver.com>
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta-yocto/conf/machine/atom-pc.conf               |    2 +-
>  .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
> index b94deb2..5220efe 100644
> --- a/meta-yocto/conf/machine/atom-pc.conf
> +++ b/meta-yocto/conf/machine/atom-pc.conf
> @@ -12,7 +12,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 wifi \
>  
>  KERNEL_IMAGETYPE = "bzImage"
>  
> -PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>  #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
>  PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
>  PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
> index e4aa7fd..3f2d795 100644
> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
> @@ -9,4 +9,4 @@ SRCREV_machine_routerstationpro = "95ca94d2e71ca2db6822a37a7f575fa79c3d05d0"
>  SRCREV_machine_mpc8315e-rdb = "53c800c244e73d81d2832f6da306eeae3b09e5dc"
>  SRCREV_machine_beagleboard = "b906f358fd404a1e74a961f25079274e0d933ee1"
>  
> -COMPATIBLE_MACHINE = "(mpc8315e-rdb|routerstationpro|beagleboard)"
> +COMPATIBLE_MACHINE = "(mpc8315e-rdb|routerstationpro|beagleboard|atom-pc)"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

