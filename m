Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id D21964C80578
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:47:10 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so459155bwz.35
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 23:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=sMQAHuT9d73uU9oXrUu6EzXSPf8ebCY4+QKsIN13Uks=;
	b=Ifgr7bwEv2uNjGW0Cy73oJGKsEAr4wyfTWyiaaDdeAcWlUEe9WpoPIgRxGC5VHmdQW
	hUI9/uQm3KYTohKsQ1KLNBkdqF7+N2HT3ki0H8XCKoGPr9EUvoTluzZv1c0CYNYo435J
	AhO/yn7WhfsuwkjsQSZzWmxjNIWwIdqRhzBuY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=ssYn55fLfM7GF15bjuH17Mx8svkU0mPpGeAlhGhiwjagicRGv95jTTY7WDnxJGq1ZA
	fqSPw8+Z7NpQ8uLHBcrFJHLD9SBn20bCd2vmInOQkFtd4fbiDwMesNR6jBWRl1U69AV1
	o9ukL0aeF6ylMDGFR0NNCueMa+Aew3M/3J7YU=
Received: by 10.204.151.207 with SMTP id d15mr346457bkw.123.1303800424977;
	Mon, 25 Apr 2011 23:47:04 -0700 (PDT)
Received: from localhost ([94.230.152.115])
	by mx.google.com with ESMTPS id q18sm3654681bka.3.2011.04.25.23.47.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 25 Apr 2011 23:47:03 -0700 (PDT)
Date: Tue, 26 Apr 2011 08:46:56 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Dongxiao Xu <dongxiao.xu@intel.com>
Message-ID: <20110426064656.GA23783@jama.jama.net>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
	<33127d257fd55d857faf16ef8db3d150c6a67893.1303798223.git.dongxiao.xu@intel.com>
MIME-Version: 1.0
In-Reply-To: <33127d257fd55d857faf16ef8db3d150c6a67893.1303798223.git.dongxiao.xu@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 06/13] glib-2.0: upgrade to version 2.28.6
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
X-List-Received-Date: Tue, 26 Apr 2011 06:47:11 -0000
X-Groupsio-MsgNum: 5557
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline

--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 26, 2011 at 02:46:04PM +0800, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
>=20
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  .../60_wait-longer-for-threads-to-die.patch        |    2 ++
>  .../glib-2.0/glib-2.0/configure-libtool.patch      |    2 ++
>  .../glib-2.0/glib-2.0/g_once_init_enter.patch      |    2 ++
>  .../glib-2.0/glib-2.0/glib-gettextize-dir.patch    |    2 ++
>  .../{glib-2.0_2.26.1.bb =3D> glib-2.0_2.28.6.bb}     |    8 ++++----
>  meta/recipes-core/glib-2.0/glib.inc                |    2 +-
>  6 files changed, 13 insertions(+), 5 deletions(-)
>  rename meta/recipes-core/glib-2.0/{glib-2.0_2.26.1.bb =3D> glib-2.0_2.28=
=2E6.bb} (57%)
>=20
> diff --git a/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threa=
ds-to-die.patch b/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-th=
reads-to-die.patch
> index 8195bd4..b65a474 100644
> --- a/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-d=
ie.patch
> +++ b/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-d=
ie.patch
> @@ -2,6 +2,8 @@ copy from OE, said to borrow from Ubuntu. Not in glib-2.0=
 upstream yet. Add for
