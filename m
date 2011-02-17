Return-Path: <raj.khem@gmail.com>
Received: from mail-fx0-f44.google.com (mail-fx0-f44.google.com
	[209.85.161.44])
	by mx1.pokylinux.org (Postfix) with ESMTP id D75B24C800A3
	for <poky@lists.pokylinux.org>; Wed, 16 Feb 2011 21:30:16 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm9 with SMTP id 9so2352107fxm.3
	for <poky@lists.pokylinux.org>; Wed, 16 Feb 2011 19:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=nQ0lyyJ8XXKR08iKAc6LC5XOwa6VuHcnaYUJuZgWWa4=;
	b=BT47y/rE+h9VmrAIsjpMQ23YgEXnvVApInX/q8rVOdze6mzMIRWnytw9KsXRaLC1Ji
	r2n9h4+yQT/2fAbmtvadLmIWj3BivO4EusoWxEZF5Vd4K1w5sNOXGnVqQPwtgRy4aB/Q
	g0cEcq+7US7Q5fbPhwd7XuNpt+KM86zheE1Js=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=A1iy5slwDiJsSiNXoDDMu1ykidALPfv5pl3PCCM8Rto+XQHxvrmdJ6z+cnvJUAa3bO
	ngxhVBxu2wvnHH+N2mqxLRpQvwlPtEh26f402xCdP5o7MDshygSIrLw92rGVM2yM1rZO
	XubUtmf/F1FA0I1GrsJCEx3EMJw2VCar8O7Pk=
Received: by 10.223.53.68 with SMTP id l4mr1739356fag.44.1297913415744; Wed,
	16 Feb 2011 19:30:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.66.22 with HTTP; Wed, 16 Feb 2011 19:29:55 -0800 (PST)
In-Reply-To: <4D5C81D3.601@mlbassoc.com>
References: <4D5C81D3.601@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 16 Feb 2011 19:29:55 -0800
Message-ID: <AANLkTi=JWGANb5Uevdt+A1Dy_oCZDFFEqX8kh=2uQvUT@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Dropbear SSH and empty root password
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
X-List-Received-Date: Thu, 17 Feb 2011 03:30:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 16, 2011 at 6:02 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> The default images have no password for root. =C2=A0This used to
> work fine with the dropbear SSH server, but no longer does.
>
> I see that the recipe has this line:
> =C2=A0file://allow-nopw.patch;apply=3Dno
>
> Any comment on why this was disabled? =C2=A0I think the history
> of this change was lost in the great packages reshuffle.


if you see in dropbear.inc a bit below you will see this

do_configure_prepend() {
        if [ "x${DISTRO}" !=3D "xfamiliar" -a "${DISTRO_TYPE}" =3D "debug" =
]; then
                oenote "WARNING: applying allow-nopw.patch which
allows password-less logins!"
                patch -p1 < ${WORKDIR}/allow-nopw.patch
        fi
}

so if your distro_type is debug then you will get it applied automatically.

>
> Query: if I wanted to restore this behaviour, could I just
> have a .bbappend file with that line as apply=3Dyes?
>
> --
> ------------------------------------------------------------
> Gary Thomas =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=
=A0Consulting for the
> MLB Associates =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
=C2=A0Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

