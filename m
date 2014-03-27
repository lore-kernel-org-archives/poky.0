Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA963E00B93
	for <poky@yoctoproject.org>; Thu, 27 Mar 2014 04:37:27 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id d17so2781642eek.32
	for <poky@yoctoproject.org>; Thu, 27 Mar 2014 04:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Y1EmfBphtum7si3jid/sHl7PRGF7dNdc10G/2cdP8oI=;
	b=ludcWehc486bnGsGT25HJpQ/Yn7B01+DYdrO+9vE0Xon6G7qw+6ZTsj/aO4xRsNkOZ
	Emx7ywJn+7gK1yw38iEO9pRrXJKUKE8IM+HAt7pP5RHjwTqoEQqbY6EsO7aYD7xkeHdN
	HY/em5wmT6P7hwxjKPWf4XstXDztzAV32l89QuOLwj049ZlMek3wFUHXPMMj0XCSyYde
	hUZZeHtj8oGWiW+0Ywndo0ItNZ5n1SlKXdW0/bhD7MSkvXZ3maivM2ncCAZJt+cDU9MA
	8NlkZzGWDBYZZiSOkty84GpYSEuFDVJQvSc4CC2zPQiQa8Jjl1a57pctE+NwPF/+iRVH
	YWaA==
X-Received: by 10.14.2.66 with SMTP id 42mr1397242eee.24.1395920246766;
	Thu, 27 Mar 2014 04:37:26 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	48sm3788848eei.24.2014.03.27.04.37.25 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Mar 2014 04:37:25 -0700 (PDT)
Date: Thu, 27 Mar 2014 12:37:26 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Holger Hans Peter Freyther <holger@freyther.de>
Message-ID: <20140327113726.GP3709@jama>
References: <20140327060204.GA14885@xiaoyu.lan>
MIME-Version: 1.0
In-Reply-To: <20140327060204.GA14885@xiaoyu.lan>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: poky@yoctoproject.org
Subject: Re: PRserver support broken in Dora?
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
X-List-Received-Date: Thu, 27 Mar 2014 11:37:29 -0000
X-Groupsio-MsgNum: 9552
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8G1nIWD3RY794FAy"
Content-Disposition: inline

--8G1nIWD3RY794FAy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 27, 2014 at 07:02:04AM +0100, Holger Hans Peter Freyther wrote:
> Good Morning,
>=20
> I am sorry to be a bit vagued. I have an in-house application, I modified
> the CONFFILES_${PN} line of app-name_git.bb and then issued bitbake app-n=
ame.
> My expectation was that somehow the signature will be different app-name
> will be re-built and the resulting PKGR will be r1.X+1.
>=20
> In practice nothing is being re-built. JaMa pointed out I can use the
> "bitbake -S" option to display the signature but when doing "bitbake -S
> app-name" nothing relevant will be printed on the screen. I tried to use
> strace to see if it writes to a file but the trace is way too long to
> find something relevant.

STAMPS_DIR (tmp-eglibc/stamps)

> My local.conf is added below. Could it be that the AUTOPR handling in
> Dora is broken? Any idea of where I can look at to see why the revisions
> are never incremented?
>=20
> holger
>=20
> change to the recipe:
> @@ -13,7 +13,7 @@ DEPENDS =3D "qtbase libsystemd-qt tufao1"
>  inherit qmake5
> =20
>  FILES_${PN} +=3D "${systemd_unitdir}"
>=20
> -CONFFILES_${PN} =3D "${sysconfdir}/sysctl.d/99-sysmocom-forwarding.conf"
> +CONFFILES_${PN} =3D "${sysconfdir}/sysctl.d/99-sysmocom-forwarding.conf =
${sysconfdir}/somedir"
> =20
>  do_install() {
>      # Install the main application
>=20
>=20
> local.conf:
> MACHINE ??=3D "sysmobts-v2"
> DISTRO ?=3D "poky"
> PACKAGE_CLASSES ?=3D "package_ipk"
> EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
> USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
> PATCHRESOLVE =3D "noop"
> BB_DISKMON_DIRS =3D "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K"=20
> CONF_VERSION =3D "1"
>=20
> DISTRO_FEATURES_append =3D " systemd "
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
>=20
> MACHINE_FEATURES_BACKFILL_CONSIDERED =3D "rtc"
>=20
> FULL_OPTIMIZATION=3D"-O2 -pipe ${DEBUG_FLAGS} -fno-omit-frame-pointer"
> DEBUGFILEDIRECTORY-dbg =3D "/usr/lib/debug"
> PACKAGE_DEBUG_SPLIT_STYLE =3D "debug-without-src"
> PRSERV_HOST =3D "localhost:0"
>=20
> INHERIT +=3D "rm_work"
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--8G1nIWD3RY794FAy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlM0DXYACgkQN1Ujt2V2gByJjgCcDdhw/Bw+4QFoHtxh77nSSU/3
WpsAnR2JKhko4EB8Naxh/kTzUCOshTTN
=SlJa
-----END PGP SIGNATURE-----

--8G1nIWD3RY794FAy--
