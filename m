Return-Path: <mark.hatle@kernel.crashing.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E41F2C54798
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 19:43:19 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
 by mx.groups.io with SMTP id smtpd.web10.4559.1709235795109506913
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Feb 2024 11:43:15 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: kernel.crashing.org, ip: 63.228.1.57, mailfrom: mark.hatle@kernel.crashing.org)
Received: from [192.168.2.236] ([70.99.78.137])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 41TJhB5G001894;
	Thu, 29 Feb 2024 13:43:12 -0600
Message-ID: <723718a0-d741-4791-8e62-4f82434b71f3@kernel.crashing.org>
Date: Thu, 29 Feb 2024 13:43:10 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] [PATCH v4] Add genericarm64 MACHINE
Content-Language: en-US
To: Ross Burton <ross.burton@arm.com>, poky@lists.yoctoproject.org
References: <20240229162440.4039352-1-ross.burton@arm.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
In-Reply-To: <20240229162440.4039352-1-ross.burton@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 19:43:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13289

On 2/29/24 10:24 AM, Ross Burton wrote:
> From: Ross Burton <ross.burton@arm.com>
> 
> This is a new 64-bit "generic" Arm machine, that expects the hardware to
> be SystemReady compatible.
> 
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>   .../conf/templates/default/local.conf.sample  |  1 +
>   meta-yocto-bsp/README.hardware.md             | 18 ++++++++++-
>   meta-yocto-bsp/conf/machine/genericarm64.conf | 31 +++++++++++++++++++
>   .../linux/linux-yocto_6.6.bbappend            |  5 +++
>   meta-yocto-bsp/wic/genericarm64.wks.in        | 11 +++++++
>   5 files changed, 65 insertions(+), 1 deletion(-)
>   create mode 100644 meta-yocto-bsp/conf/machine/genericarm64.conf
>   create mode 100644 meta-yocto-bsp/wic/genericarm64.wks.in

...

> +SystemReady Arm Platforms
> +=========================
> +
> +The genericarm64 MACHINE is designed to work on standard SystemReady IR/SR
> +compliant boards with preinstalled firmware.
> +
> +The genericarm64 MACHINE is currently tested on the following platforms:
> +
> +  * Texas Instruments BeaglePlay (IR)
> +
> +The images built are EFI bootable disk images and can be written directly to a
> +SD card for booting, for example.
> +
> +
>   Texas Instruments Beaglebone (beaglebone-yocto)
>   ===============================================
>   
> diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
> new file mode 100644
> index 00000000000..33ffa3fc019
> --- /dev/null
> +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> @@ -0,0 +1,31 @@
> +#@TYPE: Machine
> +#@NAME: genericarm64
> +#@DESCRIPTION: Generic Arm64 machine for typical SystemReady IR/ES platforms, which
> +#have working firmware and boot via EFI.
> +
> +require conf/machine/include/arm/arch-armv8a.inc
> +
> +# Arm Base System Architecture says v8.0+ is allowed, but FEAT_CRC32 is required
> +DEFAULTTUNE = "armv8a-crc"
> +
> +MACHINE_FEATURES = "acpi alsa bluetooth efi keyboard pci qemu-usermode rtc screen usbhost vfat wifi"

SystemReady IR supports u-boot booting, as far as I'm aware, but this looks like 
it now requires (vs allows) EFI.  Is this the case, or am I reading it wrong?

> +
> +KERNEL_IMAGETYPE = "Image"
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> +
> +# Install all the kernel modules into the rootfs
> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +# Install selected pieces of firmware
> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-wl12xx linux-firmware-wl18xx linux-firmware-wlcommon linux-firmware-rtl-nic"
> +
> +# Use an initramfs and populate it with the kernel modules and key firmware
> +INITRAMFS_IMAGE ?= "core-image-initramfs-boot"
> +PACKAGE_INSTALL:append:pn-core-image-initramfs-boot = " kernel-modules linux-firmware-rtl-nic"

Is initramfs loading required?  Or is this for a specific

> +
> +IMAGE_FSTYPES ?= "wic"
> +WKS_FILE ?= "genericarm64.wks.in"
> +
> +EFI_PROVIDER ?= "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd-boot", "grub-efi", d)}"
> +
> +# Try to bring up one physical serial console, or a virtualized serial console
> +SERIAL_CONSOLES ?= "115200;ttyAMA0 115200;hvc0"

> diff --git a/meta-yocto-bsp/wic/genericarm64.wks.in b/meta-yocto-bsp/wic/genericarm64.wks.in
> new file mode 100644
> index 00000000000..f76e5444be4
> --- /dev/null
> +++ b/meta-yocto-bsp/wic/genericarm64.wks.in
> @@ -0,0 +1,11 @@
> +# short-description: Create an EFI disk image
> +# long-description: Creates a partitioned EFI disk image that the user
> +# can directly dd to boot media.
> +
> +part /boot --source bootimg-efi --sourceparams="loader=${EFI_PROVIDER},initrd=${INITRAMFS_IMAGE}-${MACHINE}.${INITRAMFS_FSTYPES}" --label boot --active --align 1024 --use-uuid

This makes me thing that the initrd IS required as is EFI.

> +
> +part swap --size 32 --label swap --fstype=swap --use-uuid
> +
> +part / --source rootfs --fstype=ext4 --label root --align 1024 --use-uuid
> +
> +bootloader --ptable gpt --timeout=5 --append="rootwait rootfstype=ext4"

