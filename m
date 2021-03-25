Subject: Re: Weird Compilation issue with a c++ recipe
To: poky@lists.yoctoproject.org
From: "Arun Ravindran" <arunlee@gmail.com>
X-Originating-Location: Enfield, Leinster, IE (192.198.151.52)
X-Originating-Platform: Windows Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Mar 2021 12:39:53 -0700
References: <CAMKF1srqcRg9U4Vtbbi4OdS5=EOSsf=sTCjBtpqmJyB13vRV3g@mail.gmail.com>
In-Reply-To: <CAMKF1srqcRg9U4Vtbbi4OdS5=EOSsf=sTCjBtpqmJyB13vRV3g@mail.gmail.com>
Message-ID: <19815.1616701193649917720@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MvARMhe67YQOtvyOHw2r"

--MvARMhe67YQOtvyOHw2r
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Along with the changes you suggested. i also had to do the following

INSANE_SKIP_${PN} =3D "ldflags"
INHIBIT_PACKAGE_STRIP =3D "1"
INHIBIT_SYSROOT_STRIP =3D "1"
SOLIBS =3D ".so"
FILES_SOLIBSDEV =3D ""

But the module now compiles and is running as expected.

Thanks for all the help

--MvARMhe67YQOtvyOHw2r
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Along with the changes you suggested. i also had to do the following<br /><=
br />INSANE_SKIP_${PN} =3D "ldflags"<br />INHIBIT_PACKAGE_STRIP =3D "1"<br =
/>INHIBIT_SYSROOT_STRIP =3D "1"<br />SOLIBS =3D ".so"<br />FILES_SOLIBSDEV =
=
=3D ""<br /><br />But the module now compiles and is running as expected.<=
br /><br />Thanks for all the help

--MvARMhe67YQOtvyOHw2r--
