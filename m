Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3EA9E00870
	for <poky@yoctoproject.org>; Thu, 16 Jan 2014 05:45:37 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 56F5B7E7; Thu, 16 Jan 2014 14:45:39 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from localhost (128-79-216-6.hfc.dyn.abo.bbox.fr [128.79.216.6])
	by mail.free-electrons.com (Postfix) with ESMTPSA id E9ECF7B3;
	Thu, 16 Jan 2014 14:45:38 +0100 (CET)
Date: Thu, 16 Jan 2014 14:45:34 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Valentin Popa <valentin.popa@intel.com>
Message-ID: <20140116134534.GC27282@piout.net>
References: <1389067342-25262-1-git-send-email-alexandre.belloni@free-electrons.com>
MIME-Version: 1.0
In-Reply-To: <1389067342-25262-1-git-send-email-alexandre.belloni@free-electrons.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [for-dora][PATCH] matchbox-keyboard: daemonize launch
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
X-List-Received-Date: Thu, 16 Jan 2014 13:45:40 -0000
X-Groupsio-MsgNum: 9401
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mojUlQ0s9EVzWg2t"
Content-Disposition: inline

--mojUlQ0s9EVzWg2t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Ping ?

On Tue, Jan 07, 2014 at 05:02:22AM +0100, Alexandre Belloni wrote :
> The .shbg extension is not properly supported by the Xsession script
> provided by xserver-common.
>=20
> Move the main part of the Xsession.d script to a script in usr/bin then
> add a Xsession.d script to start it in the background.
>=20
> See discussion here:
> https://lists.yoctoproject.org/pipermail/poky/2013-December/009463.html
>=20
> Bug here:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5546
>=20
> Signed-off-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>
> ---
>  .../matchbox-keyboard/files/80matchboxkeyboard.sh  |  3 +++
>  .../files/80matchboxkeyboard.shbg                  | 23 ----------------=
------
>  .../files/matchbox-keyboard-daemon.sh              | 22 ++++++++++++++++=
+++++
>  .../matchbox-keyboard/matchbox-keyboard_git.bb     |  8 ++++++--
>  4 files changed, 31 insertions(+), 25 deletions(-)
>  create mode 100755 meta/recipes-sato/matchbox-keyboard/files/80matchboxk=
eyboard.sh
>  delete mode 100755 meta/recipes-sato/matchbox-keyboard/files/80matchboxk=
eyboard.shbg
>  create mode 100755 meta/recipes-sato/matchbox-keyboard/files/matchbox-ke=
yboard-daemon.sh
>=20
> diff --git a/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard=
=2Esh b/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.sh
> new file mode 100755
> index 000000000000..d10fd8c32c0e
> --- /dev/null
> +++ b/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.sh
> @@ -0,0 +1,3 @@
> +#!/bin/sh
> +
> +/usr/bin/matchbox-keyboard-daemon.sh &
> diff --git a/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard=
=2Eshbg b/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.shbg
> deleted file mode 100755
> index 43c5d3ed6a32..000000000000
> --- a/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.shbg
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -#!/bin/sh
> -
> -. /etc/formfactor/config
> -
> -CMD=3D""
> -
> -if [ "$HAVE_KEYBOARD" =3D "0" ]; then
> -    CMD=3D"matchbox-keyboard -d"
> -elif [ "$DISPLAY_CAN_ROTATE" =3D "1" ]; then
> -    if [ "$HAVE_KEYBOARD_PORTRAIT" =3D "1" -a "$HAVE_KEYBOARD_LANDSCAPE"=
 =3D "0" ]; then
