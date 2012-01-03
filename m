Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C26A1E0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 11:52:55 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3660FF81211; Tue,  3 Jan 2012 12:52:53 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9E923F81210;
	Tue,  3 Jan 2012 12:52:51 -0700 (MST)
Message-ID: <4F035C93.2020602@mlbassoc.com>
Date: Tue, 03 Jan 2012 12:52:51 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Can't build webkit-gtk
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 03 Jan 2012 19:52:56 -0000
X-Groupsio-MsgNum: 7307
Content-Type: multipart/mixed; boundary="------------060606040801020305060906"

--------------060606040801020305060906
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Using today's master:
OE Build Configuration:
BB_VERSION        = "1.15.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1+snapshot-20120103"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:f3a1a8897c78e116d7d28947a85687d0ce9d7df7"

Build of webkit-gtk fails:

Logfile attached.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------060606040801020305060906
Content-Type: text/plain;
 name="log.do_configure.4343"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="log.do_configure.4343"

DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux',=
 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
automake (GNU automake) 1.11.2
Copyright (C) 2011 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0=
.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.11
NOTE: Executing autoreconf --verbose --install --force -I Source/autotools =
-I/home/local/bb_test2/tmp/sysroots/i686-linux/usr/share/aclocal-1.11 -I /h=
ome/local/bb_test2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/webkit-gtk-1=
.7.2+svnr101488-r0//aclocal-copy/
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal -I Source/autotools -I /home/local/bb_test2/tm=
p/sysroots/i686-linux/usr/share/aclocal-1.11 -I /home/local/bb_test2/tmp/wo=
rk/armv7a-vfp-neon-poky-linux-gnueabi/webkit-gtk-1.7.2+svnr101488-r0//acloc=
al-copy/ -I Source/autotools -I /home/local/bb_test2/tmp/sysroots/i686-linu=
x/usr/share/aclocal-1.11 -I /home/local/bb_test2/tmp/work/armv7a-vfp-neon-p=
oky-linux-gnueabi/webkit-gtk-1.7.2+svnr101488-r0//aclocal-copy/ --force --w=
arnings=3Dcross=20
aclocal: unknown warning category `cross'
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, `Source/autotools=
'.
libtoolize: copying file `Source/autotools/ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `Source/autotools'.
libtoolize: copying file `Source/autotools/libtool.m4'
libtoolize: copying file `Source/autotools/ltoptions.m4'
libtoolize: copying file `Source/autotools/ltsugar.m4'
libtoolize: copying file `Source/autotools/ltversion.m4'
libtoolize: copying file `Source/autotools/lt~obsolete.m4'
libtoolize: Consider adding `-I Source/autotools' to ACLOCAL_AMFLAGS in Mak=
efile.am.
aclocal: unknown warning category `cross'
autoreconf: running: /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin/a=
utoconf --include=3DSource/autotools --include=3D/home/local/bb_test2/tmp/s=
ysroots/i686-linux/usr/share/aclocal-1.11 --include=3D/home/local/bb_test2/=
tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/webkit-gtk-1.7.2+svnr101488-r0/=
/aclocal-copy/ --force --warnings=3Dcross
autoreconf: running: /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin/a=
utoheader --include=3DSource/autotools --include=3D/home/local/bb_test2/tmp=
/sysroots/i686-linux/usr/share/aclocal-1.11 --include=3D/home/local/bb_test=
2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/webkit-gtk-1.7.2+svnr101488-r=
0//aclocal-copy/ --force --warnings=3Dcross
autoreconf: running: automake --foreign --add-missing --copy --force-missin=
g --warnings=3Dcross
automake: unknown warning category `cross'
configure.ac:81: installing `Source/autotools/compile'
configure.ac:21: installing `Source/autotools/config.guess'
configure.ac:21: installing `Source/autotools/config.sub'
configure.ac:41: installing `Source/autotools/install-sh'
configure.ac:41: installing `Source/autotools/missing'
GNUmakefile.am: installing `Source/autotools/depcomp'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running /home/local/bb_test2/tmp/work/armv7a-vfp-neon-poky-linux-gnue=
abi/webkit-gtk-1.7.2+svnr101488-r0//configure  --build=3Di686-linux 		  --h=
ost=3Darm-poky-linux-gnueabi 		  --target=3Darm-poky-linux-gnueabi 		  --pr=
efix=3D/usr 		  --exec_prefix=3D/usr 		  --bindir=3D/usr/bin 		  --sbindir=
=3D/usr/sbin 		  --libexecdir=3D/usr/libexec 		  --datadir=3D/usr/share 		 =
 --sysconfdir=3D/etc 		  --sharedstatedir=3D/com 		  --localstatedir=3D/var=
 		  --libdir=3D/usr/lib 		  --includedir=3D/usr/include 		  --oldincludedi=
