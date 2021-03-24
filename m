Subject: Re: Weird Compilation issue with a c++ recipe
To: poky@lists.yoctoproject.org
From: arunlee@gmail.com
X-Originating-Location: Enfield, Leinster, IE (192.198.151.52)
X-Originating-Platform: Windows Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 13:06:02 -0700
References: <1bf54cb4-31c0-863c-ead4-c02431ba1c36@gmail.com>
In-Reply-To: <1bf54cb4-31c0-863c-ead4-c02431ba1c36@gmail.com>
Message-ID: <6507.1616616362778222896@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AQFmlMtcsktIh3SNDt4b"

--AQFmlMtcsktIh3SNDt4b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is what i see:

/build$ bitbake -e rs-oem-kit-server | grep -e "CXX=3D"
export BUILD_CXX=3D"g++ "
export CXX=3D"aarch64-poky-linux-g++=C2=A0 -mcpu=3Dcortex-a72+crc+crypto -=
fstack-protector-strong=C2=A0 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-secur=
ity -Werror=3Dformat-security --sysroot=3D/home/aravind2/work/mevolve-yocto=
/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/re=
cipe-sysroot"

And the Makefiles have the following

INCLUDES =3D -I./ -I../common -I../../include

--AQFmlMtcsktIh3SNDt4b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is what i see:<br /><br />/build$ bitbake -e rs-oem-kit-server | grep =
-e "CXX=3D"<br />export BUILD_CXX=3D"g++ "<br />export CXX=3D"aarch64-poky-=
linux-g++&nbsp; -mcpu=3Dcortex-a72+crc+crypto -fstack-protector-strong&nbsp=
; -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-securit=
y --sysroot=3D/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aar=
ch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot"<br /><br />And=
 the Makefiles have the following<br /><br />INCLUDES =3D -I./ -I../common =
-I../../include

--AQFmlMtcsktIh3SNDt4b--
