Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A4054C80048
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 19:31:05 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 17:31:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,351,1288594800"; d="scan'208";a="362357187"
Received: from unknown (HELO [10.255.13.76]) ([10.255.13.76])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 17:31:04 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Yocto Project Discussions <yocto@linux.intel.com>
In-Reply-To: <4D095AB5.6060805@linux.intel.com>
References: <4D095AB5.6060805@linux.intel.com>
Date: Wed, 15 Dec 2010 19:31:04 -0600
Message-ID: <1292463064.2104.40.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Yocto] RFC: README.hardware: Intel Atom device documentation
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
X-List-Received-Date: Thu, 16 Dec 2010 01:31:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-15 at 16:17 -0800, Darren Hart wrote:
> I ran across some issues working with USB keys while booting a couple
> different Intel Atom based devices. I drafted the following documenting
> what I learned from the process. I'd like to add this (or something
> similar) to README.hardware.
> 
> Thoughts/Comments?
> 

Hey, thanks for this - it solved the same problem I was having with the
sdk image :-)  One small correction below...

> 
> Intel Atom based PCs and devices (atom-pc)
> ==========================================
> 
> The atom-pc MACHINE is tested on the following platforms:
> 
>   o Asus eee901
>   o Acer Aspire One
>   o Toshiba NB305
>   o Intel BlackSand development board (FIXME: correct name)
> 
> and is likely to work on many unlisted atom based devices. The MACHINE
> type supports ethernet, wifi, sound, and i915 graphics by default in
> addition to common PC input devices, busses, and so on.
> 
> Depending on the device, it can boot from a traditional hard-disk, a USB
> device, or over the network. Writing poky generated images to physical
> is straightforward with a caveat for USB devices. The following examples
> assume the target boot device is /dev/sdb, be sure to verify this and
> use the correct device as the following commands are run as root and are
> not reversable.
> 
> Hard Disk:
>   1. Build a directdisk image format. This will generate proper
>      partition tables that will in turn be written to the physical media.
>   
>   2. Use the "dd" utility to write the image to the raw block device.
>      For example:
> 
>      $ dd if=poky-image-minimal-live-atom-pc-20101214120906.ddimg of=/dev/sdb
>      FIXME: verify image name and extension
> 
> USB Device:
>   1. Build an hddimg image format. This is a simple filesystem without
>      partition tables and is suitable for USB keys.
> 
>   2. Use the "dd" utility to write the image to the raw block device.
>      For example:
> 
>      $ dd if=poky-image-minimal-live-atom-pc-20101214120906.hddimg of=/dev/sdb
> 
>   If the device fails to boot with "Boot error" displayed, it is likely
>   the BIOS cannot understand the physical layout of the disk (or rather
>   it expects it to be a particular layout and can't handle anything
>   else). There are two possible solutions to this problem:
> 
>   1. Change the BIOS USB Device setting to HDD mode. The label will vary
>      my device, but the idea is to force BIOS to read the
>      Cylinder/Head/Sector geometry from the device.
> 
>   2. Without such an option, the BIOS generally boots the device in
>      USB-ZIP mode.
> 
>      a. Configure the USB device for USB-ZIP mode:
>      
>      # mkdiskimage -4 /dev/sdb 0 63 62
> 
>      Where 63 and 62 are the cylinder and head count as reported by

should be: head and sector rather than cylinder and
head.                               

Thanks,

Tom

>      fdisk.  Remove and reinsert the device to allow the kernel to
>      detect the new partition layout.
> 
>      b. Copy the contents of the poky image to the USB-ZIP mode device:
> 
>      # mount -o loop poky-image-minimal-live-atom-pc-20101214120906.hddimg  /tmp/image
>      # mount /dev/sdb4 /tmp/usbkey
>      # cp -rf /tmp/image/* /tmp/usbkey
> 
>      c. Install the syslinux boot loader:
> 
>      # syslinux /dev/sdb4
> 
>   Install the boot device in the target board and configure the BIOS to
>   boot from it.
> 
>   For more details on the USB-ZIP scenario, see the syslinux documentation:
>   http://git.kernel.org/?p=boot/syslinux/syslinux.git;a=blob_plain;f=doc/usbkey.txt;hb=HEAD
> 



