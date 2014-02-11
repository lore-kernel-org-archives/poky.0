Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07D47E00764
	for <poky@yoctoproject.org>; Tue, 11 Feb 2014 07:58:31 -0800 (PST)
Received: by mail-ea0-f172.google.com with SMTP id l9so3227646eaj.3
	for <poky@yoctoproject.org>; Tue, 11 Feb 2014 07:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=4fnYyMSncraPa94oTZUCRhEzZYw/Oa4mEOO80R2yIuE=;
	b=LHPKeVOMYe3Wv93ezYIGKPpApmmCCqeIccoPVwigoKGVhJrsLrBR5zos3tAbKTSCTL
	XbdRj8kcrSUQaUWlpe2N5aap1ccAbKnrs1oBwwQ0VKgolC5mgtCo7+aoZ38yF8kNSKSV
	41f+EZ0ibimtU/9jDC5+EVLSsPAhYvLEh+RqZzf9aQCfMyKCzgvf7lGxPF5ucud1PvUx
	LWpryv3ZT8rC13i0UpOA71DDGS5h1/pbAeOJYPDT+dg6U8IkeziAVhfuQ44ZmUqwwwl1
	I1FWm7rk976DtIzS5byDQLlZp8KxH0MZ0NaRVg1bdORSejjo76gUyNex+8Ti5apLHqgT
	PEIA==
X-Received: by 10.15.42.72 with SMTP id t48mr45223970eev.45.1392134310292;
	Tue, 11 Feb 2014 07:58:30 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107]) by mx.google.com with ESMTPSA id
	o43sm68863295eef.12.2014.02.11.07.58.28 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 11 Feb 2014 07:58:28 -0800 (PST)
Date: Tue, 11 Feb 2014 16:58:48 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: =?iso-8859-1?Q?S=E9bastien?= Mennetrier <s.mennetrier@innotis.org>
Message-ID: <20140211155848.GC3485@jama>
References: <1392042495-13533-1-git-send-email-s.mennetrier@innotis.org>
MIME-Version: 1.0
In-Reply-To: <1392042495-13533-1-git-send-email-s.mennetrier@innotis.org>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH][for-dora] Fix issue to build pulseaudio without x11
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
X-List-Received-Date: Tue, 11 Feb 2014 15:58:32 -0000
X-Groupsio-MsgNum: 9481
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7gGkHNMELEOhSGF6"
Content-Disposition: inline

--7gGkHNMELEOhSGF6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 10, 2014 at 03:28:15PM +0100, S=E9bastien Mennetrier wrote:
> This modification come from master branche

It should be cherry-pick of original commit (with original author and
SOB).

But thanks for sending it, I've requested the same change as well.

>=20
> If x11 is not enabled, the pulseaudio-module-console-kit
> couldn't be built.
>=20
> Signed-off-by: S=E9bastien Mennetrier <s.mennetrier@innotis.org>
> ---
>  meta/recipes-multimedia/pulseaudio/pulseaudio.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio.inc b/meta/rec=
ipes-multimedia/pulseaudio/pulseaudio.inc
> index b7a6eba..27879ce 100644
> --- a/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
> +++ b/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
> @@ -74,7 +74,7 @@ USERADD_PARAM_pulseaudio-server =3D "--system --home /v=
ar/run/pulse \
>  # adding the console-kit module to an image, we also get the necessary
>  # consolekit package produced.
>  PACKAGES =3D+ "libpulsecore libpulsecommon libpulse libpulse-simple libp=
ulse-mainloop-glib \
> -             pulseaudio-server pulseaudio-misc pulseaudio-module-console=
-kit"
> +             pulseaudio-server pulseaudio-misc ${@base_contains('PACKAGE=
CONFIG', 'x11', 'pulseaudio-module-console-kit', '', d)}"
> =20
>  #upgrade path:
>  RREPLACES_pulseaudio-server =3D "libpulse-bin libpulse-conf"
> --=20
> 1.8.1.2
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--7gGkHNMELEOhSGF6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlL6SLgACgkQN1Ujt2V2gByzagCdGSFQPjN3bJz2rKH96i3ktLYh
QrkAn0BrOLESlJOtD4E8SYYOX2oPJwuK
=OeEf
-----END PGP SIGNATURE-----

--7gGkHNMELEOhSGF6--
