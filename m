Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8DBAE00406
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 10:44:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Aug 2013 10:41:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,935,1367996400"; d="scan'208";a="391727434"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.201.147]) ([10.7.201.147])
	by orsmga002.jf.intel.com with ESMTP; 22 Aug 2013 10:44:23 -0700
Message-ID: <1377193460.5259.17.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Thu, 22 Aug 2013 10:44:20 -0700
In-Reply-To: <c6e699b18e2e78f9e44de5c49482afe0d46f8f95.1377186905.git.ross.burton@intel.com>
References: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
	<c6e699b18e2e78f9e44de5c49482afe0d46f8f95.1377186905.git.ross.burton@intel.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/4] genericx86: add v86d to machine recommends for uvesafb
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
X-List-Received-Date: Thu, 22 Aug 2013 17:44:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-08-22 at 16:59 +0100, Ross Burton wrote:
> The uvesafb framebuffer driver needs a userspace helper.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  meta-yocto-bsp/conf/machine/genericx86.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
> index 88464fa..e144754 100644
> --- a/meta-yocto-bsp/conf/machine/genericx86.conf
> +++ b/meta-yocto-bsp/conf/machine/genericx86.conf
> @@ -27,7 +27,7 @@ XSERVER ?= "xserver-xorg \
>  
>  #MACHINE_EXTRA_RDEPENDS = "rt2860"
>  
> -MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware"
> +MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware v86d"

This is added to MACHINE_ESSENTIAL_EXTRA_RDEPENDS for qemux86. 

MACHINE_EXTRA_RRECOMMENDS does not impact packagegroup-core-boot, and
therefor not core-image-minimal. Perhaps that is the intention?

These 4 variables can be confusing, so I wanted to ask the question and
make sure we are getting the intended behavior here.

>  
>  IMAGE_FSTYPES ?= "ext3 cpio.gz live"
>  

live.... do we halfta? I know... for now... sigh....

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



