Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 51B2B4C810E8
	for <poky@yoctoproject.org>; Sun, 19 Dec 2010 23:24:13 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so2315545iyb.35
	for <poky@yoctoproject.org>; Sun, 19 Dec 2010 21:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=C/1Vas086n+dvh3ZYIxmavbY0VGDejyl+XhsxrTXXXA=;
	b=AsXL8p0zQj0JFzuUt0VqxcQOljudzWBbu9pljdnQAqZQuOGeiTuA1CNeeMKtLgg/Wk
	BT3s0Uz3AJvjuKQaxnye9MjVmpuoro1pmai7qwgPozoGja1gf9hQo7FSfGCK9vd6eS2N
	FH43w+7F73+Mkr88aX49gf4QByk4y5TERJgcw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=McXZn22EBA6YMXFZlsPcrEUGCidno4PYEX2ZfAjfyath7MjVuwCfk0wlFnhzynvfn/
	/9Zgb+s/YA9E4SMLnbB/aM7Z9a2gX59jBmKb1+sza3zBthwDbZHqBiZdttN0FOLK64C/
	7x7AXsz6zbOAG8d+5RaynAq724ai3/0Z1OJCg=
MIME-Version: 1.0
Received: by 10.231.11.4 with SMTP id r4mr3538182ibr.146.1292822652875; Sun,
	19 Dec 2010 21:24:12 -0800 (PST)
Received: by 10.231.180.224 with HTTP; Sun, 19 Dec 2010 21:24:12 -0800 (PST)
In-Reply-To: <7aa34388cd1c42920ce27a64cf8e1685e6f24a10.1292630935.git.dvhart@linux.intel.com>
References: <cover.1292630935.git.dvhart@linux.intel.com>
	<7aa34388cd1c42920ce27a64cf8e1685e6f24a10.1292630935.git.dvhart@linux.intel.com>
Date: Mon, 20 Dec 2010 00:24:12 -0500
Message-ID: <AANLkTikQ_BeQROAhGSG5R_aKz7o_sjFuPO6ifLmUgMn6@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: bruce.ashfield@intel.com, poky@yoctoproject.org
Subject: Re: [PATCH 4/4] machine/qemu: Allow for users to override the preferred kernel version
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
X-List-Received-Date: Mon, 20 Dec 2010 05:24:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 17, 2010 at 7:05 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> The linux-yocto-rt kernel has been boot tested on qemux86-64. Unlock
> the preferred provider for virtual/kernel so it can be selected and
> used.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

We definitely need this.

Bruce

>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
> =A0meta/conf/machine/include/qemu.inc | =A0 =A02 +-
> =A01 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/conf/machine/include/qemu.inc b/meta/conf/machine/inclu=
de/qemu.inc
> index 502e24f..61281bf 100644
> --- a/meta/conf/machine/include/qemu.inc
> +++ b/meta/conf/machine/include/qemu.inc
> @@ -15,7 +15,7 @@ IMAGE_ROOTFS_SIZE_ext3 ?=3D "280000"
> =A0RDEPENDS_kernel-base =3D ""
>
> =A0# Use a common kernel recipe for all QEMU machines
> -PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto"
> +PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> =A0#PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
>
> =A0EXTRA_IMAGEDEPENDS +=3D "qemu-native qemu-helper-native"
> --
> 1.7.2.3
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

