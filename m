Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web09.1822.1575627533750444114
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 02:18:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47TpTR2C9Qz5tlN;
	Fri,  6 Dec 2019 11:18:50 +0100 (CET)
Date: Fri, 6 Dec 2019 11:18:49 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: poky@lists.yoctoproject.org
Cc: andriy.danylovskyy@streamunlimited.com,
	radek.dostal@streamunlimited.com
Subject: [BUG] icecc breaks gobject-introspection do_compile on 2.7.2 and master
Message-ID: <20191206101849.hvhc5itxvxfxoap6@qschulz>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Groupsio-MsgNum: 11857
Content-Type: multipart/mixed; boundary="nsvqrua3nzb3qy3t"
Content-Disposition: inline

--nsvqrua3nzb3qy3t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I've *sometimes* encountered a build failure on gobject-introspection in
warrior 2.7.2.

Here is how to reproduce:

git clone git://git.yoctoproject.org/poky
cd poky
git checkout 109ef2e5c4161a2c0ac58bede3daa48c7b4881ec #for master I tested or warrior-21.0.2
source oe-init-build-env
echo 'ICECC_PATH = "/usr/bin/icecc"' >> conf/local.conf
echo 'INHERIT += "icecc"' >> conf/local.conf
while true; do (bitbake gobject-introspection -c cleansstate && bitbake gobject-introspection -c compile) || break ; done

Full log is attached, the interesting excerpt is here:
[71/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/cairo-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/cairo-1.0.typelib
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/cairo-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH="${B}/something/.libs" )

This tells us pretty much nothing. It's not the only line, all next ones
are failing with the same cryptic error message.

So I replaced the ninja call in run.do_compile by that exact line above
and ran run.do_compile manually, the outcome is:
Error while loading /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler: No such file or directory
If the above error message is about missing .so libraries, then setting up GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH="${B}/something/.libs" )
WARNING: exit code 1 from a shell command.

And indeed, the file is not there and is there every time the
compilation works.

$ find /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/ -name "*g-ir-compiler*"
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/f9d35d4@@g-ir-compiler@exe
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-compiler-wrapper
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/docs/website/tools/g-ir-compiler.rst
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/docs/g-ir-compiler.1
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-native/usr/bin/g-ir-compiler

Disabling ICECC for that recipe makes it work just fine.

1) Does anyone have any idea about what's happening?
2) Can we have the complete error message in log.do_compile instead of
the line "Error while loading /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler: No such file or directory"
missing?

FYI, I run Ubuntu 18.04.03 and most of the company is using that one or
16.04. I have icecc 1.1-2.

BR,
Quentin

--nsvqrua3nzb3qy3t
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="log.do_compile.2838"
Content-Transfer-Encoding: quoted-printable

