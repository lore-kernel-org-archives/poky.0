Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6FCCE0072A
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 05:14:06 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eekb15 with SMTP id b15so801773eek.35
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 05:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=ZxTvkKZUTnYPYE0hC/mlZT4yjV1DlhWEJm0K0eaU/wE=;
	b=q36wwlJJryqambX3xHS6uk5BYB0tF3ivm71JhohkXLr3IftTeHRwsFDu8DjnyZr6as
	xVV6DdyVV+tmL0Q6vfKTKHzRxjuzMnRyhDUcPFUs8Pjz22GPUbZ/eN0n7yklGY5jEQ6r
	vgsmSL5i0gtSqv3SvdTXnMk1VDQmJQebCeb9A=
Received: by 10.213.28.147 with SMTP id m19mr959281ebc.102.1326374045500;
	Thu, 12 Jan 2012 05:14:05 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id t59sm19324964eeh.10.2012.01.12.05.14.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 12 Jan 2012 05:14:04 -0800 (PST)
Date: Thu, 12 Jan 2012 14:13:52 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120112131352.GC3452@jama.jama.net>
References: <4F0EAE81.8030800@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4F0EAE81.8030800@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Thu, 12 Jan 2012 13:14:07 -0000
X-Groupsio-MsgNum: 7351
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WplhKdTI2c8ulnbP"
Content-Disposition: inline

--WplhKdTI2c8ulnbP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2012 at 02:57:21AM -0700, Gary Thomas wrote:
> I'm trying to understand why sstate sometimes [most times in my case]
> is not reusable.  Comparing some of the .siginfo files gives me some
> info, e.g.
>=20
> $ bitbake-diffsigs p60_poky/sstate-cache/sstate-pseudo-native-i686-linux-=
1.2-r4-i686-2-66ad8e10f260d506d065831a738c04a3_populate-sysroot.tgz.siginfo=
=20
> p60_test_pass1/sstate-cache/sstate-pseudo-native-i686-linux-1.2-r4-i686-2=
-c7e01d52b467bbe3af0556a43806521a_populate-sysroot.tgz.siginfo
> Hash for dependent task virtual:nativepseudo_1.2.bb.do_install changed fr=
om 9edd41e331b29f08941225709c325a0d to 9865df7c4aa84fdb288c06faecf63426
>=20
> How do I figure out what went into the hash(es) that changed?

Try to look in stamps directory

something like:
tmp-eglibc/stamps/x86_64-linux/pseudo-native-1.2-r4.do_install.sigdata.504f=
9aac443e1f135aa2d1cbcf84c614

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--WplhKdTI2c8ulnbP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8O3JAACgkQN1Ujt2V2gBzKXACfSf2F9ZAHXUN33Rvj2jyFNaMU
TKgAnRnAGP2gDeVg9Cu6FaWkk9fEf4l4
=VJik
-----END PGP SIGNATURE-----

--WplhKdTI2c8ulnbP--
