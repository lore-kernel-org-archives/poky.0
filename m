Subject: Re: 'require' statement and bbappend
To: poky@lists.yoctoproject.org
From: "Ashish" <ashish.emailaddress@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (115.99.50.87)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 07 Mar 2020 14:55:58 -0800
References: <329c92c2210817903bb3a07f46e4019484665373.camel@linuxfoundation.org>
In-Reply-To: <329c92c2210817903bb3a07f46e4019484665373.camel@linuxfoundation.org>
Message-ID: <10736.1583621758533873687@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="K6hoRwIMyd7SsXgJQdMJ"

--K6hoRwIMyd7SsXgJQdMJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

1) w.r.t ".. The recipe contains a line that says, require linux-imx-src-${=
PV}.inc "
By this the recipe ensure's that we get an error if the ".inc" file is not=
 there .
As this is better than allowing it to process ahead for case where we have=
 absence of said file .

2)=C2=A0 w.r.t " PV =3D "4.14.98-git${SRCPV}"
It helps in cases where we can have SRCREV =3D "${AUTOREV}".
Even if we dont have=C2=A0SRCREV =3D "${AUTOREV}" , by adding git${SRCPV} =
we are able to track git version and what's the SHA or commit-id for said r=
epo

Hope it helps .

Thanks
Ashish

--K6hoRwIMyd7SsXgJQdMJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"white-space: pre-wrap;">1) w.r.t ".. The </span><span style=
=3D"white-space: pre-wrap;">recipe contains a line that says,</span>&nbsp;=
&nbsp;<span style=3D"white-space: pre-wrap;">require linux-imx-src-${PV}.in=
c "<br /></span>&nbsp; &nbsp; &nbsp; By this the recipe ensure's that we ge=
t an error if the ".inc" file is not there .<br />&nbsp; &nbsp; &nbsp; &nbs=
p;As this is better than allowing it to process ahead for case where we hav=
e absence of said file .<br /><br />2)&nbsp; w.r.t "&nbsp;<span style=3D"wh=
ite-space: pre-wrap;">PV =3D "4.14.98-git${SRCPV}"</span>&nbsp;<br />&nbsp;=
 &nbsp; &nbsp;It helps in cases where we can have SRCREV =3D "${AUTOREV}".&=
nbsp;<br />&nbsp; &nbsp; &nbsp;Even if we dont have&nbsp;SRCREV =3D "${AUTO=
REV}" , by adding&nbsp;<span style=3D"white-space: pre-wrap;">git${SRCPV} w=
e are able </span>to track git version and what's the SHA or commit-id for =
said repo<br /><br />Hope it helps .&nbsp;<br /><br />Thanks&nbsp;<br />Ash=
ish&nbsp;<br /><br /><br />

--K6hoRwIMyd7SsXgJQdMJ--
