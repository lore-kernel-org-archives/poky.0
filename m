Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f45.google.com (mail-pb0-f45.google.com
	[209.85.160.45]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 87B10E00429
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 09:52:23 -0800 (PST)
Received: by mail-pb0-f45.google.com with SMTP id ro8so1888335pbb.4
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 09:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=2D51ogmgD+QXfC0LVvZe1SsDWVQVB7kkgLfUTFE+/xg=;
	b=Hg2iSe8lpTpU62yi+38VGNq3EnONwpOs9EO0LMeamydh7mGsZtrSJ6CXTYdoeAVEcR
	cZPaVnQuXefEW4yaV8PMy++PEJBFllYJgJGgqSNcJfzlv4KhLTqqANAAuXNpPFrjIF7Z
	TYZq06UspP/lrdsaKkt8Zxq36cP7A5vRGFVeDGZn7GzbUj8qmnuG184i2zUBoalM4GOd
	qv2GFTFahM2TQZHeeWTZ/e09+cOc5vCYk6fE2wom/yqV6q0ZHng/baYeyoFLtQJQrO2R
	CrUHUIIGrn/FM27zQdOMIhUQx+56ULUVymnDFdqPzjUjHmHV0rLsF1+5Yfs1rBRRSBvl
	FGSA==
X-Received: by 10.68.195.161 with SMTP id if1mr7509712pbc.207.1362160343285;
	Fri, 01 Mar 2013 09:52:23 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id hs8sm12721563pbc.27.2013.03.01.09.52.20
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 09:52:22 -0800 (PST)
Date: Fri, 1 Mar 2013 18:52:15 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: poky@yoctoproject.org
Message-ID: <20130301175215.GQ3279@jama>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [PATCHv2] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 01 Mar 2013 17:52:23 -0000
X-Groupsio-MsgNum: 8720
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6pbY/KU4ayLo+qis"
Content-Disposition: inline

--6pbY/KU4ayLo+qis
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 01, 2013 at 05:19:53PM +0100, Martin Jansa wrote:
> * use DistributorId-Release
> * please test values for Yocto, Poky, CentOS and openSUSE

Looks like v1 was already applied to meta-yocto, waiting for Trevor's
confirmation, but openSUSE entries need to be updated.

> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  meta-yocto/conf/distro/poky.conf | 40 +++++++++++++++++++---------------=
------
>  1 file changed, 19 insertions(+), 21 deletions(-)
>=20
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/po=
ky.conf
> index c48b492..48180d7 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -69,27 +69,25 @@ CONNECTIVITY_CHECK_URIS ?=3D " \
>               http://bugzilla.yoctoproject.org/report.cgi"
> =20
>  SANITY_TESTED_DISTROS ?=3D " \
> -            Yocto (Built by Poky 7.0) 1.2 \n \
> -            Poky 7.0 (Yocto Project 1.2 Reference Distro) 1.2 \n \
> -            Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3 \n \
> -            Ubuntu 10.04.4 LTS \n \
> -            Ubuntu 11.10 \n \
> -            Ubuntu 12.04 LTS \n \
> -            Ubuntu 12.04.2 LTS \n \
> -            Ubuntu 12.04.1 LTS \n \
> -            Ubuntu 12.10 \n \
> -            Fedora release 16 (Verne) \n \
> -            Fedora release 17 (Beefy Miracle) \n \
> -            Fedora release 18 (Spherical Cow) \n \
> -            CentOS release 5.6 (Final) \n \
> -            CentOS release 5.7 (Final) \n \
> -            CentOS release 5.8 (Final) \n \
> -            CentOS release 6.3 (Final) \n \
> -            Debian GNU/Linux 6.0.6 (squeeze) \n \
> -            Debian GNU/Linux 7.0 (wheezy) \n \
> -            openSUSE 11.4 \n \
> -            openSUSE 12.1 \n \
> -            openSUSE 12.2 \n \
> +            Yocto-1.2 \n \
> +            Poky-1.2 \n \
> +            Poky-1.3 \n \
> +            Ubuntu-10.04 \n \
> +            Ubuntu-11.10 \n \
> +            Ubuntu-12.04 \n \
> +            Ubuntu-12.10 \n \
> +            Fedora-16 \n \
> +            Fedora-17 \n \
> +            Fedora-18 \n \
> +            CentOS-5.6 \n \
> +            CentOS-5.7 \n \
> +            CentOS-5.8 \n \
> +            CentOS-6.3 \n \
> +            Debian-6.0 \n \
> +            Debian-7.0 \n \
> +            SUSE-LINUX-11.4 \n \
> +            SUSE-LINUX-12.1 \n \
> +            SUSE-LINUX-12.2 \n \
>  	    "
> =20
>  # Default hash policy for distro
> --=20
> 1.8.1.4
>=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--6pbY/KU4ayLo+qis
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlEw6s8ACgkQN1Ujt2V2gBxK+QCeOHvbfSAtvvCgzhlZY6mwxM+9
KL0AoKeq1+E16841Sgrgqbun2UU/p3Ie
=HcqR
-----END PGP SIGNATURE-----

--6pbY/KU4ayLo+qis--
