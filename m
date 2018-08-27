Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66493E0090C; Mon, 27 Aug 2018 06:48:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94349E00754
	for <poky@yoctoproject.org>; Mon, 27 Aug 2018 06:48:02 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7RDm1fR012541
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 27 Aug 2018 06:48:01 -0700 (PDT)
Received: from server.local (128.224.20.193) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Mon, 27 Aug 2018 06:48:00 -0700
To: Kevin Hao <kexin.hao@windriver.com>, <poky@yoctoproject.org>, Richard
	Purdie <richard.purdie@linuxfoundation.org>
References: <20180825125134.267328-1-kexin.hao@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <34a50b47-dcb3-1d1f-2ca8-bd4a486a475f@windriver.com>
Date: Mon, 27 Aug 2018 09:47:59 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20180825125134.267328-1-kexin.hao@windriver.com>
Subject: Re: [PATCH] meta-yocto-bsp: Bump the kernel to v4.18
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
X-List-Received-Date: Mon, 27 Aug 2018 13:48:03 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-08-25 8:51 AM, Kevin Hao wrote:
> Bump the kernel to v4.18 for all the boards in meta-yocto-bsp layer.
> 

Thanks Kevin, this is fantastic.

Richard: I don't know the status of my other 4.18 changes, but I could
take this into my queue and re-submit it all with the 4.15 kernel
being removed.

Or since there are no major problems with my 4.18 uprev, maybe this
should just be independently grabbed ? Versus me re-submitting unchanged
patches.

Bruce

> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
> 
> This is based on the following patches from Bruce:
>    http://lists.openembedded.org/pipermail/openembedded-core/2018-August/154796.html
> 
>   meta-yocto-bsp/conf/machine/beaglebone-yocto.conf  |  2 +-
>   meta-yocto-bsp/conf/machine/edgerouter.conf        |  2 +-
>   meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf      |  2 +-
>   .../recipes-kernel/linux/linux-yocto_4.18.bbappend | 27 ++++++++++++++++++++++
>   4 files changed, 30 insertions(+), 3 deletions(-)
>   create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
> 
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 5cc292390367..e911e7500490 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -23,7 +23,7 @@ do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do
>   SERIAL_CONSOLES = "115200;ttyO0"
>   
>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "4.15%"
> +PREFERRED_VERSION_linux-yocto ?= "4.18%"
>   
>   KERNEL_IMAGETYPE = "zImage"
>   KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
> index a3eeebf2f66a..b7a94e9cbbe3 100644
> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
> @@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>   KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
>   
>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "4.15%"
> +PREFERRED_VERSION_linux-yocto ?= "4.18%"
>   
>   SERIAL_CONSOLES = "115200;ttyS0"
>   USE_VT ?= "0"
> diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> index 441987a78e92..6f5b9859d722 100644
> --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> +++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> @@ -14,7 +14,7 @@ SERIAL_CONSOLES = "115200;ttyS0"
>   
>   MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
>   
> -PREFERRED_VERSION_linux-yocto ?= "4.15%"
> +PREFERRED_VERSION_linux-yocto ?= "4.18%"
>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>   
>   PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
> new file mode 100644
> index 000000000000..0ce757860aa1
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
> @@ -0,0 +1,27 @@
> +KBRANCH_genericx86  = "v4.18/standard/base"
> +KBRANCH_genericx86-64  = "v4.18/standard/base"
> +KBRANCH_edgerouter = "v4.18/standard/edgerouter"
> +KBRANCH_beaglebone-yocto = "v4.18/standard/beaglebone"
> +KBRANCH_mpc8315e-rdb = "v4.18/standard/fsl-mpc8315e-rdb"
> +
> +KMACHINE_genericx86 ?= "common-pc"
> +KMACHINE_genericx86-64 ?= "common-pc-64"
> +KMACHINE_beaglebone-yocto ?= "beaglebone"
> +
> +SRCREV_machine_genericx86    ?= "eba03655e8e436ef6090100423bcea43e4911478"
> +SRCREV_machine_genericx86-64 ?= "eba03655e8e436ef6090100423bcea43e4911478"
> +SRCREV_machine_edgerouter ?= "eba03655e8e436ef6090100423bcea43e4911478"
> +SRCREV_machine_beaglebone-yocto ?= "eba03655e8e436ef6090100423bcea43e4911478"
> +SRCREV_machine_mpc8315e-rdb ?= "193513391ec14cb5402fcc4ed7bb2b49193842bb"
> +
> +COMPATIBLE_MACHINE_genericx86 = "genericx86"
> +COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> +COMPATIBLE_MACHINE_edgerouter = "edgerouter"
> +COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
> +COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
> +
> +LINUX_VERSION_genericx86 = "4.18.3"
> +LINUX_VERSION_genericx86-64 = "4.18.3"
> +LINUX_VERSION_edgerouter = "4.18.3"
> +LINUX_VERSION_beaglebone-yocto = "4.18.3"
> +LINUX_VERSION_mpc8315e-rdb = "4.18.3"
> 


