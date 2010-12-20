Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f171.google.com (mail-pv0-f171.google.com
	[74.125.83.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D1054C80039
	for <poky@pokylinux.org>; Sun, 19 Dec 2010 21:21:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvg2 with SMTP id 2so722969pvg.2
	for <poky@pokylinux.org>; Sun, 19 Dec 2010 19:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:date:from:to:cc:subject
	:message-id:references:mime-version:content-type:content-disposition
	:in-reply-to:user-agent;
	bh=FrmG9Br311pHg46mJNtrzSFNqaT8bBiVl78o2cjwHLc=;
	b=Q1peqLpDrvLiQpgIJj4DplGuQmKApg56JziTOMJQJKzz7lG2tGseFOWQC10FZWU8kD
	tWqNsWA+Yp9fCxn/9lPuugDmIFx9HepYQuA9FwMLLnWN3rKhtmm2vwAhMRRBWu9Bcmid
	kqc0VsSgNSOqnTXGKK/gaUbrkb5RvWgDkVEc0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=b/vKLsDNoJsfLJwPsb5+hp+BDSCC9rx03gB4H/1LpxhZt/ODbvxWjt6HeFsshxgrhN
	7fS5lD5Bg20bMJpj5uCc6oZN/1+kg2UeaQXtKis/2cRh9k173Zw7i1y75kipU/B+tVVV
	5vy1jbzxMbxUb4q0ygSkmiV+vNuoTpD7lP6GI=
Received: by 10.143.40.13 with SMTP id s13mr2961951wfj.71.1292815267227;
	Sun, 19 Dec 2010 19:21:07 -0800 (PST)
Received: from gmail.com (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id p8sm5127991wff.4.2010.12.19.19.21.05
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 19 Dec 2010 19:21:06 -0800 (PST)
Date: Sun, 19 Dec 2010 19:21:18 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Kevin Tian <kevin.tian@intel.com>
Message-ID: <20101220032118.GD26429@gmail.com>
References: <b9dded$hdep5f@orsmga002.jf.intel.com>
MIME-Version: 1.0
In-Reply-To: <b9dded$hdep5f@orsmga002.jf.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: paul.eggleton@linux.intel.com, poky@pokylinux.org
Subject: Re: [PATCH 2/3] kernel.bbclass: introduce UIMAGE_BASE_NAME
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Dec 2010 03:21:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (17/12/10 08:51), Kevin Tian wrote:
> Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> ---
>  meta/classes/kernel.bbclass |    7 ++++---
>  1 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index b2f8132..4f7ceba 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -472,6 +472,7 @@ do_sizecheck() {
>  addtask sizecheck before do_install after do_compile
>  
>  KERNEL_IMAGE_BASE_NAME ?= "${KERNEL_IMAGETYPE}-${PV}-${PR}-${MACHINE}-${DATETIME}"
> +UIMAGE_BASE_NAME ?= "uImage-${PV}-${PR}-${MACHINE}-${DATETIME}"
>  # Don't include the DATETIME variable in the sstate package signatures
>  KERNEL_IMAGE_BASE_NAME[vardepsexclude] = "DATETIME"
>  KERNEL_IMAGE_SYMLINK_NAME ?= "${KERNEL_IMAGETYPE}-${MACHINE}"
> @@ -484,16 +485,16 @@ kernel_do_deploy() {
>  
>  	if test "x${KERNEL_IMAGETYPE}" = "xuImage" ; then 
>  		if test -e arch/${ARCH}/boot/uImage ; then
> -			cp arch/${ARCH}/boot/uImage ${DEPLOYDIR}/uImage-${PV}-${PR}-${MACHINE}-${DATETIME}.bin
> +			cp arch/${ARCH}/boot/uImage ${DEPLOYDIR}/${UIMAGE_BASE_NAME}.bin

why using KERNEL_IMAGE_BASE_NAME does not work here ?

>  		elif test -e arch/${ARCH}/boot/compressed/vmlinux ; then
>  			${OBJCOPY} -O binary -R .note -R .comment -S arch/${ARCH}/boot/compressed/vmlinux linux.bin
> -			uboot-mkimage -A ${ARCH} -O linux -T kernel -C none -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin ${DEPLOYDIR}/uImage-${PV}-${PR}-${MACHINE}-${DATETIME}.bin
> +			uboot-mkimage -A ${ARCH} -O linux -T kernel -C none -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin ${DEPLOYDIR}/${UIMAGE_BASE_NAME}.bin
>  			rm -f linux.bin
>  		else
>  			${OBJCOPY} -O binary -R .note -R .comment -S vmlinux linux.bin
>  			rm -f linux.bin.gz
>  			gzip -9 linux.bin
> -			uboot-mkimage -A ${ARCH} -O linux -T kernel -C gzip -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin.gz ${DEPLOYDIR}/uImage-${PV}-${PR}-${MACHINE}-${DATETIME}.bin
> +			uboot-mkimage -A ${ARCH} -O linux -T kernel -C gzip -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin.gz ${DEPLOYDIR}/${UIMAGE_BASE_NAME}.bin
>  			rm -f linux.bin.gz
>  		fi
>  	fi
> -- 
> 1.6.0.4
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

