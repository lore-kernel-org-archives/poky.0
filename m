Subject: [yocto][poky]: Issue addng libgloss in .bb file
To: poky@lists.yoctoproject.org
From: nagesh.shamnur@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.212.227)
X-Originating-Platform: Linux Firefox 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Jul 2021 08:09:26 -0700
Message-ID: <ywCm.1627398566167556940.aQx0@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Q27UOgMBOtKvFKlVohId"

--Q27UOgMBOtKvFKlVohId
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

dear group,
I am new to this group and i am using poky from dunfelll branch. In my .bb=
 file when i am adding DEPENDS =3D "libgcc newlib libgloss", newlib compila=
tion is sucessful and is available in target sysroot, however libgloss buil=
d is failing with the following error. i checked the .libgloss .bb file in =
master branch and i don't see any difference. Kindly help.

Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 12
| make[1]: Entering directory '/home/build-ohos-liteos-rv32/tmp/work/riscv=
32nf-poky-elf/libgloss/3.2.0-r0/build/doc'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/home/build-ohos-liteos-rv32/tmp/work/riscv3=
2nf-poky-elf/libgloss/3.2.0-r0/build/doc'
| make[1]: Entering directory '/home/build-ohos-liteos-rv32/tmp/work/riscv=
32nf-poky-elf/libgloss/3.2.0-r0/build/riscv'
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/nanosleep=
.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_acces=
s.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chmod=
.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chown=
.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close=
.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_=
stat.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execv=
e.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.=
c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_facce=
ssat.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork.=
c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat=
at.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat=
.c
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_access.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/nanosleep.c:2:10: fatal error: sys/time.h: N=
o such file or directory
|=C2=A0=C2=A0=C2=A0=C2=A0 2 | #include <sys/time.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~
| compilation terminated.
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/sys_chmod.c:2:10: fatal error: sys/types.h: =
No such file or directory
|=C2=A0=C2=A0=C2=A0=C2=A0 2 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/sys_chown.c:2:10: fatal error: sys/types.h: =
No such file or directory
|=C2=A0=C2=A0=C2=A0=C2=A0 2 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:121: sys_access.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| make[1]: *** [Makefile:121: nanosleep.o] Error 1
| make[1]: *** [Makefile:121: sys_chmod.o] Error 1
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_stat.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: fatal error: sys/types.=
h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execve.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:121: sys_chown.o] Error 1
| make[1]: *** [Makefile:121: sys_conv_stat.o] Error 1
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_faccessat.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| compilation terminated.
| make[1]: *** [Makefile:121: sys_exit.o] Error 1
| make[1]: *** [Makefile:121: sys_execve.o] Error 1
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:121: sys_faccessat.o] Error 1
| make[1]: *** [Makefile:121: sys_close.o] Error 1
| make[1]: *** [Makefile:121: sys_fork.o] Error 1
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstatat.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: fatal error: sys/types.=
h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: fatal error: sys/types.=
h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:121: sys_fstatat.o] Error 1
| make[1]: *** [Makefile:121: sys_fstat.o] Error 1
| make[1]: Leaving directory '/home/build-ohos-liteos-rv32/tmp/work/riscv3=
2nf-poky-elf/libgloss/3.2.0-r0/build/riscv'
| make: *** [Makefile:132: stmp-bsp] Error 2
| ERROR: oe_runmake failed
| WARNING: /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglo=
ss/3.2.0-r0/temp/run.do_compile.863325:1 exit 1 from 'exit 1'
| ERROR: Execution of '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-pok=
y-elf/libgloss/3.2.0-r0/temp/run.do_compile.863325' failed with exit code 1=
:
| make[1]: Entering directory '/home/build-ohos-liteos-rv32/tmp/work/riscv=
32nf-poky-elf/libgloss/3.2.0-r0/build/doc'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory '/home/build-ohos-liteos-rv32/tmp/work/riscv3=
2nf-poky-elf/libgloss/3.2.0-r0/build/doc'
| make[1]: Entering directory '/home/build-ohos-liteos-rv32/tmp/work/riscv=
32nf-poky-elf/libgloss/3.2.0-r0/build/riscv'
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/nanosleep=
.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_acces=
s.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chmod=
.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chown=
.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close=
.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_=
stat.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execv=
e.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.=
c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_facce=
ssat.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork.=
c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat=
at.c
| riscv32-poky-elf-gcc=C2=A0=C2=A0 -mabi=3Dilp32 -no-pie -fno-PIE -nostdli=
b --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/de=
bug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D=C2=A0 -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat=
.c
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_access.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/nanosleep.c:2:10: fatal error: sys/time.h: N=
o such file or directory
|=C2=A0=C2=A0=C2=A0=C2=A0 2 | #include <sys/time.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~
| compilation terminated.
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/sys_chmod.c:2:10: fatal error: sys/types.h: =
No such file or directory
|=C2=A0=C2=A0=C2=A0=C2=A0 2 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/sys_chown.c:2:10: fatal error: sys/types.h: =
No such file or directory
|=C2=A0=C2=A0=C2=A0=C2=A0 2 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:121: sys_access.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| make[1]: *** [Makefile:121: nanosleep.o] Error 1
| make[1]: *** [Makefile:121: sys_chmod.o] Error 1
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_stat.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: fatal error: sys/types.=
h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execve.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:121: sys_chown.o] Error 1
| make[1]: *** [Makefile:121: sys_conv_stat.o] Error 1
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_faccessat.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| compilation terminated.
| make[1]: *** [Makefile:121: sys_exit.o] Error 1
| make[1]: *** [Makefile:121: sys_execve.o] Error 1
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno=
.h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:121: sys_faccessat.o] Error 1
| make[1]: *** [Makefile:121: sys_close.o] Error 1
| make[1]: *** [Makefile:121: sys_fork.o] Error 1
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstatat.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: fatal error: sys/types.=
h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c:2:
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: fatal error: sys/types.=
h: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <sys/types.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:121: sys_fstatat.o] Error 1
| make[1]: *** [Makefile:121: sys_fstat.o] Error 1
| make[1]: Leaving directory '/home/build-ohos-liteos-rv32/tmp/work/riscv3=
2nf-poky-elf/libgloss/3.2.0-r0/build/riscv'
| make: *** [Makefile:132: stmp-bsp] Error 2
| WARNING: /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglo=
ss/3.2.0-r0/temp/run.do_compile.863325:1 exit 1 from 'exit 1'
|
ERROR: Task (/home/sources/poky/meta/recipes-core/newlib/libgloss_3.2.0.bb=
:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 462 tasks of which 461 didn't need to be re=
run and 1 failed.

Summary: 1 task failed:
/home/sources/poky/meta/recipes-core/newlib/libgloss_3.2.0.bb:do_compile
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code=
.

--Q27UOgMBOtKvFKlVohId
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

dear group,<br />&nbsp;&nbsp; I am new to this group and i am using poky fr=
om dunfelll branch. In my .bb file when i am adding DEPENDS =3D "libgcc new=
lib libgloss", newlib compilation is sucessful and is available in target s=
ysroot, however libgloss build is failing with the following error. i check=
ed the .libgloss .bb file in master branch and i don't see any difference. =
Kindly help.<br /><br />Log data follows:<br />| DEBUG: Executing shell fun=
ction do_compile<br />| NOTE: make -j 12<br />| make[1]: Entering directory=
 '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r=
0/build/doc'<br />| make[1]: Nothing to be done for 'all'.<br />| make[1]: =
Leaving directory '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf=
/libgloss/3.2.0-r0/build/doc'<br />| make[1]: Entering directory '/home/bui=
ld-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/ris=
cv'<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE =
-nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-=
elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos=
-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/r=
iscv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home=
/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/us=
r/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-=
poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos=
-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=
=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/nanosleep=
.c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -=
nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-e=
lf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-=
rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/ri=
scv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/=
build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr=
/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-p=
oky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-=
liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/h=
ome/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/re=
cipe-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv=
32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_access.c<br=
 />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostd=
lib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/li=
bgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/=
tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -=
O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build=
-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/=
debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-e=
lf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteo=
s-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/b=
uild-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-=
sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-=
poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chmod.c<br />| r=
iscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --=
sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss=
/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/wo=
rk/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pi=
pe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-ohos-=
liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/=
libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebu=
g-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/lib=
gloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32=
/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroo=
t-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-e=
lf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chown.c<br />| riscv32=
-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --sysroo=
t=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/work/ris=
cv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-ohos-liteos=
-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libglo=
ss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-pref=
ix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/=
3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/w=
ork/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-nati=
ve=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/lib=
gloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close.c<br />| riscv32-poky-=
elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --sysroot=3D/h=
ome/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/re=
cipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf=
-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe -g -felim=
inate-unused-debug-types -fmacro-prefix-map=3D/home/build-ohos-liteos-rv32/=
tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2=
.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=
=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/r=
iscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-=
rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=3D=
&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss=
/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_stat.c<br />| riscv32-poky-e=
lf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --sysroot=3D/ho=
me/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/rec=
ipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-=
poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe -g -felimi=
nate-unused-debug-types -fmacro-prefix-map=3D/home/build-ohos-liteos-rv32/t=
mp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.=
0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/r=
iscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-=
rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=3D=
&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss=
/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execve.c<br />| riscv32-poky-elf-=
gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --sysroot=3D/home/=
build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe=
-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-pok=
y-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe -g -feliminat=
e-unused-debug-types -fmacro-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/=
work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r=
0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/=
home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=
=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/ris=
cv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv=
32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=3D&n=
bsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3=
.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.c<br />| riscv32-poky-elf-gcc&=
nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --sysroot=3D/home/buil=
d-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sys=
root -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe -g -feliminate-un=
used-debug-types -fmacro-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home=
/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/us=
r/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-=
poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/=
work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=3D&nbsp; -c=
 /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=
/newlib-3.2.0/libgloss/riscv/sys_faccessat.c<br />| riscv32-poky-elf-gcc&nb=
sp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --sysroot=3D/home/build-=
ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysro=
ot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/=
libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe -g -feliminate-unus=
ed-debug-types -fmacro-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/r=
iscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/b=
uild-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/=
src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/wo=
rk/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=3D&nbsp; -c /=
home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/n=
ewlib-3.2.0/libgloss/riscv/sys_fork.c<br />| riscv32-poky-elf-gcc&nbsp;&nbs=
p; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --sysroot=3D/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD=
 -MP -I. -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglos=
s/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe -g -feliminate-unused-debu=
g-types -fmacro-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32n=
f-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-oh=
os-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/deb=
ug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fd=
ebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/=
libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/risc=
v32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=3D&nbsp; -c /home/bu=
ild-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3=
.2.0/libgloss/riscv/sys_fstatat.c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -=
mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --sysroot=3D/home/build-ohos-liteos=
-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP=
 -I. -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.=
2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe -g -feliminate-unused-debug-ty=
pes -fmacro-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-l=
iteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/l=
ibgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug=
-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libg=
loss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32n=
f-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-=
ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0=
/libgloss/riscv/sys_fstat.c<br />| In file included from /home/build-ohos-l=
iteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgl=
oss/riscv/sys_access.c:2:<br />| /home/build-ohos-liteos-rv32/tmp/work/risc=
v32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_sysca=
ll.h:15:10: fatal error: errno.h: No such file or directory<br />|&nbsp;&nb=
sp;&nbsp; 15 | #include &lt;errno.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<b=
r />| compilation terminated.<br />| /home/build-ohos-liteos-rv32/tmp/work/=
riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/nanosleep.=
c:2:10: fatal error: sys/time.h: No such file or directory<br />|&nbsp;&nbs=
p;&nbsp;&nbsp; 2 | #include &lt;sys/time.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~=
~~~~~~~~<br />| compilation terminated.<br />| /home/build-ohos-liteos-rv32=
/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/=
sys_chmod.c:2:10: fatal error: sys/types.h: No such file or directory<br />=
|&nbsp;&nbsp;&nbsp;&nbsp; 2 | #include &lt;sys/types.h&gt;<br />|&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; ^~~~~~~~~~~~~<br />| compilation terminated.<br />| /home/build-oho=
s-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/li=
bgloss/riscv/sys_chown.c:2:10: fatal error: sys/types.h: No such file or di=
rectory<br />|&nbsp;&nbsp;&nbsp;&nbsp; 2 | #include &lt;sys/types.h&gt;<br =
/>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~<br />| compilation terminated.<br />| ma=
ke[1]: *** [Makefile:121: sys_access.o] Error 1<br />| make[1]: *** Waiting=
 for unfinished jobs....<br />| make[1]: *** [Makefile:121: nanosleep.o] Er=
ror 1<br />| make[1]: *** [Makefile:121: sys_chmod.o] Error 1<br />| In fil=
e included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/li=
bgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_stat.c:2:<br />| /home=
/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newli=
b-3.2.0/libgloss/riscv/kernel_stat.h:15:10: fatal error: sys/types.h: No su=
ch file or directory<br />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;sys/types.h=
&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~<br />| compilation terminated.<b=
r />| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf=
-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.c:2:<br />=
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r=
0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno.=
h: No such file or directory<br />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;err=
no.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br />| compilation terminated.<b=
r />| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf=
-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execve.c:2:<br =
/>| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errn=
o.h: No such file or directory<br />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;e=
rrno.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br />| compilation terminated.=
<br />| make[1]: *** [Makefile:121: sys_chown.o] Error 1<br />| make[1]: **=
* [Makefile:121: sys_conv_stat.o] Error 1<br />| In file included from /hom=
e/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newl=
ib-3.2.0/libgloss/riscv/sys_close.c:2:<br />| /home/build-ohos-liteos-rv32/=
tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/i=
nternal_syscall.h:15:10: fatal error: errno.h: No such file or directory<br=
 />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;errno.h&gt;<br />|&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; ^~~~~~~~~<br />| In file included from /home/build-ohos-liteos-rv32/tmp/w=
ork/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fa=
ccessat.c:2:<br />| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: f=
atal error: errno.h: No such file or directory<br />|&nbsp;&nbsp;&nbsp; 15 =
| #include &lt;errno.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br />| compila=
tion terminated.<br />| compilation terminated.<br />| make[1]: *** [Makefi=
le:121: sys_exit.o] Error 1<br />| make[1]: *** [Makefile:121: sys_execve.o=
] Error 1<br />| In file included from /home/build-ohos-liteos-rv32/tmp/wor=
k/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork=
.c:2:<br />| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgl=
oss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal er=
ror: errno.h: No such file or directory<br />|&nbsp;&nbsp;&nbsp; 15 | #incl=
ude &lt;errno.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br />| compilation te=
rminated.<br />| make[1]: *** [Makefile:121: sys_faccessat.o] Error 1<br />=
| make[1]: *** [Makefile:121: sys_close.o] Error 1<br />| make[1]: *** [Mak=
efile:121: sys_fork.o] Error 1<br />| In file included from /home/build-oho=
s-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/li=
bgloss/riscv/sys_fstatat.c:2:<br />| /home/build-ohos-liteos-rv32/tmp/work/=
riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/kernel_sta=
t.h:15:10: fatal error: sys/types.h: No such file or directory<br />|&nbsp;=
&nbsp;&nbsp; 15 | #include &lt;sys/types.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~=
~~~~~~~~~<br />| compilation terminated.<br />| In file included from /home=
/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newli=
b-3.2.0/libgloss/riscv/sys_fstat.c:2:<br />| /home/build-ohos-liteos-rv32/t=
mp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/ke=
rnel_stat.h:15:10: fatal error: sys/types.h: No such file or directory<br /=
>|&nbsp;&nbsp;&nbsp; 15 | #include &lt;sys/types.h&gt;<br />|&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; ^~~~~~~~~~~~~<br />| compilation terminated.<br />| make[1]: *** [Makef=
ile:121: sys_fstatat.o] Error 1<br />| make[1]: *** [Makefile:121: sys_fsta=
t.o] Error 1<br />| make[1]: Leaving directory '/home/build-ohos-liteos-rv3=
2/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/riscv'<br />| make: *=
** [Makefile:132: stmp-bsp] Error 2<br />| ERROR: oe_runmake failed<br />| =
WARNING: /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/=
3.2.0-r0/temp/run.do_compile.863325:1 exit 1 from 'exit 1'<br />| ERROR: Ex=
ecution of '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglo=
ss/3.2.0-r0/temp/run.do_compile.863325' failed with exit code 1:<br />| mak=
e[1]: Entering directory '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-p=
oky-elf/libgloss/3.2.0-r0/build/doc'<br />| make[1]: Nothing to be done for=
 'all'.<br />| make[1]: Leaving directory '/home/build-ohos-liteos-rv32/tmp=
