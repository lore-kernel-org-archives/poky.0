Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6E2CE01066; Thu,  1 Oct 2015 11:17:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C30FE01066
	for <poky@yoctoproject.org>; Thu,  1 Oct 2015 11:17:31 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so2662303wic.1
	for <poky@yoctoproject.org>; Thu, 01 Oct 2015 11:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=qe8s9avKJJy4eVxYo2C4FFL43lGLMUMz6LBWNIRnpbE=;
	b=MMu41L8ctDM2UcQtWdcAeMmdxz2jN2s2jao7Jw9f0lC3aw1a8WiI4KPUQapGnP7cLQ
	pkDTcmCwTPUzAuDsHdHV/N3TDW1IBfGdaX+pJsmeWalBmqiH7KUJ7HArgcoIMjaD2YlN
	drAMK8iwNMWpXzLorlb0jdMa707u3qEG2giXMvW7I1TG5olMo1jEyNHtLmlVnyA55p/i
	qPgBQO2CibTS0zv8wDlaaY83IvcgY4Rk+jPrhNeqidc5FUQBaHZnkZZjQH2IC8tpSBWZ
	IhBpNpaBfowhEmpa5dD36Z3mwj2SqA+kwPk0KKh9o/QDZBrMHKqLKDFyI034NmqjyP4i
	asiw==
X-Received: by 10.180.211.177 with SMTP id nd17mr173504wic.69.1443723450749;
	Thu, 01 Oct 2015 11:17:30 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	he3sm7330603wjc.48.2015.10.01.11.17.29
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Oct 2015 11:17:29 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 1 Oct 2015 20:18:28 +0200
To: Jens Rehsack <rehsack@gmail.com>
Message-ID: <20151001181828.GG2403@jama>
References: <9A2A9F0F-9060-44E4-A59D-3749BF52C6A5@gmail.com>
MIME-Version: 1.0
In-Reply-To: <9A2A9F0F-9060-44E4-A59D-3749BF52C6A5@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 9/9] Update libusb1 from 1.0.19 to 1.0.20
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
X-List-Received-Date: Thu, 01 Oct 2015 18:17:46 -0000
X-Groupsio-MsgNum: 10142
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NY6JkbSqL3W9mApi"
Content-Disposition: inline

