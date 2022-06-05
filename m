Subject: Need suggestion on custom package group implementation.
To: poky@lists.yoctoproject.org
From: "Rahul Chauhan" <rahulchauhankitps@gmail.com>
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.4)
X-Originating-Platform: Windows Chrome 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 05 Jun 2022 01:02:31 -0700
Message-ID: <4i9B.1654416151222112903.Tccj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KwxV26mHFcCEkF7Hy0JX"

--KwxV26mHFcCEkF7Hy0JX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team

I need your suggestion on below implementation.

packagegroup-protocol-base.bb
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
RDEPENDS_${PN}-protocol-base =3D "\
package1 \
package2 \
"
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

packagegroup-custom-base.bb
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DESCRIPTION =3D "Custom base package group"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0aaabfe698e0bc=
f8506ecda2f7b4f302"

PR =3D "r0"

PACKAGE_ARCH =3D "${MACHINE_ARCH}"

inherit packagegroup

PROVIDES =3D "${PACKAGES}"

PACKAGES +=3D " \
${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-protocolA", "${PN}-=
protocolA", "", d)} \
${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-protocolB", "${PN}-=
protocolB", "", d)} \
....
....
"

RDEPENDS_${PN} =3D "\
${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-protocolA", "${PN}-=
protocolA", "", d)} \
${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-protocolB", "${PN}-=
protocolB", "", d)} \
....
....
"

RDEPENDS_${PN}-protocolA =3D "\
packagegroup-protocol-base \
package-3 \
"

RDEPENDS_${PN}-protocolB =3D "\
packagegroup-protocol-base \
package-4 \
"

.....
.....

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

custom-image.bb
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

....
....

IMAGE_INSTALL_append =3D " \
packagegroup-custom-base \
"
....
....

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

bitbake custom-image

there is some common package which is required for both protocolA and Proto=
colB.
So i included packagegroup-protocol-base in both RDEPENDS.

But suppose if a devce using both protocolA and ProtocolB.
in that case there will be a duplication of "packagegroup-protocol-base" bu=
t i am not facing any build issue.

can anyone please explain me why this behavior?
Is it problematic during runtime on target ?
Is there any problem during packaging ?
Is it correct implementation or any suggestion will helpful for me.

Thanks & Regards
Rahul Kumar

--KwxV26mHFcCEkF7Hy0JX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team&nbsp;<br /><br />I need your suggestion on below implementatio=
n.<br /><br /></div>
<div>packagegroup-protocol-base.bb</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>RDEPENDS_${PN}-protocol-base =3D "\</div>
<div>package1 \</div>
<div>package2 \</div>
<div>"</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>
<div>packagegroup-custom-base.bb</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>DESCRIPTION =3D "Custom base package group"</div>
<div>LICENSE =3D "MIT"</div>
<div>LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0aaabfe69=
8e0bcf8506ecda2f7b4f302"</div>
<div>&nbsp;</div>
<div>PR =3D "r0"</div>
<div>&nbsp;</div>
<div>PACKAGE_ARCH =3D "${MACHINE_ARCH}"</div>
<div>&nbsp;</div>
<div>inherit packagegroup</div>
<div>&nbsp;</div>
<div>PROVIDES =3D "${PACKAGES}"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>PACKAGES +=3D " \</div>
<div>&nbsp; &nbsp; ${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-=
protocolA", "${PN}-protocolA", "", d)} \</div>
<div>&nbsp; &nbsp; ${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-=
protocolB", "${PN}-protocolB", "", d)} \</div>
<div>&nbsp; &nbsp; ....</div>
<div>&nbsp; &nbsp; ....</div>
<div>"</div>
<div>&nbsp;</div>
<div>RDEPENDS_${PN} =3D "\</div>
<div>&nbsp; &nbsp; ${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-=
protocolA", "${PN}-protocolA", "", d)} \</div>
<div>&nbsp; &nbsp; ${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-=
protocolB", "${PN}-protocolB", "", d)} \</div>
<div>&nbsp; &nbsp; ....</div>
<div>&nbsp; &nbsp; ....</div>
<div>"</div>
<div>&nbsp;</div>
<div>RDEPENDS_${PN}-protocolA =3D "\</div>
<div>packagegroup-protocol-base \</div>
<div>package-3 \</div>
<div>"</div>
<div>&nbsp;</div>
<div>RDEPENDS_${PN}-protocolB =3D "\</div>
<div>packagegroup-protocol-base \</div>
<div>package-4 \</div>
<div>"</div>
<div>&nbsp;</div>
<div>.....</div>
<div>.....</div>
<div>&nbsp;</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>custom-image.bb</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>
<div>....</div>
<div>....</div>
<div>&nbsp;</div>
<div>IMAGE_INSTALL_append =3D " \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; packagegroup-custom-base \</div>
<div>"</div>
<div>....</div>
<div>....</div>
<div>&nbsp;</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>
<div>bitbake custom-image&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>there is some common package which is required for both protocolA and =
ProtocolB.</div>
<div>So i included packagegroup-protocol-base in both RDEPENDS.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>But suppose if a devce using both protocolA and ProtocolB.</div>
<div>in that case there will be a duplication of "packagegroup-protocol-bas=
e" but i am not facing any build issue.</div>
<div>&nbsp;</div>
<div>can anyone please explain me why this behavior?<br />Is it problematic=
 during runtime on target ?<br />Is there any problem during packaging ?</d=
iv>
<div>Is it correct implementation or any suggestion will helpful for me.<br=
 /><br />Thanks &amp; Regards<br />Rahul Kumar</div>
<div>&nbsp;</div>

--KwxV26mHFcCEkF7Hy0JX--
