Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAEA44C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 11:43:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Feb 2011 09:42:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="601019633"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2011 09:42:56 -0800
Message-ID: <4D52D210.6070905@linux.intel.com>
Date: Wed, 09 Feb 2011 09:42:40 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-3-git-send-email-yanok@emcraft.com>
In-Reply-To: <1297196798-23779-3-git-send-email-yanok@emcraft.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 3/3] u-boot: compile with -O2 on PowerPC
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
X-List-Received-Date: Wed, 09 Feb 2011 17:43:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2011 12:26 PM, Ilya Yanok wrote:
> gcc on PowerPC is currently compiled with -Os optimization disabled so
> we have to use -O2 on PowerPC instead.
>
> Signed-off-by: Ilya Yanok<yanok@emcraft.com>
> ---
>   meta/recipes-bsp/uboot/u-boot.inc |    7 ++++++-
>   1 files changed, 6 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-bsp/uboot/u-boot.inc b/meta/recipes-bsp/uboot/u-boot.inc
> index 6492016..7694c77 100644
> --- a/meta/recipes-bsp/uboot/u-boot.inc
> +++ b/meta/recipes-bsp/uboot/u-boot.inc
> @@ -22,7 +22,12 @@ do_compile () {
>   	unset CFLAGS
>   	unset CPPFLAGS
>   	oe_runmake ${UBOOT_MACHINE}
> -	oe_runmake all
> +	# -Os is disabled on PowerPC
> +	if [ ${TARGET_ARCH} == "powerpc" ] ; then
> +		oe_runmake OPTFLAGS=-O2 all
> +	else
> +		oe_runmake all
> +	fi


This is already disabled in u-boot.inc with the following line:

# GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS
EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"

Resetting OPTFLAGS to '' removes the -Os from the variable in the 
Makefile. This isn't just a PowerPC problem, it also manifested on ARM, 
I believe it is a GCC 4.5.1 issue.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