> -        CMD=3D"matchbox-keyboard -d -o landscape"
> -    elif [ "$HAVE_KEYBOARD_LANDSCAPE" =3D "1" -a "$HAVE_KEYBOARD_PORTRAI=
T" =3D "0" ]; then
> -        CMD=3D"matchbox-keyboard -d -o portrait"
> -    fi
> -fi
> -				=09
> -
> -if [ "$CMD" ]; then
> -    # Delay to make sure the window manager is active
> -    # by waiting for the desktop to say its finished loading
> -    dbus-wait org.matchbox_project.desktop Loaded
> -    exec $CMD
> -fi
> diff --git a/meta/recipes-sato/matchbox-keyboard/files/matchbox-keyboard-=
daemon.sh b/meta/recipes-sato/matchbox-keyboard/files/matchbox-keyboard-dae=
mon.sh
> new file mode 100755
> index 000000000000..2975cef7e38a
> --- /dev/null
> +++ b/meta/recipes-sato/matchbox-keyboard/files/matchbox-keyboard-daemon.=
sh
> @@ -0,0 +1,22 @@
> +#!/bin/sh
> +
> +. /etc/formfactor/config
> +
> +CMD=3D""
> +
> +if [ "$HAVE_KEYBOARD" =3D "0" ]; then
> +    CMD=3D"matchbox-keyboard -d"
> +elif [ "$DISPLAY_CAN_ROTATE" =3D "1" ]; then
> +    if [ "$HAVE_KEYBOARD_PORTRAIT" =3D "1" -a "$HAVE_KEYBOARD_LANDSCAPE"=
 =3D "0" ]; then
> +        CMD=3D"matchbox-keyboard -d -o landscape"
> +    elif [ "$HAVE_KEYBOARD_LANDSCAPE" =3D "1" -a "$HAVE_KEYBOARD_PORTRAI=
T" =3D "0" ]; then
> +        CMD=3D"matchbox-keyboard -d -o portrait"
> +    fi
> +fi
> +
> +if [ "$CMD" ]; then
> +    # Delay to make sure the window manager is active
> +    # by waiting for the desktop to say its finished loading
> +    dbus-wait org.matchbox_project.desktop Loaded
> +    exec $CMD
> +fi
> diff --git a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb=
 b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> index ffcabcad2215..a56d99251077 100644
> --- a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> +++ b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> @@ -17,7 +17,8 @@ PR =3D "r4"
>  SRC_URI =3D "git://git.yoctoproject.org/${BPN} \
>             file://configure_fix.patch;maxrev=3D1819 \
>             file://single-instance.patch \
> -           file://80matchboxkeyboard.shbg \
> +           file://80matchboxkeyboard.sh \
> +		   file://matchbox-keyboard-daemon.sh \
>             file://png-fix.patch"
> =20
>  S =3D "${WORKDIR}/git"
> @@ -43,7 +44,10 @@ FILES_${PN}-applet =3D "${libdir}/matchbox-panel/*.so"
> =20
>  do_install_append () {
>  	install -d ${D}/${sysconfdir}/X11/Xsession.d/
> -	install -m 755 ${WORKDIR}/80matchboxkeyboard.shbg ${D}/${sysconfdir}/X1=
1/Xsession.d/
> +	install -m 755 ${WORKDIR}/80matchboxkeyboard.sh ${D}/${sysconfdir}/X11/=
Xsession.d/
> +
> +	install -d ${D}${bindir}
> +	install -m 755 ${WORKDIR}/matchbox-keyboard-daemon.sh ${D}${bindir}/
> =20
>  	rm -f ${D}${libdir}/gtk-2.0/*/immodules/*.la
>  	rm -f ${D}${libdir}/matchbox-panel/*.la
> --=20
> 1.8.3.2
>=20

--=20
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

--mojUlQ0s9EVzWg2t
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (GNU/Linux)

iQIcBAEBCAAGBQJS1+J+AAoJEKbNnwlvZCyznrEP/0S5G8RVRuw00K+PHuiO4tNm
mP2O4WhbAq/A7FLaZFwQeFFiqMOJom3X+Hohk3byMUwHS0s8NEYzMqw5G1GciAoL
baWBLK6T8U48WvdXVfg4pLQxjTWelc27bAWzFl8y2NfDccZNwtoaDhQgTrWPIFme
QqY4KJwZ2Ig4Gdi6c4Uw0RAbXyBbW0euupjNio5ooXEJb1HFg956Mc/Ia+sXh61I
bIzlK9HySs+tcWzoyFF3ks7rjgKL9T/E6pjbwhIfX2a/zSFDkS+WD06B4p6K675w
Iz+rfJiXcJoFLryu41nsE92JjU6Om2YBomZch9CfhqNH1PXVCzAbrxukJV195n8t
vZGr35qFvmnqz4ysQiPSI7m92rsPxw0OLTPkRtRq0uh6YJY6vp9hylgoJZfgFXtt
54o+zZe+xrubnx2MESmQaX8nQD+NHXMCDuhxKVfw4UqM5yMXS9ZqL+OWCEqHuL5r
qc066BYJdpZ9rZjmtzd4KFjo+IJbBm8Pc4OK7/+ftP93yhitQoV8JfdLCP+oSuna
m98PVm8yXyeVLvGNnHl6FSt0TJpPdL3jlldPct+oRdrHgN3brAvYdY3Wu5Qe9dY2
8w1J9a8WSHetkCvHjEUSh8bdHtFhcy8jplIcZQI/v69Qp9GYNSW3y76s+61lLHFR
B3xOrLnMFcPxuY93jYNF
=eMdv
-----END PGP SIGNATURE-----

--mojUlQ0s9EVzWg2t--
