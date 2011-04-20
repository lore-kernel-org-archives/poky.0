Return-Path: <martin.jansa@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F9AA4C804D4
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 10:32:01 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm7 with SMTP id 7so848300fxm.35
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 08:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=qLpjdSGUhmZSX5hYM6CVMnRW/8zmm/zQ5Ms/CEV/8P0=;
	b=UB0C+vA76L6KFQlEvFiDdqlxMSAdsv0L863mH02Y5dCQ63LkrHEvvVTcsKa/2TjFC1
	suWxPg0QOQev7m8ztPPsU6VpSrF84X9/ljoXbsq9nAdPF1qU85uwbyWc92S7lo9HLPMc
	tBqGNcLY+wMRtn9oCl+4I12SfBO136+F59ki4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=YkqMUANbZTDUx3wdCrn6OigyPNSb9GNuDLO8vFIoqGj/NfrUSWgm3uBw4d2/2NG3g1
	SGdMn2jKGcVeVG9oPWHVzWJXL0s22Gpb0TvKjb58xEbnZKchadWf/iFGIrwcP2PZFusT
	poZFnNciyl8S+jvaNTDy/EbLg/hH9OZMpSxGY=
Received: by 10.223.144.216 with SMTP id a24mr64965fav.57.1303313520435;
	Wed, 20 Apr 2011 08:32:00 -0700 (PDT)
Received: from localhost (161-24.13.24.78.awnet.cz [78.24.13.161])
	by mx.google.com with ESMTPS id g5sm323449faa.26.2011.04.20.08.31.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 20 Apr 2011 08:31:59 -0700 (PDT)
Date: Wed, 20 Apr 2011 17:31:53 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20110420153153.GK5675@jama.jama.net>
References: <4DA2CC29.7040301@de-haardt.com> <4DAEFAF2.3020507@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4DAEFAF2.3020507@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky <poky@yoctoproject.org>
Subject: Re: load kernel module at startup
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
X-List-Received-Date: Wed, 20 Apr 2011 15:32:02 -0000
X-Groupsio-MsgNum: 5426
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yzvKDKJiLNESc64M"
Content-Disposition: inline

--yzvKDKJiLNESc64M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 20, 2011 at 08:25:38AM -0700, Darren Hart wrote:
>=20
>=20
> On 04/11/2011 02:38 AM, Gerard van den Bosch wrote:
> > Hello,
> >=20
> > I would like to modprobe my wireless driver kernel module at startup=20
> > automatically.
> >=20
> > This works when I generate a rootfs and then boot up the first time so=
=20
> > the modules file gets generated and then I can manually add the kernel=
=20
> > module in that file and then reboot.
> >=20
> > When I look in the manpage of update-modules it states that a config=20
> > file should be added in /etc/modutils but that directory is not in my=
=20
> > rootfs.
> >=20
> > So I was wondering what I have to do to get /etc/modutils directory or=
=20
> > an other way to get the kernel module loaded at startup.
> >=20
> > I am using the Poky 4.0 Laverne release.
>=20
> I believe you can just add the name of the module to:
>=20
> /etc/modules
>=20
> Can you try that?

module_autoload_module_name to do that, is not supported in Poky?

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--yzvKDKJiLNESc64M
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)

iEYEARECAAYFAk2u/GkACgkQN1Ujt2V2gBymXgCfbEft5BaWdtvAijCnXZGxBk6H
ikUAnRE+oO8f1p7RJIBVXeFqxhKQP62N
=/tZT
-----END PGP SIGNATURE-----

--yzvKDKJiLNESc64M--
