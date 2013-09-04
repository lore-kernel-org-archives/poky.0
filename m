Return-Path: <net147@gmail.com>
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 076B1E013AB
	for <poky@yoctoproject.org>; Tue,  3 Sep 2013 21:20:58 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id r10so6963648pdi.14
	for <poky@yoctoproject.org>; Tue, 03 Sep 2013 21:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3j67bxAEN+9DRTw15+qOb35u5SG/K+DIBbJX02rJkiU=;
	b=ktb5TIKax198FoWdlvtQVsfzp13mksjZ4uMltwKSvEarZ7QBKHYoZrEKYbQtx0vmyj
	zXL6rbmDCpZeVh/KSvv9bdilMW2BLa+9xyQH5N6ajTaKQehDVvl2+YwGb/s2hiPfeCCQ
	q+7e5qYaQOw+Uc3C5BxZ67zINXNKWuiTHFh03mg25DXPlSyhiNcPCFsXmIWkPEERm8Z7
	G9vAxVSWrgQWrpgGtzelgjO5cuJVeDZWD8vVb7ZMyF0Yu+tbcPv5W+guQOHe0Zjl1yHw
	CifAJh2gSc+Flqjs9bILNcZriu0Yr9M2T+XBGRjItnSfXNATBVFTJRSER/ZvXEdv3QQ4
	nusQ==
MIME-Version: 1.0
X-Received: by 10.66.175.133 with SMTP id ca5mr1126452pac.40.1378268457818;
	Tue, 03 Sep 2013 21:20:57 -0700 (PDT)
Received: by 10.70.35.235 with HTTP; Tue, 3 Sep 2013 21:20:57 -0700 (PDT)
In-Reply-To: <1378259015-25126-1-git-send-email-net147@gmail.com>
References: <1378259015-25126-1-git-send-email-net147@gmail.com>
Date: Wed, 4 Sep 2013 14:20:57 +1000
Message-ID: <CANwerB3RHxic-w_7yx7+y=SC4EQgXd3=m7m9gZLP55ptHdgGLQ@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] genericx86: tune for i586 instead of atom
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
X-List-Received-Date: Wed, 04 Sep 2013 04:21:10 -0000
Content-Type: text/plain; charset=UTF-8

On 4 September 2013 11:43, Jonathan Liu <net147@gmail.com> wrote:
> Tuning for Intel Atom CPU can in result instructions being used that are
> not compatible with older x86 CPUs such as Intel Pentium Dual-Core
> E2200. This can result in Linux 3.10 failing to boot with:
> "This kernel requires the following features not present on the CPU:
> movbe
> Unable to boot - please use a kernel appropriate for your CPU.".
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>

Please disregard this patch. It doesn't actually fix the kernel boot
issue mentioned.

Regards,
Jonathan

> ---
>  meta-yocto-bsp/conf/machine/genericx86.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
> index ff5cbc9..f5d9cd5 100644
> --- a/meta-yocto-bsp/conf/machine/genericx86.conf
> +++ b/meta-yocto-bsp/conf/machine/genericx86.conf
> @@ -3,7 +3,7 @@
>
>  #@DESCRIPTION: Machine configuration for generic X86 (32-bit) PCs. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
>
> -include conf/machine/include/tune-atom.inc
> +include conf/machine/include/tune-i586.inc
>
>  MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa"
>
> --
> 1.8.4
>

