Subject: relation between inherit, TOOLCHAIN_HOST_TASK, and BBCLASSEXTEND = "nativesdk" #yocto #poky #esdk #compiler
To: poky@lists.yoctoproject.org
From: anandshastry88@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (121.244.50.135)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Oct 2020 06:24:43 -0700
Message-ID: <ECz8.1602163483141309304.eYmj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PmlFampwo728m7n5dois"

--PmlFampwo728m7n5dois
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have an example image where my image bbclass has
TOOLCHAIN_HOST_TASK =3D "nativesdk-myprgog"

myprogram.bb file has BBCLASSEXTEND =3D "nativesdk" and it inherit mono.

Problem what I am facing is when I try to build image, it fails to start m=
entioning that nothing provides nativesdk-mono. I assume that writing bbext=
ends for mono will solve this. however, is there any way to still inherit m=
ono and not to make it part dependency chain for TOOLCHAIN_HOST_TASK?

--PmlFampwo728m7n5dois
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I have an example image where my image bbclass has<br />TOOL=
CHAIN_HOST_TASK =3D "nativesdk-myprgog"<br /><br />myprogram.bb file has BB=
CLASSEXTEND =3D "nativesdk" and it inherit mono.<br /><br />Problem what I =
am facing is when I try to build image, it fails to start mentioning that n=
othing provides nativesdk-mono. I assume that writing bbextends for mono wi=
ll solve this. however, is there any way to still inherit mono and not to m=
ake it part dependency chain for TOOLCHAIN_HOST_TASK?

--PmlFampwo728m7n5dois--
