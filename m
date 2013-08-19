Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B131E003E2
	for <poky@yoctoproject.org>; Mon, 19 Aug 2013 14:58:56 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id l10so2396871eei.35
	for <poky@yoctoproject.org>; Mon, 19 Aug 2013 14:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=jliFvQmrdeAMpAseEO/nMp6ybMO7e4valwxq/qCmgUo=;
	b=RKa7pU09amxhK+xNwtghZp55Fwds4jAoC5shAXNwVtj2MKkTwFN9B4Mx39BJxPFBKn
	j1OHvHAMsXMojCf1p30x7Ov+N9mG04ilg0y7jFCEma9pAUV81JWcYlzriItux3haqLvi
	KeziZLQnrwX7LOg55UQgsDGx/N0Qifc8JVxXTIL9WWt7V+YPZNW67h79MP0JFcaEELf1
	aRbOoh06jaTpD89A2JxZvhU/gj0HP5oi4qesVFbBohJtJkQASe1IQaL7WeEDXiog3GaO
	RJy9b4JFfJf5q60EaWdJoxx8at+6kPV5O/VSu0/snfAjtzajbNmpdsFWf/Y4bO0Tp0Gh
	T2cg==
X-Received: by 10.14.0.73 with SMTP id 49mr168085eea.78.1376949535833;
	Mon, 19 Aug 2013 14:58:55 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	n48sm20228904eeg.17.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 19 Aug 2013 14:58:55 -0700 (PDT)
Date: Mon, 19 Aug 2013 23:59:58 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Message-ID: <20130819215958.GC522@jama>
References: <1376948717-8206-1-git-send-email-elizabeth.flanagan@intel.com>
MIME-Version: 1.0
In-Reply-To: <1376948717-8206-1-git-send-email-elizabeth.flanagan@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] SDK_NAME: Change to include image name and machine.
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
X-List-Received-Date: Mon, 19 Aug 2013 21:58:58 -0000
X-Groupsio-MsgNum: 9037
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="eHhjakXzOLJAF9wJ"
Content-Disposition: inline

--eHhjakXzOLJAF9wJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 19, 2013 at 02:45:17PM -0700, Elizabeth Flanagan wrote:
> [YOCTO #4618]
>=20
> When building out multiple toolchains with the same target arch
> you can end up having toolchains with the same name. Making
> the naming a bit more granular by adding IMAGE_BASENAME and
> MACHINE to SDK_NAME

What about using TUNE_PKGARCH as oe-core does since
5a1f172d35be610688842a8a9a84f24edb9aeb51 ?

>=20
> Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/po=
ky.conf
> index 7be7d92..f0da032 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -22,7 +22,7 @@ PREFERRED_VERSION_linux-yocto_qemumips ?=3D "3.8%"
>  PREFERRED_VERSION_linux-yocto_qemumips64 ?=3D "3.8%"
>  PREFERRED_VERSION_linux-yocto_qemuppc ?=3D "3.8%"
> =20
> -SDK_NAME =3D "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
> +SDK_NAME =3D "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${MACHIN=
E}-${TARGET_ARCH}"
>  SDKPATH =3D "/opt/${DISTRO}/${SDK_VERSION}"
> =20
>  EXTRAOPKGCONFIG =3D "poky-feed-config-opkg"
> --=20
> 1.8.1.2
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--eHhjakXzOLJAF9wJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlISlV4ACgkQN1Ujt2V2gBzFgACfaPeZivw1zi9UGy2RkVza5fqT
RKwAoIUS9Wyfm6ZJqilJg03uTHokjRsU
=LdJT
-----END PGP SIGNATURE-----

--eHhjakXzOLJAF9wJ--
