Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.219.1616517255544529660
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 09:34:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 056A240BFF;
	Tue, 23 Mar 2021 16:34:14 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4RZ4jlm_aKsV; Tue, 23 Mar 2021 16:34:13 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id D4F99400CF;
	Tue, 23 Mar 2021 16:34:11 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 4C0F9174558; Tue, 23 Mar 2021 12:34:11 -0400 (EDT)
Date: Tue, 23 Mar 2021 12:34:11 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: Kevin Hao <kexin.hao@windriver.com>
Cc: poky@lists.yoctoproject.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: Re: [poky] [PATCH] meta-yocto-bsp: beaglebone: Set a fixed size for boot partition in WIC image
Message-ID: <20210323163411.GK18041@denix.org>
References: <20210323093529.35493-1-kexin.hao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20210323093529.35493-1-kexin.hao@windriver.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 23, 2021 at 05:35:29PM +0800, Kevin Hao wrote:
> After the dosfstools has been updated to v4.2 by commit b522f24723e1
> ("dosfstools: update 4.1 -> 4.2"), the commit b29eb5be67e9 ("mkfs.fat:
> Align total number of sectors to be multiple of sectors per track") in
> v4.2 has caused a regression in beagebone black board. The reason is
> that the real total sectors of the fat filesystem created by the mkdosfs
> may not be the same size as what we requested due to align with the
> sectors per track, this change seem no side effect to linux kernel,
> but it breaks the beaglebone black boot ROM and make it can't load the
> MLO. In order to fix this issue, we choose to set a fixed size for the
> boot partition to make sure that the total sectors always are aligned
> with the sectors per track.

Thanks for getting to the root cause of the failure!
Yeah, embedded boot ROM is not very flexible and has rather simplistic 
understanding of FAT.

-- 
Denys


> [Yocto #14306]
> 
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  meta-yocto-bsp/wic/beaglebone-yocto.wks | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks b/meta-yocto-bsp/wic/beaglebone-yocto.wks
> index 701ae0b3d4bd..7a28fb23dc89 100644
> --- a/meta-yocto-bsp/wic/beaglebone-yocto.wks
> +++ b/meta-yocto-bsp/wic/beaglebone-yocto.wks
> @@ -2,6 +2,6 @@
>  # long-description: Creates a partitioned SD card image for Beaglebone.
>  # Boot files are located in the first vfat partition.
>  
> -part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16 --sourceparams="loader=u-boot" --use-uuid
> +part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --fixed-size 32 --sourceparams="loader=u-boot" --use-uuid
>  part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root --align 4 --use-uuid
>  bootloader --append="console=ttyS0,115200"
> -- 
> 2.30.2
