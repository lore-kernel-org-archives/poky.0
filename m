Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED3C5E01828
	for <poky@yoctoproject.org>; Thu,  7 Nov 2013 20:44:24 -0800 (PST)
Received: by mail-la0-f50.google.com with SMTP id eo20so1357059lab.9
	for <poky@yoctoproject.org>; Thu, 07 Nov 2013 20:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KH8y3l6+X1HhtOMhErvx0q4ETXJLMeVA2RVQ+NWhdyI=;
	b=wquaC8FfzxsexcpV4tZHA1tv0d3xnd+wfysq14b5QGxYLSiEiGtcoUABXFnZuWb3V5
	kquPBA6SJg+UHpmCz8gCRmhWvAD9pNS9z+agDOrtlzvnod0YF5YJymX9M8pFthaulCOH
	EFFzgcBFYSgn4VVrSv9JBgZInbVNHSLkxFaE8s4CrO0uW+ugxfCDQZsXNl7uiRbEy1n9
	HMscMFpyo02K0hXfFGCVfjrAnmNuyKl3w1H7iJpYOstGuLRpRFz15nQr4n7as36QHqjk
	C23EOTZrfyUgqELQoAqBBwMZxBVJHBgpLxkrnoLGakOJHA6Qm4Ga+MAWS9KJuFZxx/2m
	p5Ow==
MIME-Version: 1.0
X-Received: by 10.112.134.3 with SMTP id pg3mr9113200lbb.11.1383885862653;
	Thu, 07 Nov 2013 20:44:22 -0800 (PST)
Received: by 10.112.14.200 with HTTP; Thu, 7 Nov 2013 20:44:22 -0800 (PST)
In-Reply-To: <1383861844-26405-2-git-send-email-eric.keller.ek1@roche.com>
References: <1383861844-26405-1-git-send-email-eric.keller.ek1@roche.com>
	<1383861844-26405-2-git-send-email-eric.keller.ek1@roche.com>
Date: Thu, 7 Nov 2013 23:44:22 -0500
Message-ID: <CADkTA4P8HA9oOmWCVOHVvcG=wKaZwbqS9pe6reFy-Ep6ktDy2g@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Eric Keller <keller.eric@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Eric Keller <eric.keller.ek1@roche.com>
Subject: Re: [PATCH] meta-yocto-bsp/recipes-kernel/linux/: add genericx86(-64) support for linux-yocto-rt_3.10
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
X-List-Received-Date: Fri, 08 Nov 2013 04:44:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 7, 2013 at 5:04 PM, Eric Keller <keller.eric@gmail.com> wrote:
> Signed-off-by: Eric Keller <eric.keller.ek1@roche.com>
> ---
>  .../linux/linux-yocto-rt_3.10.bbappend             |   23 ++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>  create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
> new file mode 100644
> index 0000000..7978f79
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
> @@ -0,0 +1,23 @@
> +KBRANCH_genericx86  = "standard/common-pc/base"
> +KBRANCH_genericx86-64  = "standard/common-pc-64/base"
> +#KBRANCH_routerstationpro = "standard/routerstationpro"
> +#KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
> +#KBRANCH_beagleboard = "standard/beagleboard"
> +
> +KMACHINE_genericx86 ?= "common-pc"
> +KMACHINE_genericx86-64 ?= "common-pc-64"
> +
> +SRCREV_machine_genericx86 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
> +SRCREV_machine_genericx86-64 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
> +#SRCREV_machine_routerstationpro ?= "d4e6adefaf92a1e7b6539d371ba49b78bd194a84"
> +#SRCREV_machine_mpc8315e-rdb ?= "12dc46ba4efb80e135fec4dce913eeb87ee671b3"
> +#SRCREV_machine_beagleboard ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
> +
> +COMPATIBLE_MACHINE_genericx86 = "genericx86"
> +COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> +#COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
> +#COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
> +#COMPATIBLE_MACHINE_beagleboard = "beagleboard"

There's no sense carrying along the commented out board support. I didn't get
around to testing all the reference boards with -rt in the 1.5 release
cycle, but
will in 1.6.

At that point, we can add the lines back in. But for now, it is
cleaner to just remove
anything that hasn't been tested.

Bruce

> +
> +# routerstationpro has a flash size of 16mb
> +KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
> --
> 1.7.10.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