r=3D/usr/include 		  --infodir=3D/usr/share/info 		  --mandir=3D/usr/share/=
man 		  --disable-silent-rules 		   		  --with-libtool-sysroot=3D/home/loca=
l/bb_test2/tmp/sysroots/beagleboard                 --enable-debug=3Dno    =
             --enable-svg                 --enable-icon-database=3Dyes     =
            --enable-fullscreen-api                 --enable-image-resizer =
                --enable-link-prefetch                 --with-gtk=3D2.0    =
             UNICODE_CFLAGS=3D-D_REENTRANT                =20
configure: loading site script /tmp/poky-multi/meta/site/endian-little
configure: loading site script /tmp/poky-multi/meta/site/arm-common
configure: loading site script /tmp/poky-multi/meta/site/common-linux
configure: loading site script /tmp/poky-multi/meta/site/common-glibc
configure: loading site script /tmp/poky-multi/meta/site/arm-linux
configure: loading site script /tmp/poky-multi/meta/site/common
configure: loading site script /home/local/bb_test2/tmp/sysroots/beagleboar=
d/usr/share/arm-poky-linux-gnueabi_config_site.d/eglibc_config
configure: loading site script /home/local/bb_test2/tmp/sysroots/beagleboar=
d/usr/share/arm-poky-linux-gnueabi_config_site.d/ncurses_config
configure: loading site script /home/local/bb_test2/tmp/sysroots/beagleboar=
d/usr/share/arm-poky-linux-gnueabi_config_site.d/zlib_config
checking build system type... i686-pc-linux-gnu
checking host system type... arm-poky-linux-gnueabi
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking how to create a ustar tar archive... gnutar
checking for native Win32... no
checking for style of include used by make... GNU
checking for arm-poky-linux-gnueabi-gcc... ccache arm-poky-linux-gnueabi-gc=
c  -march=3Darmv7-a -fno-tree-vectorize      -mthumb-interwork -mfloat-abi=
=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/=
tmp/sysroots/beagleboard
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...=20
checking whether we are cross compiling... yes
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-t=
ree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtu=
ne=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard ac=
cepts -g... yes
checking for ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-tree-=
vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=
=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard opti=
on to accept ISO C89... none needed
checking dependency style of ccache arm-poky-linux-gnueabi-gcc  -march=3Dar=
mv7-a -fno-tree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=
=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/be=
agleboard... gcc3
checking whether we are using the GNU C++ compiler... yes
checking whether ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -fno-t=
ree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtu=
ne=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard ac=
cepts -g... yes
checking dependency style of ccache arm-poky-linux-gnueabi-g++  -march=3Dar=
mv7-a -fno-tree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=
=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/be=
agleboard... gcc3
checking whether ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-t=
ree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtu=
ne=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard an=
d cc understand -c and -o together... yes
checking how to run the C preprocessor... arm-poky-linux-gnueabi-gcc -E --s=
ysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard  -march=3Darmv7-a -f=
no-tree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon =
-mtune=3Dcortex-a8
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... (cached) yes
checking for sys/types.h... (cached) yes
checking for sys/stat.h... (cached) yes
checking for stdlib.h... (cached) yes
checking for string.h... (cached) yes
checking for memory.h... (cached) yes
checking for strings.h... (cached) yes
checking for inttypes.h... (cached) yes
checking for stdint.h... (cached) yes
checking for unistd.h... (cached) yes
checking if ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard support=
s -fvisibility=3Dhidden -fvisibility-inlines-hidden... yes
checking for pkg-config... /home/local/bb_test2/tmp/sysroots/i686-linux/usr=
/bin/pkg-config
checking for perl... /usr/bin/perl
checking for python... /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin=
/python
checking for bison... /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin/=
bison
checking for mv... /bin/mv
checking for arm-poky-linux-gnueabi-gcc... (cached) ccache arm-poky-linux-g=
nueabi-gcc  -march=3Darmv7-a -fno-tree-vectorize      -mthumb-interwork -mf=
loat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/home/local/b=
b_test2/tmp/sysroots/beagleboard
checking whether we are using the GNU C compiler... (cached) yes
checking whether ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-t=
ree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtu=
ne=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard ac=
cepts -g... (cached) yes
checking for ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-tree-=
vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=
=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard opti=
on to accept ISO C89... (cached) none needed
checking dependency style of ccache arm-poky-linux-gnueabi-gcc  -march=3Dar=
mv7-a -fno-tree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=
=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/be=
agleboard... (cached) gcc3
checking for special C compiler options needed for large files... no
checking for _FILE_OFFSET_BITS value needed for large files... 64
checking for an ANSI C-conforming const... yes
checking for inline... inline
checking for working volatile... yes
checking for stdbool.h that conforms to C99... (cached) yes
checking for _Bool... yes
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for fgrep... /bin/grep -F
checking for ld used by ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a=
 -fno-tree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dne=
