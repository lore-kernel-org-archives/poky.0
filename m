Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ECA3E00D52; Wed,  2 Mar 2016 05:42:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2FB6E00D3F;
	Wed,  2 Mar 2016 05:42:32 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u22DgVsQ001377
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 2 Mar 2016 05:42:31 -0800 (PST)
Received: from server.local (147.11.118.203) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 2 Mar 2016 05:42:30 -0800
To: Kevin Hao <kexin.hao@windriver.com>, <poky@yoctoproject.org>,
	<linux-yocto@yoctoproject.org>
References: <1456917008-173414-1-git-send-email-kexin.hao@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <56D6EDC5.7030609@windriver.com>
Date: Wed, 2 Mar 2016 08:42:29 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1456917008-173414-1-git-send-email-kexin.hao@windriver.com>
Subject: Re: [PATCH] meta-yocto-bsp: bump to linux-yocto 4.4 for the non-x86 BSPs
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
X-List-Received-Date: Wed, 02 Mar 2016 13:42:36 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-03-02 6:10 AM, Kevin Hao wrote:
> Boot test for all these boards.

Thanks Kevin! Most appreciated.

Bruce

>
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>   meta-yocto-bsp/conf/machine/beaglebone.conf                  | 2 +-
>   meta-yocto-bsp/conf/machine/edgerouter.conf                  | 2 +-
>   meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                | 2 +-
>   meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 9 +++++++++
>   4 files changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
> index ff46fb2..179d135 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
> @@ -22,7 +22,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
>   SERIAL_CONSOLE = "115200 ttyO0"
>
>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "4.1%"
> +PREFERRED_VERSION_linux-yocto ?= "4.4%"
>
>   KERNEL_IMAGETYPE = "zImage"
>   KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
> index 476e690..6343dfc 100644
> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
> @@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>   KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
>
>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "4.1%"
> +PREFERRED_VERSION_linux-yocto ?= "4.4%"
>
>   SERIAL_CONSOLE = "115200 ttyS0"
>   USE_VT ?= "0"
> diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> index 036b05f..f3ad12d 100644
> --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> +++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> @@ -14,7 +14,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
>
>   MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
>
> -PREFERRED_VERSION_linux-yocto ?= "4.1%"
> +PREFERRED_VERSION_linux-yocto ?= "4.4%"
>   PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
>
>   PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
> index 0f7e16a..c7b4391 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
> @@ -3,12 +3,21 @@ KBRANCH_genericx86-64  = "standard/base"
>
>   KMACHINE_genericx86 ?= "common-pc"
>   KMACHINE_genericx86-64 ?= "common-pc-64"
> +KBRANCH_edgerouter = "standard/edgerouter"
> +KBRANCH_beaglebone = "standard/beaglebone"
> +KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
>
>   SRCREV_machine_genericx86    ?= "0194c765861157b95de80fa7c27ebb6b51c16dd6"
>   SRCREV_machine_genericx86-64 ?= "0194c765861157b95de80fa7c27ebb6b51c16dd6"
> +SRCREV_machine_edgerouter ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
> +SRCREV_machine_beaglebone ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
> +SRCREV_machine_mpc8315e-rdb ?= "df00877ef9387b38b9601c82db57de2a1b23ce53"
>
>   COMPATIBLE_MACHINE_genericx86 = "genericx86"
>   COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> +COMPATIBLE_MACHINE_edgerouter = "edgerouter"
> +COMPATIBLE_MACHINE_beaglebone = "beaglebone"
> +COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>
>   LINUX_VERSION_genericx86 = "4.4.1"
>   LINUX_VERSION_genericx86-64 = "4.4.1"
>


