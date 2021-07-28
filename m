Subject: Re: [yocto][poky]: Issue addng libgloss in .bb file
To: poky@lists.yoctoproject.org
From: nagesh.shamnur@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.212.227)
X-Originating-Platform: Linux Firefox 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Jul 2021 23:30:55 -0700
References: <3e0bab6e-c12d-8245-38ef-92ccf775e5eb@gmail.com>
In-Reply-To: <3e0bab6e-c12d-8245-38ef-92ccf775e5eb@gmail.com>
Message-ID: <5197.1627453855196654342@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7hu2ykgPA5NJn4Guibgz"

--7hu2ykgPA5NJn4Guibgz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> dear group,
> I am new to this group and i am using poky from dunfelll branch. In my .=
bb
> file when i am adding DEPENDS =3D "libgcc newlib libgloss", newlib
> compilation is sucessful and is available in target sysroot, however
> libgloss build is failing with the following error. i checked the
> .libgloss .bb file in master branch and i don't see any difference. Kind=
ly
> help.

>for some reason its not getting libc headers in your recipe sysroot can y=
ou check if these missing files are staged in sysroot ?
when i observe the compile output, the newlib include files=C2=A0 are pres=
ent in the path:
tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot/usr/include

but this path is not included in the libgloss compilatiton rules:
riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib =
--sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglo=
ss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/=
work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -=
pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-oho=
s-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debu=
g/libgloss/3.2.0-r0 -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/w=
ork/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=
 -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-=
elf/libgloss/3.2.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/build-oh=
os-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=
-native=3D -c /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c

--7hu2ykgPA5NJn4Guibgz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>dear group,<br />&nbsp;&nbsp; I am new to this group and i am u=
sing poky from dunfelll branch. In my .bb file when i am adding DEPENDS =3D=
 "libgcc newlib libgloss", newlib compilation is sucessful and is available=
 in target sysroot, however libgloss build is failing with the following er=
ror. i checked the .libgloss .bb file in master branch and i don't see any =
difference. Kindly help.</blockquote>
&gt;for some reason its not getting libc headers in your recipe sysroot ca=
n you check if these missing files are staged in sysroot ?<br />when i obse=
rve the compile output, the newlib include files&nbsp; are present in the p=
ath:<br />tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot/usr/=
include<br /><br />but this path is not included in the libgloss compilatit=
on rules:<br />riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-=
PIE -nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-p=
oky-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libglo=
ss/riscv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/=
home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=
=3D/usr/src/debug/libgloss/3.2.0-r0 -fdebug-prefix-map=3D/home/build-ohos-=
liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/=
libgloss/3.2.0-r0 -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/wor=
k/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D -fdebug-prefix-map=
=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D -c /home/build-ohos-liteos-rv32/tmp/work/riscv=
32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c

--7hu2ykgPA5NJn4Guibgz--
