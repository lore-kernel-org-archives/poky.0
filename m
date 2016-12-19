Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EDA1E00E14; Mon, 19 Dec 2016 08:04:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0401E00DFE
	for <poky@yoctoproject.org>; Mon, 19 Dec 2016 08:04:19 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP; 19 Dec 2016 08:03:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,374,1477983600"; d="scan'208";a="44237785"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga005.jf.intel.com with ESMTP; 19 Dec 2016 08:03:41 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.38])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 4B2A46A4082;
	Mon, 19 Dec 2016 08:02:52 -0800 (PST)
Date: Mon, 19 Dec 2016 18:03:27 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <20161219160327.GA23950@linux.intel.com>
References: <1481873568-13550-1-git-send-email-kristian.amlie@mender.io>
	<20161216142855.GA6398@linux.intel.com>
	<eca5fc15-a45f-f320-6e7a-733cb752e322@mender.io>
MIME-Version: 1.0
In-Reply-To: <eca5fc15-a45f-f320-6e7a-733cb752e322@mender.io>
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
X-List-Received-Date: Mon, 19 Dec 2016 16:04:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 19, 2016 at 09:14:58AM +0100, Kristian Amlie wrote:
> On 16/12/16 15:28, Ed Bartosh wrote:
> > On Fri, Dec 16, 2016 at 08:32:48AM +0100, Kristian Amlie wrote:
> >> The am335x_evm_config target has a subtle problem which is not present
> >> in the am335x_boneblack_config target: When booting from an external
> >> MMC card, the internal MMC is not accessible using the former target.
> >>
> >> This problem was introduced in U-Boot in commit 80b24fcd3083515e6b961,
> >> due to the addition of the CONFIG_DM_MMC option, and the
> >> am335x_boneblack_config target does not have this problem.
> >>
> >> Signed-off-by: Kristian Amlie <kristian.amlie@mender.io>
> >> ---
> >>  meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
> >> index fc6a527..24a95b4 100644
> >> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
> >> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
> >> @@ -31,7 +31,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
> >>  
> >>  SPL_BINARY = "MLO"
> >>  UBOOT_SUFFIX = "img"
> >> -UBOOT_MACHINE = "am335x_evm_config"
> >> +UBOOT_MACHINE = "am335x_boneblack_config"
> >>  UBOOT_ENTRYPOINT = "0x80008000"
> >>  UBOOT_LOADADDRESS = "0x80008000"
> >>  
> > 
> > Would this work for Beaglebone white?
> 
> I don't have one, so unfortunately I can't test it. However, the
> beagleboard.org site states that the differences between the two are the
> on-board USB JTAG and serial adapters. Looking at the differences of the
> two configs I can't find anything obvious that would influence this
> (I'll admit that I don't fully understand all the options though).
> 

I don't understand it neither. I'm just worrying that we can break
support for BBW, which is mentioned in README.hardware as poky reference hardware.

> Below is the (sorted) difference. I can't spot anything bad, can you?
> 
> 
> --- configs/am335x_evm_defconfig.sort	2016-12-19 08:50:26.674878278 +0100
> +++ configs/am335x_boneblack_defconfig.sort	2016-12-19
> 08:50:39.163314913 +0100
> @@ -1,6 +1,9 @@
>  CONFIG_AM33XX=y
>  CONFIG_ARM=y
> -# CONFIG_BLK is not set
> +CONFIG_AUTOBOOT_DELAY_STR="d"
> +CONFIG_AUTOBOOT_KEYED=y
> +CONFIG_AUTOBOOT_PROMPT="Press SPACE to abort autoboot in %d seconds\n"
> +CONFIG_AUTOBOOT_STOP_STR=" "
>  CONFIG_CMD_ASKENV=y
>  CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_DFU=y
> @@ -21,38 +24,27 @@
>  CONFIG_CMD_SF=y
>  CONFIG_CMD_SPI=y
>  CONFIG_CMD_USB=y
> -CONFIG_DEFAULT_DEVICE_TREE="am335x-evm"
>  CONFIG_DFU_MMC=y
> -CONFIG_DFU_NAND=y
>  CONFIG_DFU_RAM=y
> -CONFIG_DM_ETH=y
> -CONFIG_DM_I2C=y
> -# CONFIG_DM_MMC_OPS is not set
> -CONFIG_DM_MMC=y
> +CONFIG_DFU_TFTP=y
>  CONFIG_FIT=y
>  CONFIG_G_DNL_MANUFACTURER="Texas Instruments"
>  CONFIG_G_DNL_PRODUCT_NUM=0xd022
>  CONFIG_G_DNL_VENDOR_NUM=0x0451
>  CONFIG_HUSH_PARSER=y
> -CONFIG_OF_CONTROL=y
> -CONFIG_OF_LIST="am335x-evm am335x-bone am335x-boneblack am335x-evmsk
> am335x-bonegreen am335x-icev2"
> -CONFIG_OMAP_TIMER=y
> -CONFIG_RSA=y
> +CONFIG_OF_LIBFDT=y
>  CONFIG_SPI_FLASH_WINBOND=y
>  CONFIG_SPI_FLASH=y
> -CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_MTD_SUPPORT=y
>  CONFIG_SPL_MUSB_NEW_SUPPORT=y
> -CONFIG_SPL_OF_LIBFDT=y
> +# CONFIG_SPL_NAND_SUPPORT is not set
>  CONFIG_SPL_OS_BOOT=y
>  CONFIG_SPL_STACK_R_ADDR=0x82000000
>  CONFIG_SPL_STACK_R=y
>  CONFIG_SPL=y
>  CONFIG_SYS_CONSOLE_INFO_QUIET=y
> -CONFIG_SYS_EXTRA_OPTIONS="NAND"
> +CONFIG_SYS_EXTRA_OPTIONS="EMMC_BOOT"
>  CONFIG_SYS_NS16550=y
>  CONFIG_TARGET_AM335X_EVM=y
> -CONFIG_TIMER=y
>  CONFIG_USB_GADGET_DOWNLOAD=y
>  CONFIG_USB_GADGET=y
>  CONFIG_USB_MUSB_GADGET=y
> 
> 
> I could also fire off an email to the U-Boot list if we're not confident
> in this fix.
> 
> -- 
> Kristian

-- 
--
Regards,
Ed