/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/doc'<br />| make[1]: Enter=
ing directory '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/lib=
gloss/3.2.0-r0/build/riscv'<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=
=3Dilp32 -no-pie -fno-PIE -nostdlib --sysroot=3D/home/build-ohos-liteos-rv=
32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I=
. -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe -g -feliminate-unused-debug-types=
 -fmacro-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-=
elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-lite=
os-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libg=
loss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-pr=
efix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglos=
s/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-p=
oky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-oho=
s-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/li=
bgloss/riscv/nanosleep.c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dil=
p32 -no-pie -fno-PIE -nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp=
/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/h=
ome/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/ne=
wlib-3.2.0/libgloss/riscv -O2 -pipe -g -feliminate-unused-debug-types -fmac=
ro-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/li=
bgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv3=
2/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3=
.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-m=
ap=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.=
0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-ohos-lite=
os-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss=
/riscv/sys_access.c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -=
no-pie -fno-PIE -nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/b=
uild-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-=
3.2.0/libgloss/riscv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-pr=
efix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglos=
s/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp=
/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-=
r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D=
/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/=
recipe-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebu=
g-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/lib=
gloss/3.2.0-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv=
32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/risc=
v/sys_chmod.c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie=
 -fno-PIE -nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv=
32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/=
libgloss/riscv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-m=
ap=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.=
0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/=
riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/=
build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe=
-sysroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-pref=
ix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/=
3.2.0-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp=
/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_=
chown.c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-=
PIE -nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-p=
oky-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-li=
teos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libglo=
ss/riscv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/=
home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=
=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/ris=
cv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/bui=
ld-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sy=
sroot=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-=
map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2=
.0-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/wo=
rk/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_clo=
se.c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE=
 -nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky=
