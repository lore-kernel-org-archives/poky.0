Subject: Re: Weird Compilation issue with a c++ recipe
To: poky@lists.yoctoproject.org
From: "Arun Ravindran" <arunlee@gmail.com>
X-Originating-Location: Enfield, Leinster, IE (192.198.151.52)
X-Originating-Platform: Windows Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 13:43:28 -0700
References: <6507.1616616362778222896@lists.yoctoproject.org>
In-Reply-To: <6507.1616616362778222896@lists.yoctoproject.org>
Message-ID: <27500.1616618608323270025@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="s43Pg3yVEqDq3ecoXcAn"

--s43Pg3yVEqDq3ecoXcAn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linu=
x/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-l=
inux/aarch64-poky-linux-g++
Include dirs:

-I/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-l=
inux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/include
-I/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-l=
inux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/src/writer/../common

where as iostream is in

/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-lin=
ux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot/usr/include/c++/9.3.0/

But somehow that include path is not taken...

--s43Pg3yVEqDq3ecoXcAn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linu=
x/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-l=
inux/aarch64-poky-linux-g++&nbsp;<br />Include dirs:<br /><br />&nbsp;-I/ho=
me/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/r=
s-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/include<br />-I/home/aravind2=
/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-s=
erver/1.8.2.0-r0/rs-oem-kit-server/src/writer/../common<br /><br />where as=
 iostream is in<br /><br />/home/aravind2/work/mevolve-yocto/mvdevice/build=
/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot/us=
r/include/c++/9.3.0/<br /><br />But somehow that include path is not taken.=
..<br />

--s43Pg3yVEqDq3ecoXcAn--
