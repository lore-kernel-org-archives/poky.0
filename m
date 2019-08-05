Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F183CE00D4E; Sun,  4 Aug 2019 20:01:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B91B0E00B8E
	for <poky@yoctoproject.org>; Sun,  4 Aug 2019 20:01:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x7531kwr002114
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sun, 4 Aug 2019 20:01:46 -0700 (PDT)
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Sun, 4 Aug 2019 20:01:45 -0700
To: <poky@yoctoproject.org>
References: <1564622700-171766-1-git-send-email-changqing.li@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <ec5291a9-541e-264b-c055-e8307eea0fab@windriver.com>
Date: Mon, 5 Aug 2019 11:01:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1564622700-171766-1-git-send-email-changqing.li@windriver.com>
X-Originating-IP: [128.224.162.186]
Subject: Re: [PATCH V2] qemuboot-x86: move QB_SYSTEM_NAME to corresponding conf
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
X-List-Received-Date: Mon, 05 Aug 2019 03:01:49 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

ping

Do I need to split this patch into 2 part? since 3 files are unser repo 
oe-core,  2 files are under repo poky

but changes in files under poky depend on changes under oe-core

On 8/1/19 9:25 AM, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> Configrations:
> MACHINE: qemux86-64
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>
> Reproduce steps:
> bitbake lib32-core-image-minimal
> runqemu qemux86-64 nographic lib32-core-image-minimal
>
> Errors:
> qemu cannot bootup since:
> Booting from ROM...
> This kernel requires an x86-64 CPU, but only detected an i686 CPU.
> Unable to boot - please use a kernel appropriate for your CPU.
> QEMU: Terminated
>
> For lib32 image, override has x86, so the qemubin set to qemu-system-i386,
> fix by move QB_SYSTEM_NAME to corresponding conf, don't use the override
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   meta-yocto-bsp/conf/machine/genericx86-64.conf | 2 ++
>   meta-yocto-bsp/conf/machine/genericx86.conf    | 2 ++
>   meta/conf/machine/include/qemuboot-x86.inc     | 2 --
>   meta/conf/machine/qemux86-64.conf              | 3 +++
>   meta/conf/machine/qemux86.conf                 | 3 +++
>   5 files changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
> index c489462..81ec24e 100644
> --- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
> +++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
> @@ -7,3 +7,5 @@ require conf/machine/include/tune-core2.inc
>   require conf/machine/include/genericx86-common.inc
>   
>   SERIAL_CONSOLES_CHECK = "ttyS0"
> +#For runqemu
> +QB_SYSTEM_NAME = "qemu-system-x86_64"
> diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
> index 9929d27..1387bde 100644
> --- a/meta-yocto-bsp/conf/machine/genericx86.conf
> +++ b/meta-yocto-bsp/conf/machine/genericx86.conf
> @@ -7,3 +7,5 @@ require conf/machine/include/tune-core2.inc
>   require conf/machine/include/genericx86-common.inc
>   
>   MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "gma500-gfx-check"
> +#For runqemu
> +QB_SYSTEM_NAME = "qemu-system-i386"
> diff --git a/meta/conf/machine/include/qemuboot-x86.inc b/meta/conf/machine/include/qemuboot-x86.inc
> index 82ce46d..3931b0f 100644
> --- a/meta/conf/machine/include/qemuboot-x86.inc
> +++ b/meta/conf/machine/include/qemuboot-x86.inc
> @@ -1,10 +1,8 @@
>   # For runqemu
>   IMAGE_CLASSES += "qemuboot"
> -QB_SYSTEM_NAME_x86 = "qemu-system-i386"
>   QB_CPU_x86 = "-cpu core2duo"
>   QB_CPU_KVM_x86 = "-cpu core2duo"
>   
> -QB_SYSTEM_NAME_x86-64 = "qemu-system-x86_64"
>   QB_CPU_x86-64 = "-cpu core2duo"
>   QB_CPU_KVM_x86-64 = "-cpu core2duo"
>   
> diff --git a/meta/conf/machine/qemux86-64.conf b/meta/conf/machine/qemux86-64.conf
> index 383e3bd..4b50e66 100644
> --- a/meta/conf/machine/qemux86-64.conf
> +++ b/meta/conf/machine/qemux86-64.conf
> @@ -39,3 +39,6 @@ module_conf_uvesafb = "options uvesafb mode_option=${UVESA_MODE}"
>   
>   WKS_FILE ?= "qemux86-directdisk.wks"
>   do_image_wic[depends] += "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
> +
> +#For runqemu
> +QB_SYSTEM_NAME = "qemu-system-x86_64"
> diff --git a/meta/conf/machine/qemux86.conf b/meta/conf/machine/qemux86.conf
> index 272ad1e..3832302 100644
> --- a/meta/conf/machine/qemux86.conf
> +++ b/meta/conf/machine/qemux86.conf
> @@ -39,3 +39,6 @@ module_conf_uvesafb = "options uvesafb mode_option=${UVESA_MODE}"
>   
>   WKS_FILE ?= "qemux86-directdisk.wks"
>   do_image_wic[depends] += "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
> +
> +#For runqemu
> +QB_SYSTEM_NAME = "qemu-system-i386"

-- 
BRs

Sandy(Li Changqing)


