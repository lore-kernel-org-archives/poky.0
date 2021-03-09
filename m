Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web12.474.1615322489515739260
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 12:41:30 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id E45E340C2C;
	Tue,  9 Mar 2021 20:41:28 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CKnmWT4SMRSs; Tue,  9 Mar 2021 20:41:28 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id B680A406B5;
	Tue,  9 Mar 2021 20:41:25 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 7448A17452F; Tue,  9 Mar 2021 15:41:25 -0500 (EST)
Date: Tue, 9 Mar 2021 15:41:25 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: poky@lists.yoctoproject.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Vivien Didelot <vdidelot@pbsc.com>
Subject: Re: [poky] [meta-yocto][PATCH 3/3] beaglebone-yocto: allow other virtual/bootloader
Message-ID: <20210309204125.GM4892@denix.org>
References: <20210309174715.26432-1-vivien.didelot@gmail.com>
 <20210309174715.26432-3-vivien.didelot@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210309174715.26432-3-vivien.didelot@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 09, 2021 at 12:47:15PM -0500, Vivien Didelot wrote:
> From: Vivien Didelot <vdidelot@pbsc.com>
> 
> The beaglebone-yocto machine currently hardcodes "u-boot" as a
> dependency for the image and the wic format, and this prevents one
> from choosing a different bootloader via:
> 
>     PREFERRED_PROVIDER_virtual/bootloader = "non-u-boot-bootloader"
> 
> Depending on "virtual/bootloader" instead of "u-boot" fixes this.
> 
> Cc: Denys Dmytriyenko <denis@denix.org>
> Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>

Reviewed-by: Denys Dmytriyenko <denis@denix.org>


> ---
>  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index f8368eb..04cbd3b 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -9,7 +9,7 @@ XSERVER ?= "xserver-xorg \
>  
>  MACHINE_EXTRA_RRECOMMENDS = "kernel-modules kernel-devicetree"
>  
> -EXTRA_IMAGEDEPENDS += "u-boot"
> +EXTRA_IMAGEDEPENDS += "virtual/bootloader"
>  
>  DEFAULTTUNE ?= "cortexa8hf-neon"
>  include conf/machine/include/tune-cortexa8.inc
> @@ -18,7 +18,7 @@ IMAGE_FSTYPES += "tar.bz2 jffs2 wic wic.bmap"
>  EXTRA_IMAGECMD_jffs2 = "-lnp "
>  WKS_FILE ?= "beaglebone-yocto.wks"
>  IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
> -do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot u-boot:do_deploy"
> +do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot virtual/bootloader:do_deploy"
>  
>  SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
>  SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
> -- 
> 2.30.1
> 
