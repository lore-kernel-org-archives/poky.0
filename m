Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED5814C8090F
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 18:51:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Feb 2011 16:51:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,190,1297065600"; d="scan'208";a="391061493"
Received: from unknown (HELO [10.255.12.60]) ([10.255.12.60])
	by azsmga001.ch.intel.com with ESMTP; 18 Feb 2011 16:51:06 -0800
Message-ID: <4D5F13FA.3060304@linux.intel.com>
Date: Fri, 18 Feb 2011 16:51:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1298076091.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1298076091.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] recipes-kernel: follow-up cleanup
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
X-List-Received-Date: Sat, 19 Feb 2011 00:51:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/18/2011 04:46 PM, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> The following patches perform some additional cleanup of the kernel metadata.
> Obsolete kernel recipes are removed. Unused machine config fragments are
> removed. Finally, linux.inc is removed.
>
> This cleans the slate and prepares the way for the next stage of kernel recipe
> cleanup which will include refactoring the kernel.bbclass and reworking
> linux-dummy to provide a good current example of how to create a custom linux
> kernel recipe.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/linux
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/linux
>
> Thanks,
>      Darren Hart<dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (4):
>    zaurus: remove zaurus linux includes
>    linux-2.6.23: remove the linux-2.6.23 recipe
>    linux-2.6.33.2: remove linux-2.6.33.2 recipe

These two patches were 250k and 500k and are pending moderator approval, 
their content can be mostly divined from the "delete mode" lines below.

--
Darren

>    linux.inc: remove the obsolete linux.inc kernel recipe include
>
>   meta/conf/machine/include/zaurus-2.6.inc           |   72 -
>   meta/conf/machine/include/zaurus-clamshell.inc     |   15 -
>   ...x-gcc-4.3-false-modulo-optimization.patch.patch |   48 -
>   .../linux/linux-2.6.23/binutils-buildid-arm.patch  |   16 -
>   .../linux-2.6.23/cm-x270/0001-cm-x270-base2.patch  | 2851 -----
>   .../cm-x270/0002-cm-x270-match-type.patch          |   25 -
>   .../linux-2.6.23/cm-x270/0003-cm-x270-ide.patch    |  186 -
>   .../linux-2.6.23/cm-x270/0004-cm-x270-it8152.patch |  496 -
>   .../linux-2.6.23/cm-x270/0005-cm-x270-pcmcia.patch |  228 -
>   .../linux-2.6.23/cm-x270/0006-ramdisk_load.patch   |   80 -
>   .../cm-x270/0007-mmcsd_large_cards-r0.patch        |   36 -
>   .../cm-x270/0008-cm-x270-nand-simplify-name.patch  |   25 -
>   .../linux/linux-2.6.23/cm-x270/16bpp.patch         |   13 -
>   .../linux/linux-2.6.23/cm-x270/defconfig           | 1204 --
>   .../linux/linux-2.6.23/em-x270/defconfig           | 1354 ---
>   .../em-x270/em-x270-battery-sysfs-fix.patch        |   40 -
>   .../linux/linux-2.6.23/em-x270/em-x270.patch       |12063 --------------------
>   .../linux/linux-2.6.33.2/mpc8313erdb/defconfig     | 1780 ---
>   .../linux/linux-2.6.33.2/qemuarm/defconfig         | 1837 ---
>   .../linux/linux-2.6.33.2/qemumips/defconfig        | 1825 ---
>   .../linux/linux-2.6.33.2/qemuppc/defconfig         | 1780 ---
>   .../linux/linux-2.6.33.2/qemux86/defconfig         | 2160 ----
>   meta/recipes-kernel/linux/linux.inc                |   95 -
>   meta/recipes-kernel/linux/linux_2.6.23.bb          |   83 -
>   meta/recipes-kernel/linux/linux_2.6.33.2.bb        |   15 -
>   25 files changed, 0 insertions(+), 28327 deletions(-)
>   delete mode 100644 meta/conf/machine/include/zaurus-2.6.inc
>   delete mode 100644 meta/conf/machine/include/zaurus-clamshell.inc
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/1300-fix-gcc-4.3-false-modulo-optimization.patch.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/binutils-buildid-arm.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0001-cm-x270-base2.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0002-cm-x270-match-type.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0003-cm-x270-ide.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0004-cm-x270-it8152.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0005-cm-x270-pcmcia.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0006-ramdisk_load.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0007-mmcsd_large_cards-r0.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0008-cm-x270-nand-simplify-name.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/16bpp.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/defconfig
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/em-x270/defconfig
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/em-x270/em-x270-battery-sysfs-fix.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/em-x270/em-x270.patch
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/mpc8313erdb/defconfig
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/qemuarm/defconfig
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/qemumips/defconfig
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/qemuppc/defconfig
>   delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/qemux86/defconfig
>   delete mode 100644 meta/recipes-kernel/linux/linux.inc
>   delete mode 100644 meta/recipes-kernel/linux/linux_2.6.23.bb
>   delete mode 100644 meta/recipes-kernel/linux/linux_2.6.33.2.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