--NY6JkbSqL3W9mApi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 01, 2015 at 08:07:40PM +0200, Jens Rehsack wrote:
>=20
> 2015-09-13: v1.0.20
> * Add Haiku support
> * Fix multiple memory and resource leaks (#16, #52, #76, #81)
> * Fix possible deadlock when executing transfer callback
> * New libusb_free_pollfds() API
> * Darwin: Fix devices not being detected on OS X 10.8 (#48)
> * Linux: Allow larger isochronous transfer submission (#23)
> * Windows: Fix broken builds Cygwin/MinGW builds and compiler warnings
> * Windows: Fix broken bus number lookup
> * Windows: Improve submission of control requests for composite devices
> * Examples: Add two-stage load support to fxload (#12)
> * Correctly report cancellations due to timeouts
> * Improve efficiency of event handling
> * Improve speed of transfer submission in multi-threaded environments
> * Various other bug fixes and improvements
> The (#xx) numbers are libusb issue numbers, see ie:
> https://github.com/libusb/libusb/issues/16

This does apply for all 9 commits you sent

1) commit summary should start with changed component (usually recipe
name), see
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

2) commits changing oe-core should go to
openembedded-core@lists.openembedded.org
commits changing bitbake should go to
bitbake-devel@lists.openembedded.org
not to poky.

3) you should use -M in git send-email or git format-patch so that
changes like this last one are easier to review.

Regards,

>=20
> Signed-off-by: Jens Rehsack <sno@netbsd.org>
> ---
>  meta/recipes-support/libusb/libusb1_1.0.19.bb | 34 ---------------------=
------
>  meta/recipes-support/libusb/libusb1_1.0.20.bb | 34 +++++++++++++++++++++=
++++++
>  2 files changed, 34 insertions(+), 34 deletions(-)
>  delete mode 100644 meta/recipes-support/libusb/libusb1_1.0.19.bb
>  create mode 100644 meta/recipes-support/libusb/libusb1_1.0.20.bb
>=20
> diff --git a/meta/recipes-support/libusb/libusb1_1.0.19.bb b/meta/recipes=
-support/libusb/libusb1_1.0.19.bb
> deleted file mode 100644
> index a20e1fc..0000000
> --- a/meta/recipes-support/libusb/libusb1_1.0.19.bb
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -SUMMARY =3D "Userspace library to access USB (version 1.0)"
> -HOMEPAGE =3D "http://libusb.sf.net"
> -BUGTRACKER =3D "http://www.libusb.org/report"
> -SECTION =3D "libs"
> -
> -LICENSE =3D "LGPLv2.1+"
> -LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dfbc093901857fcd118f065f900982=
c24"
> -
> -BBCLASSEXTEND =3D "native nativesdk"
> -
> -SRC_URI =3D "${SOURCEFORGE_MIRROR}/libusb/libusb-${PV}.tar.bz2 \
> -          "
> -
> -SRC_URI[md5sum] =3D "f9e2bb5879968467e5ca756cb4e1fa7e"
> -SRC_URI[sha256sum] =3D "6c502c816002f90d4f76050a6429c3a7e0d84204222cbff2=
dce95dd773ba6840"
> -
> -S =3D "${WORKDIR}/libusb-${PV}"
> -
> -inherit autotools pkgconfig
> -
> -# Don't configure udev by default since it will cause a circular
> -# dependecy with udev package, which depends on libusb
> -EXTRA_OECONF =3D "--libdir=3D${base_libdir} --disable-udev"
> -
> -do_install_append() {
> -	install -d ${D}${libdir}
> -	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
> -		mv ${D}${base_libdir}/pkgconfig ${D}${libdir}
> -	fi
> -}
> -
> -FILES_${PN} +=3D "${base_libdir}/*.so.*"
> -
> -FILES_${PN}-dev +=3D "${base_libdir}/*.so ${base_libdir}/*.la"
> diff --git a/meta/recipes-support/libusb/libusb1_1.0.20.bb b/meta/recipes=
-support/libusb/libusb1_1.0.20.bb
> new file mode 100644
> index 0000000..21b8b45
> --- /dev/null
> +++ b/meta/recipes-support/libusb/libusb1_1.0.20.bb
> @@ -0,0 +1,34 @@
> +SUMMARY =3D "Userspace library to access USB (version 1.0)"
> +HOMEPAGE =3D "http://libusb.sf.net"
> +BUGTRACKER =3D "http://www.libusb.org/report"
> +SECTION =3D "libs"
> +
> +LICENSE =3D "LGPLv2.1+"
> +LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dfbc093901857fcd118f065f900982=
c24"
> +
> +BBCLASSEXTEND =3D "native nativesdk"
> +
> +SRC_URI =3D "${SOURCEFORGE_MIRROR}/libusb/libusb-${PV}.tar.bz2 \
> +          "
> +
> +SRC_URI[md5sum] =3D "1d4eb194eaaa2bcfbba28102768c7dbf"
> +SRC_URI[sha256sum] =3D "cb057190ba0a961768224e4dc6883104c6f945b2bf2ef90d=
7da39e7c1834f7ff"
> +
> +S =3D "${WORKDIR}/libusb-${PV}"
> +
> +inherit autotools pkgconfig
> +
> +# Don't configure udev by default since it will cause a circular
> +# dependecy with udev package, which depends on libusb
> +EXTRA_OECONF =3D "--libdir=3D${base_libdir} --disable-udev"
> +
> +do_install_append() {
> +	install -d ${D}${libdir}
> +	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
> +		mv ${D}${base_libdir}/pkgconfig ${D}${libdir}
> +	fi
> +}
> +
> +FILES_${PN} +=3D "${base_libdir}/*.so.*"
> +
> +FILES_${PN}-dev +=3D "${base_libdir}/*.so ${base_libdir}/*.la"
> --=20
> 1.9.1
>=20
> --=20
> Jens Rehsack - rehsack@gmail.com
>=20
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--NY6JkbSqL3W9mApi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYNePQACgkQN1Ujt2V2gBxssACeOTaVVekb5C+TWVxE4MollDEJ
QN4AoJbhpvi6zoOOcWBMbhJJdTDLgQt1
=0qt4
-----END PGP SIGNATURE-----

--NY6JkbSqL3W9mApi--