-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteo=
s-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/=
riscv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/hom=
e/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/u=
sr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf=
-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-oho=
s-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=
=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_=
stat.c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-P=
IE -nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-lit=
eos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libglos=
s/riscv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/h=
ome/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D=
/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32=
nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-o=
hos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroo=
t=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execv=
e.c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE =
-nostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-=
elf/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos=
-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/r=
iscv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home=
/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/us=
r/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-=
poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos=
-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=
=3D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=
=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0=
-r0/recipe-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work=
/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.=
c<br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -n=
ostdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-el=
f/libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-r=
v32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/ris=
cv -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/b=
uild-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/=
src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-l=
iteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/ho=
me/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/rec=
ipe-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv3=
2nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_faccessat.c<=
br />| riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nos=
tdlib --sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/=
libgloss/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv3=
2/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv=
 -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/bui=
ld-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/sr=
c/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky=
-elf/libgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-lit=
eos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home=
/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recip=
e-sysroot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv32n=
f-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork.c<br />| =
riscv32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib -=
-sysroot=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglos=
s/3.2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/w=
ork/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -p=
ipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-ohos=
-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug=
/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdeb=
ug-prefix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/li=
bgloss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv3=
2/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-=
ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysro=
ot-native=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-=
elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstatat.c<br />| risc=
v32-poky-elf-gcc&nbsp;&nbsp; -mabi=3Dilp32 -no-pie -fno-PIE -nostdlib --sys=
root=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.=
2.0-r0/recipe-sysroot -MMD -MP -I. -I/home/build-ohos-liteos-rv32/tmp/work/=
riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv -O2 -pipe =
-g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/build-ohos-lit=
eos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=3D/usr/src/debug/lib=
gloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-p=
refix-map=3D/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglo=
ss/3.2.0-r0=3D/usr/src/debug/libgloss/3.2.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos-liteos-rv32/tm=
p/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/build-ohos=
-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-n=
ative=3D&nbsp; -c /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/=
libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c<br />| In file in=
cluded from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libglo=
ss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_access.c:2:<br />| /home/build-=
ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0=
/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno.h: No such fil=
e or directory<br />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;errno.h&gt;<br />=
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br />| compilation terminated.<br />| /home/bu=
ild-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3=
.2.0/libgloss/riscv/nanosleep.c:2:10: fatal error: sys/time.h: No such file=
 or directory<br />|&nbsp;&nbsp;&nbsp;&nbsp; 2 | #include &lt;sys/time.h&gt=
