Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61E6D4C80BD4
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 12:53:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2011 10:53:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,352,1291622400"; d="scan'208";a="698878236"
Received: from doubt.jf.intel.com (HELO [10.7.199.52]) ([10.7.199.52])
	by orsmga001.jf.intel.com with ESMTP; 20 Jan 2011 10:53:31 -0800
Message-ID: <4D3884A0.8030602@linux.intel.com>
Date: Thu, 20 Jan 2011 10:53:20 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Adrian Alonso <aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
In-Reply-To: <1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 05/25] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Thu, 20 Jan 2011 18:53:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/17/2011 12:29 PM, Adrian Alonso wrote:
> * Disable -Os optspace option not supported by gcc use insted
>    -O2
> * Bump PR
>


I ran into this in the recent u-boot_git.bb recipe I added. Rather than 
create a patch to the Makefile, I found it simpler to adding OPTFLAGS to 
the EXTRA_OEMAKE variable in the recipe:

EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"

This negates the -Os in the Makefile.

--
Darren

> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
> ---
>   .../uboot/files/uboot-do-not-use-Os-option.patch   |   30 ++++++++++++++++++++
>   recipes-bsp/uboot/u-boot-xilinx_git.bb             |    8 ++++-
>   2 files changed, 36 insertions(+), 2 deletions(-)
>   create mode 100644 recipes-bsp/uboot/files/uboot-do-not-use-Os-option.patch
>
> diff --git a/recipes-bsp/uboot/files/uboot-do-not-use-Os-option.patch b/recipes-bsp/uboot/files/uboot-do-not-use-Os-option.patch
> new file mode 100644
> index 0000000..c4153e4
> --- /dev/null
> +++ b/recipes-bsp/uboot/files/uboot-do-not-use-Os-option.patch
> @@ -0,0 +1,30 @@
> +From 8a4e1e92becc3994907f18919e9ee8b51b0f377a Mon Sep 17 00:00:00 2001
> +From: Adrian Alonso<aalonso@secretlab.ca>
> +Date: Mon, 6 Dec 2010 22:59:20 -0600
> +Subject: [PATCH 1/2] uboot: do not use Os option
> +
> +* Fix error: Do not use -Os option if --enable-target-optspace
> +  is not set.
> +* Gcc optospace options is disabled for powerpc machines
> +* Use -O2 optimization level instead
> +
> +Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
> +---
> + config.mk |    2 +-
> + 1 files changed, 1 insertions(+), 1 deletions(-)
> +
> +diff --git a/config.mk b/config.mk
> +index a63e9cd..ba629d1 100644
> +--- a/config.mk
> ++++ b/config.mk
> +@@ -138,7 +138,7 @@ ARFLAGS = crv
> + endif
> + RELFLAGS= $(PLATFORM_RELFLAGS)
> + DBGFLAGS= -g # -DDEBUG
> +-OPTFLAGS= -Os #-fomit-frame-pointer
> ++OPTFLAGS= -O2 #-fomit-frame-pointer
> + ifndef LDSCRIPT
> + #LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds.debug
> + ifeq ($(CONFIG_NAND_U_BOOT),y)
> +--
> +1.7.2.3
> diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
> index 50d99e3..3b35ae5 100644
> --- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
> +++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
> @@ -1,9 +1,13 @@
>   require ../meta/recipes-bsp/uboot/u-boot.inc
> -PR = "r2"
> +PR = "r3"
> +THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> +FILESPATH =. "${@base_set_filespath(["${THISDIR}/files"], d)}:"
>
>   BRANCH="master"
>   TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
> -SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git"
> +SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git \
> +           file://uboot-do-not-use-Os-option.patch \
> +          "
>   SRCREV = "${TAG}"
>
>   inherit xilinx-boot


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

