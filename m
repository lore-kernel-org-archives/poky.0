Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C93974C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 11:38:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Feb 2011 09:38:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="386428994"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by azsmga001.ch.intel.com with ESMTP; 09 Feb 2011 09:38:52 -0800
Message-ID: <4D52D11C.50904@linux.intel.com>
Date: Wed, 09 Feb 2011 09:38:36 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
In-Reply-To: <1297196798-23779-2-git-send-email-yanok@emcraft.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 2/3] u-boot: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Wed, 09 Feb 2011 17:38:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2011 12:26 PM, Ilya Yanok wrote:
> Signed-off-by: Ilya Yanok<yanok@emcraft.com>
> ---
>   meta/recipes-bsp/uboot/u-boot.inc |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-bsp/uboot/u-boot.inc b/meta/recipes-bsp/uboot/u-boot.inc
> index 889f621..6492016 100644
> --- a/meta/recipes-bsp/uboot/u-boot.inc
> +++ b/meta/recipes-bsp/uboot/u-boot.inc
> @@ -5,6 +5,8 @@ PRIORITY = "optional"
>   LICENSE = "GPL"
>   PROVIDES = "virtual/bootloader"
>
> +LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"
> +

 From what I can tell u-boot.inc is only used by u-boot_git.bb which 
already defines LIC_FILES_CHKSUM and the appropriate GPLv2+ LICENSE 
variable.

It seems to me the LICENSE and LIC_FILES_CHKSUM should be defined in the 
same recipe as the SRC_URI. In this case, u-boot_git.bb. Is there a 
motivating reason to add it to .inc? If so, we should also remove it 
from u-boot_git.bb to avoid unnecessary duplication which leads to 
confusion down the road.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

