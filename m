Subject: do_package_qa: QA Issue: /usr/bin/mono-package-runtime #mono #sdk #yocto #package #compiler #poky
To: poky@lists.yoctoproject.org
From: anandshastry88@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (121.244.50.135)
X-Originating-Platform: Windows Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 09 Oct 2020 02:29:46 -0700
Message-ID: <iEPN.1602235786076687568.o3gF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Fg5l4jEPdhdfdxDhgxZn"

--Fg5l4jEPdhdfdxDhgxZn
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi ,

This is mainly for meta-mono guys,
I am trying to include mono as part of sdk. I am getting below error in do=
_package_qa.

>=20
> do_package_qa: QA Issue: /usr/bin/mono-package-runtime contained in
> package mono requires /bin/bash, but no providers found in RDEPENDS_mono=
?
>=20

I could see RDEPENDS=C2=A0 has bash in .inc file for mono recipe. What is =
the issue here? Please suggest.

@Alex Lennon - Appreciate if you please help here

--Fg5l4jEPdhdfdxDhgxZn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi ,<br /><br />This is mainly for meta-mono guys,<br />I am trying to incl=
ude mono as part of sdk. I am getting below error in do_package_qa.<br /><b=
r />
<blockquote>
<div>do_package_qa: QA Issue: /usr/bin/mono-package-runtime contained in p=
ackage mono requires /bin/bash, but no providers found in RDEPENDS_mono?</d=
iv>
</blockquote>
<p><br />I could see RDEPENDS&nbsp; has bash in .inc file for mono recipe.=
 What is the issue here? Please suggest.<br /><br />@Alex Lennon - Apprecia=
te if you please help here</p>
<div><span style=3D"font-size: 26px; color: #24292e; font-family: -apple-s=
ystem, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif, 'Apple=
 Color Emoji', 'Segoe UI Emoji'; font-weight: 600;">&nbsp;</span></div>

--Fg5l4jEPdhdfdxDhgxZn--
