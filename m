Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05F5BE00CC3; Tue, 10 Oct 2017 01:36:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE7ADE00C96
	for <poky@yoctoproject.org>; Tue, 10 Oct 2017 01:36:57 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Oct 2017 01:36:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,504,1500966000"; d="scan'208";a="1023556090"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga003.jf.intel.com with ESMTP; 10 Oct 2017 01:36:55 -0700
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 21DDF580358;
	Tue, 10 Oct 2017 01:36:54 -0700 (PDT)
Date: Tue, 10 Oct 2017 10:36:38 +0300
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: drew.moseley@northern.tech
Message-ID: <20171010073638.lj36yrrtmjqefboo@linux.intel.com>
References: <1507600748-27020-1-git-send-email-drew.moseley@northern.tech>
MIME-Version: 1.0
In-Reply-To: <1507600748-27020-1-git-send-email-drew.moseley@northern.tech>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: NeoMutt/20170421 (1.8.2)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] beaglebone: Find /boot partition on mmcblk0
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
X-List-Received-Date: Tue, 10 Oct 2017 08:36:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Drew,

Thank you for the patch!

+1

On Mon, Oct 09, 2017 at 09:59:08PM -0400, drew.moseley@northern.tech wrote:
> From: Drew Moseley <drew.moseley@northern.tech>
> 
> After commit edcf39820f94c84b29c95a0d7b16b8d36857e87b the beaglebone
> builds fail to mount the boot partition as it is specified in
> /etc/fstab with the device node /dev/mmcblkp1.  With systemd in
> particular this is considered an error and the system drops into
> emergency mode.
> 
> Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
> ---
>  meta-yocto-bsp/wic/beaglebone.wks | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto-bsp/wic/beaglebone.wks b/meta-yocto-bsp/wic/beaglebone.wks
> index 0c09a95..967cad7 100644
> --- a/meta-yocto-bsp/wic/beaglebone.wks
> +++ b/meta-yocto-bsp/wic/beaglebone.wks
> @@ -2,5 +2,5 @@
>  # long-description: Creates a partitioned SD card image for Beaglebone.
>  # Boot files are located in the first vfat partition.
>  
> -part /boot --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot --active --align 4 --size 16
> +part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16
>  part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4
> -- 
> 2.7.4
> 
> -- 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
--
Regards,
Ed