>  Added to poky by Kevin Tian <kevin.tian@intel.com>, 06/25/2010
>  Rebased for glib-2.27.3 by Dongxiao Xu <dongxiao.xu@intel.com>, 11/16/20=
10
> =20
> +Upstream-Status: Inappropriate [patches for test code]
> +
>  diff -ruN glib-2.27.3-orig/tests/threadpool-test.c glib-2.27.3/tests/thr=
eadpool-test.c
>  --- glib-2.27.3-orig/tests/threadpool-test.c	2009-04-01 07:04:21.0000000=
00 +0800
>  +++ glib-2.27.3/tests/threadpool-test.c	2010-11-16 12:28:09.002172678 +0=
800
> diff --git a/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch =
b/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
> index 7c170be..c21e378 100644
> --- a/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
> +++ b/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
> @@ -4,6 +4,8 @@
>  # from PATH though
>  # Rebased to glib-2.27.3 by Dongxiao Xu <dongxiao.xu@intel.com>
> =20
> +Upstream-Status: Inappropriate [configuration]
> +
>  diff -ruN glib-2.27.3-orig/configure.ac glib-2.27.3/configure.ac
>  --- glib-2.27.3-orig/configure.ac	2010-11-03 11:02:05.000000000 +0800
>  +++ glib-2.27.3/configure.ac	2010-11-16 12:38:12.610485990 +0800
> diff --git a/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch =
b/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
> index a2a506c..2eaa19b 100644
> --- a/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
> +++ b/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
> @@ -7,6 +7,8 @@ http://www.mail-archive.com/openembedded-devel@lists.open=
embedded.org/msg005
> =20
>  Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> =20
> +Upstream-Status: Pending
> +
>  Index: glib-2.27.5/glib/gthread.h
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  --- glib-2.27.5.orig/glib/gthread.h
> diff --git a/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patc=
h b/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
> index e54a8e5..ee43511 100644
> --- a/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
> +++ b/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
> @@ -8,6 +8,8 @@
>  # by Kevin Tian <kevin.tian@intel.com>, 06/25/2010
>  # Rebased by Dongxiao Xu <dongxiao.xu@intel.com>, 11/16/2010
> =20
> +Upstream-Status: Inappropriate [configuration]
> +
>  diff -ruN glib-2.27.3-orig/glib-gettextize.in glib-2.27.3/glib-gettextiz=
e.in
>  --- glib-2.27.3-orig/glib-gettextize.in	2009-04-01 07:04:20.000000000 +0=
800
>  +++ glib-2.27.3/glib-gettextize.in	2010-11-16 12:55:06.874605916 +0800
> diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb b/meta/recipes=
-core/glib-2.0/glib-2.0_2.28.6.bb
> similarity index 57%
> rename from meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> rename to meta/recipes-core/glib-2.0/glib-2.0_2.28.6.bb
> index 6a1fb6c..c9da861 100644
> --- a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> +++ b/meta/recipes-core/glib-2.0/glib-2.0_2.28.6.bb
> @@ -1,16 +1,16 @@
>  require glib.inc
> =20
> -PE =3D "1"
> +PE =3D "0"

Hi,

do you really want PE going backwards?

Regards,

>  PR =3D "r0"
> =20
> -SRC_URI =3D "${GNOME_MIRROR}/glib/2.26/glib-${PV}.tar.bz2 \
> +SRC_URI =3D "${GNOME_MIRROR}/glib/2.28/glib-${PV}.tar.bz2 \
>             file://configure-libtool.patch \
>             file://60_wait-longer-for-threads-to-die.patch \
>             file://g_once_init_enter.patch \
>            "
> =20
> -SRC_URI[md5sum] =3D "17535accceef55bcb17a74d73f9c2aef"
> -SRC_URI[sha256sum] =3D "7a74ff12b6b9dee1f2d0e520b56b68b621920c4f4250bdf2=
3468e515625c28d5"
> +SRC_URI[md5sum] =3D "7d8fc15ae70d5111c0cf2a79d50ef717"
> +SRC_URI[sha256sum] =3D "557fb7c39d21b9359fbac51fd6b0b883bc97a2561c0166ee=
f993a4078312f578"
> =20
>  SRC_URI_append_virtclass-native =3D " file://glib-gettextize-dir.patch"
>  BBCLASSEXTEND =3D "native"
> diff --git a/meta/recipes-core/glib-2.0/glib.inc b/meta/recipes-core/glib=
-2.0/glib.inc
> index 5ebff68..9b6e17b 100644
> --- a/meta/recipes-core/glib-2.0/glib.inc
> +++ b/meta/recipes-core/glib-2.0/glib.inc
> @@ -8,7 +8,7 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D3bf50002aefd00=
2f49e7bb854063f7e7 \
>                      file://gmodule/COPYING;md5=3D3bf50002aefd002f49e7bb8=
54063f7e7 \
>                      file://gmodule/gmodule.h;startline=3D4;endline=3D17;=
md5=3D76ab161b37202cd004073c42fac276ed \
>                      file://glib/pcre/COPYING;md5=3D266ebc3ff74ee9ce6fad6=
5577667c0f4 \
> -                    file://glib/pcre/pcre.h;startline=3D11;endline=3D35;=
md5=3Dcc0858840d3c312ec3e45b28077eb0d8 \
> +                    file://glib/pcre/pcre.h;startline=3D11;endline=3D35;=
md5=3Dce867cf87ebbd2bb55e980d90328390d \
>                      file://docs/reference/COPYING;md5=3Df51a5100c17af6ba=
e00735cd791e1fcc"
>  BUGTRACKER =3D "http://bugzilla.gnome.org"
>  SECTION =3D "libs"
> --=20
> 1.7.1
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--bp/iNruPH9dso1Pn
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)

iEYEARECAAYFAk22amAACgkQN1Ujt2V2gBw6ewCgmxHU++EMHFWErDMpQUEKzj82
NMAAniK5fhyxg1de6ggau+jhN0MKIMJq
=RQz6
-----END PGP SIGNATURE-----

--bp/iNruPH9dso1Pn--
