Return-Path: <Michel.Thebeau@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 743A0E014BD
	for <poky@yoctoproject.org>; Thu, 28 Mar 2013 14:12:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2SLC8BA027342
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Mar 2013 14:12:08 -0700 (PDT)
Received: from [128.224.146.59] (128.224.146.59) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 28 Mar 2013 14:12:08 -0700
Message-ID: <5154B227.9090707@windriver.com>
Date: Thu, 28 Mar 2013 17:12:07 -0400
From: Michel Thebeau <michel.thebeau@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: <michel.thebeau@windriver.com>
References: <1364499175-29014-1-git-send-email-michel.thebeau@windriver.com>
	<1364499175-29014-2-git-send-email-michel.thebeau@windriver.com>
In-Reply-To: <1364499175-29014-2-git-send-email-michel.thebeau@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] routerstationpro: swap KERNEL_IMAGETYPE and KERNEL_ALT_IMAGETYPE
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
X-List-Received-Date: Thu, 28 Mar 2013 21:12:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit



On 13-03-28 03:32 PM, michel.thebeau@windriver.com wrote:
> From: Michel Thebeau <michel.thebeau@windriver.com>
> 
> The routerstationpro has a 16mb flash which the kernel image should
> fit into.  The default build type for vmlinux then should be the
> stripped arch/mips/boot/vmlinux.bin.
> 
> Swapping KERNEL_IMAGETYPE and KERNEL_ALT_IMAGETYPE for rsp causes
> vmlinux.bin to be linked in tmp/deploy/images instead of vmlinux, and
> causes vmlinux.bin to appear in the kernel rpm file.
> 
> [YOCTO #3515]
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
> ---
>  meta-yocto-bsp/conf/machine/routerstationpro.conf |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
> index e5e4d1a..a727e2a 100644
> --- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
> +++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
> @@ -6,8 +6,8 @@ require conf/machine/include/tune-mips32.inc
>  
>  MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 serial"
>  
> -KERNEL_IMAGETYPE = "vmlinux"
> -KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
> +KERNEL_ALT_IMAGETYPE = "vmlinux"
> +KERNEL_IMAGETYPE = "vmlinux.bin"

I'd noted in email that arch/mips/boot/vmlinux.bin is looks like the
stripped file we were looking for.  But it doesn't load:

RedBoot> load -m tftp -h 192.168.1.6 mthebeau/vmlinux.bin
Unrecognized image type: 0x0

I was able to load the larger vmlinux and boot it.

And as previously noted by ,  using
tmp/sysroots/x86_64-linux/usr/bin/mips32-poky-linux/mips-poky-linux-strip would
get a bootable image as well from the vmlinux.

I'll try to figure out what the difference is between that and vmlinux.bin.

M


>  
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>  PREFERRED_VERSION_linux-yocto ?= "3.4%"
> 

