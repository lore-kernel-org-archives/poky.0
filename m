Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 755CFE013AB
	for <poky@yoctoproject.org>; Tue,  3 Sep 2013 20:23:29 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id ep20so5506986lab.30
	for <poky@yoctoproject.org>; Tue, 03 Sep 2013 20:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lhq3EZ3bQ3Bwfjt7edOOYTyfe+Fprwvcfxq1Rc2zT7Y=;
	b=bRG6sDGUIRxv34W1/rCXwpzBH4XRyrF5UezzcJDPlCw6CP+yiykAkkJQMUcChh9QZv
	/S/4UolyVwedDNVw6P+UCfD4Ho+2nVa5tAqfKH0WksyJnLPFCJbvRre+Et8ywHelAivM
	F59hr4dxGAtj0axaRBgzKmCPyA0+GKMb11V7N/D7qk+mWFoyjFxdmSybmIqgFsJDJON9
	L0AxxdI9GzCyB82dBkZVtchC+BxRM0/kzD5CIXRaQvJiAOJvIKxhb9LnuvEYwl/KL21X
	fnKcAVC76ubRZHtudUCDmb8ECWQ7xCoRUj80p4luF246KVKNEIykRCzCX5Ab8rYbJkcd
	Q5VQ==
MIME-Version: 1.0
X-Received: by 10.112.14.3 with SMTP id l3mr514566lbc.27.1378265008241; Tue,
	03 Sep 2013 20:23:28 -0700 (PDT)
Received: by 10.112.12.103 with HTTP; Tue, 3 Sep 2013 20:23:28 -0700 (PDT)
In-Reply-To: <1378259015-25126-1-git-send-email-net147@gmail.com>
References: <1378259015-25126-1-git-send-email-net147@gmail.com>
Date: Tue, 3 Sep 2013 23:23:28 -0400
Message-ID: <CADkTA4NS36hZBgpZ-CQmxgJ63D_jyo5nEV8osa2u1eP+tutq9g@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 04 Sep 2013 03:23:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 3, 2013 at 9:43 PM, Jonathan Liu <net147@gmail.com> wrote:
> Tuning for Intel Atom CPU can in result instructions being used that are
> not compatible with older x86 CPUs such as Intel Pentium Dual-Core
> E2200. This can result in Linux 3.10 failing to boot with:
> "This kernel requires the following features not present on the CPU:
> movbe
> Unable to boot - please use a kernel appropriate for your CPU.".

That's a bit surprising, do you have a bootlog to share ? This tune
file shouldn't
impact the kernel build options, and if it is, that's a bug.

If the error shows up on the switch to userspace, then that's a different story.

Bruce

>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
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
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

