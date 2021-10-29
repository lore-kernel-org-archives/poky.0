Subject: python3-native-3.9.5-r0 do_configure: configure failed #yocto
To: poky@lists.yoctoproject.org
From: jjvazha@yahoo.com
X-Originating-Location: Hayward, California, US (96.68.159.213)
X-Originating-Platform: Mac Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 29 Oct 2021 13:03:28 -0700
Message-ID: <0q1M.1635537808210353770.qZ9e@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aZSyO5wlH98uq3Afv43H"

--aZSyO5wlH98uq3Afv43H
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Build Configuration
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"1.50.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "centos-7"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"arm-poky-linux-gnueabi"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "cyclone5"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "3.3.3"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm armv7a vfp=
 thumb neon callconvention-hard"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"hard"
meta
meta-poky
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "hardknott:5af92e6a3=
99ff0543c225551780195fee04db833"
meta-altera=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "mast=
er:b3700b83d1e1d368fa42dffb4cd208603a6a6b69"

Log data follows:
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-=
64', 'x86_64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['virtual:native:/home/jojan.vazhaeparampil=
/distro/build/../warrior/poky/meta/recipes-extended/libtirpc/libtirpc_1.3.1=
.bb:do_populate_sysroot', 'virtual:native:/home/jojan.vazhaeparampil/distro=
/build/../warrior/poky/meta/recipes-core/util-linux/util-linux_2.36.2.bb:do=
_populate_sysroot', 'virtual:native:/home/jojan.vazhaeparampil/distro/build=
/../warrior/poky/meta/recipes-extended/libnsl/libnsl2_git.bb:do_populate_sy=
sroot', 'virtual:native:/home/jojan.vazhaeparampil/distro/build/../warrior/=
poky/meta/recipes-devtools/automake/automake_1.16.3.bb:do_populate_sysroot'=
, 'virtual:native:/home/jojan.vazhaeparampil/distro/build/../warrior/poky/m=
eta/recipes-core/readline/readline_8.1.bb:do_populate_sysroot', 'virtual:na=
tive:/home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/recipes-s=
upport/libffi/libffi_3.3.bb:do_populate_sysroot', 'virtual:native:/home/joj=
an.vazhaeparampil/distro/build/../warrior/poky/meta/recipes-extended/bzip2/=
bzip2_1.0.8.bb:do_populate_sysroot', 'virtual:native:/home/jojan.vazhaepara=
mpil/distro/build/../warrior/poky/meta/recipes-devtools/pkgconfig/pkgconfig=
_git.bb:do_populate_sysroot', 'virtual:native:/home/jojan.vazhaeparampil/di=
stro/build/../warrior/poky/meta/recipes-devtools/autoconf/autoconf_2.71.bb:=
do_populate_sysroot', 'virtual:native:/home/jojan.vazhaeparampil/distro/bui=
ld/../warrior/poky/meta/recipes-support/gdbm/gdbm_1.19.bb:do_populate_sysro=
ot', 'virtual:native:/home/jojan.vazhaeparampil/distro/build/../warrior/pok=
y/meta/recipes-devtools/autoconf-archive/autoconf-archive_2019.01.06.bb:do_=
populate_sysroot', '/home/jojan.vazhaeparampil/distro/build/../warrior/poky=
/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_populate_sysroot', 'vi=
rtual:native:/home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/r=
ecipes-support/sqlite/sqlite3_3.35.0.bb:do_populate_sysroot', 'virtual:nati=
ve:/home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/recipes-con=
nectivity/openssl/openssl_1.1.1l.bb:do_populate_sysroot', 'virtual:native:/=
home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/recipes-extende=
d/xz/xz_5.2.5.bb:do_populate_sysroot', 'virtual:native:/home/jojan.vazhaepa=
rampil/distro/build/../warrior/poky/meta/recipes-core/zlib/zlib_1.2.11.bb:d=
o_populate_sysroot', '/home/jojan.vazhaeparampil/distro/build/../warrior/po=
ky/meta/recipes-devtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroo=
t']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['libtirpc-native', 'util-li=
nux-native', 'libnsl2-native', 'automake-native', 'readline-native', 'libff=
i-native', 'bzip2-native', 'pkgconfig-native', 'autoconf-native', 'gdbm-nat=
ive', 'autoconf-archive-native', 'quilt-native', 'sqlite3-native', 'openssl=
-native', 'xz-native', 'zlib-native', 'libtool-native', 'gettext-minimal-na=
tive', 'texinfo-dummy-native', 'libcap-ng-native', 'ncurses-native', 'util-=
linux-libuuid-native', 'libpcre2-native', 'gnu-config-native', 'm4-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_configure
| automake (GNU automake) 1.16.3
| Copyright (C) 2020 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <https://gnu.org/licenses/gpl-=
2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz <adl@g=
nu.org>.
| AUTOV is 1.16
| NOTE: Executing ACLOCAL=3D"aclocal --system-acdir=3D/home/jojan.vazhaepar=
ampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sys=
root-native/usr/share/aclocal/ --automake-acdir=3D/home/jojan.vazhaeparampi=
l/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot=
-native/usr/share/aclocal-1.16" autoreconf -Wcross --verbose --install --fo=
rce --exclude=3Dautopoint --exclude=3Dgtkdocize
| autoreconf: export WARNINGS=3Dcross,no-obsolete
| autoreconf: Entering directory '.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal --system-acdir=3D/home/jojan.vazhaeparampil/=
distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-n=
ative/usr/share/aclocal/ --automake-acdir=3D/home/jojan.vazhaeparampil/dist=
ro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-nativ=
e/usr/share/aclocal-1.16 --force
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: Consider adding 'AC_CONFIG_MACRO_DIRS([m4])' to configure.ac,
| libtoolize: and rerunning libtoolize and aclocal.
| libtoolize: Consider adding '-I m4' to ACLOCAL_AMFLAGS in Makefile.am.
| autoreconf: configure.ac: not using Intltool
| autoreconf: configure.ac: not using Gtkdoc
| autoreconf: running: aclocal --system-acdir=3D/home/jojan.vazhaeparampil/=
distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-n=
ative/usr/share/aclocal/ --automake-acdir=3D/home/jojan.vazhaeparampil/dist=
ro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-nativ=
e/usr/share/aclocal-1.16 --force
| autoreconf: running: /home/jojan.vazhaeparampil/distro/build/tmp/work/x86=
_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/bin/autoconf --=
force
| configure.ac:782: warning: AC_COMPILE_IFELSE was called before AC_USE_SYS=
TEM_EXTENSIONS
| ../autoconf-2.71/lib/autoconf/specific.m4:364: AC_USE_SYSTEM_EXTENSIONS i=
s expanded from...
| configure.ac:782: the top level
| configure.ac:782: warning: AC_LINK_IFELSE was called before AC_USE_SYSTEM=
_EXTENSIONS
| ../autoconf-2.71/lib/autoconf/specific.m4:364: AC_USE_SYSTEM_EXTENSIONS i=
s expanded from...
| configure.ac:782: the top level
| configure.ac:782: warning: AC_CHECK_INCLUDES_DEFAULT was called before AC=
_USE_SYSTEM_EXTENSIONS
| ../autoconf-2.71/lib/autoconf/specific.m4:364: AC_USE_SYSTEM_EXTENSIONS i=
s expanded from...
| configure.ac:782: the top level
| configure.ac:5185: warning: cannot check for file existence when cross co=
mpiling
| ../autoconf-2.71/lib/autoconf/general.m4:3010: AC_CHECK_FILE is expanded =
from...
| configure.ac:5185: the top level
| configure.ac:5190: warning: cannot check for file existence when cross co=
mpiling
| ../autoconf-2.71/lib/autoconf/general.m4:3010: AC_CHECK_FILE is expanded =
from...
| configure.ac:5190: the top level
| autoreconf: running: /home/jojan.vazhaeparampil/distro/build/tmp/work/x86=
_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/bin/autoheader =
--force
| autoreconf: configure.ac: not using Automake
| autoreconf: './config.sub' is updated
| autoreconf: './config.guess' is updated
| autoreconf: './install-sh' is updated
| autoreconf: Leaving directory '.'
| NOTE: Running ../Python-3.9.5/configure=C2=A0 --build=3Dx86_64-linux =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --host=3Dx86_64-linux =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --target=3Dx86_64-linux =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --prefix=3D/home/jojan.vazhaeparampil/distro/=
build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/u=
sr=C2=A0=C2=A0 --exec_prefix=3D/home/jojan.vazhaeparampil/distro/build/tmp/=
work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr =C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --bindir=3D/home/jojan.vazhaeparampi=
l/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot=
-native/usr/bin =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --sbindir=3D/h=
ome/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/python3-native/=
3.9.5-r0/recipe-sysroot-native/usr/sbin =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0 --libexecdir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/=
x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/libexec =C2=
=A0=C2=A0=C2=A0 =C2=A0 --datadir=3D/home/jojan.vazhaeparampil/distro/build/=
tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/sha=
re =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --sysconfdir=3D/home/jojan.=
vazhaeparampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/r=
ecipe-sysroot-native/etc =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --sha=
redstatedir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux=
/python3-native/3.9.5-r0/recipe-sysroot-native/com =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0 --localstatedir=3D/home/jojan.vazhaeparampil/distro/=
build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/v=
ar =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --libdir=3D/home/jojan.vazh=
aeparampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recip=
e-sysroot-native/usr/lib =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --inc=
ludedir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/pyt=
hon3-native/3.9.5-r0/recipe-sysroot-native/usr/include =C2=A0=C2=A0=C2=A0 =
=C2=A0 --oldincludedir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x=
86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/include =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --infodir=3D/home/jojan.vazhaepar=
ampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sys=
root-native/usr/share/info =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 --m=
andir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/pytho=
n3-native/3.9.5-r0/recipe-sysroot-native/usr/share/man =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0 --disable-silent-rules =C2=A0=C2=A0=C2=A0 =C2=A0 =
--disable-dependency-tracking =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 --without-ensurepip --enable-shared --with-platlibdir=3Dlib --=
disable-static=C2=A0 --bindir=3D/home/jojan.vazhaeparampil/distro/build/tmp=
/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/bin/py=
thon3-native
| configure: WARNING: unrecognized options: --disable-silent-rules, --disab=
le-dependency-tracking
| configure: loading site script /home/jojan.vazhaeparampil/distro/build/..=
/warrior/poky/meta/site/endian-little
| configure: loading site script /home/jojan.vazhaeparampil/distro/build/..=
/warrior/poky/meta/site/common-linux
| configure: loading site script /home/jojan.vazhaeparampil/distro/build/..=
/warrior/poky/meta/site/common-glibc
| configure: loading site script /home/jojan.vazhaeparampil/distro/build/..=
/warrior/poky/meta/site/x86_64-linux
| configure: loading site script /home/jojan.vazhaeparampil/distro/build/..=
/warrior/poky/meta/site/common
| configure: loading site script /home/jojan.vazhaeparampil/distro/build/tm=
p/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/share=
/x86_64-linux_config_site.d/ncurses_config
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... x86_64-pc-linux-gnu
| checking how to print strings... printf
| checking for x86_64-linux-gcc... gcc
| checking whether the C compiler works... yes
| checking for C compiler default output file name... a.out
| checking for suffix of executables...
| checking whether we are cross compiling... no
| checking for suffix of object files... o
| checking whether the compiler supports GNU C... yes
| checking whether gcc=C2=A0 accepts -g... yes
| checking for gcc=C2=A0 option to enable C11 features... -std=3Dgnu11
| checking for a sed that does not truncate output... (cached) sed
| checking for grep that handles long lines and -e... /home/jojan.vazhaepar=
ampil/distro/build/tmp/hosttools/grep
| checking for egrep... /home/jojan.vazhaeparampil/distro/build/tmp/hosttoo=
ls/grep -E
| checking for fgrep... /home/jojan.vazhaeparampil/distro/build/tmp/hosttoo=
ls/grep -F
| checking for ld used by gcc=C2=A0 -std=3Dgnu11... ld
| checking if the linker (ld ) is GNU ld... yes
| checking for BSD- or MS-compatible name lister (nm)... nm
| checking the name lister (nm) interface... BSD nm
| checking whether ln -s works... yes
| checking the maximum length of command line arguments... 1572864
| checking how to convert x86_64-pc-linux-gnu file names to x86_64-pc-linux=
-gnu format... func_convert_file_noop
| checking how to convert x86_64-pc-linux-gnu file names to toolchain forma=
t... func_convert_file_noop
| checking for ld=C2=A0 option to reload object files... -r
| checking for x86_64-linux-objdump... objdump
| checking how to recognize dependent libraries... pass_all
| checking for x86_64-linux-dlltool... no
| checking for dlltool... no
| checking how to associate runtime and link libraries... printf %s\n
| checking for x86_64-linux-ar... ar
| checking for archiver @FILE support... @
| checking for x86_64-linux-strip... strip
| checking for x86_64-linux-ranlib... ranlib
| checking for gawk... gawk
| checking command to parse nm output from gcc=C2=A0 -std=3Dgnu11 object...=
 ok
| checking for sysroot... no
| checking for a working dd... /home/jojan.vazhaeparampil/distro/build/tmp/=
hosttools/dd
| checking how to truncate binary pipes... /home/jojan.vazhaeparampil/distr=
o/build/tmp/hosttools/dd bs=3D4096 count=3D1
| checking for x86_64-linux-mt... no
| checking for mt... no
| checking if : is a manifest tool... no
| checking for stdio.h... (cached) yes
| checking for stdlib.h... (cached) yes
| checking for string.h... (cached) yes
| checking for inttypes.h... (cached) yes
| checking for stdint.h... (cached) yes
| checking for strings.h... (cached) yes
| checking for sys/stat.h... (cached) yes
| checking for sys/types.h... (cached) yes
| checking for unistd.h... (cached) yes
| checking for wchar.h... yes
| checking for minix/config.h... no
| checking for sys/time.h... yes
| checking for dlfcn.h... yes
| checking for objdir... .libs
| checking if gcc=C2=A0 -std=3Dgnu11 supports -fno-rtti -fno-exceptions... =
no
| checking for gcc=C2=A0 -std=3Dgnu11 option to produce PIC... -fPIC -DPIC
| checking if gcc=C2=A0 -std=3Dgnu11 PIC flag -fPIC -DPIC works... yes
| checking if gcc=C2=A0 -std=3Dgnu11 static flag -static works... yes
| checking if gcc=C2=A0 -std=3Dgnu11 supports -c -o file.o... yes
| checking if gcc=C2=A0 -std=3Dgnu11 supports -c -o file.o... (cached) yes
| checking whether the gcc=C2=A0 -std=3Dgnu11 linker (ld=C2=A0 -m elf_x86_6=
4) supports shared libraries... yes
| checking whether -lc should be explicitly linked in... no
| checking dynamic linker characteristics... GNU/Linux ld.so
| checking how to hardcode library paths into programs... immediate
| checking whether stripping libraries is possible... yes
| checking if libtool supports shared libraries... yes
| checking whether to build shared libraries... yes
| checking whether to build static libraries... no
| checking for python3.9... no
| checking for python3... python3
| checking for --enable-universalsdk... no
| checking for --with-universal-archs... no
| checking MACHDEP... "linux"
| configure: error: cached CC is different -- throw away /dev/null
| (it is also a good idea to do 'make clean' before compiling)
| NOTE: The following config.log files may provide further information.
| NOTE: /home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/pytho=
n3-native/3.9.5-r0/build/config.log
| ERROR: configure failed
| WARNING: /home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/py=
thon3-native/3.9.5-r0/temp/run.do_configure.29411:300 exit 1 from 'exit 1'
| WARNING: Backtrace (BB generated script):
| =C2=A0=C2=A0=C2=A0 #1: bbfatal_log, /home/jojan.vazhaeparampil/distro/bui=
ld/tmp/work/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_configure.2941=
1, line 300
| =C2=A0=C2=A0=C2=A0 #2: oe_runconf, /home/jojan.vazhaeparampil/distro/buil=
d/tmp/work/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_configure.29411=
, line 258
| =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure, /home/jojan.vazhaeparampil=
/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_con=
figure.29411, line 242
| =C2=A0=C2=A0=C2=A0 #4: do_configure, /home/jojan.vazhaeparampil/distro/bu=
ild/tmp/work/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_configure.294=
11, line 162
| =C2=A0=C2=A0=C2=A0 #5: main, /home/jojan.vazhaeparampil/distro/build/tmp/=
work/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_configure.29411, line=
 300
| ERROR: ExecutionError('/home/jojan.vazhaeparampil/distro/build/tmp/work/x=
86_64-linux/python3-native/3.9.5-r0/temp/run.do_configure.29411', 1, None, =
None)
ERROR: Task (virtual:native:/home/jojan.vazhaeparampil/distro/build/../warr=
ior/poky/meta/recipes-devtools/python/python3_3.9.5.bb:do_configure) failed=
 with exit code '1'
Waiting for 1 running tasks to finish:

--aZSyO5wlH98uq3Afv43H
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Build Configuration<br />NOTE: Resolving any missing task queue dependencie=
s<br /><br />Build Configuration:<br />BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.50.0"<br />BUILD_SYS&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "x86_64-linux"<br=
 />NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "centos-7"<br />TARGET=
_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm-p=
oky-linux-gnueabi"<br />MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "cyclone5"<br />DISTRO&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"poky"<br />DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "3.3.3"<=
br />TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm armv7=
a vfp thumb neon callconvention-hard"<br />TARGET_FPU&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "hard"<br />meta&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;<br />meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; &nbsp;<br />meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "=
hardknott:5af92e6a399ff0543c225551780195fee04db833"<br />meta-altera&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "master:b3700b83d1e1d36=
8fa42dffb4cd208603a6a6b69"<br /><br /><br /><br />Log data follows:<br />| =
DEBUG: Executing shell function autotools_preconfigure<br />| DEBUG: Shell =
function autotools_preconfigure finished<br />| DEBUG: Executing python fun=
ction autotools_aclocals<br />| DEBUG: SITE files ['endian-little', 'common=
-linux', 'common-glibc', 'bit-64', 'x86_64-linux', 'common']<br />| DEBUG: =
Python function autotools_aclocals finished<br />| DEBUG: Executing python =
function extend_recipe_sysroot<br />| NOTE: Direct dependencies are ['virtu=
al:native:/home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/reci=
pes-extended/libtirpc/libtirpc_1.3.1.bb:do_populate_sysroot', 'virtual:nati=
ve:/home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/recipes-cor=
e/util-linux/util-linux_2.36.2.bb:do_populate_sysroot', 'virtual:native:/ho=
me/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/recipes-extended/=
libnsl/libnsl2_git.bb:do_populate_sysroot', 'virtual:native:/home/jojan.vaz=
haeparampil/distro/build/../warrior/poky/meta/recipes-devtools/automake/aut=
omake_1.16.3.bb:do_populate_sysroot', 'virtual:native:/home/jojan.vazhaepar=
ampil/distro/build/../warrior/poky/meta/recipes-core/readline/readline_8.1.=
bb:do_populate_sysroot', 'virtual:native:/home/jojan.vazhaeparampil/distro/=
build/../warrior/poky/meta/recipes-support/libffi/libffi_3.3.bb:do_populate=
_sysroot', 'virtual:native:/home/jojan.vazhaeparampil/distro/build/../warri=
or/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_populate_sysroot', 'v=
irtual:native:/home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/=
recipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot', 'virtual:=
native:/home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/recipes=
-devtools/autoconf/autoconf_2.71.bb:do_populate_sysroot', 'virtual:native:/=
home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/recipes-support=
/gdbm/gdbm_1.19.bb:do_populate_sysroot', 'virtual:native:/home/jojan.vazhae=
parampil/distro/build/../warrior/poky/meta/recipes-devtools/autoconf-archiv=
e/autoconf-archive_2019.01.06.bb:do_populate_sysroot', '/home/jojan.vazhaep=
arampil/distro/build/../warrior/poky/meta/recipes-devtools/quilt/quilt-nati=
ve_0.66.bb:do_populate_sysroot', 'virtual:native:/home/jojan.vazhaeparampil=
/distro/build/../warrior/poky/meta/recipes-support/sqlite/sqlite3_3.35.0.bb=
:do_populate_sysroot', 'virtual:native:/home/jojan.vazhaeparampil/distro/bu=
ild/../warrior/poky/meta/recipes-connectivity/openssl/openssl_1.1.1l.bb:do_=
populate_sysroot', 'virtual:native:/home/jojan.vazhaeparampil/distro/build/=
../warrior/poky/meta/recipes-extended/xz/xz_5.2.5.bb:do_populate_sysroot', =
'virtual:native:/home/jojan.vazhaeparampil/distro/build/../warrior/poky/met=
a/recipes-core/zlib/zlib_1.2.11.bb:do_populate_sysroot', '/home/jojan.vazha=
eparampil/distro/build/../warrior/poky/meta/recipes-devtools/libtool/libtoo=
l-native_2.4.6.bb:do_populate_sysroot']<br />| NOTE: Installed into sysroot=
: []<br />| NOTE: Skipping as already exists in sysroot: ['libtirpc-native'=
, 'util-linux-native', 'libnsl2-native', 'automake-native', 'readline-nativ=
e', 'libffi-native', 'bzip2-native', 'pkgconfig-native', 'autoconf-native',=
 'gdbm-native', 'autoconf-archive-native', 'quilt-native', 'sqlite3-native'=
, 'openssl-native', 'xz-native', 'zlib-native', 'libtool-native', 'gettext-=
minimal-native', 'texinfo-dummy-native', 'libcap-ng-native', 'ncurses-nativ=
e', 'util-linux-libuuid-native', 'libpcre2-native', 'gnu-config-native', 'm=
4-native']<br />| DEBUG: Python function extend_recipe_sysroot finished<br =
/>| DEBUG: Executing shell function do_configure<br />| automake (GNU autom=
ake) 1.16.3<br />| Copyright (C) 2020 Free Software Foundation, Inc.<br />|=
 License GPLv2+: GNU GPL version 2 or later &lt;https://gnu.org/licenses/gp=
l-2.0.html&gt;<br />| This is free software: you are free to change and red=
istribute it.<br />| There is NO WARRANTY, to the extent permitted by law.<=
br />| <br />| Written by Tom Tromey &lt;tromey@redhat.com&gt;<br />|&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and Alexandre Duret-Lutz &lt;adl@gnu.o=
rg&gt;.<br />| AUTOV is 1.16<br />| NOTE: Executing ACLOCAL=3D"aclocal --sy=
stem-acdir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/=
python3-native/3.9.5-r0/recipe-sysroot-native/usr/share/aclocal/ --automake=
-acdir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/pyth=
on3-native/3.9.5-r0/recipe-sysroot-native/usr/share/aclocal-1.16" autorecon=
f -Wcross --verbose --install --force --exclude=3Dautopoint --exclude=3Dgtk=
docize<br />| autoreconf: export WARNINGS=3Dcross,no-obsolete<br />| autore=
conf: Entering directory '.'<br />| autoreconf: configure.ac: not using Get=
text<br />| autoreconf: running: aclocal --system-acdir=3D/home/jojan.vazha=
eparampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe=
-sysroot-native/usr/share/aclocal/ --automake-acdir=3D/home/jojan.vazhaepar=
ampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sys=
root-native/usr/share/aclocal-1.16 --force<br />| autoreconf: configure.ac:=
 tracing<br />| autoreconf: running: libtoolize --copy --force<br />| libto=
olize: putting auxiliary files in '.'.<br />| libtoolize: copying file './l=
tmain.sh'<br />| libtoolize: Consider adding 'AC_CONFIG_MACRO_DIRS([m4])' t=
o configure.ac,<br />| libtoolize: and rerunning libtoolize and aclocal.<br=
 />| libtoolize: Consider adding '-I m4' to ACLOCAL_AMFLAGS in Makefile.am.=
<br />| autoreconf: configure.ac: not using Intltool<br />| autoreconf: con=
figure.ac: not using Gtkdoc<br />| autoreconf: running: aclocal --system-ac=
dir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/python3=
-native/3.9.5-r0/recipe-sysroot-native/usr/share/aclocal/ --automake-acdir=
=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/python3-na=
tive/3.9.5-r0/recipe-sysroot-native/usr/share/aclocal-1.16 --force<br />| a=
utoreconf: running: /home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64=
-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/bin/autoconf --for=
ce<br />| configure.ac:782: warning: AC_COMPILE_IFELSE was called before AC=
_USE_SYSTEM_EXTENSIONS<br />| ../autoconf-2.71/lib/autoconf/specific.m4:364=
: AC_USE_SYSTEM_EXTENSIONS is expanded from...<br />| configure.ac:782: the=
 top level<br />| configure.ac:782: warning: AC_LINK_IFELSE was called befo=
re AC_USE_SYSTEM_EXTENSIONS<br />| ../autoconf-2.71/lib/autoconf/specific.m=
4:364: AC_USE_SYSTEM_EXTENSIONS is expanded from...<br />| configure.ac:782=
: the top level<br />| configure.ac:782: warning: AC_CHECK_INCLUDES_DEFAULT=
 was called before AC_USE_SYSTEM_EXTENSIONS<br />| ../autoconf-2.71/lib/aut=
oconf/specific.m4:364: AC_USE_SYSTEM_EXTENSIONS is expanded from...<br />| =
configure.ac:782: the top level<br />| configure.ac:5185: warning: cannot c=
heck for file existence when cross compiling<br />| ../autoconf-2.71/lib/au=
toconf/general.m4:3010: AC_CHECK_FILE is expanded from...<br />| configure.=
ac:5185: the top level<br />| configure.ac:5190: warning: cannot check for =
file existence when cross compiling<br />| ../autoconf-2.71/lib/autoconf/ge=
neral.m4:3010: AC_CHECK_FILE is expanded from...<br />| configure.ac:5190: =
the top level<br />| autoreconf: running: /home/jojan.vazhaeparampil/distro=
/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/=
usr/bin/autoheader --force<br />| autoreconf: configure.ac: not using Autom=
ake<br />| autoreconf: './config.sub' is updated<br />| autoreconf: './conf=
ig.guess' is updated<br />| autoreconf: './install-sh' is updated<br />| au=
toreconf: Leaving directory '.'<br />| NOTE: Running ../Python-3.9.5/config=
ure&nbsp; --build=3Dx86_64-linux &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbs=
p; --host=3Dx86_64-linux &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; --tar=
get=3Dx86_64-linux &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; --prefix=3D=
/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/python3-nativ=
e/3.9.5-r0/recipe-sysroot-native/usr&nbsp;&nbsp; --exec_prefix=3D/home/joja=
n.vazhaeparampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0=
/recipe-sysroot-native/usr &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; --b=
indir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/pytho=
n3-native/3.9.5-r0/recipe-sysroot-native/usr/bin &nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp; &nbsp; --sbindir=3D/home/jojan.vazhaeparampil/distro/build/tmp/=
work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/sbin &n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; --libexecdir=3D/home/jojan.vazha=
eparampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe=
-sysroot-native/usr/libexec &nbsp;&nbsp;&nbsp; &nbsp; --datadir=3D/home/joj=
an.vazhaeparampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r=
0/recipe-sysroot-native/usr/share &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nb=
sp; --sysconfdir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-=
linux/python3-native/3.9.5-r0/recipe-sysroot-native/etc &nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp; &nbsp; --sharedstatedir=3D/home/jojan.vazhaeparampil/dis=
tro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-nati=
ve/com &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; --localstatedir=3D/home=
/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9=
.5-r0/recipe-sysroot-native/var &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp=
; --libdir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/=
python3-native/3.9.5-r0/recipe-sysroot-native/usr/lib &nbsp;&nbsp;&nbsp; &n=
bsp;&nbsp;&nbsp; &nbsp; --includedir=3D/home/jojan.vazhaeparampil/distro/bu=
ild/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr=
/include &nbsp;&nbsp;&nbsp; &nbsp; --oldincludedir=3D/home/jojan.vazhaepara=
mpil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysr=
oot-native/usr/include &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; --infod=
ir=3D/home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/python3-=
native/3.9.5-r0/recipe-sysroot-native/usr/share/info &nbsp;&nbsp;&nbsp; &nb=
sp;&nbsp;&nbsp; &nbsp; --mandir=3D/home/jojan.vazhaeparampil/distro/build/t=
mp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-sysroot-native/usr/shar=
e/man &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; --disable-silent-rules &=
nbsp;&nbsp;&nbsp; &nbsp; --disable-dependency-tracking &nbsp;&nbsp;&nbsp; &=
nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; --without-ensurepip --enable-shared --=
with-platlibdir=3Dlib --disable-static&nbsp; --bindir=3D/home/jojan.vazhaep=
arampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/recipe-s=
ysroot-native/usr/bin/python3-native<br />| configure: WARNING: unrecognize=
d options: --disable-silent-rules, --disable-dependency-tracking<br />| con=
figure: loading site script /home/jojan.vazhaeparampil/distro/build/../warr=
ior/poky/meta/site/endian-little<br />| configure: loading site script /hom=
e/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/site/common-linux<=
br />| configure: loading site script /home/jojan.vazhaeparampil/distro/bui=
ld/../warrior/poky/meta/site/common-glibc<br />| configure: loading site sc=
ript /home/jojan.vazhaeparampil/distro/build/../warrior/poky/meta/site/x86_=
64-linux<br />| configure: loading site script /home/jojan.vazhaeparampil/d=
istro/build/../warrior/poky/meta/site/common<br />| configure: loading site=
 script /home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/pytho=
n3-native/3.9.5-r0/recipe-sysroot-native/usr/share/x86_64-linux_config_site=
.d/ncurses_config<br />| checking build system type... x86_64-pc-linux-gnu<=
br />| checking host system type... x86_64-pc-linux-gnu<br />| checking how=
 to print strings... printf<br />| checking for x86_64-linux-gcc... gcc<br =
/>| checking whether the C compiler works... yes<br />| checking for C comp=
iler default output file name... a.out<br />| checking for suffix of execut=
ables...<br />| checking whether we are cross compiling... no<br />| checki=
ng for suffix of object files... o<br />| checking whether the compiler sup=
ports GNU C... yes<br />| checking whether gcc&nbsp; accepts -g... yes<br /=
>| checking for gcc&nbsp; option to enable C11 features... -std=3Dgnu11<br =
/>| checking for a sed that does not truncate output... (cached) sed<br />|=
 checking for grep that handles long lines and -e... /home/jojan.vazhaepara=
mpil/distro/build/tmp/hosttools/grep<br />| checking for egrep... /home/joj=
an.vazhaeparampil/distro/build/tmp/hosttools/grep -E<br />| checking for fg=
rep... /home/jojan.vazhaeparampil/distro/build/tmp/hosttools/grep -F<br />|=
 checking for ld used by gcc&nbsp; -std=3Dgnu11... ld<br />| checking if th=
e linker (ld ) is GNU ld... yes<br />| checking for BSD- or MS-compatible n=
ame lister (nm)... nm<br />| checking the name lister (nm) interface... BSD=
 nm<br />| checking whether ln -s works... yes<br />| checking the maximum =
length of command line arguments... 1572864<br />| checking how to convert =
x86_64-pc-linux-gnu file names to x86_64-pc-linux-gnu format... func_conver=
t_file_noop<br />| checking how to convert x86_64-pc-linux-gnu file names t=
o toolchain format... func_convert_file_noop<br />| checking for ld&nbsp; o=
ption to reload object files... -r<br />| checking for x86_64-linux-objdump=
... objdump<br />| checking how to recognize dependent libraries... pass_al=
l<br />| checking for x86_64-linux-dlltool... no<br />| checking for dlltoo=
l... no<br />| checking how to associate runtime and link libraries... prin=
tf %s\n<br />| checking for x86_64-linux-ar... ar<br />| checking for archi=
ver @FILE support... @<br />| checking for x86_64-linux-strip... strip<br /=
>| checking for x86_64-linux-ranlib... ranlib<br />| checking for gawk... g=
awk<br />| checking command to parse nm output from gcc&nbsp; -std=3Dgnu11 =
object... ok<br />| checking for sysroot... no<br />| checking for a workin=
g dd... /home/jojan.vazhaeparampil/distro/build/tmp/hosttools/dd<br />| che=
cking how to truncate binary pipes... /home/jojan.vazhaeparampil/distro/bui=
ld/tmp/hosttools/dd bs=3D4096 count=3D1<br />| checking for x86_64-linux-mt=
... no<br />| checking for mt... no<br />| checking if : is a manifest tool=
... no<br />| checking for stdio.h... (cached) yes<br />| checking for stdl=
ib.h... (cached) yes<br />| checking for string.h... (cached) yes<br />| ch=
ecking for inttypes.h... (cached) yes<br />| checking for stdint.h... (cach=
ed) yes<br />| checking for strings.h... (cached) yes<br />| checking for s=
ys/stat.h... (cached) yes<br />| checking for sys/types.h... (cached) yes<b=
r />| checking for unistd.h... (cached) yes<br />| checking for wchar.h... =
yes<br />| checking for minix/config.h... no<br />| checking for sys/time.h=
... yes<br />| checking for dlfcn.h... yes<br />| checking for objdir... .l=
ibs<br />| checking if gcc&nbsp; -std=3Dgnu11 supports -fno-rtti -fno-excep=
tions... no<br />| checking for gcc&nbsp; -std=3Dgnu11 option to produce PI=
C... -fPIC -DPIC<br />| checking if gcc&nbsp; -std=3Dgnu11 PIC flag -fPIC -=
DPIC works... yes<br />| checking if gcc&nbsp; -std=3Dgnu11 static flag -st=
atic works... yes<br />| checking if gcc&nbsp; -std=3Dgnu11 supports -c -o =
file.o... yes<br />| checking if gcc&nbsp; -std=3Dgnu11 supports -c -o file=
.o... (cached) yes<br />| checking whether the gcc&nbsp; -std=3Dgnu11 linke=
r (ld&nbsp; -m elf_x86_64) supports shared libraries... yes<br />| checking=
 whether -lc should be explicitly linked in... no<br />| checking dynamic l=
inker characteristics... GNU/Linux ld.so<br />| checking how to hardcode li=
brary paths into programs... immediate<br />| checking whether stripping li=
braries is possible... yes<br />| checking if libtool supports shared libra=
ries... yes<br />| checking whether to build shared libraries... yes<br />|=
 checking whether to build static libraries... no<br />| checking for pytho=
n3.9... no<br />| checking for python3... python3<br />| checking for --ena=
ble-universalsdk... no<br />| checking for --with-universal-archs... no<br =
/>| checking MACHDEP... "linux"<br />| configure: error: cached CC is diffe=
rent -- throw away /dev/null<br />| (it is also a good idea to do 'make cle=
an' before compiling)<br />| NOTE: The following config.log files may provi=
de further information.<br />| NOTE: /home/jojan.vazhaeparampil/distro/buil=
d/tmp/work/x86_64-linux/python3-native/3.9.5-r0/build/config.log<br />| ERR=
OR: configure failed<br />| WARNING: /home/jojan.vazhaeparampil/distro/buil=
d/tmp/work/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_configure.29411=
:300 exit 1 from 'exit 1'<br />| WARNING: Backtrace (BB generated script):<=
br />| &nbsp;&nbsp;&nbsp; #1: bbfatal_log, /home/jojan.vazhaeparampil/distr=
o/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_configure=
.29411, line 300<br />| &nbsp;&nbsp;&nbsp; #2: oe_runconf, /home/jojan.vazh=
aeparampil/distro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/temp/=
run.do_configure.29411, line 258<br />| &nbsp;&nbsp;&nbsp; #3: autotools_do=
_configure, /home/jojan.vazhaeparampil/distro/build/tmp/work/x86_64-linux/p=
ython3-native/3.9.5-r0/temp/run.do_configure.29411, line 242<br />| &nbsp;&=
nbsp;&nbsp; #4: do_configure, /home/jojan.vazhaeparampil/distro/build/tmp/w=
ork/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_configure.29411, line =
162<br />| &nbsp;&nbsp;&nbsp; #5: main, /home/jojan.vazhaeparampil/distro/b=
uild/tmp/work/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_configure.29=
411, line 300<br />| ERROR: ExecutionError('/home/jojan.vazhaeparampil/dist=
ro/build/tmp/work/x86_64-linux/python3-native/3.9.5-r0/temp/run.do_configur=
e.29411', 1, None, None)<br />ERROR: Task (virtual:native:/home/jojan.vazha=
eparampil/distro/build/../warrior/poky/meta/recipes-devtools/python/python3=
_3.9.5.bb:do_configure) failed with exit code '1'<br />Waiting for 1 runnin=
g tasks to finish:

--aZSyO5wlH98uq3Afv43H--
