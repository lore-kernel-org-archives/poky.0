Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72D91E00BC0; Fri, 23 Dec 2016 08:26:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49D66E00B8F
	for <poky@yoctoproject.org>; Fri, 23 Dec 2016 08:26:41 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 23 Dec 2016 08:26:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,393,1477983600"; d="scan'208";a="45863878"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga005.jf.intel.com with ESMTP; 23 Dec 2016 08:26:41 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.38])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 31DA76A4006
	for <poky@yoctoproject.org>; Fri, 23 Dec 2016 08:25:51 -0800 (PST)
Date: Fri, 23 Dec 2016 18:26:26 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Message-ID: <20161223162626.GA5004@linux.intel.com>
References: <1482441297-14120-1-git-send-email-ed.bartosh@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <1482441297-14120-1-git-send-email-ed.bartosh@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [PATCH] beaglebone: add beaglebone.wks
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 23 Dec 2016 16:26:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

This patch depends on oe-core
patch:http://lists.openembedded.org/pipermail/openembedded-core/2016-December/130585.html

please merge it after oe-core patch is merged.

Thanks,
Ed

On Thu, Dec 22, 2016 at 11:14:57PM +0200, Ed Bartosh wrote:
> Currently beaglebone machine uses sdimage-bootpart.wks from
> scripts/lib/wic/canned-wks. It'd be easier to find this file
> if it's name contains machine name and it's located in the same
> layer.
> 
> Added beaglebone.wks to meta-yocto-bsp/wic/ to make it independent
> on changes in oe-core and easier to maintain.
> 
> [YOCTO #8719]
> 
> Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
>  meta-yocto-bsp/wic/beaglebone.wks           | 6 ++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)
>  create mode 100644 meta-yocto-bsp/wic/beaglebone.wks
> 
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
> index 24a95b4..9286d1b 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
> @@ -16,7 +16,7 @@ include conf/machine/include/tune-cortexa8.inc
>  
>  IMAGE_FSTYPES += "tar.bz2 jffs2 wic wic.bmap"
>  EXTRA_IMAGECMD_jffs2 = "-lnp "
> -WKS_FILE = "sdimage-bootpart.wks"
> +WKS_FILE ?= "beaglebone.wks"
>  IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
>  do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
>  
> diff --git a/meta-yocto-bsp/wic/beaglebone.wks b/meta-yocto-bsp/wic/beaglebone.wks
> new file mode 100644
> index 0000000..0c09a95
> --- /dev/null
> +++ b/meta-yocto-bsp/wic/beaglebone.wks
> @@ -0,0 +1,6 @@
> +# short-description: Create SD card image for Beaglebone
> +# long-description: Creates a partitioned SD card image for Beaglebone.
> +# Boot files are located in the first vfat partition.
> +
> +part /boot --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot --active --align 4 --size 16
> +part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4
> -- 
> 2.1.4
> 

-- 
--
Regards,
Ed

