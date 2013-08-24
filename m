Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E88E3E003FA
	for <poky@yoctoproject.org>; Fri, 23 Aug 2013 20:39:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Aug 2013 20:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,946,1367996400"; d="scan'208";a="392534121"
Received: from unknown (HELO [10.255.14.153]) ([10.255.14.153])
	by orsmga002.jf.intel.com with ESMTP; 23 Aug 2013 20:39:36 -0700
Message-ID: <1377315576.5259.92.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 23 Aug 2013 20:39:36 -0700
In-Reply-To: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
References: <cover.1377186905.git.ross.burton@intel.com>
	<2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/4] linux-yocto: remove genericx86 support from 3.4
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
X-List-Received-Date: Sat, 24 Aug 2013 03:39:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi RP,

This one is still pending merge.

On Thu, 2013-08-22 at 16:59 +0100, Ross Burton wrote:
> 3.4 doesn't actually support genericx86, so remove any mention of it.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
> index c3d1290..160bcbb 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
> @@ -1,5 +1,4 @@
>  KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
> -KBRANCH_genericx86  = "standard/common-pc/atom-pc"
>  KBRANCH_routerstationpro = "standard/routerstationpro"
>  KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
>  KBRANCH_beagleboard = "standard/beagleboard"
> @@ -14,7 +13,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>  COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>  COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>  COMPATIBLE_MACHINE_atom-pc = "atom-pc"
> -COMPATIBLE_MACHINE_genericx86 = "genericx86"
>  
>  # routerstationpro has a flash size of 16mb
>  KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



