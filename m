Subject: Re: [yocto][poky]: Issue addng libgloss in .bb file
To: poky@lists.yoctoproject.org
From: nagesh.shamnur@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.212.227)
X-Originating-Platform: Linux Firefox 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Jul 2021 00:17:43 -0700
References: <5197.1627453855196654342@lists.yoctoproject.org>
In-Reply-To: <5197.1627453855196654342@lists.yoctoproject.org>
Message-ID: <5197.1627456663662589589@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b7EZrBOhSOhqx2bzaI5N"

--b7EZrBOhSOhqx2bzaI5N
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Issue got resolved after adding
CFLAGS_prepend =3D "-I${RECIPE_SYSROOT}/usr/include"

in newlib.inc

Thanks to khemraj for the help.

--b7EZrBOhSOhqx2bzaI5N
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Issue got resolved after adding <br />CFLAGS_prepend =3D "-I${RECIPE_SYSROO=
T}/usr/include"<br /><br />in newlib.inc<br /><br />Thanks to khemraj for t=
he help.

--b7EZrBOhSOhqx2bzaI5N--
