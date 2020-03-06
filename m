Subject: 'require' statement and bbappend
To: poky@lists.yoctoproject.org
From: thomas.koeller@baslerweb.com
X-Originating-Location: Neumünster, Schleswig-Holstein, DE (80.156.24.214)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 06 Mar 2020 01:34:28 -0800
Message-ID: <X4K7.1583487268784158714.Q64w@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="et7ICYHQU7tgcs33RuqN"

--et7ICYHQU7tgcs33RuqN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a recipe that I want to extend through a .bbappend file. The recipe =
contains a line that says,

require linux-imx-src-${PV}.inc

Now my .bbappend file changes PV like so:

PV =3D "4.14.98-git${SRCPV}"

Contrary to what I would have expected, this does not result in a parsing =
error. I am totally fine with this, as it is exactly what I want. It only b=
others me that I do not understand what is going on...

--et7ICYHQU7tgcs33RuqN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a recipe that I want to extend through a .bbappend file. The recipe =
contains a line that says,<br /><br /><em>require linux-imx-src-${PV}.inc</=
em><br /><br />Now my .bbappend file changes PV like so:<br /><br /><em>PV =
=
=3D "4.14.98-git${SRCPV}"</em><br /><br />Contrary to what I would have ex=
pected, this does not result in a parsing error. I am totally fine with thi=
s, as it is exactly what I want. It only bothers me that I do not understan=
d what is going on...

--et7ICYHQU7tgcs33RuqN--
