Return-Path: <andrea.adami@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AAA1E013C9
	for <poky@yoctoproject.org>; Tue, 23 Apr 2013 01:16:20 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id fq13so301420lab.0
	for <poky@yoctoproject.org>; Tue, 23 Apr 2013 01:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=0P29TxblsM4hGuAjHugkC/yJ8sqbsyDa7SICXP+sbKw=;
	b=iAjtOtK7rfjsqlptUq5s3cQkAAt3W0ggG6bZ4d+pfy9rcFAa/KlPa2GPRkPqQf/6MI
	+eJ89+xJ+moIJAveAIq1unOvMrwDvOJ6uCSH9NhGCG/QLCE1qfpSN0bK5Fv5eU9ONyzD
	jy/N/1j1f1KIXLXfKTHnesWC1NXvSctZkkLnEWYh4An3ACr2y/lZB4lrdWhj6RoxW8YM
	H0NnnIWBeCusLzd53saEyRVEV3ZjC7jkYnAbu4pKs6OHuWRQ8X2jk0wsiQsTH+CIorR6
	sU77NU+CY4deEX6jbSUDkLx+KtWQmGad7eglChb/BInU26+nQ2A8zYPbA4RnBudUX21A
	bm7g==
MIME-Version: 1.0
X-Received: by 10.112.167.168 with SMTP id zp8mr2686513lbb.58.1366704978527;
	Tue, 23 Apr 2013 01:16:18 -0700 (PDT)
Received: by 10.112.131.228 with HTTP; Tue, 23 Apr 2013 01:16:18 -0700 (PDT)
In-Reply-To: <1366665616-24832-3-git-send-email-michel.thebeau@windriver.com>
References: <1366665616-24832-1-git-send-email-michel.thebeau@windriver.com>
	<1366665616-24832-3-git-send-email-michel.thebeau@windriver.com>
Date: Tue, 23 Apr 2013 10:16:18 +0200
Message-ID: <CAAQYJAt-wVghaptCaB9zk8qN7nFckPsF-ZTYQ7L0Z0_o6sF=wg@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] kernel 3.8: routerstationpro: use KERNEL_IMAGE_MAXSIZE to test the image
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
X-List-Received-Date: Tue, 23 Apr 2013 08:16:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Apr 22, 2013 at 11:20 PM,  <michel.thebeau@windriver.com> wrote:
> From: Michel Thebeau <michel.thebeau@windriver.com>
>
> routerstationpro is limited to 16mb flash size.  Exceeding that size may
> not be noticed immediately, which we don't want.
>
> "The current latest kernel for the routerstationpro machine is far
> beyond the 16MB of it's flash size [0]. I think it would be good to
> [test if the size of the image is above that size]."
>
> Setting this variable will enable the do_sizecheck task and produce an
> error when the image is too large:
>
> "ERROR: This kernel (size=90230265 > 16777216) is too big for your
> device. Please reduce the size of the kernel by making more of it
> modular."
>
> Taken from commit 83716e40edacfd20dec8ef41f415ad5828d4643b.
>
> [YOCTO #3514]
>
> Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |    3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
> index 479a386..769dcc0 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
> @@ -12,3 +12,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>  COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>  COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>  COMPATIBLE_MACHINE_atom-pc = "atom-pc"
> +
> +# routerstationpro has a flash size of 16mb
> +KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"

Why would it need an _append_ ?
KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216" should be enough.

And by the way such kernel sizes look really exaggerated.

Regards

Andrea


> --
> 1.7.9.7
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