;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~<br />| compilation terminated.<br />=
| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r=
0/newlib-3.2.0/libgloss/riscv/sys_chmod.c:2:10: fatal error: sys/types.h: N=
o such file or directory<br />|&nbsp;&nbsp;&nbsp;&nbsp; 2 | #include &lt;sy=
s/types.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~<br />| compilation term=
inated.<br />| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/lib=
gloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chown.c:2:10: fatal error: s=
ys/types.h: No such file or directory<br />|&nbsp;&nbsp;&nbsp;&nbsp; 2 | #i=
nclude &lt;sys/types.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~<br />| com=
pilation terminated.<br />| make[1]: *** [Makefile:121: sys_access.o] Error=
 1<br />| make[1]: *** Waiting for unfinished jobs....<br />| make[1]: *** =
[Makefile:121: nanosleep.o] Error 1<br />| make[1]: *** [Makefile:121: sys_=
chmod.o] Error 1<br />| In file included from /home/build-ohos-liteos-rv32/=
tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/s=
ys_conv_stat.c:2:<br />| /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: f=
atal error: sys/types.h: No such file or directory<br />|&nbsp;&nbsp;&nbsp;=
 15 | #include &lt;sys/types.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~<br=
 />| compilation terminated.<br />| In file included from /home/build-ohos-=
liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libg=
loss/riscv/sys_exit.c:2:<br />| /home/build-ohos-liteos-rv32/tmp/work/riscv=
32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscal=
l.h:15:10: fatal error: errno.h: No such file or directory<br />|&nbsp;&nbs=
p;&nbsp; 15 | #include &lt;errno.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br=
 />| compilation terminated.<br />| In file included from /home/build-ohos-=
liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libg=
loss/riscv/sys_execve.c:2:<br />| /home/build-ohos-liteos-rv32/tmp/work/ris=
cv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_sysc=
all.h:15:10: fatal error: errno.h: No such file or directory<br />|&nbsp;&n=
bsp;&nbsp; 15 | #include &lt;errno.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<=
br />| compilation terminated.<br />| make[1]: *** [Makefile:121: sys_chown=
.o] Error 1<br />| make[1]: *** [Makefile:121: sys_conv_stat.o] Error 1<br =
/>| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-p=
oky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close.c:2:<br />|=
 /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=
/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: fatal error: errno.h=
: No such file or directory<br />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;errn=
o.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br />| In file included from /hom=
e/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newl=
ib-3.2.0/libgloss/riscv/sys_faccessat.c:2:<br />| /home/build-ohos-liteos-r=
v32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/ris=
cv/internal_syscall.h:15:10: fatal error: errno.h: No such file or director=
y<br />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;errno.h&gt;<br />|&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; ^~~~~~~~~<br />| compilation terminated.<br />| compilation terminate=
d.<br />| make[1]: *** [Makefile:121: sys_exit.o] Error 1<br />| make[1]: *=
** [Makefile:121: sys_execve.o] Error 1<br />| In file included from /home/=
build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib=
-3.2.0/libgloss/riscv/sys_fork.c:2:<br />| /home/build-ohos-liteos-rv32/tmp=
/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/inte=
rnal_syscall.h:15:10: fatal error: errno.h: No such file or directory<br />=
|&nbsp;&nbsp;&nbsp; 15 | #include &lt;errno.h&gt;<br />|&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^=
~~~~~~~~<br />| compilation terminated.<br />| make[1]: *** [Makefile:121: =
sys_faccessat.o] Error 1<br />| make[1]: *** [Makefile:121: sys_close.o] Er=
ror 1<br />| make[1]: *** [Makefile:121: sys_fork.o] Error 1<br />| In file=
 included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/lib=
gloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstatat.c:2:<br />| /home/bu=
ild-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3=
.2.0/libgloss/riscv/kernel_stat.h:15:10: fatal error: sys/types.h: No such =
file or directory<br />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;sys/types.h&gt=
;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~<br />| compilation terminated.<br /=
>| In file included from /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-po=
ky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c:2:<br />| =
/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/=
newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: fatal error: sys/types.h: =
No such file or directory<br />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;sys/ty=
pes.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~<br />| compilation terminat=
ed.<br />| make[1]: *** [Makefile:121: sys_fstatat.o] Error 1<br />| make[1=
]: *** [Makefile:121: sys_fstat.o] Error 1<br />| make[1]: Leaving director=
y '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-=
r0/build/riscv'<br />| make: *** [Makefile:132: stmp-bsp] Error 2<br />| WA=
RNING: /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.=
2.0-r0/temp/run.do_compile.863325:1 exit 1 from 'exit 1'<br />| <br />ERROR=
: Task (/home/sources/poky/meta/recipes-core/newlib/libgloss_3.2.0.bb:do_co=
mpile) failed with exit code '1'<br />NOTE: Tasks Summary: Attempted 462 ta=
sks of which 461 didn't need to be rerun and 1 failed.<br /><br />Summary: =
1 task failed:<br />&nbsp; /home/sources/poky/meta/recipes-core/newlib/libg=
loss_3.2.0.bb:do_compile<br />Summary: There was 1 WARNING message shown.<b=
r />Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.

--Q27UOgMBOtKvFKlVohId--
