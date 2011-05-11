Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33F294C80FBE
	for <poky@yoctoproject.org>; Wed, 11 May 2011 13:34:07 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywk9 with SMTP id 9so371732ywk.35
	for <poky@yoctoproject.org>; Wed, 11 May 2011 11:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=E7D5d4qy5daH1o+UHuPcoZvPDXDD7peGT0KRCW2q11w=;
	b=bvGj9U0vb2513VFD55+nj8drhJwQa59WSSFbCuzyFx2kocMyNqGbGliUSCRPO3C3vl
	QnhxrUctv3x+z1qRJQp6ZH5uJlEXiPWI7+93hhQfeTMQ+PGJ9T9Cm1ERv1KyokX7AbvL
	goNp18fdar78zeOGC+VG+39dH+5LMTeYR2mw4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=LsP7dXwTC2NfVFehWlpwkhlCx0jx4HXfVGcElsG59PKdtcHtCsDE71O06u0Z+vVufP
	lWUubl2VKWR4JffiQKIDyRum6jeNTBxyqOtcth0xfhZLnswdGLRZbAviyXN0yw6Ptq21
	q5xMWZDHZyJYR4VICnbP335M2Svt02NiJXbp0=
MIME-Version: 1.0
Received: by 10.91.126.14 with SMTP id d14mr8131806agn.58.1305138840446; Wed,
	11 May 2011 11:34:00 -0700 (PDT)
Received: by 10.90.104.11 with HTTP; Wed, 11 May 2011 11:34:00 -0700 (PDT)
In-Reply-To: <4DCAD58D.3040501@mlbassoc.com>
References: <4DCAD58D.3040501@mlbassoc.com>
Date: Wed, 11 May 2011 14:34:00 -0400
Message-ID: <BANLkTimxcWskB6AQZZ-cN3kTpegt4vK2jg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: qemuarm hangs
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
X-List-Received-Date: Wed, 11 May 2011 18:34:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, May 11, 2011 at 2:29 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> Building from master, updated earlier today.
>
> OE Build Configuration:
> BB_VERSION =A0 =A0 =A0 =A0=3D "1.11.0"
> METADATA_BRANCH =A0 =3D "my_master"
> METADATA_REVISION =3D "2e4518bf18d977e1249ef7e7cd384df66e7b4801"
> TARGET_ARCH =A0 =A0 =A0 =3D "arm"
> TARGET_OS =A0 =A0 =A0 =A0 =3D "linux-gnueabi"
> MACHINE =A0 =A0 =A0 =A0 =A0 =3D "qemuarm"
> DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"
> DISTRO_VERSION =A0 =A0=3D "1.0+snapshot-20110511"
> TARGET_FPU =A0 =A0 =A0 =A0=3D "soft"
>
> When I runqemu on core-image-sato, it brings up the simulated
> video screen and the Yocto splash shows. =A0The progress bar goes
> to about 60% and then it just hangs there forever.
>
> core-image-minimal boots to a login prompt
>
> Ideas? =A0How can I figure out where it's bombing out?

When I saw this go by:

commit a2e232e2313ee267076bb8de32a1a604dbebc33b
Author: Zhai Edwin <edwin.zhai@intel.com>
Date:   Tue May 10 14:02:35 2011 +0800

    qemu: Upgrade qemu git to the latest 0.14 branch

    Also add missing patch to build qemu-git

    [YOCTO #1013] got fixed

    (From OE-Core rev: 9b80846152931bed018f33baaaf1ba253e756867)

    Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

I wondered about compatibility. Have you tried with the older qemu ?

Bruce

>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

