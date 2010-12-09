Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 697664C81225
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 23:21:03 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 21:21:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="634602412"
Received: from unknown (HELO [10.255.13.198]) ([10.255.13.198])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 21:21:02 -0800
Message-ID: <4D00673E.3010701@linux.intel.com>
Date: Wed, 08 Dec 2010 21:21:02 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Adrian Alonso <aalonso@secretlab.ca>
References: <1290789330-20906-1-git-send-email-aalonso@secretlab.ca>
In-Reply-To: <1290789330-20906-1-git-send-email-aalonso@secretlab.ca>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] linux-xilinx: update to kernel 2.6.35
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
X-List-Received-Date: Thu, 09 Dec 2010 05:21:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/2010 08:35 AM, Adrian Alonso wrote:
> * Update to kernel 2.6.35 version
> * Add path linux-xilinx-do-not-use-OS-option.patch to
> * Fix error: Do not use -Os option if --enable-target-optspace
>    is not set.
> * Gcc optospace options is disabled for powerpc machines
> * Bump PR
>
> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
> ---
>   .../linux-xilinx-do-not-use-OS-option.patch        |   27 ++++++++++++++++++++
>   recipes-kernel/linux/linux-xilinx_git.bb           |    8 +++--
>   2 files changed, 32 insertions(+), 3 deletions(-)
>   create mode 100644 recipes-kernel/linux/linux-xilinx/linux-xilinx-do-not-use-OS-option.patch
>
> diff --git a/recipes-kernel/linux/linux-xilinx/linux-xilinx-do-not-use-OS-option.patch b/recipes-kernel/linux/linux-xilinx/linux-xilinx-do-not-use-OS-option.patch
> new file mode 100644
> index 0000000..ee06d9e
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-xilinx/linux-xilinx-do-not-use-OS-option.patch
> @@ -0,0 +1,27 @@
> +From 19f452770d77ba6bf0382c99e124e134b26cb8f6 Mon Sep 17 00:00:00 2001
> +From: Adrian Alonso<aalonso@secretlab.ca>
> +Date: Wed, 24 Nov 2010 14:35:26 -0600
> +Subject: [PATCH] linux-xilinx: do not use -OS option
> +
> +* Fix error: Do not use -Os option if --enable-target-optspace
> +  is not set.
> +* Gcc optospace options is disabled for powerpc machines
> +
> +Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
> +---
> + arch/powerpc/boot/Makefile |    2 +-
> + 1 files changed, 1 insertions(+), 1 deletions(-)
> +
> +Index: git/arch/powerpc/boot/Makefile
> +===================================================================
> +--- git.orig/arch/powerpc/boot/Makefile
> ++++ git/arch/powerpc/boot/Makefile
> +@@ -20,7 +20,7 @@
> + all: $(obj)/zImage
> +
> + BOOTCFLAGS    := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
> +-		 -fno-strict-aliasing -Os -msoft-float -pipe \
> ++		 -fno-strict-aliasing -msoft-float -pipe \
> + 		 -fomit-frame-pointer -fno-builtin -fPIC -nostdinc \
> + 		 -isystem $(shell $(CROSS32CC) -print-file-name=include)
> + BOOTAFLAGS	:= -D__ASSEMBLY__ $(BOOTCFLAGS) -traditional -nostdinc
> diff --git a/recipes-kernel/linux/linux-xilinx_git.bb b/recipes-kernel/linux/linux-xilinx_git.bb
> index 424bd67..9b44e83 100644
> --- a/recipes-kernel/linux/linux-xilinx_git.bb
> +++ b/recipes-kernel/linux/linux-xilinx_git.bb
> @@ -7,12 +7,14 @@ DEFAULT_PREFERENCE = "-1"
>   DEFAULT_PREFERENCE_virtex4 = "1"
>   DEFAULT_PREFERENCE_virtex5 = "1"
>
> -PV = "2.6.34+git"
> -PR = "r1"
> +TAG="xilinx_v2.6.35"
> +PV = "2.6.35+git"
> +PR = "r2"
>
> -SRCREV = "17431547113100a3ae0a622b9f76ad17fb76eb56"
> +SRCREV = "${TAG}"
>   SRC_URI = "git://git.xilinx.com/linux-2.6-xlnx.git;protocol=git \
>              file://xilinxfb-update-tft-comp.patch \
> +           file://linux-xilinx-do-not-use-OS-option.patch \
>   		   file://defconfig"
>
>   inherit kernel xilinx-bsp
Adrian,

Thanks for the patch, I have pulled it into meta-xilinx

Sau!


-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


