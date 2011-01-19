Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE9554C811F6
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 10:56:35 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1087680iwn.35
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 08:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=aJ7e1nxeuMOicY9j5Jm8Ijiui6XPjqkNDgESlgG5kEM=;
	b=NeQuzALk027UU/SD8EOmdlwDy5Rw9yKVqnFhRMQFnx38vP2ddv0Fw6avxnI94JI3c/
	xgVLC34tBa8J1OSeN/QPWVYuR4JT++FYm+gGJp+weS2dYw+sFe4fLMMIrtdf9SwH6KJs
	MCegDYrD7EQmmmvYWYVZwdj2LWSPTFe15Ry7Q=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=t7F4WzDNzCmYvOCz4J688BZWuvy2Q1so1Z3E5ETAmccj+1ruzXIXA6bIKC7vjn1TXq
	i82u/TfqaBZ4dEPL8N2+wPcxDa5riQaeo+18GUkiqFEfilUeVxGsO0m5QRt3gWXXqxnj
	QIO799vGz4/UZZmKeGF6DCWRJx0tiRqIfi878=
MIME-Version: 1.0
Received: by 10.231.34.9 with SMTP id j9mr1091915ibd.137.1295456194927; Wed,
	19 Jan 2011 08:56:34 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 19 Jan 2011 08:56:34 -0800 (PST)
In-Reply-To: <820a5479d2a6d8d7cec11b4c0335018af8886489.1295393078.git.dvhart@linux.intel.com>
References: <cover.1295393078.git.dvhart@linux.intel.com>
	<820a5479d2a6d8d7cec11b4c0335018af8886489.1295393078.git.dvhart@linux.intel.com>
Date: Wed, 19 Jan 2011 11:56:34 -0500
Message-ID: <AANLkTik-5sFHnJmsRE59J3vgdSjLSBwMsq=xT7PKXXUP@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/5] machine/qemu: Allow for users to override the preferred kernel version
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
X-List-Received-Date: Wed, 19 Jan 2011 16:56:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 18, 2011 at 6:25 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> The linux-yocto-rt kernel has been boot tested on qemux86-64. Unlock
> the preferred provider for virtual/kernel so it can be selected and
> used.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
> =A0meta/conf/machine/include/qemu.inc | =A0 =A02 +-
> =A01 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/conf/machine/include/qemu.inc b/meta/conf/machine/inclu=
de/qemu.inc
> index d762d01..225906b 100644
> --- a/meta/conf/machine/include/qemu.inc
> +++ b/meta/conf/machine/include/qemu.inc
> @@ -15,7 +15,7 @@ IMAGE_ROOTFS_SIZE_ext3 ?=3D "280000"
> =A0RDEPENDS_kernel-base =3D ""
>
> =A0# Use a common kernel recipe for all QEMU machines
> -PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto"
> +PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> =A0PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
>
> =A0EXTRA_IMAGEDEPENDS +=3D "qemu-native qemu-helper-native"
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