DEBUG: Executing shell function do_compile
NOTE: Using icecc path: /tmp/poky/build/tmp/work/core2-64-poky-linux/gobjec=
t-introspection/1.62.0-r0/recipe-sysroot/usr/bin/ice
NOTE: Using icecc tarball: /tmp/poky/build/tmp/work-shared/ice/x86_64-poky-=
linux-poky-x86_64-poky-linux-hard-2-9.2.0-qschulz.tar.gz
[1/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/buffer_entry.c.o' -MF 'gir=
epository/cmph/6cca4a0@@cmph@sta/buffer_entry.c.o.d' -o 'girepository/cmph/=
6cca4a0@@cmph@sta/buffer_entry.c.o' -c ../gobject-introspection-1.62.0/gire=
pository/cmph/buffer_entry.c
[2/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/buffer_manager.c.o' -MF 'g=
irepository/cmph/6cca4a0@@cmph@sta/buffer_manager.c.o.d' -o 'girepository/c=
mph/6cca4a0@@cmph@sta/buffer_manager.c.o' -c ../gobject-introspection-1.62.=
0/girepository/cmph/buffer_manager.c
[3/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/compressed_rank.c.o' -MF '=
girepository/cmph/6cca4a0@@cmph@sta/compressed_rank.c.o.d' -o 'girepository=
/cmph/6cca4a0@@cmph@sta/compressed_rank.c.o' -c ../gobject-introspection-1.=
62.0/girepository/cmph/compressed_rank.c
[4/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/chd.c.o' -MF 'girepository=
/cmph/6cca4a0@@cmph@sta/chd.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@sta/=
chd.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/chd.c
[5/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/cmph.c.o' -MF 'girepositor=
y/cmph/6cca4a0@@cmph@sta/cmph.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@st=
a/cmph.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/cmph.c
../gobject-introspection-1.62.0/girepository/cmph/cmph.c: In function 'coun=
t_nlfile_keys':
../gobject-introspection-1.62.0/girepository/cmph/cmph.c:158:3: warning: ig=
noring return value of 'fgets', declared with attribute warn_unused_result =
[-Wunused-result]
[6/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/cmph_structs.c.o' -MF 'gir=
epository/cmph/6cca4a0@@cmph@sta/cmph_structs.c.o.d' -o 'girepository/cmph/=
6cca4a0@@cmph@sta/cmph_structs.c.o' -c ../gobject-introspection-1.62.0/gire=
pository/cmph/cmph_structs.c
[7/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/fch_buckets.c.o' -MF 'gire=
pository/cmph/6cca4a0@@cmph@sta/fch_buckets.c.o.d' -o 'girepository/cmph/6c=
ca4a0@@cmph@sta/fch_buckets.c.o' -c ../gobject-introspection-1.62.0/girepos=
itory/cmph/fch_buckets.c
[8/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/bmz.c.o' -MF 'girepository=
/cmph/6cca4a0@@cmph@sta/bmz.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@sta/=
bmz.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/bmz.c
[9/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/bdz.c.o' -MF 'girepository=
/cmph/6cca4a0@@cmph@sta/bdz.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@sta/=
bdz.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/bdz.c
[10/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/jenkins_hash.c.o' -MF '=
girepository/cmph/6cca4a0@@cmph@sta/jenkins_hash.c.o.d' -o 'girepository/cm=
ph/6cca4a0@@cmph@sta/jenkins_hash.c.o' -c ../gobject-introspection-1.62.0/g=
irepository/cmph/jenkins_hash.c
[11/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/brz.c.o' -MF 'gireposit=
ory/cmph/6cca4a0@@cmph@sta/brz.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@s=
ta/brz.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/brz.c
[12/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/bdz_ph.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/bdz_ph.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/bdz_ph.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/b=
dz_ph.c
[13/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/graph.c.o' -MF 'girepos=
itory/cmph/6cca4a0@@cmph@sta/graph.c.o.d' -o 'girepository/cmph/6cca4a0@@cm=
ph@sta/graph.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/grap=
h.c
[14/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/bmz8.c.o' -MF 'gireposi=
tory/cmph/6cca4a0@@cmph@sta/bmz8.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph=
@sta/bmz8.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/bmz8.c
[15/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/chd_ph.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/chd_ph.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/chd_ph.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/c=
hd_ph.c
[16/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/vqueue.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/vqueue.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/vqueue.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/v=
queue.c
[17/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/hash.c.o' -MF 'gireposi=
tory/cmph/6cca4a0@@cmph@sta/hash.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph=
@sta/hash.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/hash.c
[18/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/vstack.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/vstack.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/vstack.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/v=
stack.c
[19/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/compressed_seq.c.o' -MF=
 'girepository/cmph/6cca4a0@@cmph@sta/compressed_seq.c.o.d' -o 'girepositor=
y/cmph/6cca4a0@@cmph@sta/compressed_seq.c.o' -c ../gobject-introspection-1.=
62.0/girepository/cmph/compressed_seq.c
[20/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/miller_rabin.c.o' -MF '=
girepository/cmph/6cca4a0@@cmph@sta/miller_rabin.c.o.d' -o 'girepository/cm=
ph/6cca4a0@@cmph@sta/miller_rabin.c.o' -c ../gobject-introspection-1.62.0/g=
irepository/cmph/miller_rabin.c
[21/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/select.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/select.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/select.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/s=
elect.c
[22/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph-bdz-test@exe -Igirepository/cmph -I../gobject-int=
rospection-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0=
 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.=
0-r0/recipe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -=
pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclarati=
on-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonl=
iteral -Wformat-security -Wimplicit-function-declaration -Winit-self -Wjump=
-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute=
 -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-ex=
terns -Wnull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -W=
restrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-p=
rototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-ali=
asing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-=
map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=
=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.=
0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D=
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-=
poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-di=
agnostics-show-caret -Wno-old-style-definition -Wno-type-limits -MD -MQ 'gi=
repository/cmph/6cca4a0@@cmph-bdz-test@exe/.._cmph-bdz-test.c.o' -MF 'girep=
ository/cmph/6cca4a0@@cmph-bdz-test@exe/.._cmph-bdz-test.c.o.d' -o 'girepos=
itory/cmph/6cca4a0@@cmph-bdz-test@exe/.._cmph-bdz-test.c.o' -c ../gobject-i=
ntrospection-1.62.0/girepository/cmph-bdz-test.c
[23/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-gthash@sta -Igirepository -I../gobject-introsp=
ection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -Igirepos=
itory/cmph -I../gobject-introspection-1.62.0/girepository/cmph -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -fd=
iagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-boun=
ds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wextra=
 -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-dec=
laration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations=
 -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmis=
sing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definition =
-Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -=
Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwr=
ite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-=
debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1=
.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62=
.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gob=
ject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibility=
=3Dhidden -Wno-old-style-definition -Wno-cast-align -MD -MQ 'girepository/6=
67a256@@girepository-gthash@sta/gthash.c.o' -MF 'girepository/667a256@@gire=
pository-gthash@sta/gthash.c.o.d' -o 'girepository/667a256@@girepository-gt=
hash@sta/gthash.c.o' -c ../gobject-introspection-1.62.0/girepository/gthash=
.c
[24/101] rm -f girepository/libgirepository-gthash.a && x86_64-poky-linux-g=
cc-ar csrD girepository/libgirepository-gthash.a 'girepository/667a256@@gir=
epository-gthash@sta/gthash.c.o'
[25/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/giroffsets.c.=
o' -MF 'girepository/667a256@@girepository-internals@sta/giroffsets.c.o.d' =
-o 'girepository/667a256@@girepository-internals@sta/giroffsets.c.o' -c ../=
gobject-introspection-1.62.0/girepository/giroffsets.c
[26/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/girmodule.c.o=
' -MF 'girepository/667a256@@girepository-internals@sta/girmodule.c.o.d' -o=
 'girepository/667a256@@girepository-internals@sta/girmodule.c.o' -c ../gob=
ject-introspection-1.62.0/girepository/girmodule.c
[27/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/fch.c.o' -MF 'gireposit=
ory/cmph/6cca4a0@@cmph@sta/fch.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@s=
ta/fch.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/fch.c
[28/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giconstantinfo.c.o' -=
MF 'girepository/667a256@@girepository-1.0@sha/giconstantinfo.c.o.d' -o 'gi=
repository/667a256@@girepository-1.0@sha/giconstantinfo.c.o' -c ../gobject-=
introspection-1.62.0/girepository/giconstantinfo.c
[29/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gienuminfo.c.o' -MF '=
girepository/667a256@@girepository-1.0@sha/gienuminfo.c.o.d' -o 'gireposito=
ry/667a256@@girepository-1.0@sha/gienuminfo.c.o' -c ../gobject-introspectio=
n-1.62.0/girepository/gienuminfo.c
[30/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giarginfo.c.o' -MF 'g=
irepository/667a256@@girepository-1.0@sha/giarginfo.c.o.d' -o 'girepository=
/667a256@@girepository-1.0@sha/giarginfo.c.o' -c ../gobject-introspection-1=
.62.0/girepository/giarginfo.c
[31/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gibaseinfo.c.o' -MF '=
girepository/667a256@@girepository-1.0@sha/gibaseinfo.c.o.d' -o 'gireposito=
ry/667a256@@girepository-1.0@sha/gibaseinfo.c.o' -c ../gobject-introspectio=
n-1.62.0/girepository/gibaseinfo.c
[32/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gicallableinfo.c.o' -=
MF 'girepository/667a256@@girepository-1.0@sha/gicallableinfo.c.o.d' -o 'gi=
repository/667a256@@girepository-1.0@sha/gicallableinfo.c.o' -c ../gobject-=
introspection-1.62.0/girepository/gicallableinfo.c
[33/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gdump.c.o' -MF 'girep=
ository/667a256@@girepository-1.0@sha/gdump.c.o.d' -o 'girepository/667a256=
@@girepository-1.0@sha/gdump.c.o' -c ../gobject-introspection-1.62.0/girepo=
sitory/gdump.c
[34/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/girffi.c.o' -MF 'gire=
pository/667a256@@girepository-1.0@sha/girffi.c.o.d' -o 'girepository/667a2=
56@@girepository-1.0@sha/girffi.c.o' -c ../gobject-introspection-1.62.0/gir=
epository/girffi.c
[35/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gifieldinfo.c.o' -MF =
'girepository/667a256@@girepository-1.0@sha/gifieldinfo.c.o.d' -o 'gireposi=
tory/667a256@@girepository-1.0@sha/gifieldinfo.c.o' -c ../gobject-introspec=
tion-1.62.0/girepository/gifieldinfo.c
[36/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gifunctioninfo.c.o' -=
MF 'girepository/667a256@@girepository-1.0@sha/gifunctioninfo.c.o.d' -o 'gi=
repository/667a256@@girepository-1.0@sha/gifunctioninfo.c.o' -c ../gobject-=
introspection-1.62.0/girepository/gifunctioninfo.c
[37/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giinterfaceinfo.c.o' =
-MF 'girepository/667a256@@girepository-1.0@sha/giinterfaceinfo.c.o.d' -o '=
girepository/667a256@@girepository-1.0@sha/giinterfaceinfo.c.o' -c ../gobje=
ct-introspection-1.62.0/girepository/giinterfaceinfo.c
[38/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/ginvoke.c.o' -MF 'gir=
epository/667a256@@girepository-1.0@sha/ginvoke.c.o.d' -o 'girepository/667=
a256@@girepository-1.0@sha/ginvoke.c.o' -c ../gobject-introspection-1.62.0/=
girepository/ginvoke.c
[39/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/girwriter.c.o=
' -MF 'girepository/667a256@@girepository-internals@sta/girwriter.c.o.d' -o=
 'girepository/667a256@@girepository-internals@sta/girwriter.c.o' -c ../gob=
ject-introspection-1.62.0/girepository/girwriter.c
[40/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gipropertyinfo.c.o' -=
MF 'girepository/667a256@@girepository-1.0@sha/gipropertyinfo.c.o.d' -o 'gi=
repository/667a256@@girepository-1.0@sha/gipropertyinfo.c.o' -c ../gobject-=
introspection-1.62.0/girepository/gipropertyinfo.c
[41/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giregisteredtypeinfo.=
c.o' -MF 'girepository/667a256@@girepository-1.0@sha/giregisteredtypeinfo.c=
.o.d' -o 'girepository/667a256@@girepository-1.0@sha/giregisteredtypeinfo.c=
.o' -c ../gobject-introspection-1.62.0/girepository/giregisteredtypeinfo.c
[42/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gisignalinfo.c.o' -MF=
 'girepository/667a256@@girepository-1.0@sha/gisignalinfo.c.o.d' -o 'girepo=
sitory/667a256@@girepository-1.0@sha/gisignalinfo.c.o' -c ../gobject-intros=
pection-1.62.0/girepository/gisignalinfo.c
[43/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/girepository.c.o' -MF=
 'girepository/667a256@@girepository-1.0@sha/girepository.c.o.d' -o 'girepo=
sitory/667a256@@girepository-1.0@sha/girepository.c.o' -c ../gobject-intros=
pection-1.62.0/girepository/girepository.c
[44/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giversion.c.o' -MF 'g=
irepository/667a256@@girepository-1.0@sha/giversion.c.o.d' -o 'girepository=
/667a256@@girepository-1.0@sha/giversion.c.o' -c ../gobject-introspection-1=
.62.0/girepository/giversion.c
[45/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/girnode.c.o' =
-MF 'girepository/667a256@@girepository-internals@sta/girnode.c.o.d' -o 'gi=
repository/667a256@@girepository-internals@sta/girnode.c.o' -c ../gobject-i=
ntrospection-1.62.0/girepository/girnode.c
[46/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gistructinfo.c.o' -MF=
 'girepository/667a256@@girepository-1.0@sha/gistructinfo.c.o.d' -o 'girepo=
sitory/667a256@@girepository-1.0@sha/gistructinfo.c.o' -c ../gobject-intros=
pection-1.62.0/girepository/gistructinfo.c
[47/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gitypeinfo.c.o' -MF '=
girepository/667a256@@girepository-1.0@sha/gitypeinfo.c.o.d' -o 'gireposito=
ry/667a256@@girepository-1.0@sha/gitypeinfo.c.o' -c ../gobject-introspectio=
n-1.62.0/girepository/gitypeinfo.c
[48/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giunioninfo.c.o' -MF =
'girepository/667a256@@girepository-1.0@sha/giunioninfo.c.o.d' -o 'gireposi=
tory/667a256@@girepository-1.0@sha/giunioninfo.c.o' -c ../gobject-introspec=
tion-1.62.0/girepository/giunioninfo.c
[49/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/recipe-sysroot-native/usr/bin/flex -o giscanner/scannerlexer.c .=
./gobject-introspection-1.62.0/giscanner/scannerlexer.l
[50/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@gthash-test@exe -Igirepository -I../gobject-introspection-1=
.62.0/girepository -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-i=
ntrospection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysro=
ot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFS=
ET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-statemen=
t -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-s=
ecurity -Wimplicit-function-declaration -Winit-self -Wjump-misses-init -Wlo=
gical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing-includ=
e-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnull-dere=
ference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -Wreturn=
-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes -Wundef=
 -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHAVE_CONF=
IG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp/poky/b=
uild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/usr/sr=
c/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/d=
ebug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobje=
ct-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-show-c=
aret -pthread -MD -MQ 'girepository/667a256@@gthash-test@exe/gthash-test.c.=
o' -MF 'girepository/667a256@@gthash-test@exe/gthash-test.c.o.d' -o 'girepo=
sitory/667a256@@gthash-test@exe/gthash-test.c.o' -c ../gobject-introspectio=
n-1.62.0/girepository/gthash-test.c
[51/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giobjectinfo.c.o' -MF=
 'girepository/667a256@@girepository-1.0@sha/giobjectinfo.c.o.d' -o 'girepo=
sitory/667a256@@girepository-1.0@sha/giobjectinfo.c.o' -c ../gobject-intros=
pection-1.62.0/girepository/giobjectinfo.c
[52/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/givfuncinfo.c.o' -MF =
'girepository/667a256@@girepository-1.0@sha/givfuncinfo.c.o.d' -o 'gireposi=
tory/667a256@@girepository-1.0@sha/givfuncinfo.c.o' -c ../gobject-introspec=
tion-1.62.0/girepository/givfuncinfo.c
[53/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Itools/=
f9d35d4@@g-ir-generate@exe -Itools -I../gobject-introspection-1.62.0/tools =
-Igirepository -I../gobject-introspection-1.62.0/girepository -I/tmp/poky/b=
uild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sy=
sroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/t=
mp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/=
recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -f=
diagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bou=
nds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wextr=
a -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-de=
claration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaration=
s -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmi=
ssing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definition=
 -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare =
-Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Ww=
rite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused=
-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/=
1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.6=
2.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot-native=3D -fno-diagnostics-show-caret -pthread -Wno-missing-fiel=
d-initializers -MD -MQ 'tools/f9d35d4@@g-ir-generate@exe/generate.c.o' -MF =
'tools/f9d35d4@@g-ir-generate@exe/generate.c.o.d' -o 'tools/f9d35d4@@g-ir-g=
enerate@exe/generate.c.o' -c ../gobject-introspection-1.62.0/tools/generate=
.c
[54/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/recipe-sysroot-native/usr/bin/bison ../gobject-introspection-1.6=
2.0/giscanner/scannerparser.y --defines=3Dgiscanner/scannerparser.h --outpu=
t=3Dgiscanner/scannerparser.c
../gobject-introspection-1.62.0/giscanner/scannerparser.y:249.1-14: warning=
: deprecated directive, use =E2=80=98%define parse.error verbose=E2=80=99 [=
-Wdeprecated]
  249 | %error-verbose
      | ^~~~~~~~~~~~~~
../gobject-introspection-1.62.0/giscanner/scannerparser.y: warning: 7 shift=
/reduce conflicts [-Wconflicts-sr]
../gobject-introspection-1.62.0/giscanner/scannerparser.y: warning: fix-its=
 can be applied.  Rerun with option '--update'. [-Wother]
[55/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Itools/=
f9d35d4@@g-ir-inspect@exe -Itools -I../gobject-introspection-1.62.0/tools -=
Igirepository -I../gobject-introspection-1.62.0/girepository -I/tmp/poky/bu=
ild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sys=
root/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/r=
ecipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -fd=
iagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-boun=
ds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wextra=
 -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-dec=
laration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations=
 -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmis=
sing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definition =
-Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -=
Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwr=
ite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-=
debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1=
.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62=
.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gob=
ject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot-native=3D -fno-diagnostics-show-caret -pthread -Wno-missing-field=
-initializers -MD -MQ 'tools/f9d35d4@@g-ir-inspect@exe/g-ir-inspect.c.o' -M=
F 'tools/f9d35d4@@g-ir-inspect@exe/g-ir-inspect.c.o.d' -o 'tools/f9d35d4@@g=
-ir-inspect@exe/g-ir-inspect.c.o' -c ../gobject-introspection-1.62.0/tools/=
g-ir-inspect.c
[56/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@gi-dump-types@exe -Igirepository -I../gobject-introspection=
-1.62.0/girepository -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/bu=
ild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sys=
root/usr/lib/glib-2.0/include -I/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/libmount -I/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/r=
ecipe-sysroot/usr/include/blkid -I/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gio-unix-2.0=
 -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-=
bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -We=
xtra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function=
-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declarat=
ions -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -=
Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definit=
ion -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compa=
re -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable =
-Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unu=
sed-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspecti=
on/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/=
1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/r=
ecipe-sysroot-native=3D -fno-diagnostics-show-caret -pthread -MD -MQ 'girep=
ository/667a256@@gi-dump-types@exe/gi-dump-types.c.o' -MF 'girepository/667=
a256@@gi-dump-types@exe/gi-dump-types.c.o.d' -o 'girepository/667a256@@gi-d=
ump-types@exe/gi-dump-types.c.o' -c ../gobject-introspection-1.62.0/girepos=
itory/gi-dump-types.c
[57/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Itools/=
f9d35d4@@g-ir-compiler@exe -Itools -I../gobject-introspection-1.62.0/tools =
-Igirepository -I../gobject-introspection-1.62.0/girepository -I/tmp/poky/b=
uild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sy=
sroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/t=
mp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/=
recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -f=
diagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bou=
nds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wextr=
a -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-de=
claration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaration=
s -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmi=
ssing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definition=
 -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare =
-Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Ww=
rite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused=
-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/=
1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.6=
2.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot-native=3D -fno-diagnostics-show-caret -pthread -Wno-missing-fiel=
d-initializers -MD -MQ 'tools/f9d35d4@@g-ir-compiler@exe/compiler.c.o' -MF =
'tools/f9d35d4@@g-ir-compiler@exe/compiler.c.o.d' -o 'tools/f9d35d4@@g-ir-c=
ompiler@exe/compiler.c.o' -c ../gobject-introspection-1.62.0/tools/compiler=
.c
[58/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/girparser.c.o=
' -MF 'girepository/667a256@@girepository-internals@sta/girparser.c.o.d' -o=
 'girepository/667a256@@girepository-internals@sta/girparser.c.o' -c ../gob=
ject-introspection-1.62.0/girepository/girparser.c
../gobject-introspection-1.62.0/girepository/girparser.c: In function 'star=
t_function':
../gobject-introspection-1.62.0/girepository/girparser.c:824:13: warning: t=
his statement may fall through [-Wimplicit-fallthrough=3D]
../gobject-introspection-1.62.0/girepository/girparser.c:826:5: note: here
[59/101] rm -f girepository/libgirepository-internals.a && x86_64-poky-linu=
x-gcc-ar csrD girepository/libgirepository-internals.a 'girepository/667a25=
6@@girepository-internals@sta/girmodule.c.o' 'girepository/667a256@@girepos=
itory-internals@sta/girnode.c.o' 'girepository/667a256@@girepository-intern=
als@sta/giroffsets.c.o' 'girepository/667a256@@girepository-internals@sta/g=
irparser.c.o' 'girepository/667a256@@girepository-internals@sta/girwriter.c=
.o'
[60/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Iexampl=
es/c590b3c@@glib-print@exe -Iexamples -I../gobject-introspection-1.62.0/exa=
mples -Igirepository -I../gobject-introspection-1.62.0/girepository -I/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/includ=
e -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62=
.0-r0/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-=
64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/bl=
kid -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warr=
ay-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches =
-Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-funct=
ion-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-decla=
rations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noretur=
n -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defi=
nition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-co=
mpare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variab=
le -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-=
unused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-p=
oky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspe=
ction/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspecti=
on/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D=
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot-native=3D -fno-diagnostics-show-caret -pthread -MD -MQ 'ex=
amples/c590b3c@@glib-print@exe/glib-print.c.o' -MF 'examples/c590b3c@@glib-=
print@exe/glib-print.c.o.d' -o 'examples/c590b3c@@glib-print@exe/glib-print=
.c.o' -c ../gobject-introspection-1.62.0/examples/glib-print.c
[61/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igiscan=
ner/fed4f5e@@giscanner@sta -Igiscanner -I../gobject-introspection-1.62.0/gi=
scanner -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inclu=
de/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -fdiagnostics-col=
or=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-alig=
n -Wdeclaration-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 =
-Wformat-nonliteral -Wformat-security -Wimplicit-function-declaration -Wini=
t-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-for=
mat-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototype=
s -Wnested-externs -Wnull-dereference -Wold-style-definition -Wpacked -Wpoi=
nter-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasi=
ng -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -f=
no-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -f=
macro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-int=
rospection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdeb=
ug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-=
prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspec=
tion/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/w=
ork/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-nati=
ve=3D -fno-diagnostics-show-caret -fPIC -pthread -Wno-missing-field-initial=
izers -Wno-unused-parameter -MD -MQ 'giscanner/fed4f5e@@giscanner@sta/sourc=
escanner.c.o' -MF 'giscanner/fed4f5e@@giscanner@sta/sourcescanner.c.o.d' -o=
 'giscanner/fed4f5e@@giscanner@sta/sourcescanner.c.o' -c ../gobject-introsp=
ection-1.62.0/giscanner/sourcescanner.c
[62/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gitypelib.c.o' -MF 'g=
irepository/667a256@@girepository-1.0@sha/gitypelib.c.o.d' -o 'girepository=
/667a256@@girepository-1.0@sha/gitypelib.c.o' -c ../gobject-introspection-1=
.62.0/girepository/gitypelib.c
[63/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igiscan=
ner/fed4f5e@@_giscanner.cpython-37m-x86_64-linux-gnu@sha -Igiscanner -I../g=
object-introspection-1.62.0/giscanner -I. -I../gobject-introspection-1.62.0=
/ -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62=
.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-=
64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2=
.0/include -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspec=
tion/1.62.0-r0/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/wo=
rk/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/i=
nclude/blkid -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introsp=
ection/1.62.0-r0/recipe-sysroot/usr/include/python3.7m -fdiagnostics-color=
=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align =
-Wdeclaration-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 -W=
format-nonliteral -Wformat-security -Wimplicit-function-declaration -Winit-=
self -Wjump-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-forma=
t-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototypes =
-Wnested-externs -Wnull-dereference -Wold-style-definition -Wpacked -Wpoint=
er-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing=
 -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -fno=
-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fma=
cro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intro=
spection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug=
-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-pr=
efix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspecti=
on/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/wor=
k/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=
=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibility=3Dhidden -Wno-m=
issing-field-initializers -Wno-unused-parameter -MD -MQ 'giscanner/fed4f5e@=
@_giscanner.cpython-37m-x86_64-linux-gnu@sha/giscannermodule.c.o' -MF 'gisc=
anner/fed4f5e@@_giscanner.cpython-37m-x86_64-linux-gnu@sha/giscannermodule.=
c.o.d' -o 'giscanner/fed4f5e@@_giscanner.cpython-37m-x86_64-linux-gnu@sha/g=
iscannermodule.c.o' -c ../gobject-introspection-1.62.0/giscanner/giscannerm=
odule.c
[64/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igiscan=
ner/fed4f5e@@giscanner@sta -Igiscanner -I../gobject-introspection-1.62.0/gi=
scanner -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inclu=
de/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -fdiagnostics-col=
or=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-alig=
n -Wdeclaration-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 =
-Wformat-nonliteral -Wformat-security -Wimplicit-function-declaration -Wini=
t-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-for=
mat-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototype=
s -Wnested-externs -Wnull-dereference -Wold-style-definition -Wpacked -Wpoi=
nter-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasi=
ng -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -f=
no-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -f=
macro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-int=
rospection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdeb=
ug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-=
prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspec=
tion/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/w=
ork/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-nati=
ve=3D -fno-diagnostics-show-caret -fPIC -pthread -Wno-missing-field-initial=
izers -Wno-unused-parameter -MD -MQ 'giscanner/fed4f5e@@giscanner@sta/meson=
-generated_.._scannerparser.c.o' -MF 'giscanner/fed4f5e@@giscanner@sta/meso=
n-generated_.._scannerparser.c.o.d' -o 'giscanner/fed4f5e@@giscanner@sta/me=
son-generated_.._scannerparser.c.o' -c giscanner/scannerparser.c
[65/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igiscan=
ner/fed4f5e@@giscanner@sta -Igiscanner -I../gobject-introspection-1.62.0/gi=
scanner -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inclu=
de/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -fdiagnostics-col=
or=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-alig=
n -Wdeclaration-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 =
-Wformat-nonliteral -Wformat-security -Wimplicit-function-declaration -Wini=
t-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-for=
mat-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototype=
s -Wnested-externs -Wnull-dereference -Wold-style-definition -Wpacked -Wpoi=
nter-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasi=
ng -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -f=
no-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -f=
macro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-int=
rospection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdeb=
ug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-=
prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspec=
tion/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/w=
ork/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-nati=
ve=3D -fno-diagnostics-show-caret -fPIC -pthread -Wno-missing-field-initial=
izers -Wno-unused-parameter -MD -MQ 'giscanner/fed4f5e@@giscanner@sta/meson=
-generated_.._scannerlexer.c.o' -MF 'giscanner/fed4f5e@@giscanner@sta/meson=
-generated_.._scannerlexer.c.o.d' -o 'giscanner/fed4f5e@@giscanner@sta/meso=
n-generated_.._scannerlexer.c.o' -c giscanner/scannerlexer.c
giscanner/scannerlexer.c: In function 'input':
giscanner/scannerlexer.c:2734:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
giscanner/scannerlexer.c:2738:5: note: here
[66/101] rm -f giscanner/libgiscanner.a && x86_64-poky-linux-gcc-ar csrD gi=
scanner/libgiscanner.a 'giscanner/fed4f5e@@giscanner@sta/meson-generated_..=
_scannerparser.c.o' 'giscanner/fed4f5e@@giscanner@sta/meson-generated_.._sc=
annerlexer.c.o' 'giscanner/fed4f5e@@giscanner@sta/sourcescanner.c.o'
[67/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot  -o gisc=
anner/_giscanner.cpython-37m-x86_64-linux-gnu.so 'giscanner/fed4f5e@@_gisca=
nner.cpython-37m-x86_64-linux-gnu@sha/giscannermodule.c.o' -Wl,--as-needed =
-Wl,--allow-shlib-undefined -shared -fPIC -Wl,--start-group -Wl,-soname,_gi=
scanner.cpython-37m-x86_64-linux-gnu.so -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,=
--as-needed -fstack-protector-strong -Wl,-z,relro,-z,now giscanner/libgisca=
nner.a /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/recipe-sysroot/usr/lib/libglib-2.0.so /tmp/poky/build/tmp/work/cor=
e2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/lib=
gobject-2.0.so /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introsp=
ection/1.62.0-r0/recipe-sysroot/usr/lib/libgio-2.0.so -Wl,--export-dynamic =
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/lib/libgmodule-2.0.so -Wl,--end-group -pthread '-Wl,-r=
path,$ORIGIN/' -Wl,-rpath-link,/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/build/giscanner
[68/101] g-ir-scanner --output=3Dgir/GLib-2.0.gir --no-libtool --quiet --re=
parse-validate --add-include-path /tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/build/gir --add-include-path /tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-=
introspection-1.62.0/gir --use-binary-wrapper=3D/tmp/poky/build/tmp/work/co=
re2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qemuwr=
apper --use-ldd-wrapper=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobj=
ect-introspection/1.62.0-r0/build/g-ir-scanner-lddwrapper --identifier-pref=
ix=3DG --symbol-prefix=3Dg --symbol-prefix=3Dglib --c-include=3Dglib.h --na=
mespace=3DGLib --nsversion=3D2.0 --library=3Dglib-2.0 --library=3Dgobject-2=
.0 --external-library --pkg=3Dglib-2.0 --cflags-begin -I/tmp/poky/build/tmp=
/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/us=
r/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-i=
ntrospection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -DGLIB_COMPI=
LATION -D__G_I18N_LIB_H__ -DGETTEXT_PACKAGE=3DDummy --cflags-end /tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0/gobject/glib-types.h /tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/g=
lib-2.0/include/glibconfig.h /tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib-uni=
x.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62=
.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/galloca.h /tmp/poky/build/tm=
p/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/u=
sr/include/glib-2.0/glib/garray.h /tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gli=
b/gasyncqueue.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gatomic.h /tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/include/glib-2.0/glib/gbacktrace.h /tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/incl=
ude/glib-2.0/glib/gbase64.h /tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gbit=
lock.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gbookmarkfile.h /tmp/poky=
/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-=
sysroot/usr/include/glib-2.0/glib/gbytes.h /tmp/poky/build/tmp/work/core2-6=
4-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gli=
b-2.0/glib/gcharset.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gchecksum.=
h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/recipe-sysroot/usr/include/glib-2.0/glib/gconvert.h /tmp/poky/build/tmp=
/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/us=
r/include/glib-2.0/glib/gdataset.h /tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gl=
ib/gdate.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspecti=
on/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gdatetime.h /tmp/poky=
/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-=
sysroot/usr/include/glib-2.0/glib/gdir.h /tmp/poky/build/tmp/work/core2-64-=
poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-=
2.0/glib/genviron.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-in=
trospection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gerror.h /tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/r=
ecipe-sysroot/usr/include/glib-2.0/glib/gfileutils.h /tmp/poky/build/tmp/wo=
rk/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/i=
nclude/glib-2.0/glib/ggettext.h /tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/=
ghash.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/=
1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/ghmac.h /tmp/poky/build/=
tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot=
/usr/include/glib-2.0/glib/ghook.h /tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gl=
ib/ghostutils.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gi18n-lib.h /tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0/glib/gi18n.h /tmp/poky/build/tmp/work/cor=
e2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include=
/glib-2.0/glib/giochannel.h /tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gkey=
file.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/glist.h /tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/glib-2.0/glib/gmacros.h /tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/g=
lib/gmain.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspect=
ion/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gmappedfile.h /tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/include/glib-2.0/glib/gmarkup.h /tmp/poky/build/tmp/work/cor=
e2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include=
/glib-2.0/glib/gmem.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gmessages.=
h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/recipe-sysroot/usr/include/glib-2.0/glib/gnode.h /tmp/poky/build/tmp/wo=
rk/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/i=
nclude/glib-2.0/glib/goption.h /tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/g=
pattern.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspectio=
n/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gpoll.h /tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysro=
ot/usr/include/glib-2.0/glib/gprimes.h /tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.=
0/glib/gprintf.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intro=
spection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gqsort.h /tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/include/glib-2.0/glib/gquark.h /tmp/poky/build/tmp/work/core=
2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/=
glib-2.0/glib/gqueue.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/grand.h /=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/glib-2.0/glib/grcbox.h /tmp/poky/build/tmp/work=
/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inc=
lude/glib-2.0/glib/grefcount.h /tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/g=
refstring.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspect=
ion/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gregex.h /tmp/poky/b=
uild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sy=
sroot/usr/include/glib-2.0/glib/gscanner.h /tmp/poky/build/tmp/work/core2-6=
4-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gli=
b-2.0/glib/gsequence.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gshell.h =
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/include/glib-2.0/glib/gslice.h /tmp/poky/build/tmp/wor=
k/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/in=
clude/glib-2.0/glib/gslist.h /tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gsp=
awn.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gstdio.h /tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/glib-2.0/glib/gstrfuncs.h /tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0=
/glib/gstring.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gstringchunk.h /=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/glib-2.0/glib/gtestutils.h /tmp/poky/build/tmp/=
work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr=
/include/glib-2.0/glib/gthread.h /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib=
/gthreadpool.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introsp=
ection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtimer.h /tmp/pok=
y/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe=
-sysroot/usr/include/glib-2.0/glib/gtimezone.h /tmp/poky/build/tmp/work/cor=
e2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include=
/glib-2.0/glib/gtrashstack.h /tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtr=
ee.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.6=
2.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtypes.h /tmp/poky/build/tm=
p/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/u=
sr/include/glib-2.0/glib/gunicode.h /tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/g=
lib/gurifuncs.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gutils.h /tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/include/glib-2.0/glib/guuid.h /tmp/poky/build/tmp/work/core2-=
64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gl=
ib-2.0/glib/gvariant.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gvariantt=
ype.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gversion.h /tmp/poky/build=
/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroo=
t/usr/include/glib-2.0/glib/gversionmacros.h /tmp/poky/build/tmp/work/core2=
-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/g=
lib-2.0/glib/gwin32.h ../gobject-introspection-1.62.0/gir/glib-2.0.c
In file included from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/bits/libc-header-start.h=
:33,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/limits.h:26,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:194,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/syslimits.h:7,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:34,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include/glibconfig.=
h:11,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtypes.h:3=
2,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/galloca.h:=
32,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib.h:30,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/glib-ty=
pes.h:24,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/build/g-ir-cpp-r7huiq75.c:4:
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/include/features.h:382:4: warning: #warning _FORTIFY_S=
OURCE requires compiling with optimization (-O) [-Wcpp]
  382 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O=
)
      |    ^~~~~~~
[69/101] g-ir-scanner --output=3Dgir/GModule-2.0.gir --no-libtool --quiet -=
-reparse-validate --add-include-path /tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0/build/gir --add-include-path /tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobje=
ct-introspection-1.62.0/gir --use-binary-wrapper=3D/tmp/poky/build/tmp/work=
/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qem=
uwrapper --use-ldd-wrapper=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/build/g-ir-scanner-lddwrapper --identifier-p=
refix=3DG --symbol-prefix=3Dg --c-include=3Dgmodule.h --namespace=3DGModule=
 --nsversion=3D2.0 --library=3Dgmodule-2.0 --external-library --pkg=3Dgmodu=
le-2.0 --include-uninstalled=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/build/gir/GLib-2.0.gir --cflags-begin -I/t=
mp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/=
recipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inc=
lude --cflags-end /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intr=
ospection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gmodule.h ../gobjec=
t-introspection-1.62.0/gir/gmodule-2.0.c
In file included from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/bits/libc-header-start.h=
:33,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/limits.h:26,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:194,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/syslimits.h:7,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:34,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include/glibconfig.=
h:11,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtypes.h:3=
2,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/galloca.h:=
32,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib.h:30,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gmodule.h:28,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/build/g-ir-cpp-ov4jypl7.c:4:
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/include/features.h:382:4: warning: #warning _FORTIFY_S=
OURCE requires compiling with optimization (-O) [-Wcpp]
  382 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O=
)
      |    ^~~~~~~
[70/101] g-ir-scanner --output=3Dgir/GObject-2.0.gir --no-libtool --quiet -=
-reparse-validate --add-include-path /tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0/build/gir --add-include-path /tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobje=
ct-introspection-1.62.0/gir --use-binary-wrapper=3D/tmp/poky/build/tmp/work=
/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qem=
uwrapper --use-ldd-wrapper=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/build/g-ir-scanner-lddwrapper --identifier-p=
refix=3DG --c-include=3Dglib-object.h --namespace=3DGObject --nsversion=3D2=
.0 --library=3Dgobject-2.0 --external-library --pkg=3Dgobject-2.0 --include=
-uninstalled=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introsp=
ection/1.62.0-r0/build/gir/GLib-2.0.gir --cflags-begin -I/tmp/poky/build/tm=
p/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/u=
sr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -DGOBJECT_C=
OMPILATION --cflags-end /tmp/poky/build/tmp/work/core2-64-poky-linux/gobjec=
t-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gbind=
ing.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gboxed.h /tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysro=
ot/usr/include/glib-2.0/gobject/gclosure.h /tmp/poky/build/tmp/work/core2-6=
4-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gli=
b-2.0/gobject/genums.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gmarsh=
al.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.6=
2.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gobject.h /tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysro=
ot/usr/include/glib-2.0/gobject/gparam.h /tmp/poky/build/tmp/work/core2-64-=
poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-=
2.0/gobject/gparamspecs.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobj=
ect-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gsi=
gnal.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gsourceclosure.h /tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot/usr/include/glib-2.0/gobject/gtype.h /tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inclu=
de/glib-2.0/gobject/gtypemodule.h /tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gob=
ject/gtypeplugin.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-int=
rospection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gvalue.h /=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/glib-2.0/gobject/gvaluearray.h /tmp/poky/build/=
tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot=
/usr/include/glib-2.0/gobject/gvaluetypes.h ../gobject-introspection-1.62.0=
/gir/gobject-2.0.c
In file included from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/bits/libc-header-start.h=
:33,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/limits.h:26,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:194,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/syslimits.h:7,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:34,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include/glibconfig.=
h:11,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtypes.h:3=
2,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/galloca.h:=
32,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib.h:30,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gbindin=
g.h:28,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/build/g-ir-cpp-ai2hfaq2.c:4:
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/include/features.h:382:4: warning: #warning _FORTIFY_S=
OURCE requires compiling with optimization (-O) [-Wcpp]
  382 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O=
)
      |    ^~~~~~~
[71/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/cairo-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work=
/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir=
 /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-=
r0/gobject-introspection-1.62.0/gir
FAILED: gir/cairo-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/cairo-1=
.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp/pok=
y/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobjec=
t-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[72/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/DBus-1.0.typelib ../gobject-introspection-1.62.0/gir/DBus-1.0.gir --inclu=
dedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/DBus-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/DBus-1.=
0.typelib ../gobject-introspection-1.62.0/gir/DBus-1.0.gir --includedir /tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/b=
uild/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[73/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/fontconfig-2.0.typelib ../gobject-introspection-1.62.0/gir/fontconfig-2.0=
.gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intr=
ospection/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-6=
4-poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/g=
ir
FAILED: gir/fontconfig-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/fontcon=
fig-2.0.typelib ../gobject-introspection-1.62.0/gir/fontconfig-2.0.gir --in=
cludedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[74/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/freetype2-2.0.typelib ../gobject-introspection-1.62.0/gir/freetype2-2.0.g=
ir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-=
poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/freetype2-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/freetyp=
e2-2.0.typelib ../gobject-introspection-1.62.0/gir/freetype2-2.0.gir --incl=
udedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[75/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/DBusGLib-1.0.typelib ../gobject-introspection-1.62.0/gir/DBusGLib-1.0.gir=
 --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/DBusGLib-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/DBusGLi=
b-1.0.typelib ../gobject-introspection-1.62.0/gir/DBusGLib-1.0.gir --includ=
edir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.6=
2.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[76/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/GObject-2.0.typelib gir/GObject-2.0.gir --includedir /tmp/poky/build/tmp/=
work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includ=
edir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.6=
2.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/GObject-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/GObject=
-2.0.typelib gir/GObject-2.0.gir --includedir /tmp/poky/build/tmp/work/core=
2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/go=
bject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[77/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/GLib-2.0.typelib gir/GLib-2.0.gir --includedir /tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/gobject-introspection-1.62.0/gir
FAILED: gir/GLib-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/GLib-2.=
0.typelib gir/GLib-2.0.gir --includedir /tmp/poky/build/tmp/work/core2-64-p=
oky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-=
introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[78/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/libxml2-2.0.typelib ../gobject-introspection-1.62.0/gir/libxml2-2.0.gir -=
-includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspect=
ion/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/libxml2-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/libxml2=
-2.0.typelib ../gobject-introspection-1.62.0/gir/libxml2-2.0.gir --included=
ir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.=
0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[79/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/Vulkan-1.0.typelib ../gobject-introspection-1.62.0/gir/Vulkan-1.0.gir --i=
ncludedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspectio=
n/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/Vulkan-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/Vulkan-=
1.0.typelib ../gobject-introspection-1.62.0/gir/Vulkan-1.0.gir --includedir=
 /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-=
r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobj=
ect-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[80/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/GL-1.0.typelib ../gobject-introspection-1.62.0/gir/GL-1.0.gir --includedi=
r /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gob=
ject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/GL-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/GL-1.0.=
typelib ../gobject-introspection-1.62.0/gir/GL-1.0.gir --includedir /tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build=
/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intr=
ospection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[81/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/xft-2.0.typelib ../gobject-introspection-1.62.0/gir/xft-2.0.gir --include=
dir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62=
.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/xft-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/xft-2.0=
.typelib ../gobject-introspection-1.62.0/gir/xft-2.0.gir --includedir /tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/bui=
ld/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-in=
trospection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[82/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/chm.c.o' -MF 'gireposit=
ory/cmph/6cca4a0@@cmph@sta/chm.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@s=
ta/chm.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/chm.c
ninja: build stopped: subcommand failed.
WARNING: exit code 1 from a shell command.
ERROR: Execution of '/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-i=
ntrospection/1.62.0-r0/temp/run.do_compile.2838' failed with exit code 1:
[1/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/buffer_entry.c.o' -MF 'gir=
epository/cmph/6cca4a0@@cmph@sta/buffer_entry.c.o.d' -o 'girepository/cmph/=
6cca4a0@@cmph@sta/buffer_entry.c.o' -c ../gobject-introspection-1.62.0/gire=
pository/cmph/buffer_entry.c
[2/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/buffer_manager.c.o' -MF 'g=
irepository/cmph/6cca4a0@@cmph@sta/buffer_manager.c.o.d' -o 'girepository/c=
mph/6cca4a0@@cmph@sta/buffer_manager.c.o' -c ../gobject-introspection-1.62.=
0/girepository/cmph/buffer_manager.c
[3/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/compressed_rank.c.o' -MF '=
girepository/cmph/6cca4a0@@cmph@sta/compressed_rank.c.o.d' -o 'girepository=
/cmph/6cca4a0@@cmph@sta/compressed_rank.c.o' -c ../gobject-introspection-1.=
62.0/girepository/cmph/compressed_rank.c
[4/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/chd.c.o' -MF 'girepository=
/cmph/6cca4a0@@cmph@sta/chd.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@sta/=
chd.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/chd.c
[5/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/cmph.c.o' -MF 'girepositor=
y/cmph/6cca4a0@@cmph@sta/cmph.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@st=
a/cmph.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/cmph.c
../gobject-introspection-1.62.0/girepository/cmph/cmph.c: In function 'coun=
t_nlfile_keys':
../gobject-introspection-1.62.0/girepository/cmph/cmph.c:158:3: warning: ig=
noring return value of 'fgets', declared with attribute warn_unused_result =
[-Wunused-result]
[6/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/cmph_structs.c.o' -MF 'gir=
epository/cmph/6cca4a0@@cmph@sta/cmph_structs.c.o.d' -o 'girepository/cmph/=
6cca4a0@@cmph@sta/cmph_structs.c.o' -c ../gobject-introspection-1.62.0/gire=
pository/cmph/cmph_structs.c
[7/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/fch_buckets.c.o' -MF 'gire=
pository/cmph/6cca4a0@@cmph@sta/fch_buckets.c.o.d' -o 'girepository/cmph/6c=
ca4a0@@cmph@sta/fch_buckets.c.o' -c ../gobject-introspection-1.62.0/girepos=
itory/cmph/fch_buckets.c
[8/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/bmz.c.o' -MF 'girepository=
/cmph/6cca4a0@@cmph@sta/bmz.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@sta/=
bmz.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/bmz.c
[9/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mf=
pmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wforma=
t-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepos=
itory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspection=
-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FI=
LE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-s=
tatement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wf=
ormat-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-in=
it -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing=
-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnu=
ll-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -=
Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes =
-Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHA=
VE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/us=
r/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-=
show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-old-s=
tyle-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-und=
ef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-return-t=
ype -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/bdz.c.o' -MF 'girepository=
/cmph/6cca4a0@@cmph@sta/bdz.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@sta/=
bdz.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/bdz.c
[10/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/jenkins_hash.c.o' -MF '=
girepository/cmph/6cca4a0@@cmph@sta/jenkins_hash.c.o.d' -o 'girepository/cm=
ph/6cca4a0@@cmph@sta/jenkins_hash.c.o' -c ../gobject-introspection-1.62.0/g=
irepository/cmph/jenkins_hash.c
[11/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/brz.c.o' -MF 'gireposit=
ory/cmph/6cca4a0@@cmph@sta/brz.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@s=
ta/brz.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/brz.c
[12/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/bdz_ph.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/bdz_ph.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/bdz_ph.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/b=
dz_ph.c
[13/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/graph.c.o' -MF 'girepos=
itory/cmph/6cca4a0@@cmph@sta/graph.c.o.d' -o 'girepository/cmph/6cca4a0@@cm=
ph@sta/graph.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/grap=
h.c
[14/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/bmz8.c.o' -MF 'gireposi=
tory/cmph/6cca4a0@@cmph@sta/bmz8.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph=
@sta/bmz8.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/bmz8.c
[15/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/chd_ph.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/chd_ph.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/chd_ph.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/c=
hd_ph.c
[16/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/vqueue.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/vqueue.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/vqueue.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/v=
queue.c
[17/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/hash.c.o' -MF 'gireposi=
tory/cmph/6cca4a0@@cmph@sta/hash.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph=
@sta/hash.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/hash.c
[18/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/vstack.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/vstack.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/vstack.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/v=
stack.c
[19/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/compressed_seq.c.o' -MF=
 'girepository/cmph/6cca4a0@@cmph@sta/compressed_seq.c.o.d' -o 'girepositor=
y/cmph/6cca4a0@@cmph@sta/compressed_seq.c.o' -c ../gobject-introspection-1.=
62.0/girepository/cmph/compressed_seq.c
[20/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/miller_rabin.c.o' -MF '=
girepository/cmph/6cca4a0@@cmph@sta/miller_rabin.c.o.d' -o 'girepository/cm=
ph/6cca4a0@@cmph@sta/miller_rabin.c.o' -c ../gobject-introspection-1.62.0/g=
irepository/cmph/miller_rabin.c
[21/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/select.c.o' -MF 'girepo=
sitory/cmph/6cca4a0@@cmph@sta/select.c.o.d' -o 'girepository/cmph/6cca4a0@@=
cmph@sta/select.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/s=
elect.c
[22/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph-bdz-test@exe -Igirepository/cmph -I../gobject-int=
rospection-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0=
 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.=
0-r0/recipe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -=
pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclarati=
on-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonl=
iteral -Wformat-security -Wimplicit-function-declaration -Winit-self -Wjump=
-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute=
 -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-ex=
terns -Wnull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -W=
restrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-p=
rototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-ali=
asing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-=
map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=
=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.=
0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D=
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-=
poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-di=
agnostics-show-caret -Wno-old-style-definition -Wno-type-limits -MD -MQ 'gi=
repository/cmph/6cca4a0@@cmph-bdz-test@exe/.._cmph-bdz-test.c.o' -MF 'girep=
ository/cmph/6cca4a0@@cmph-bdz-test@exe/.._cmph-bdz-test.c.o.d' -o 'girepos=
itory/cmph/6cca4a0@@cmph-bdz-test@exe/.._cmph-bdz-test.c.o' -c ../gobject-i=
ntrospection-1.62.0/girepository/cmph-bdz-test.c
[23/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-gthash@sta -Igirepository -I../gobject-introsp=
ection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -Igirepos=
itory/cmph -I../gobject-introspection-1.62.0/girepository/cmph -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -fd=
iagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-boun=
ds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wextra=
 -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-dec=
laration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations=
 -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmis=
sing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definition =
-Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -=
Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwr=
ite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-=
debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1=
.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62=
.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gob=
ject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibility=
=3Dhidden -Wno-old-style-definition -Wno-cast-align -MD -MQ 'girepository/6=
67a256@@girepository-gthash@sta/gthash.c.o' -MF 'girepository/667a256@@gire=
pository-gthash@sta/gthash.c.o.d' -o 'girepository/667a256@@girepository-gt=
hash@sta/gthash.c.o' -c ../gobject-introspection-1.62.0/girepository/gthash=
.c
[24/101] rm -f girepository/libgirepository-gthash.a && x86_64-poky-linux-g=
cc-ar csrD girepository/libgirepository-gthash.a 'girepository/667a256@@gir=
epository-gthash@sta/gthash.c.o'
[25/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/giroffsets.c.=
o' -MF 'girepository/667a256@@girepository-internals@sta/giroffsets.c.o.d' =
-o 'girepository/667a256@@girepository-internals@sta/giroffsets.c.o' -c ../=
gobject-introspection-1.62.0/girepository/giroffsets.c
[26/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/girmodule.c.o=
' -MF 'girepository/667a256@@girepository-internals@sta/girmodule.c.o.d' -o=
 'girepository/667a256@@girepository-internals@sta/girmodule.c.o' -c ../gob=
ject-introspection-1.62.0/girepository/girmodule.c
[27/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/fch.c.o' -MF 'gireposit=
ory/cmph/6cca4a0@@cmph@sta/fch.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@s=
ta/fch.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/fch.c
[28/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giconstantinfo.c.o' -=
MF 'girepository/667a256@@girepository-1.0@sha/giconstantinfo.c.o.d' -o 'gi=
repository/667a256@@girepository-1.0@sha/giconstantinfo.c.o' -c ../gobject-=
introspection-1.62.0/girepository/giconstantinfo.c
[29/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gienuminfo.c.o' -MF '=
girepository/667a256@@girepository-1.0@sha/gienuminfo.c.o.d' -o 'gireposito=
ry/667a256@@girepository-1.0@sha/gienuminfo.c.o' -c ../gobject-introspectio=
n-1.62.0/girepository/gienuminfo.c
[30/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giarginfo.c.o' -MF 'g=
irepository/667a256@@girepository-1.0@sha/giarginfo.c.o.d' -o 'girepository=
/667a256@@girepository-1.0@sha/giarginfo.c.o' -c ../gobject-introspection-1=
.62.0/girepository/giarginfo.c
[31/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gibaseinfo.c.o' -MF '=
girepository/667a256@@girepository-1.0@sha/gibaseinfo.c.o.d' -o 'gireposito=
ry/667a256@@girepository-1.0@sha/gibaseinfo.c.o' -c ../gobject-introspectio=
n-1.62.0/girepository/gibaseinfo.c
[32/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gicallableinfo.c.o' -=
MF 'girepository/667a256@@girepository-1.0@sha/gicallableinfo.c.o.d' -o 'gi=
repository/667a256@@girepository-1.0@sha/gicallableinfo.c.o' -c ../gobject-=
introspection-1.62.0/girepository/gicallableinfo.c
[33/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gdump.c.o' -MF 'girep=
ository/667a256@@girepository-1.0@sha/gdump.c.o.d' -o 'girepository/667a256=
@@girepository-1.0@sha/gdump.c.o' -c ../gobject-introspection-1.62.0/girepo=
sitory/gdump.c
[34/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/girffi.c.o' -MF 'gire=
pository/667a256@@girepository-1.0@sha/girffi.c.o.d' -o 'girepository/667a2=
56@@girepository-1.0@sha/girffi.c.o' -c ../gobject-introspection-1.62.0/gir=
epository/girffi.c
[35/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gifieldinfo.c.o' -MF =
'girepository/667a256@@girepository-1.0@sha/gifieldinfo.c.o.d' -o 'gireposi=
tory/667a256@@girepository-1.0@sha/gifieldinfo.c.o' -c ../gobject-introspec=
tion-1.62.0/girepository/gifieldinfo.c
[36/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gifunctioninfo.c.o' -=
MF 'girepository/667a256@@girepository-1.0@sha/gifunctioninfo.c.o.d' -o 'gi=
repository/667a256@@girepository-1.0@sha/gifunctioninfo.c.o' -c ../gobject-=
introspection-1.62.0/girepository/gifunctioninfo.c
[37/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giinterfaceinfo.c.o' =
-MF 'girepository/667a256@@girepository-1.0@sha/giinterfaceinfo.c.o.d' -o '=
girepository/667a256@@girepository-1.0@sha/giinterfaceinfo.c.o' -c ../gobje=
ct-introspection-1.62.0/girepository/giinterfaceinfo.c
[38/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/ginvoke.c.o' -MF 'gir=
epository/667a256@@girepository-1.0@sha/ginvoke.c.o.d' -o 'girepository/667=
a256@@girepository-1.0@sha/ginvoke.c.o' -c ../gobject-introspection-1.62.0/=
girepository/ginvoke.c
[39/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/girwriter.c.o=
' -MF 'girepository/667a256@@girepository-internals@sta/girwriter.c.o.d' -o=
 'girepository/667a256@@girepository-internals@sta/girwriter.c.o' -c ../gob=
ject-introspection-1.62.0/girepository/girwriter.c
[40/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gipropertyinfo.c.o' -=
MF 'girepository/667a256@@girepository-1.0@sha/gipropertyinfo.c.o.d' -o 'gi=
repository/667a256@@girepository-1.0@sha/gipropertyinfo.c.o' -c ../gobject-=
introspection-1.62.0/girepository/gipropertyinfo.c
[41/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giregisteredtypeinfo.=
c.o' -MF 'girepository/667a256@@girepository-1.0@sha/giregisteredtypeinfo.c=
.o.d' -o 'girepository/667a256@@girepository-1.0@sha/giregisteredtypeinfo.c=
.o' -c ../gobject-introspection-1.62.0/girepository/giregisteredtypeinfo.c
[42/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gisignalinfo.c.o' -MF=
 'girepository/667a256@@girepository-1.0@sha/gisignalinfo.c.o.d' -o 'girepo=
sitory/667a256@@girepository-1.0@sha/gisignalinfo.c.o' -c ../gobject-intros=
pection-1.62.0/girepository/gisignalinfo.c
[43/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/girepository.c.o' -MF=
 'girepository/667a256@@girepository-1.0@sha/girepository.c.o.d' -o 'girepo=
sitory/667a256@@girepository-1.0@sha/girepository.c.o' -c ../gobject-intros=
pection-1.62.0/girepository/girepository.c
[44/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giversion.c.o' -MF 'g=
irepository/667a256@@girepository-1.0@sha/giversion.c.o.d' -o 'girepository=
/667a256@@girepository-1.0@sha/giversion.c.o' -c ../gobject-introspection-1=
.62.0/girepository/giversion.c
[45/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/girnode.c.o' =
-MF 'girepository/667a256@@girepository-internals@sta/girnode.c.o.d' -o 'gi=
repository/667a256@@girepository-internals@sta/girnode.c.o' -c ../gobject-i=
ntrospection-1.62.0/girepository/girnode.c
[46/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gistructinfo.c.o' -MF=
 'girepository/667a256@@girepository-1.0@sha/gistructinfo.c.o.d' -o 'girepo=
sitory/667a256@@girepository-1.0@sha/gistructinfo.c.o' -c ../gobject-intros=
pection-1.62.0/girepository/gistructinfo.c
[47/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gitypeinfo.c.o' -MF '=
girepository/667a256@@girepository-1.0@sha/gitypeinfo.c.o.d' -o 'gireposito=
ry/667a256@@girepository-1.0@sha/gitypeinfo.c.o' -c ../gobject-introspectio=
n-1.62.0/girepository/gitypeinfo.c
[48/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giunioninfo.c.o' -MF =
'girepository/667a256@@girepository-1.0@sha/giunioninfo.c.o.d' -o 'gireposi=
tory/667a256@@girepository-1.0@sha/giunioninfo.c.o' -c ../gobject-introspec=
tion-1.62.0/girepository/giunioninfo.c
[49/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/recipe-sysroot-native/usr/bin/flex -o giscanner/scannerlexer.c .=
./gobject-introspection-1.62.0/giscanner/scannerlexer.l
[50/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@gthash-test@exe -Igirepository -I../gobject-introspection-1=
.62.0/girepository -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-i=
ntrospection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysro=
ot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFS=
ET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-statemen=
t -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-s=
ecurity -Wimplicit-function-declaration -Winit-self -Wjump-misses-init -Wlo=
gical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissing-includ=
e-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wnull-dere=
ference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict -Wreturn=
-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes -Wundef=
 -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DHAVE_CONF=
IG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tmp/poky/b=
uild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/usr/sr=
c/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/d=
ebug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobje=
ct-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnostics-show-c=
aret -pthread -MD -MQ 'girepository/667a256@@gthash-test@exe/gthash-test.c.=
o' -MF 'girepository/667a256@@gthash-test@exe/gthash-test.c.o.d' -o 'girepo=
sitory/667a256@@gthash-test@exe/gthash-test.c.o' -c ../gobject-introspectio=
n-1.62.0/girepository/gthash-test.c
[51/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/giobjectinfo.c.o' -MF=
 'girepository/667a256@@girepository-1.0@sha/giobjectinfo.c.o.d' -o 'girepo=
sitory/667a256@@girepository-1.0@sha/giobjectinfo.c.o' -c ../gobject-intros=
pection-1.62.0/girepository/giobjectinfo.c
[52/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/givfuncinfo.c.o' -MF =
'girepository/667a256@@girepository-1.0@sha/givfuncinfo.c.o.d' -o 'gireposi=
tory/667a256@@girepository-1.0@sha/givfuncinfo.c.o' -c ../gobject-introspec=
tion-1.62.0/girepository/givfuncinfo.c
[53/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Itools/=
f9d35d4@@g-ir-generate@exe -Itools -I../gobject-introspection-1.62.0/tools =
-Igirepository -I../gobject-introspection-1.62.0/girepository -I/tmp/poky/b=
uild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sy=
sroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/t=
mp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/=
recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -f=
diagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bou=
nds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wextr=
a -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-de=
claration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaration=
s -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmi=
ssing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definition=
 -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare =
-Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Ww=
rite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused=
-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/=
1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.6=
2.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot-native=3D -fno-diagnostics-show-caret -pthread -Wno-missing-fiel=
d-initializers -MD -MQ 'tools/f9d35d4@@g-ir-generate@exe/generate.c.o' -MF =
'tools/f9d35d4@@g-ir-generate@exe/generate.c.o.d' -o 'tools/f9d35d4@@g-ir-g=
enerate@exe/generate.c.o' -c ../gobject-introspection-1.62.0/tools/generate=
.c
[54/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/recipe-sysroot-native/usr/bin/bison ../gobject-introspection-1.6=
2.0/giscanner/scannerparser.y --defines=3Dgiscanner/scannerparser.h --outpu=
t=3Dgiscanner/scannerparser.c
../gobject-introspection-1.62.0/giscanner/scannerparser.y:249.1-14: warning=
: deprecated directive, use =E2=80=98%define parse.error verbose=E2=80=99 [=
-Wdeprecated]
  249 | %error-verbose
      | ^~~~~~~~~~~~~~
../gobject-introspection-1.62.0/giscanner/scannerparser.y: warning: 7 shift=
/reduce conflicts [-Wconflicts-sr]
../gobject-introspection-1.62.0/giscanner/scannerparser.y: warning: fix-its=
 can be applied.  Rerun with option '--update'. [-Wother]
[55/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Itools/=
f9d35d4@@g-ir-inspect@exe -Itools -I../gobject-introspection-1.62.0/tools -=
Igirepository -I../gobject-introspection-1.62.0/girepository -I/tmp/poky/bu=
ild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sys=
root/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/r=
ecipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -fd=
iagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-boun=
ds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wextra=
 -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-dec=
laration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations=
 -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmis=
sing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definition =
-Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -=
Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwr=
ite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-=
debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1=
.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62=
.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gob=
ject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot-native=3D -fno-diagnostics-show-caret -pthread -Wno-missing-field=
-initializers -MD -MQ 'tools/f9d35d4@@g-ir-inspect@exe/g-ir-inspect.c.o' -M=
F 'tools/f9d35d4@@g-ir-inspect@exe/g-ir-inspect.c.o.d' -o 'tools/f9d35d4@@g=
-ir-inspect@exe/g-ir-inspect.c.o' -c ../gobject-introspection-1.62.0/tools/=
g-ir-inspect.c
[56/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@gi-dump-types@exe -Igirepository -I../gobject-introspection=
-1.62.0/girepository -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/bu=
ild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sys=
root/usr/lib/glib-2.0/include -I/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/libmount -I/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/r=
ecipe-sysroot/usr/include/blkid -I/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gio-unix-2.0=
 -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-=
bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -We=
xtra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function=
-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declarat=
ions -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -=
Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definit=
ion -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compa=
re -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable =
-Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unu=
sed-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspecti=
on/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/=
1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/r=
ecipe-sysroot-native=3D -fno-diagnostics-show-caret -pthread -MD -MQ 'girep=
ository/667a256@@gi-dump-types@exe/gi-dump-types.c.o' -MF 'girepository/667=
a256@@gi-dump-types@exe/gi-dump-types.c.o.d' -o 'girepository/667a256@@gi-d=
ump-types@exe/gi-dump-types.c.o' -c ../gobject-introspection-1.62.0/girepos=
itory/gi-dump-types.c
[57/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Itools/=
f9d35d4@@g-ir-compiler@exe -Itools -I../gobject-introspection-1.62.0/tools =
-Igirepository -I../gobject-introspection-1.62.0/girepository -I/tmp/poky/b=
uild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sy=
sroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/t=
mp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/=
recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -f=
diagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bou=
nds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wextr=
a -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-de=
claration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaration=
s -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmi=
ssing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definition=
 -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare =
-Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Ww=
rite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused=
-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/=
1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.6=
2.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot-native=3D -fno-diagnostics-show-caret -pthread -Wno-missing-fiel=
d-initializers -MD -MQ 'tools/f9d35d4@@g-ir-compiler@exe/compiler.c.o' -MF =
'tools/f9d35d4@@g-ir-compiler@exe/compiler.c.o.d' -o 'tools/f9d35d4@@g-ir-c=
ompiler@exe/compiler.c.o' -c ../gobject-introspection-1.62.0/tools/compiler=
.c
[58/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-internals@sta -Igirepository -I../gobject-intr=
ospection-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inclu=
de -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warra=
y-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -=
Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-functi=
on-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declar=
ations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn=
 -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defin=
ition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-com=
pare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variabl=
e -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-u=
nused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspec=
tion/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspectio=
n/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisi=
bility=3Dhidden -Wno-unused-parameter -Wno-duplicated-branches -Wno-cast-al=
ign -MD -MQ 'girepository/667a256@@girepository-internals@sta/girparser.c.o=
' -MF 'girepository/667a256@@girepository-internals@sta/girparser.c.o.d' -o=
 'girepository/667a256@@girepository-internals@sta/girparser.c.o' -c ../gob=
ject-introspection-1.62.0/girepository/girparser.c
../gobject-introspection-1.62.0/girepository/girparser.c: In function 'star=
t_function':
../gobject-introspection-1.62.0/girepository/girparser.c:824:13: warning: t=
his statement may fall through [-Wimplicit-fallthrough=3D]
../gobject-introspection-1.62.0/girepository/girparser.c:826:5: note: here
[59/101] rm -f girepository/libgirepository-internals.a && x86_64-poky-linu=
x-gcc-ar csrD girepository/libgirepository-internals.a 'girepository/667a25=
6@@girepository-internals@sta/girmodule.c.o' 'girepository/667a256@@girepos=
itory-internals@sta/girnode.c.o' 'girepository/667a256@@girepository-intern=
als@sta/giroffsets.c.o' 'girepository/667a256@@girepository-internals@sta/g=
irparser.c.o' 'girepository/667a256@@girepository-internals@sta/girwriter.c=
.o'
[60/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Iexampl=
es/c590b3c@@glib-print@exe -Iexamples -I../gobject-introspection-1.62.0/exa=
mples -Igirepository -I../gobject-introspection-1.62.0/girepository -I/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/includ=
e -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62=
.0-r0/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-=
64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/bl=
kid -fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warr=
ay-bounds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches =
-Wextra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-funct=
ion-declaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-decla=
rations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noretur=
n -Wmissing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-defi=
nition -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-co=
mpare -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variab=
le -Wwrite-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-=
unused-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-p=
oky-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspe=
ction/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspecti=
on/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D=
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot-native=3D -fno-diagnostics-show-caret -pthread -MD -MQ 'ex=
amples/c590b3c@@glib-print@exe/glib-print.c.o' -MF 'examples/c590b3c@@glib-=
print@exe/glib-print.c.o.d' -o 'examples/c590b3c@@glib-print@exe/glib-print=
.c.o' -c ../gobject-introspection-1.62.0/examples/glib-print.c
[61/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igiscan=
ner/fed4f5e@@giscanner@sta -Igiscanner -I../gobject-introspection-1.62.0/gi=
scanner -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inclu=
de/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -fdiagnostics-col=
or=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-alig=
n -Wdeclaration-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 =
-Wformat-nonliteral -Wformat-security -Wimplicit-function-declaration -Wini=
t-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-for=
mat-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototype=
s -Wnested-externs -Wnull-dereference -Wold-style-definition -Wpacked -Wpoi=
nter-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasi=
ng -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -f=
no-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -f=
macro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-int=
rospection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdeb=
ug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-=
prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspec=
tion/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/w=
ork/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-nati=
ve=3D -fno-diagnostics-show-caret -fPIC -pthread -Wno-missing-field-initial=
izers -Wno-unused-parameter -MD -MQ 'giscanner/fed4f5e@@giscanner@sta/sourc=
escanner.c.o' -MF 'giscanner/fed4f5e@@giscanner@sta/sourcescanner.c.o.d' -o=
 'giscanner/fed4f5e@@giscanner@sta/sourcescanner.c.o' -c ../gobject-introsp=
ection-1.62.0/giscanner/sourcescanner.c
[62/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/667a256@@girepository-1.0@sha -Igirepository -I../gobject-introspect=
ion-1.62.0/girepository -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -=
fdiagnostics-color=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bo=
unds -Wcast-align -Wdeclaration-after-statement -Wduplicated-branches -Wext=
ra -Wformat=3D2 -Wformat-nonliteral -Wformat-security -Wimplicit-function-d=
eclaration -Winit-self -Wjump-misses-init -Wlogical-op -Wmissing-declaratio=
ns -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wm=
issing-prototypes -Wnested-externs -Wnull-dereference -Wold-style-definitio=
n -Wpacked -Wpointer-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare=
 -Wstrict-aliasing -Wstrict-prototypes -Wundef -Wunused-but-set-variable -W=
write-strings -fno-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection=
/1.62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.=
62.0-r0 -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot-native=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibili=
ty=3Dhidden -DG_IREPOSITORY_COMPILATION -Wno-unused-parameter -Wno-duplicat=
ed-branches -Wno-type-limits -Wno-cast-align -Wno-missing-field-initializer=
s -MD -MQ 'girepository/667a256@@girepository-1.0@sha/gitypelib.c.o' -MF 'g=
irepository/667a256@@girepository-1.0@sha/gitypelib.c.o.d' -o 'girepository=
/667a256@@girepository-1.0@sha/gitypelib.c.o' -c ../gobject-introspection-1=
.62.0/girepository/gitypelib.c
[63/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igiscan=
ner/fed4f5e@@_giscanner.cpython-37m-x86_64-linux-gnu@sha -Igiscanner -I../g=
object-introspection-1.62.0/giscanner -I. -I../gobject-introspection-1.62.0=
/ -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62=
.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-=
64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2=
.0/include -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspec=
tion/1.62.0-r0/recipe-sysroot/usr/include/libmount -I/tmp/poky/build/tmp/wo=
rk/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/i=
nclude/blkid -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introsp=
ection/1.62.0-r0/recipe-sysroot/usr/include/python3.7m -fdiagnostics-color=
=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align =
-Wdeclaration-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 -W=
format-nonliteral -Wformat-security -Wimplicit-function-declaration -Winit-=
self -Wjump-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-forma=
t-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototypes =
-Wnested-externs -Wnull-dereference -Wold-style-definition -Wpacked -Wpoint=
er-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing=
 -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -fno=
-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fma=
cro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intro=
spection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug=
-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-pr=
efix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspecti=
on/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/wor=
k/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=
=3D -fno-diagnostics-show-caret -fPIC -pthread -fvisibility=3Dhidden -Wno-m=
issing-field-initializers -Wno-unused-parameter -MD -MQ 'giscanner/fed4f5e@=
@_giscanner.cpython-37m-x86_64-linux-gnu@sha/giscannermodule.c.o' -MF 'gisc=
anner/fed4f5e@@_giscanner.cpython-37m-x86_64-linux-gnu@sha/giscannermodule.=
c.o.d' -o 'giscanner/fed4f5e@@_giscanner.cpython-37m-x86_64-linux-gnu@sha/g=
iscannermodule.c.o' -c ../gobject-introspection-1.62.0/giscanner/giscannerm=
odule.c
[64/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igiscan=
ner/fed4f5e@@giscanner@sta -Igiscanner -I../gobject-introspection-1.62.0/gi=
scanner -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inclu=
de/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -fdiagnostics-col=
or=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-alig=
n -Wdeclaration-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 =
-Wformat-nonliteral -Wformat-security -Wimplicit-function-declaration -Wini=
t-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-for=
mat-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototype=
s -Wnested-externs -Wnull-dereference -Wold-style-definition -Wpacked -Wpoi=
nter-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasi=
ng -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -f=
no-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -f=
macro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-int=
rospection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdeb=
ug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-=
prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspec=
tion/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/w=
ork/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-nati=
ve=3D -fno-diagnostics-show-caret -fPIC -pthread -Wno-missing-field-initial=
izers -Wno-unused-parameter -MD -MQ 'giscanner/fed4f5e@@giscanner@sta/meson=
-generated_.._scannerparser.c.o' -MF 'giscanner/fed4f5e@@giscanner@sta/meso=
n-generated_.._scannerparser.c.o.d' -o 'giscanner/fed4f5e@@giscanner@sta/me=
son-generated_.._scannerparser.c.o' -c giscanner/scannerparser.c
[65/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igiscan=
ner/fed4f5e@@giscanner@sta -Igiscanner -I../gobject-introspection-1.62.0/gi=
scanner -I. -I../gobject-introspection-1.62.0/ -I/tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inclu=
de/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -I/tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/libmount -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/blkid -fdiagnostics-col=
or=3Dalways -pipe -D_FILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-alig=
n -Wdeclaration-after-statement -Wduplicated-branches -Wextra -Wformat=3D2 =
-Wformat-nonliteral -Wformat-security -Wimplicit-function-declaration -Wini=
t-self -Wjump-misses-init -Wlogical-op -Wmissing-declarations -Wmissing-for=
mat-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototype=
s -Wnested-externs -Wnull-dereference -Wold-style-definition -Wpacked -Wpoi=
nter-arith -Wrestrict -Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasi=
ng -Wstrict-prototypes -Wundef -Wunused-but-set-variable -Wwrite-strings -f=
no-strict-aliasing -DHAVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -f=
macro-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-int=
rospection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdeb=
ug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-=
prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspec=
tion/1.62.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/w=
ork/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot-nati=
ve=3D -fno-diagnostics-show-caret -fPIC -pthread -Wno-missing-field-initial=
izers -Wno-unused-parameter -MD -MQ 'giscanner/fed4f5e@@giscanner@sta/meson=
-generated_.._scannerlexer.c.o' -MF 'giscanner/fed4f5e@@giscanner@sta/meson=
-generated_.._scannerlexer.c.o.d' -o 'giscanner/fed4f5e@@giscanner@sta/meso=
n-generated_.._scannerlexer.c.o' -c giscanner/scannerlexer.c
giscanner/scannerlexer.c: In function 'input':
giscanner/scannerlexer.c:2734:6: warning: this statement may fall through [=
-Wimplicit-fallthrough=3D]
giscanner/scannerlexer.c:2738:5: note: here
[66/101] rm -f giscanner/libgiscanner.a && x86_64-poky-linux-gcc-ar csrD gi=
scanner/libgiscanner.a 'giscanner/fed4f5e@@giscanner@sta/meson-generated_..=
_scannerparser.c.o' 'giscanner/fed4f5e@@giscanner@sta/meson-generated_.._sc=
annerlexer.c.o' 'giscanner/fed4f5e@@giscanner@sta/sourcescanner.c.o'
[67/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot  -o gisc=
anner/_giscanner.cpython-37m-x86_64-linux-gnu.so 'giscanner/fed4f5e@@_gisca=
nner.cpython-37m-x86_64-linux-gnu@sha/giscannermodule.c.o' -Wl,--as-needed =
-Wl,--allow-shlib-undefined -shared -fPIC -Wl,--start-group -Wl,-soname,_gi=
scanner.cpython-37m-x86_64-linux-gnu.so -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,=
--as-needed -fstack-protector-strong -Wl,-z,relro,-z,now giscanner/libgisca=
nner.a /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/recipe-sysroot/usr/lib/libglib-2.0.so /tmp/poky/build/tmp/work/cor=
e2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/lib=
gobject-2.0.so /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introsp=
ection/1.62.0-r0/recipe-sysroot/usr/lib/libgio-2.0.so -Wl,--export-dynamic =
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/lib/libgmodule-2.0.so -Wl,--end-group -pthread '-Wl,-r=
path,$ORIGIN/' -Wl,-rpath-link,/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/build/giscanner
[68/101] g-ir-scanner --output=3Dgir/GLib-2.0.gir --no-libtool --quiet --re=
parse-validate --add-include-path /tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/build/gir --add-include-path /tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-=
introspection-1.62.0/gir --use-binary-wrapper=3D/tmp/poky/build/tmp/work/co=
re2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qemuwr=
apper --use-ldd-wrapper=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobj=
ect-introspection/1.62.0-r0/build/g-ir-scanner-lddwrapper --identifier-pref=
ix=3DG --symbol-prefix=3Dg --symbol-prefix=3Dglib --c-include=3Dglib.h --na=
mespace=3DGLib --nsversion=3D2.0 --library=3Dglib-2.0 --library=3Dgobject-2=
.0 --external-library --pkg=3Dglib-2.0 --cflags-begin -I/tmp/poky/build/tmp=
/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/us=
r/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-i=
ntrospection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -DGLIB_COMPI=
LATION -D__G_I18N_LIB_H__ -DGETTEXT_PACKAGE=3DDummy --cflags-end /tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-s=
ysroot/usr/include/glib-2.0/gobject/glib-types.h /tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/g=
lib-2.0/include/glibconfig.h /tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib-uni=
x.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62=
.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/galloca.h /tmp/poky/build/tm=
p/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/u=
sr/include/glib-2.0/glib/garray.h /tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gli=
b/gasyncqueue.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gatomic.h /tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/include/glib-2.0/glib/gbacktrace.h /tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/incl=
ude/glib-2.0/glib/gbase64.h /tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gbit=
lock.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gbookmarkfile.h /tmp/poky=
/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-=
sysroot/usr/include/glib-2.0/glib/gbytes.h /tmp/poky/build/tmp/work/core2-6=
4-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gli=
b-2.0/glib/gcharset.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gchecksum.=
h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/recipe-sysroot/usr/include/glib-2.0/glib/gconvert.h /tmp/poky/build/tmp=
/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/us=
r/include/glib-2.0/glib/gdataset.h /tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gl=
ib/gdate.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspecti=
on/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gdatetime.h /tmp/poky=
/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-=
sysroot/usr/include/glib-2.0/glib/gdir.h /tmp/poky/build/tmp/work/core2-64-=
poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-=
2.0/glib/genviron.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-in=
trospection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gerror.h /tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/r=
ecipe-sysroot/usr/include/glib-2.0/glib/gfileutils.h /tmp/poky/build/tmp/wo=
rk/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/i=
nclude/glib-2.0/glib/ggettext.h /tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/=
ghash.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/=
1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/ghmac.h /tmp/poky/build/=
tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot=
/usr/include/glib-2.0/glib/ghook.h /tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gl=
ib/ghostutils.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gi18n-lib.h /tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/re=
cipe-sysroot/usr/include/glib-2.0/glib/gi18n.h /tmp/poky/build/tmp/work/cor=
e2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include=
/glib-2.0/glib/giochannel.h /tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gkey=
file.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/glist.h /tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/glib-2.0/glib/gmacros.h /tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/g=
lib/gmain.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspect=
ion/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gmappedfile.h /tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/include/glib-2.0/glib/gmarkup.h /tmp/poky/build/tmp/work/cor=
e2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include=
/glib-2.0/glib/gmem.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gmessages.=
h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/recipe-sysroot/usr/include/glib-2.0/glib/gnode.h /tmp/poky/build/tmp/wo=
rk/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/i=
nclude/glib-2.0/glib/goption.h /tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/g=
pattern.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspectio=
n/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gpoll.h /tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysro=
ot/usr/include/glib-2.0/glib/gprimes.h /tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.=
0/glib/gprintf.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intro=
spection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gqsort.h /tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/include/glib-2.0/glib/gquark.h /tmp/poky/build/tmp/work/core=
2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/=
glib-2.0/glib/gqueue.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/grand.h /=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/glib-2.0/glib/grcbox.h /tmp/poky/build/tmp/work=
/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inc=
lude/glib-2.0/glib/grefcount.h /tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/g=
refstring.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspect=
ion/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gregex.h /tmp/poky/b=
uild/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sy=
sroot/usr/include/glib-2.0/glib/gscanner.h /tmp/poky/build/tmp/work/core2-6=
4-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gli=
b-2.0/glib/gsequence.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gshell.h =
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/include/glib-2.0/glib/gslice.h /tmp/poky/build/tmp/wor=
k/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/in=
clude/glib-2.0/glib/gslist.h /tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gsp=
awn.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gstdio.h /tmp/poky/build/t=
mp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/=
usr/include/glib-2.0/glib/gstrfuncs.h /tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0=
/glib/gstring.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gstringchunk.h /=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/glib-2.0/glib/gtestutils.h /tmp/poky/build/tmp/=
work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr=
/include/glib-2.0/glib/gthread.h /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib=
/gthreadpool.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introsp=
ection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtimer.h /tmp/pok=
y/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe=
-sysroot/usr/include/glib-2.0/glib/gtimezone.h /tmp/poky/build/tmp/work/cor=
e2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include=
/glib-2.0/glib/gtrashstack.h /tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtr=
ee.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.6=
2.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtypes.h /tmp/poky/build/tm=
p/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/u=
sr/include/glib-2.0/glib/gunicode.h /tmp/poky/build/tmp/work/core2-64-poky-=
linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/g=
lib/gurifuncs.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gutils.h /tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot/usr/include/glib-2.0/glib/guuid.h /tmp/poky/build/tmp/work/core2-=
64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gl=
ib-2.0/glib/gvariant.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gvariantt=
ype.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gversion.h /tmp/poky/build=
/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroo=
t/usr/include/glib-2.0/glib/gversionmacros.h /tmp/poky/build/tmp/work/core2=
-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/g=
lib-2.0/glib/gwin32.h ../gobject-introspection-1.62.0/gir/glib-2.0.c
In file included from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/bits/libc-header-start.h=
:33,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/limits.h:26,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:194,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/syslimits.h:7,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:34,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include/glibconfig.=
h:11,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtypes.h:3=
2,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/galloca.h:=
32,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib.h:30,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/glib-ty=
pes.h:24,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/build/g-ir-cpp-r7huiq75.c:4:
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/include/features.h:382:4: warning: #warning _FORTIFY_S=
OURCE requires compiling with optimization (-O) [-Wcpp]
  382 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O=
)
      |    ^~~~~~~
[69/101] g-ir-scanner --output=3Dgir/GModule-2.0.gir --no-libtool --quiet -=
-reparse-validate --add-include-path /tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0/build/gir --add-include-path /tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobje=
ct-introspection-1.62.0/gir --use-binary-wrapper=3D/tmp/poky/build/tmp/work=
/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qem=
uwrapper --use-ldd-wrapper=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/build/g-ir-scanner-lddwrapper --identifier-p=
refix=3DG --symbol-prefix=3Dg --c-include=3Dgmodule.h --namespace=3DGModule=
 --nsversion=3D2.0 --library=3Dgmodule-2.0 --external-library --pkg=3Dgmodu=
le-2.0 --include-uninstalled=3D/tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/build/gir/GLib-2.0.gir --cflags-begin -I/t=
mp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/=
recipe-sysroot/usr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-pok=
y-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/inc=
lude --cflags-end /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intr=
ospection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gmodule.h ../gobjec=
t-introspection-1.62.0/gir/gmodule-2.0.c
In file included from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/bits/libc-header-start.h=
:33,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/limits.h:26,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:194,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/syslimits.h:7,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:34,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include/glibconfig.=
h:11,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtypes.h:3=
2,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/galloca.h:=
32,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib.h:30,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gmodule.h:28,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/build/g-ir-cpp-ov4jypl7.c:4:
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/include/features.h:382:4: warning: #warning _FORTIFY_S=
OURCE requires compiling with optimization (-O) [-Wcpp]
  382 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O=
)
      |    ^~~~~~~
[70/101] g-ir-scanner --output=3Dgir/GObject-2.0.gir --no-libtool --quiet -=
-reparse-validate --add-include-path /tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0/build/gir --add-include-path /tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobje=
ct-introspection-1.62.0/gir --use-binary-wrapper=3D/tmp/poky/build/tmp/work=
/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qem=
uwrapper --use-ldd-wrapper=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/build/g-ir-scanner-lddwrapper --identifier-p=
refix=3DG --c-include=3Dglib-object.h --namespace=3DGObject --nsversion=3D2=
.0 --library=3Dgobject-2.0 --external-library --pkg=3Dgobject-2.0 --include=
-uninstalled=3D/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introsp=
ection/1.62.0-r0/build/gir/GLib-2.0.gir --cflags-begin -I/tmp/poky/build/tm=
p/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/u=
sr/include/glib-2.0 -I/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include -DGOBJECT_C=
OMPILATION --cflags-end /tmp/poky/build/tmp/work/core2-64-poky-linux/gobjec=
t-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gbind=
ing.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gboxed.h /tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysro=
ot/usr/include/glib-2.0/gobject/gclosure.h /tmp/poky/build/tmp/work/core2-6=
4-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/gli=
b-2.0/gobject/genums.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject=
-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gmarsh=
al.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.6=
2.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gobject.h /tmp/poky/buil=
d/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysro=
ot/usr/include/glib-2.0/gobject/gparam.h /tmp/poky/build/tmp/work/core2-64-=
poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-=
2.0/gobject/gparamspecs.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobj=
ect-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gsi=
gnal.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gsourceclosure.h /tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/rec=
ipe-sysroot/usr/include/glib-2.0/gobject/gtype.h /tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/inclu=
de/glib-2.0/gobject/gtypemodule.h /tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gob=
ject/gtypeplugin.h /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-int=
rospection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gvalue.h /=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/recipe-sysroot/usr/include/glib-2.0/gobject/gvaluearray.h /tmp/poky/build/=
tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot=
/usr/include/glib-2.0/gobject/gvaluetypes.h ../gobject-introspection-1.62.0=
/gir/gobject-2.0.c
In file included from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/bits/libc-header-start.h=
:33,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/limits.h:26,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:194,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/syslimits.h:7,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot-native/usr/lib/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/include-fixed/limits.h:34,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/lib/glib-2.0/include/glibconfig.=
h:11,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/gtypes.h:3=
2,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib/galloca.h:=
32,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/glib.h:30,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0/gobject/gbindin=
g.h:28,
                 from /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/build/g-ir-cpp-ai2hfaq2.c:4:
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/recipe-sysroot/usr/include/features.h:382:4: warning: #warning _FORTIFY_S=
OURCE requires compiling with optimization (-O) [-Wcpp]
  382 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O=
)
      |    ^~~~~~~
[71/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/cairo-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work=
/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir=
 /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-=
r0/gobject-introspection-1.62.0/gir
FAILED: gir/cairo-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/cairo-1=
.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp/pok=
y/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobjec=
t-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[72/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/DBus-1.0.typelib ../gobject-introspection-1.62.0/gir/DBus-1.0.gir --inclu=
dedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux=
/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/DBus-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/DBus-1.=
0.typelib ../gobject-introspection-1.62.0/gir/DBus-1.0.gir --includedir /tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/b=
uild/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[73/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/fontconfig-2.0.typelib ../gobject-introspection-1.62.0/gir/fontconfig-2.0=
.gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intr=
ospection/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-6=
4-poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/g=
ir
FAILED: gir/fontconfig-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/fontcon=
fig-2.0.typelib ../gobject-introspection-1.62.0/gir/fontconfig-2.0.gir --in=
cludedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[74/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/freetype2-2.0.typelib ../gobject-introspection-1.62.0/gir/freetype2-2.0.g=
ir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intros=
pection/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-=
poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/freetype2-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/freetyp=
e2-2.0.typelib ../gobject-introspection-1.62.0/gir/freetype2-2.0.gir --incl=
udedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[75/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/DBusGLib-1.0.typelib ../gobject-introspection-1.62.0/gir/DBusGLib-1.0.gir=
 --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspe=
ction/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/DBusGLib-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/DBusGLi=
b-1.0.typelib ../gobject-introspection-1.62.0/gir/DBusGLib-1.0.gir --includ=
edir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.6=
2.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/=
gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[76/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/GObject-2.0.typelib gir/GObject-2.0.gir --includedir /tmp/poky/build/tmp/=
work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includ=
edir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.6=
2.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/GObject-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/GObject=
-2.0.typelib gir/GObject-2.0.gir --includedir /tmp/poky/build/tmp/work/core=
2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/go=
bject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[77/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/GLib-2.0.typelib gir/GLib-2.0.gir --includedir /tmp/poky/build/tmp/work/c=
ore2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /=
tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
/gobject-introspection-1.62.0/gir
FAILED: gir/GLib-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/GLib-2.=
0.typelib gir/GLib-2.0.gir --includedir /tmp/poky/build/tmp/work/core2-64-p=
oky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp/poky/=
build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-=
introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[78/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/libxml2-2.0.typelib ../gobject-introspection-1.62.0/gir/libxml2-2.0.gir -=
-includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspect=
ion/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky=
-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/libxml2-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/libxml2=
-2.0.typelib ../gobject-introspection-1.62.0/gir/libxml2-2.0.gir --included=
ir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.=
0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/go=
bject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[79/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/Vulkan-1.0.typelib ../gobject-introspection-1.62.0/gir/Vulkan-1.0.gir --i=
ncludedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspectio=
n/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/Vulkan-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/Vulkan-=
1.0.typelib ../gobject-introspection-1.62.0/gir/Vulkan-1.0.gir --includedir=
 /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-=
r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobj=
ect-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[80/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/GL-1.0.typelib ../gobject-introspection-1.62.0/gir/GL-1.0.gir --includedi=
r /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gob=
ject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/GL-1.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/GL-1.0.=
typelib ../gobject-introspection-1.62.0/gir/GL-1.0.gir --includedir /tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build=
/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-intr=
ospection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[81/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64=
-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gi=
r/xft-2.0.typelib ../gobject-introspection-1.62.0/gir/xft-2.0.gir --include=
dir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62=
.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
FAILED: gir/xft-2.0.typelib=20
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-lin=
ux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/xft-2.0=
.typelib ../gobject-introspection-1.62.0/gir/xft-2.0.gir --includedir /tmp/=
poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/bui=
ld/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-in=
trospection/1.62.0-r0/gobject-introspection-1.62.0/gir
If the above error message is about missing .so libraries, then setting up =
GIR_EXTRA_LIBS_PATH in the recipe should help.
(typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
[82/101] x86_64-poky-linux-gcc -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -m=
fpmath=3Dsse -fstack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wform=
at-security -Werror=3Dformat-security --sysroot=3D/tmp/poky/build/tmp/work/=
core2-64-poky-linux/gobject-introspection/1.62.0-r0/recipe-sysroot -Igirepo=
sitory/cmph/6cca4a0@@cmph@sta -Igirepository/cmph -I../gobject-introspectio=
n-1.62.0/girepository/cmph -I/tmp/poky/build/tmp/work/core2-64-poky-linux/g=
object-introspection/1.62.0-r0/recipe-sysroot/usr/include/glib-2.0 -I/tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/reci=
pe-sysroot/usr/lib/glib-2.0/include -fdiagnostics-color=3Dalways -pipe -D_F=
ILE_OFFSET_BITS=3D64 -Wall -Warray-bounds -Wcast-align -Wdeclaration-after-=
statement -Wduplicated-branches -Wextra -Wformat=3D2 -Wformat-nonliteral -W=
format-security -Wimplicit-function-declaration -Winit-self -Wjump-misses-i=
nit -Wlogical-op -Wmissing-declarations -Wmissing-format-attribute -Wmissin=
g-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wn=
ull-dereference -Wold-style-definition -Wpacked -Wpointer-arith -Wrestrict =
-Wreturn-type -Wshadow -Wsign-compare -Wstrict-aliasing -Wstrict-prototypes=
 -Wundef -Wunused-but-set-variable -Wwrite-strings -fno-strict-aliasing -DH=
AVE_CONFIG_H -O2 -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/tm=
p/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=
=3D/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp=
/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0=3D=
/usr/src/debug/gobject-introspection/1.62.0-r0 -fdebug-prefix-map=3D/tmp/po=
ky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/tmp/poky/build/tmp/work/core2-64-poky-li=
nux/gobject-introspection/1.62.0-r0/recipe-sysroot-native=3D -fno-diagnosti=
cs-show-caret -fPIC -fvisibility=3Dhidden -Wno-implicit-fallthrough -Wno-ol=
d-style-definition -Wno-suggest-attribute=3Dnoreturn -Wno-type-limits -Wno-=
undef -Wno-unused-parameter -Wno-cast-align -Wno-unused-function -Wno-retur=
n-type -MD -MQ 'girepository/cmph/6cca4a0@@cmph@sta/chm.c.o' -MF 'gireposit=
ory/cmph/6cca4a0@@cmph@sta/chm.c.o.d' -o 'girepository/cmph/6cca4a0@@cmph@s=
ta/chm.c.o' -c ../gobject-introspection-1.62.0/girepository/cmph/chm.c
ninja: build stopped: subcommand failed.
WARNING: exit code 1 from a shell command.


--nsvqrua3nzb3qy3t--
