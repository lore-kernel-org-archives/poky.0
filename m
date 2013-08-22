Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8863E00747
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 10:45:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Aug 2013 10:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,935,1367996400"; d="scan'208";a="366929418"
Received: from dvhart-mobl3.amr.corp.intel.com (HELO [10.7.201.147])
	([10.7.201.147])
	by orsmga001.jf.intel.com with ESMTP; 22 Aug 2013 10:45:18 -0700
Message-ID: <1377193516.5259.18.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Thu, 22 Aug 2013 10:45:16 -0700
In-Reply-To: <bb384339bf1cc8737aae6ee4d2851fa1358f8aaa.1377186905.git.ross.burton@intel.com>
References: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
	<bb384339bf1cc8737aae6ee4d2851fa1358f8aaa.1377186905.git.ross.burton@intel.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/4] genericx86: disable USB autosuspend
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
X-List-Received-Date: Thu, 22 Aug 2013 17:45:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-08-22 at 16:59 +0100, Ross Burton wrote:
> USB autosuspend doesn't reliably work with arbitrary hardware, so don't enable
> it.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta-yocto-bsp/conf/machine/genericx86.conf |    2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
> index e144754..042f206 100644
> --- a/meta-yocto-bsp/conf/machine/genericx86.conf
> +++ b/meta-yocto-bsp/conf/machine/genericx86.conf
> @@ -31,8 +31,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware v86d
>  
>  IMAGE_FSTYPES ?= "ext3 cpio.gz live"
>  
> -APPEND += "usbcore.autosuspend=1"
> -
>  GLIBC_ADDONS = "nptl"
>  
>  EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



