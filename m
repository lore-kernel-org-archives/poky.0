Subject: Some packages from local repository have incorrect checksum
To: poky@lists.yoctoproject.org
From: "Rahul Chauhan" <rahulchauhankitps@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (36.255.87.199)
X-Originating-Platform: Linux Firefox 70
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 01 Dec 2019 00:40:17 -0800
Message-ID: <OY4N.1575189617225549297.6SzJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LeQVLxKWZGlRZv34fZX9"

--LeQVLxKWZGlRZv34fZX9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am beginner in yocto project.I am trying to build toolchain for ARM arch=
itecture.

bitbake meta-toolchain.

but i am getting below error
binutils-cross-canadian-arm-2.31.1-r0.x86_64_nativesdk: sha256 check faile=
d: 0d6fcb4b823810baabbfb70d1bd02666670ea771da7b016c489473da3a57cd57 vs abeb=
9d19471e357dfea94d50b65cbc44bbe9165b30ee49b08c9678eb2a778f5e
Total size: 89 M
Total download size: 5.1 M
Installed size: 413 M
Downloading Packages:
binutils-cross-canadian-arm-2.31.1-r0.x86_64_nativesdk: sha256 check faile=
d: 0d6fcb4b823810baabbfb70d1bd02666670ea771da7b016c489473da3a57cd57 vs abeb=
9d19471e357dfea94d50b65cbc44bbe9165b30ee49b08c9678eb2a778f5e
Package "binutils-cross-canadian-arm-2.31.1-r0.x86_64_nativesdk" from loca=
l repository "oe-repo" has incorrect checksum
Error: Some packages from local repository have incorrect checksum

ERROR: meta-toolchain-1.0-r7 do_populate_sdk: Function failed: do_populate=
_sdk
ERROR: Logfile of failure stored in: /opt/Yocto-Project/project-build/tmp/=
work/cortexa8hf-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/temp/log.do_p=
opulate_sdk.11663
ERROR: Task (/opt/Yocto-Project/Layers/poky/meta/recipes-core/meta/meta-to=
olchain.bb:do_populate_sdk) failed with exit code '1'

I have checked binutils recipes but could not find below sha256 check sum.
0d6fcb4b823810baabbfb70d1bd02666670ea771da7b016c489473da3a57cd57

Thanks & Regard
Rahul Chauhan

--LeQVLxKWZGlRZv34fZX9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I am beginner in yocto project.I am trying to build toolc=
hain for ARM architecture.<br /><br />bitbake meta-toolchain.<br /><br />bu=
t i am getting below error<br />binutils-cross-canadian-arm-2.31.1-r0.x86_6=
4_nativesdk: sha256 check failed: 0d6fcb4b823810baabbfb70d1bd02666670ea771d=
a7b016c489473da3a57cd57 vs abeb9d19471e357dfea94d50b65cbc44bbe9165b30ee49b0=
8c9678eb2a778f5e<br />Total size: 89 M<br />Total download size: 5.1 M<br /=
>Installed size: 413 M<br />Downloading Packages:<br />binutils-cross-canad=
ian-arm-2.31.1-r0.x86_64_nativesdk: sha256 check failed: 0d6fcb4b823810baab=
bfb70d1bd02666670ea771da7b016c489473da3a57cd57 vs abeb9d19471e357dfea94d50b=
65cbc44bbe9165b30ee49b08c9678eb2a778f5e<br />Package "binutils-cross-canadi=
an-arm-2.31.1-r0.x86_64_nativesdk" from local repository "oe-repo" has inco=
rrect checksum<br />Error: Some packages from local repository have incorre=
ct checksum<br /><br />ERROR: meta-toolchain-1.0-r7 do_populate_sdk: Functi=
on failed: do_populate_sdk<br />ERROR: Logfile of failure stored in: /opt/Y=
octo-Project/project-build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/meta=
-toolchain/1.0-r7/temp/log.do_populate_sdk.11663<br />ERROR: Task (/opt/Yoc=
to-Project/Layers/poky/meta/recipes-core/meta/meta-toolchain.bb:do_populate=
_sdk) failed with exit code '1'<br /><br />I have checked binutils recipes =
but could not find below sha256 check sum.<br />0d6fcb4b823810baabbfb70d1bd=
02666670ea771da7b016c489473da3a57cd57<br /><br />Thanks &amp; Regard<br />R=
ahul Chauhan

--LeQVLxKWZGlRZv34fZX9--
