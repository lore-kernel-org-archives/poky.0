Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 522C14C80B70
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 19:47:53 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so18256059iwn.35
	for <poky@yoctoproject.org>; Wed, 05 Jan 2011 17:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=k6wDZMhU51vVMedrPPBLSKoQ11LIYGlwKrs9HZUXmDE=;
	b=RzkYLKrTMTWMikrh4zD6xbm9Fif9del0N+Tue8gI6W60/nepuirC+S/7gBK9rb9zvw
	ttW8YH5dYUeHNHfx417O3WdMaXP4wxtQlIHblrIBZxZVz9bbWXVRE+3FFKUiS3iXHuHO
	AKl5aLSAX9AJG26hGRXaoZID/mxqC7gxs80LY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=flig3fvpWUvyCmJYsGzCaQ5KfHn2mZeselsZIWucqCk6FqsasHymrupbXBn5wNk/3d
	5J5bpuNdn4NSJlI+v/ueECgulWV/a+ODG+unQPPykGWiXBDH5B2EaEFlaltdA7ktIVJ8
	tKCSx7q1mo7aH0TVU33px1QrUnmfULgmp8siY=
MIME-Version: 1.0
Received: by 10.231.199.10 with SMTP id eq10mr23592080ibb.112.1294278472066;
	Wed, 05 Jan 2011 17:47:52 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 5 Jan 2011 17:47:52 -0800 (PST)
In-Reply-To: <21fafc889e81411735de7d04ffe504e5cff4830d.1294275316.git.dvhart@linux.intel.com>
References: <cover.1294275316.git.dvhart@linux.intel.com>
	<21fafc889e81411735de7d04ffe504e5cff4830d.1294275316.git.dvhart@linux.intel.com>
Date: Wed, 5 Jan 2011 20:47:52 -0500
Message-ID: <AANLkTik8VAyki6Bi1obmh-QHVL-EGjHft6oC1_v5jXNj@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] rootfs_rpm: fix rootfs generation rm error
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
X-List-Received-Date: Thu, 06 Jan 2011 01:47:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 5, 2011 at 7:57 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> During a poky-image-minimal build I ran into the following error:
> rm: cannot remove `/vol/1/dvhart/poky.git/build/tmp/work/atom-pc-poky-lin=
ux/poky-image-minimal-initramfs-1.0-r0/rootfs/install': Is a directory
>
> This is caused by a missing -r (recursive) argument to rm. This patch
> adds that to the rm command of rootfs_rpm.bbclass.

Thanks Darren. Beat me to it!

Looks good to me, definitely fixed my problems earlier.

Bruce

>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> =A0meta/classes/rootfs_rpm.bbclass | =A0 =A02 +-
> =A01 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bb=
class
> index 2f7d691..8646eec 100644
> --- a/meta/classes/rootfs_rpm.bbclass
> +++ b/meta/classes/rootfs_rpm.bbclass
> @@ -206,7 +206,7 @@ EOF
> =A0 =A0 =A0 =A0mv ${IMAGE_ROOTFS}/install/*.manifest ${T}/
>
> =A0 =A0 =A0 =A0# Remove all remaining resolver files
> - =A0 =A0 =A0 rm -f ${IMAGE_ROOTFS}/install
> + =A0 =A0 =A0 rm -rf ${IMAGE_ROOTFS}/install
>
> =A0 =A0 =A0 =A0log_check rootfs
>
> --
> 1.7.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

