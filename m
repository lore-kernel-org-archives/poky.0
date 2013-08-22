Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0636E00747
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 10:46:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Aug 2013 10:46:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,935,1367996400"; d="scan'208";a="366930290"
Received: from dvhart-mobl3.amr.corp.intel.com (HELO [10.7.201.147])
	([10.7.201.147])
	by orsmga001.jf.intel.com with ESMTP; 22 Aug 2013 10:46:35 -0700
Message-ID: <1377193593.5259.19.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Thu, 22 Aug 2013 10:46:33 -0700
In-Reply-To: <eba8d2a94e36103fabecdd0c68142e2ea1d21b10.1377186905.git.ross.burton@intel.com>
References: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
	<eba8d2a94e36103fabecdd0c68142e2ea1d21b10.1377186905.git.ross.burton@intel.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/4] linux-yocto: switch genericx86 to use common-pc
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
X-List-Received-Date: Thu, 22 Aug 2013 17:46:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-08-22 at 16:59 +0100, Ross Burton wrote:
> The common-pc machine is now more featureful, so switch from atom-pc to common-pc.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>


> ---
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend |    4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
> index c4c005d..51c3736 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
> @@ -1,5 +1,5 @@
>  KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
> -KBRANCH_genericx86  = "standard/common-pc/atom-pc"
> +KBRANCH_genericx86  = "standard/common-pc/base"
>  KBRANCH_routerstationpro = "standard/routerstationpro"
>  KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
>  KBRANCH_beagleboard = "standard/beagleboard"
> @@ -18,3 +18,5 @@ COMPATIBLE_MACHINE_genericx86 = "genericx86"
>  
>  # routerstationpro has a flash size of 16mb
>  KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
> +
> +KMACHINE_genericx86 = "common-pc"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



