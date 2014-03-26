Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62885E00B90
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 12:46:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2QJkbxY018181
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Mar 2014 12:46:37 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 26 Mar 2014 12:46:36 -0700
Message-ID: <53332E97.7010002@windriver.com>
Date: Wed, 26 Mar 2014 15:46:31 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Denys Dmytriyenko <denis@denix.org>, <poky@yoctoproject.org>
References: <1395861670-20330-1-git-send-email-denis@denix.org>
In-Reply-To: <1395861670-20330-1-git-send-email-denis@denix.org>
Cc: Denys Dmytriyenko <denys@ti.com>
Subject: Re: [PATCH] beaglebone: add OE machine definition for use with linux-yocto kernels
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
X-List-Received-Date: Wed, 26 Mar 2014 19:46:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-26 03:21 PM, Denys Dmytriyenko wrote:
> From: Denys Dmytriyenko <denys@ti.com>
>
> Kernel support is now in linux-yocto-dev and will be moved to a versioned
> recipe once 3.14 is released.

I've tested this locally as we prep 3.14, so I can ack and add
my tested-by:

Cheers,

Bruce

>
> Signed-off-by: Denys Dmytriyenko <denys@ti.com>
> Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>   meta-yocto-bsp/conf/machine/beaglebone.conf        | 37 ++++++++++++++++++++++
>   .../recipes-kernel/linux/linux-yocto-dev.bbappend  |  3 ++
>   2 files changed, 40 insertions(+)
>   create mode 100644 meta-yocto-bsp/conf/machine/beaglebone.conf
>   create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
> new file mode 100644
> index 0000000..0765b33
> --- /dev/null
> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
> @@ -0,0 +1,37 @@
> +#@TYPE: Machine
> +#@NAME: Beaglebone machine
> +#@DESCRIPTION: Machine configuration for http://beagleboard.org/bone and http://beagleboard.org/black boards
> +
> +PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
> +XSERVER ?= "xserver-xorg \
> +           xf86-input-evdev \
> +           xf86-input-mouse \
> +           xf86-video-omapfb \
> +           xf86-input-keyboard"
> +
> +# Ship all kernel modules by default
> +MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
> +
> +EXTRA_IMAGEDEPENDS += "u-boot"
> +
> +DEFAULTTUNE ?= "cortexa8hf-neon"
> +include conf/machine/include/tune-cortexa8.inc
> +
> +IMAGE_FSTYPES += "tar.bz2 jffs2"
> +EXTRA_IMAGECMD_jffs2 = "-lnp "
> +
> +SERIAL_CONSOLE = "115200 ttyO2"
> +
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-dev"
> +PREFERRED_VERSION_linux-yocto-dev ?= "3.14%"
> +
> +KERNEL_IMAGETYPE = "zImage"
> +KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
> +
> +SPL_BINARY = "MLO"
> +UBOOT_SUFFIX = "img"
> +UBOOT_MACHINE = "am335_evm_config"
> +UBOOT_ENTRYPOINT = "0x80008000"
> +UBOOT_LOADADDRESS = "0x80008000"
> +
> +MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
> new file mode 100644
> index 0000000..6cb7e55
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
> @@ -0,0 +1,3 @@
> +KBRANCH_beaglebone = "standard/beaglebone"
> +
> +COMPATIBLE_MACHINE_beaglebone = "beaglebone"
>


