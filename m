Subject: How to handle RDEPENDS for " libgcc_s.so.1, but no providers "
To: poky@lists.yoctoproject.org
From: "Ashish" <ashish.emailaddress@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (182.72.92.62)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Jan 2020 01:37:06 -0800
Message-ID: <cg2X.1579167426560504666.LrCu@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NLIiOJ5VRfBxLUrBtc4D"

--NLIiOJ5VRfBxLUrBtc4D
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All ,

1) I am trying to compile an application " https://github.com/tom-2015/rpi=
-AR1100" ( https://github.com/tom-2015/rpi-AR1100 )
But i get error like mentioned below for few library.so :
*ERROR: AR1100-1.0-r0 do_package_qa: QA Issue: /usr/bin/<OUR-CUSTOM-BINARY=
>=C2=A0 contained in package AR1100 requires libgcc_s.so.1,*
*but no providers found in RDEPENDS_AR1100? [file-rdeps]*

2) I checked the library and seems to be present in the ROOTFS at /lib/lib=
gcc_s.so.1.

3) I tried , passing location of lib folder to recipe via CFLAGS_prepend =
=3D "-I ${libdir}" .
But still the error is observed.

4) I even tried=C2=A0 adding " libgcc " to RDEPENDS=C2=A0 , but the error =
is still there .

Can any please provide an pointer or let me know if i am missing any part =
here .

Thanks
Ashish

--NLIiOJ5VRfBxLUrBtc4D
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All ,&nbsp;<br /><br />1) I am trying to compile an application "<a href=
=
=3D"https://github.com/tom-2015/rpi-AR1100" target=3D"_blank" rel=3D"nofol=
low noopener">https://github.com/tom-2015/rpi-AR1100"</a><br />&nbsp; &nbsp=
; &nbsp; But i get error like mentioned below for few library.so :<br />&nb=
sp; &nbsp; &nbsp;&nbsp;<strong>ERROR: AR1100-1.0-r0 do_package_qa: QA Issue=
: /usr/bin/&lt;OUR-CUSTOM-BINARY&gt;&nbsp; contained in package AR1100 requ=
ires libgcc_s.so.1, </strong><br /><strong>&nbsp; &nbsp; &nbsp; but no prov=
iders found in RDEPENDS_AR1100? [file-rdeps]</strong><br /><br />2) I check=
ed the library and seems to be present in the ROOTFS at&nbsp;<span style=3D=
"color: #000000; font-family: 'Courier New', Courier, monospace, arial, san=
s-serif;">/lib/libgcc_s.so.1. <br /></span>&nbsp;<br />3) I tried , passing=
 location of lib folder to recipe via CFLAGS_prepend =3D "-I ${libdir}" . <=
br />&nbsp; &nbsp; But still the error is observed.&nbsp;<br />&nbsp;<br />=
4) I even tried&nbsp; adding "<span style=3D"color: #000000; font-family: '=
Courier New', Courier, monospace, arial, sans-serif;">libgcc</span>&nbsp;" =
to RDEPENDS&nbsp; , but the error is still there .&nbsp;<br /><br />Can any=
 please provide an pointer or let me know if i am missing any part here .&n=
bsp;<br /><br />Thanks&nbsp;<br />Ashish

--NLIiOJ5VRfBxLUrBtc4D--