on -mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleb=
oard... arm-poky-linux-gnueabi-ld --sysroot=3D/home/local/bb_test2/tmp/sysr=
oots/beagleboard
checking if the linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/local/b=
b_test2/tmp/sysroots/beagleboard) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... arm-poky-linux-gnuea=
bi-nm
checking the name lister (arm-poky-linux-gnueabi-nm) interface... BSD nm
checking whether ln -s works... yes
checking the maximum length of command line arguments... 1966080
checking whether the shell understands some XSI constructs... yes
checking whether the shell understands "+=3D"... yes
checking how to convert i686-pc-linux-gnu file names to arm-poky-linux-gnue=
abi format... func_convert_file_noop
checking how to convert i686-pc-linux-gnu file names to toolchain format...=
 func_convert_file_noop
checking for arm-poky-linux-gnueabi-ld --sysroot=3D/home/local/bb_test2/tmp=
/sysroots/beagleboard option to reload object files... -r
checking for arm-poky-linux-gnueabi-objdump... arm-poky-linux-gnueabi-objdu=
mp
checking how to recognize dependent libraries... pass_all
checking for arm-poky-linux-gnueabi-dlltool... dlltool
checking how to associate runtime and link libraries... printf %s\n
checking for arm-poky-linux-gnueabi-ar... arm-poky-linux-gnueabi-ar
checking for archiver @FILE support... @
checking for arm-poky-linux-gnueabi-strip... (cached) arm-poky-linux-gnueab=
i-strip
checking for arm-poky-linux-gnueabi-ranlib... arm-poky-linux-gnueabi-ranlib
checking command to parse arm-poky-linux-gnueabi-nm output from ccache arm-=
poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-tree-vectorize      -mthumb-i=
nterwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/=
home/local/bb_test2/tmp/sysroots/beagleboard object... ok
checking for sysroot... /home/local/bb_test2/tmp/sysroots/beagleboard
checking for arm-poky-linux-gnueabi-mt... no
checking for mt... no
checking if : is a manifest tool... no
checking for dlfcn.h... (cached) yes
checking for objdir... .libs
checking if ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard support=
s -fno-rtti -fno-exceptions... no
checking for ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-tree-=
vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=
=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard opti=
on to produce PIC... -fPIC -DPIC
checking if ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard PIC fla=
g -fPIC -DPIC works... yes
checking if ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard static =
flag -static works... yes
checking if ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard support=
s -c -o file.o... yes
checking if ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard support=
s -c -o file.o... (cached) yes
checking whether the ccache arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -f=
no-tree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon =
-mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboar=
d linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/local/bb_test2/tmp/sy=
sroots/beagleboard) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no
checking how to run the C++ preprocessor... ccache arm-poky-linux-gnueabi-g=
++  -march=3Darmv7-a -fno-tree-vectorize      -mthumb-interwork -mfloat-abi=
=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/=
tmp/sysroots/beagleboard -E
checking for ld used by ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a=
 -fno-tree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dne=
