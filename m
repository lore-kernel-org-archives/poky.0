Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2BCEE00E2C; Fri, 16 Dec 2016 06:29:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7094E00E29
	for <poky@yoctoproject.org>; Fri, 16 Dec 2016 06:29:31 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP; 16 Dec 2016 06:29:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,357,1477983600"; d="scan'208";a="40551667"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga004.jf.intel.com with ESMTP; 16 Dec 2016 06:29:30 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.38])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 16DFB6A4080;
	Fri, 16 Dec 2016 06:28:41 -0800 (PST)
Date: Fri, 16 Dec 2016 16:28:55 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <20161216142855.GA6398@linux.intel.com>
References: <1481873568-13550-1-git-send-email-kristian.amlie@mender.io>
MIME-Version: 1.0
In-Reply-To: <1481873568-13550-1-git-send-email-kristian.amlie@mender.io>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v1] u-boot/beaglebone: Select Beaglebone Black target specifically.
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
X-List-Received-Date: Fri, 16 Dec 2016 14:29:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 16, 2016 at 08:32:48AM +0100, Kristian Amlie wrote:
> The am335x_evm_config target has a subtle problem which is not present
> in the am335x_boneblack_config target: When booting from an external
> MMC card, the internal MMC is not accessible using the former target.
> 
> This problem was introduced in U-Boot in commit 80b24fcd3083515e6b961,
> due to the addition of the CONFIG_DM_MMC option, and the
> am335x_boneblack_config target does not have this problem.
> 
> Signed-off-by: Kristian Amlie <kristian.amlie@mender.io>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
> index fc6a527..24a95b4 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
> @@ -31,7 +31,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>  
>  SPL_BINARY = "MLO"
>  UBOOT_SUFFIX = "img"
> -UBOOT_MACHINE = "am335x_evm_config"
> +UBOOT_MACHINE = "am335x_boneblack_config"
>  UBOOT_ENTRYPOINT = "0x80008000"
>  UBOOT_LOADADDRESS = "0x80008000"
>  

Would this work for Beaglebone white?

--
Regards,
Ed

