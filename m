Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B72DE00655
	for <poky@yoctoproject.org>; Fri, 30 Nov 2012 08:43:00 -0800 (PST)
Received: by mail-ee0-f48.google.com with SMTP id b57so444741eek.35
	for <poky@yoctoproject.org>; Fri, 30 Nov 2012 08:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=5yaCzUskPHd0EcEt6EInGnjF9gp6p/VobySrbtWPnCA=;
	b=f/wNrmqD2DF4CkNLPC2X5e6zz0r8WRlTth/CqQAsYjKcHELXGNR6VTApqALsKYwVas
	LYl3E0M8VmdQ+gWTYaqvR+F2GWljyPidbZs3RuWvnofsG2c7ZrBjZtfpb+OsRew9mNWA
	RURJrA/qmsDvLCXC5nMDZw8fd6EuKhAAuyCKgUkGwkGz+ApXym+I8V1PjjacgHFzeL04
	swIv524689M14sgnlhHHmR23z1e70LuLsPQyrHbCOyNUDbXJnHYEGtSkBmJhK/QqmfMf
	UvcYseRcNT8Hbht4kRnyM6c9mAa1LKr7eYs8ri50W7pzrXYba0Cr7K1/46/f7iROKcJT
	Ngsw==
Received: by 10.14.214.132 with SMTP id c4mr6379473eep.18.1354293779112;
	Fri, 30 Nov 2012 08:42:59 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id z8sm11448501eeo.11.2012.11.30.08.42.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Nov 2012 08:42:58 -0800 (PST)
Date: Fri, 30 Nov 2012 17:42:56 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20121130164256.GH3436@jama.jama.net>
References: <50B8CC44.9070903@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <50B8CC44.9070903@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Problems building from master
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
X-List-Received-Date: Fri, 30 Nov 2012 16:43:00 -0000
X-Groupsio-MsgNum: 8458
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YPJ8CVbwFUtL7OFW"
Content-Disposition: inline

--YPJ8CVbwFUtL7OFW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 30, 2012 at 08:09:56AM -0700, Gary Thomas wrote:
> trying to build 'core-image-sato' with this configuration:
>=20
> Build Configuration:
> BB_VERSION        =3D "1.17.0"
> BUILD_SYS         =3D "i686-linux"
> NATIVELSBSTRING   =3D "Unknown"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "qemuarm"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.3+snapshot-20121130"
> TUNE_FEATURES     =3D "armv5 dsp thumb"
> TARGET_FPU        =3D "soft"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "master:247b6a3754c2c50318e2a73d79981ba0e9cb560b"
> meta-oe           =3D "master:8e489120f9c4ae91e121ae9d33fecc1aacdf3257"
>=20
> Fails with:
> /local/qemuarm_test/tmp/sysroots/i686-linux/usr/libexec/armv5te-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lsndfile
> collect2: error: ld returned 1 exit status
> make[1]: *** [sbc/sbctester] Error 1
> make[1]: *** Waiting for unfinished jobs....
> arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-gcc -march=
=3Darmv5te -marm -mthumb-interwork --sysroot=3D/local/qemuarm_test/tmp/sysr=
oots/qemuarm -D_FORTIFY_SOURCE=3D2=20
> -I/local/qemuarm_test/tmp/sysroots/qemuarm/usr/include/dbus-1.0 -I/local/=
qemuarm_test/tmp/sysroots/qemuarm/usr/lib/dbus-1.0/include=20
> -I/local/qemuarm_test/tmp/sysroots/qemuarm/usr/include/glib-2.0 -I/local/=
qemuarm_test/tmp/sysroots/qemuarm/usr/lib/glib-2.0/include -O2 -pipe -g -fe=
liminate-unused-debug-types=20
> -Wl,-O1 -Wl,--hash-style=3Dgnu -o tools/hcisecfilter tools/hcisecfilter.o
> make: *** [all] Error 2
> ERROR: oe_runmake failed
> ERROR: Function failed: do_compile (see /local/qemuarm_test/tmp/work/armv=
5te-poky-linux-gnueabi/bluez4/4.101-r3/temp/log

missing libsndfile1 in depends?

> I then ran 'bitbake core-image-sato -k' to see what other failures I came
> up with.  There were none.
>=20
> When I ran 'bitbake core-image-sato' again (after the run with -k that had
> the single failure), it succeeded!  Must be a parallel build issue.
> I'm using:
>    BB_NUMBER_THREADS =3D "4"
>    PARALLEL_MAKE =3D "-j 4"
>=20
> I also had a problem building 'web-webkit':
>=20
> | /local/qemuarm_test/tmp/sysroots/i686-linux/usr/libexec/armv5te-poky-li=
nux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: failed to set dynamic sect=
ion sizes: Memory exhausted
> | collect2: error: ld returned 1 exit status
> | make[1]: *** [libwebkitgtk-1.0.la] Error 1
> | make[1]: Leaving directory `/local/qemuarm_test/tmp/work/armv5te-poky-l=
inux-gnueabi/webkit-gtk/1.8.2-r2/webkit-1.8.2'
>=20
> Any ideas on how I can fix the build of webkit-gtk?

Add more RAM/swap.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--YPJ8CVbwFUtL7OFW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlC44hAACgkQN1Ujt2V2gBz4ZgCeNz71xuWbqtmrwL2KFULDpg13
jwoAn2q3q4D8E4FNuBJp+qRwQ/6yYpzA
=bOvn
-----END PGP SIGNATURE-----

--YPJ8CVbwFUtL7OFW--