on -mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleb=
oard... arm-poky-linux-gnueabi-ld --sysroot=3D/home/local/bb_test2/tmp/sysr=
oots/beagleboard
checking if the linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/local/b=
b_test2/tmp/sysroots/beagleboard) is GNU ld... yes
checking whether the ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -f=
no-tree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon =
-mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboar=
d linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/local/bb_test2/tmp/sy=
sroots/beagleboard) supports shared libraries... yes
checking for ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -fno-tree-=
vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=
=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard opti=
on to produce PIC... -fPIC -DPIC
checking if ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard PIC fla=
g -fPIC -DPIC works... yes
checking if ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortexERROR: Function 'do_configure' failed (see /home/local/bb_test2/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/webkit-gtk-1.7.2+svnr101488-r0/temp/=
log.do_configure.4343 for further information)
-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard static flag -=
static works... yes
checking if ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard support=
s -c -o file.o... yes
checking if ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -fno-tree-v=
ectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3D=
cortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboard support=
s -c -o file.o... (cached) yes
checking whether the ccache arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -f=
no-tree-vectorize      -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon =
-mtune=3Dcortex-a8 --sysroot=3D/home/local/bb_test2/tmp/sysroots/beagleboar=
d linker (arm-poky-linux-gnueabi-ld --sysroot=3D/home/local/bb_test2/tmp/sy=
sroots/beagleboard) supports shared libraries... yes
checking dynamic linker characteristics... (cached) GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking for flex... /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin/f=
lex
checking for gawk... (cached) gawk
checking for gperf... /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin/=
gperf
checking for pthread.h... (cached) yes
checking for pthread_rwlock_init in -lpthread... yes
checking for jpeg_destroy_decompress in -ljpeg... yes
checking for jpeglib... yes
checking for libpng... yes
checking the GTK+ version to use... 2.0
checking the target windowing system... x11
checking for Hildon UI extensions... no
checking for arm-poky-linux-gnueabi-pkg-config... (cached) /home/local/bb_t=
est2/tmp/sysroots/i686-linux/usr/bin/pkg-config
checking pkg-config is at least version 0.16... yes
checking for GLIB - version >=3D 2.27.90... cross compiling; assumed OK...=
=20
yes (version 2.30.2)
checking for arm-poky-linux-gnueabi-pkg-config... (cached) /home/local/bb_t=
est2/tmp/sysroots/i686-linux/usr/bin/pkg-config
checking pkg-config is at least version 0.16... yes
checking for glib-compile-schemas... /home/local/bb_test2/tmp/sysroots/i686=
-linux/usr/bin/glib-compile-schemas
checking which Unicode backend to use... icu
checking for icu-config... /home/local/bb_test2/tmp/sysroots/beagleboard/us=
r/bin/crossscripts/icu-config
checking for ZLIB... yes
checking for LIBXML... yes
checking for PANGO... yes
checking whether to enable spellcheck support... yes
checking for ENCHANT... yes
checking for GAIL... yes
checking for CAIRO... yes
checking for GTK... yes
checking for XT... yes
checking whether to do a debug build... no
checking whether to enable optimized builds... yes
checking whether to enable support for 3D Rendering... no
checking whether to enable WebGL support... yes
checking GL/gl.h usability... no
checking GL/gl.h presence... no
checking for GL/gl.h... no
configure: error: OpenGL header not found
ERROR: oe_runconf failed

--------------060606040801020305060906--
