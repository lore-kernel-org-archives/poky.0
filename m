Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3AB0B4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 13:51:35 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1526634iwn.35
	for <poky@yoctoproject.org>; Thu, 03 Feb 2011 11:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=RIULiyA1rECgXrGa/5KJ11xiGxO9jzBG4C3H5Lo2Ei4=;
	b=w11JLfCw3DSqc7Znt2qrdNJYUs/AkVT8nboAQRT79/0VmDibh2c6C+YSMECpJ1HPU5
	FgRXkYGwHKiOfoxmdM7M/OpdHpihZjF3P6L0lIaRCdh5y/YKlzkBHEvFatwQSlRe9p1A
	qCmRI4i6FeRe6JpwnbacVinedi1dM1AS+zcOc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=I7dJ0jbOUBzcaLq/nJvckU0dpZBOhtwnLzvshY3c2PlKf5vg+TbsgJqDAij3mlc6K4
	Yhnjs7T7EfzZoFM7NzI7SpDzJi6tiAY0R1y7APSv9w0a8GjazYno7I9nwtA9YjDcNclR
	7IJaHyWU4lpcr+yJvPEazHyvpcxrYUHfsT3SA=
MIME-Version: 1.0
Received: by 10.42.174.129 with SMTP id v1mr13288409icz.54.1296762694911; Thu,
	03 Feb 2011 11:51:34 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 3 Feb 2011 11:51:34 -0800 (PST)
In-Reply-To: <4b95de17b587caf8e284658df91ef345c829471e.1296762098.git.dvhart@linux.intel.com>
References: <cover.1296762098.git.dvhart@linux.intel.com>
	<4b95de17b587caf8e284658df91ef345c829471e.1296762098.git.dvhart@linux.intel.com>
Date: Thu, 3 Feb 2011 14:51:34 -0500
Message-ID: <AANLkTi=i2FtXMau6hitqo9utWyHCQ3a4G-8gUyBNars4@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] beagleboard: set kernel provider to linux-yocto (2.6.37)
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
X-List-Received-Date: Thu, 03 Feb 2011 19:51:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 3, 2011 at 2:43 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> From: Darren Hart <dvhart@linux.intel.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
> =A0Branch: dvhart/beagle
> =A0Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddvhart=
/beagle
>
> Thanks,
> =A0 =A0Darren Hart <dvhart@linux.intel.com>
>
> Support has been added for basic Beagleboard xM functionality,
> including networking, to the linux-yocto kernel repository.
> Tested on the Beagleboard xM.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

I've been building this just today to test lttng support, now is
the time to throw the switch.

Bruce

>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> =A0meta/conf/machine/beagleboard.conf =A0 =A0 =A0 =A0 =A0 | =A0 =A02 +-
> =A0meta/recipes-kernel/linux/linux-yocto_git.bb | =A0 =A02 +-
> =A02 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/conf/machine/beagleboard.conf b/meta/conf/machine/beagl=
eboard.conf
> index f21638c..04947c0 100644
> --- a/meta/conf/machine/beagleboard.conf
> +++ b/meta/conf/machine/beagleboard.conf
> @@ -24,7 +24,7 @@ EXTRA_IMAGECMD_jffs2 =3D "-lnp "
> =A0# Guesswork
> =A0SERIAL_CONSOLE =3D "115200 ttyO2"
>
> -PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-stable"
> +PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto"
> =A0PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
>
> =A0KERNEL_IMAGETYPE =3D "uImage"
> diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-=
kernel/linux/linux-yocto_git.bb
> index 5f126b3..cc52397 100644
> --- a/meta/recipes-kernel/linux/linux-yocto_git.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
> @@ -20,7 +20,7 @@ SRCREV_FORMAT =3D "meta_machine"
> =A0SRC_URI =3D "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=3Dgit=
;nocheckout=3D1;branch=3D${KBRANCH},meta;name=3Dmachine,meta \
> =A0 =A0 =A0 =A0 =A0 =A0file://tools-perf-no-scripting.patch"
>
> -COMPATIBLE_MACHINE =3D "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc=
8315e-rdb|routerstationpro)"
> +COMPATIBLE_MACHINE =3D "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc=
8315e-rdb|routerstationpro|beagleboard)"
>
> =A0# Functionality flags
> =A0KERNEL_REVISION_CHECKING ?=3D "t"
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

