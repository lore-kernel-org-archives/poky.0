Subject: Issues with bootable iso build using wic
To: poky@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 03:55:38 -0700
Message-ID: <3Sb7.1592391338622498285.XhC1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="V7FaeVBnkuBv38bZ2Fzo"

--V7FaeVBnkuBv38bZ2Fzo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am trying to build a bootable iso using mkhybridiso.wks and I am not abl=
e to get through.

In my local.conf, I am using this
IMAGE_FSTYPES =3D "ext4 iso wic"
WKS_FILE =3D "mkhybridiso.wks"

Then when I try to create an iso using=C2=A0wic create /opt/graylog-poky/s=
cripts/lib/wic/canned-wks/mkhybridiso.wks -f -e core-image-full-cmdline. It=
 gave me the following error:

INFO: Building rootfs...

Loading cache: 100% |#####################################################=
#############################################################| Time: 0:00:0=
0
Loaded 1300 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "1.44.0"
BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-linux"
NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"
TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-poky-linux"
MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "genericx86-64=
"
DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky"
DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "3.0.3"
TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "m64 core2"
TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D ""
meta
meta-poky
meta-yocto-bsp
meta-graylog =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "zeus-v3.0.3:912757a10cc09d02=
ced6a349983ff349104c47a2"

Initialising tasks: 100% |################################################=
#############################################################| Time: 0:00:0=
3
Checking sstate mirror object availability: 100% |########################=
#############################################################| Time: 0:00:0=
2
NOTE: Executing Tasks
NOTE: Setscene tasks completed
ERROR: core-image-full-cmdline-1.0-r0 do_image_wic: Execution of '/opt/gra=
ylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-cmdline/1=
.0-r0/temp/run.do_image_wic.25067' failed with exit code 1:
INFO: Creating image(s)...

INFO: The new image(s) can be found here:
/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-=
cmdline/1.0-r0/deploy-core-image-full-cmdline-image-complete/core-image-ful=
l-cmdline-genericx86-64-20200617065836/HYBRID_ISO_IMG-cd.direct

The following build artifacts were used to create the image(s):
ROOTFS_DIR["/boot"]: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/graylog-poky/b=
uild/tmp/work/genericx86_64-poky-linux/core-image-full-cmdline/1.0-r0/rootf=
s
BOOTIMG_DIR: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-fu=
ll-cmdline/1.0-r0/recipe-sysroot/usr/share
KERNEL_DIR: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 /opt/graylog-poky/build/tmp/deploy/images/genericx86-64
NATIVE_SYSROOT: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /opt/gray=
log-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-cmdline/1.=
0-r0/recipe-sysroot-native

INFO: The image(s) were created using OE kickstart file:
/opt/graylog-poky/scripts/lib/wic/canned-wks/mkhybridiso.wks
mv: cannot stat '/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux=
/core-image-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image-comple=
te/core-image-full-cmdline-genericx86-64-20200617065836/mkhybridiso*.direct=
': No such file or directory
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /opt/graylog-poky/build/tmp/work/gene=
ricx86_64-poky-linux/core-image-full-cmdline/1.0-r0/temp/log.do_image_wic.2=
5067
Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: 618638.800000 =3D 475876 * 1.300000
| DEBUG: 618638.800000 =3D max(618638.800000, 65536)[618638.800000] + 0
| DEBUG: 618639.000000 =3D int(618638.800000)
| DEBUG: 618639 =3D aligned(618639)
| DEBUG: returning 618639
| DEBUG: Python function set_image_size finished
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['/opt/graylog-poky/meta/recipes-devtools/=
binutils/binutils-cross_2.32.bb:do_populate_sysroot', 'virtual:native:/opt/=
graylog-poky/meta/recipes-support/bmap-tools/bmap-tools_3.5.bb:do_populate_=
sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-extended/pigz/pigz=
_2.4.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-core/systemd/=
systemd-boot_243.2.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-po=
ky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_sysroot', '=
virtual:native:/opt/graylog-poky/meta/recipes-devtools/autoconf/autoconf_2.=
69.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-=
devtools/e2fsprogs/e2fsprogs_1.45.3.bb:do_populate_sysroot', 'virtual:nativ=
e:/opt/graylog-poky/meta/recipes-devtools/syslinux/syslinux_6.04-pre2.bb:do=
_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools=
/automake/automake_1.16.1.bb:do_populate_sysroot', 'virtual:native:/opt/gra=
ylog-poky/meta/recipes-core/util-linux/util-linux_2.34.bb:do_populate_sysro=
ot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/ninja/ninja_1.=
9.0.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes=
-extended/parted/parted_3.2.bb:do_populate_sysroot', 'virtual:native:/opt/g=
raylog-poky/meta/recipes-devtools/flex/flex_2.6.0.bb:do_populate_sysroot', =
'virtual:native:/opt/graylog-poky/meta/recipes-devtools/intltool/intltool_0=
.51.0.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recip=
es-devtools/squashfs-tools/squashfs-tools_git.bb:do_populate_sysroot', '/op=
t/graylog-poky/meta/recipes-devtools/mklibs/mklibs-native_0.1.44.bb:do_popu=
late_sysroot', '/opt/graylog-poky/meta/recipes-devtools/cdrtools/cdrtools-n=
ative_3.01.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-core/gl=
ibc/ldconfig-native_2.12.1.bb:do_populate_sysroot', '/opt/graylog-poky/meta=
/recipes-bsp/gnu-efi/gnu-efi_3.0.9.bb:do_populate_sysroot', 'virtual:native=
:/opt/graylog-poky/meta/recipes-devtools/elfutils/elfutils_0.177.bb:do_popu=
late_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/btrf=
s-tools/btrfs-tools_5.2.2.bb:do_populate_sysroot', 'virtual:native:/opt/gra=
ylog-poky/meta/recipes-support/lzop/lzop_1.04.bb:do_populate_sysroot', 'vir=
tual:native:/opt/graylog-poky/meta/recipes-devtools/opkg-utils/opkg-utils_0=
.4.2.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipe=
s-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot', '/opt/graylog-p=
oky/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot=
', 'virtual:native:/opt/graylog-poky/meta/recipes-bsp/grub/grub-efi_2.04.bb=
:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-kernel/kern-tools/ke=
rn-tools-native_git.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipe=
s-devtools/libtool/libtool-cross_2.4.6.bb:do_populate_sysroot', '/opt/grayl=
og-poky/meta/recipes-extended/texinfo-dummy-native/texinfo-dummy-native.bb:=
do_populate_sysroot', '/opt/graylog-poky/meta/recipes-core/glibc/cross-loca=
ledef-native_2.30.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-=
devtools/syslinux/syslinux_6.04-pre2.bb:do_populate_sysroot', '/opt/graylog=
-poky/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_populate_sysroot'=
, 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/gnu-config/gnu-co=
nfig_git.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-kernel/km=
od/depmodwrapper-cross_1.0.bb:do_populate_sysroot', 'virtual:native:/opt/gr=
aylog-poky/meta/recipes-devtools/meson/meson_0.51.2.bb:do_populate_sysroot'=
, 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/patch/patch_2.7.6=
.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-de=
vtools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virtual:native:/opt/gray=
log-poky/meta/recipes-devtools/dosfstools/dosfstools_4.1.bb:do_populate_sys=
root', '/opt/graylog-poky/meta/recipes-devtools/apt/apt-native_1.2.31.bb:do=
_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-core/get=
text/gettext_0.19.8.1.bb:do_populate_sysroot', '/opt/graylog-poky/meta/reci=
pes-devtools/gcc/gcc-cross_9.2.bb:do_populate_sysroot', 'virtual:native:/op=
t/graylog-poky/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb:do_popul=
ate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/maked=
evs/makedevs_1.0.1.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-po=
ky/meta/recipes-extended/bc/bc_1.07.1.bb:do_populate_sysroot', 'virtual:nat=
ive:/opt/graylog-poky/meta/recipes-devtools/mtools/mtools_4.0.23.bb:do_popu=
late_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-extended/xz/x=
z_5.2.4.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/rec=
ipes-extended/gperf/gperf_3.1.bb:do_populate_sysroot', '/opt/graylog-poky/m=
eta/recipes-devtools/gcc/gcc-runtime_9.2.bb:do_populate_sysroot', 'virtual:=
native:/opt/graylog-poky/meta/recipes-devtools/fdisk/gptfdisk_1.0.4.bb:do_p=
opulate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/d=
pkg/dpkg_1.19.7.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-co=
re/util-linux/util-linux_2.34.bb:do_populate_sysroot', '/opt/graylog-poky/m=
eta/recipes-core/glibc/glibc_2.30.bb:do_populate_sysroot', 'virtual:native:=
/opt/graylog-poky/meta/recipes-devtools/bison/bison_3.4.1.bb:do_populate_sy=
sroot', '/opt/graylog-poky/meta/recipes-bsp/grub/grub-efi_2.04.bb:do_popula=
te_sysroot', '/opt/graylog-poky/meta/recipes-devtools/libtool/libtool-nativ=
e_2.4.6.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-support/li=
bcap/libcap_2.27.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-k=
ernel/kmod/kmod-native_git.bb:do_populate_sysroot', '/opt/graylog-poky/meta=
/recipes-core/gettext/gettext-minimal-native_0.19.8.1.bb:do_populate_sysroo=
t', '/opt/graylog-poky/meta/recipes-kernel/linux/linux-yocto_5.2.bb:do_popu=
late_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/pyth=
on/python3_3.7.7.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky=
/meta/recipes-devtools/prelink/prelink_git.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['binutils-cross-x86_64', '=
bmap-tools-native', 'pigz-native', 'systemd-boot', 'update-rc.d-native', 'a=
utoconf-native', 'e2fsprogs-native', 'syslinux-native', 'automake-native', =
'util-linux-native', 'ninja-native', 'parted-native', 'flex-native', 'intlt=
ool-native', 'squashfs-tools-native', 'mklibs-native', 'cdrtools-native', '=
ldconfig-native', 'gnu-efi', 'elfutils-native', 'btrfs-tools-native', 'lzop=
-native', 'opkg-utils-native', 'pkgconfig-native', 'qemuwrapper-cross', 'gr=
ub-efi-native', 'kern-tools-native', 'libtool-cross', 'texinfo-dummy-native=
', 'cross-localedef-native', 'syslinux', 'quilt-native', 'gnu-config-native=
', 'depmodwrapper-cross', 'meson-native', 'patch-native', 'pseudo-native', =
'dosfstools-native', 'apt-native', 'gettext-native', 'gcc-cross-x86_64', 'o=
penssl-native', 'makedevs-native', 'bc-native', 'mtools-native', 'xz-native=
', 'gperf-native', 'gcc-runtime', 'gptfdisk-native', 'dpkg-native', 'util-l=
inux', 'glibc', 'bison-native', 'grub-efi', 'libtool-native', 'libcap', 'km=
od-native', 'gettext-minimal-native', 'linux-yocto', 'python3-native', 'pre=
link-native', 'systemd-systemctl-native', 'zlib-native', 'python3-six-nativ=
e', 'python3-setuptools-native', 'm4-native', 'qemu-native', 'shadow-native=
', 'libcap-ng-native', 'ncurses-native', 'readline-native', 'libxml-parser-=
perl-native', 'acl-native', 'attr-native', 'lzo-native', 'glib-2.0-native',=
 'gtk+3-native', 'gdk-pixbuf-native', 'e2fsprogs', 'debianutils-native', 'd=
b-native', 'curl-native', 'linux-libc-headers', 'libgcc', 'gtk-doc-native',=
 'binutils-native', 'nasm-native', 're2c-native', 'lz4-native', 'cpio-nativ=
e', 'mpfr-native', 'libmpc-native', 'gmp-native', 'popt-native', 'perl-nati=
ve', 'bzip2-native', 'ncurses', 'opkg-utils', 'bash-completion', 'libxcrypt=
', 'libcap-ng', 'zlib', 'libffi-native', 'libnsl2-native', 'gdbm-native', '=
libtirpc-native', 'sqlite3-native', 'unzip-native', 'expat-native', 'libpcr=
e-native', 'libxfixes-native', 'libxcomposite-native', 'libxcursor-native',=
 'libx11-native', 'fontconfig-native', 'libpng-native', 'pango-native', 'at=
-spi2-atk-native', 'libxdamage-native', 'libxrender-native', 'atk-native', =
'cairo-native', 'gobject-introspection-native', 'libxi-native', 'libjpeg-tu=
rbo-native', 'libxext-native', 'libxrandr-native', 'shared-mime-info-native=
', 'attr', 'groff-native', 'xorgproto-native', 'util-macros-native', 'xtran=
s-native', 'libxcb-native', 'freetype-native', 'fribidi-native', 'libxft-na=
tive', 'harfbuzz-native', 'libxml2-native', 'at-spi2-core-native', 'dbus-na=
tive', 'libsm-native', 'pixman-native', 'cmake-native', 'libxdmcp-native', =
'libxau-native', 'xcb-proto-native', 'libpthread-stubs-native', 'icu-native=
', 'libxtst-native', 'libice-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_image_wic
| INFO: Creating image(s)...
|
| INFO: The new image(s) can be found here:
| =C2=A0 /opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-im=
age-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image-complete/core-=
image-full-cmdline-genericx86-64-20200617065836/HYBRID_ISO_IMG-cd.direct
|
| The following build artifacts were used to create the image(s):
| =C2=A0 ROOTFS_DIR["/boot"]: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/grayl=
og-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-cmdline/1.0=
-r0/rootfs
| =C2=A0 BOOTIMG_DIR: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-i=
mage-full-cmdline/1.0-r0/recipe-sysroot/usr/share
| =C2=A0 KERNEL_DIR: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /opt/graylog-poky/build/tmp/deploy/images/genericx86-64
| =C2=A0 NATIVE_SYSROOT: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-c=
mdline/1.0-r0/recipe-sysroot-native
|
| INFO: The image(s) were created using OE kickstart file:
| =C2=A0 /opt/graylog-poky/scripts/lib/wic/canned-wks/mkhybridiso.wks
| mv: cannot stat '/opt/graylog-poky/build/tmp/work/genericx86_64-poky-lin=
ux/core-image-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image-comp=
lete/core-image-full-cmdline-genericx86-64-20200617065836/mkhybridiso*.dire=
ct': No such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/opt/graylog-poky/build/tmp/work/genericx86_64-poky=
-linux/core-image-full-cmdline/1.0-r0/temp/run.do_image_wic.25067' failed w=
ith exit code 1:
| INFO: Creating image(s)...
|
| INFO: The new image(s) can be found here:
| =C2=A0 /opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-im=
age-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image-complete/core-=
image-full-cmdline-genericx86-64-20200617065836/HYBRID_ISO_IMG-cd.direct
|
| The following build artifacts were used to create the image(s):
| =C2=A0 ROOTFS_DIR["/boot"]: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/grayl=
og-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-cmdline/1.0=
-r0/rootfs
| =C2=A0 BOOTIMG_DIR: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-i=
mage-full-cmdline/1.0-r0/recipe-sysroot/usr/share
| =C2=A0 KERNEL_DIR: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /opt/graylog-poky/build/tmp/deploy/images/genericx86-64
| =C2=A0 NATIVE_SYSROOT: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-c=
mdline/1.0-r0/recipe-sysroot-native
|
| INFO: The image(s) were created using OE kickstart file:
| =C2=A0 /opt/graylog-poky/scripts/lib/wic/canned-wks/mkhybridiso.wks
| mv: cannot stat '/opt/graylog-poky/build/tmp/work/genericx86_64-poky-lin=
ux/core-image-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image-comp=
lete/core-image-full-cmdline-genericx86-64-20200617065836/mkhybridiso*.dire=
ct': No such file or directory
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/opt/graylog-poky/meta/recipes-extended/images/core-image-ful=
l-cmdline.bb:do_image_wic) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4476 tasks of which 4475 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
/opt/graylog-poky/meta/recipes-extended/images/core-image-full-cmdline.bb:=
do_image_wic
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
Traceback (most recent call last):
File "/opt/graylog-poky/scripts/wic", line 525, in <module>
sys.exit(main(sys.argv[1:]))
File "/opt/graylog-poky/scripts/wic", line 520, in main
return hlp.invoke_subcommand(args, parser, hlp.wic_help_usage, subcommands=
)
File "/opt/graylog-poky/scripts/lib/wic/help.py", line 83, in invoke_subco=
mmand
subcmd[0](args, usage)
File "/opt/graylog-poky/scripts/wic", line 147, in wic_create_subcommand
subprocess.check_call(argv)
File "/usr/lib/python3.7/subprocess.py", line 347, in check_call
raise CalledProcessError(retcode, cmd)
subprocess.CalledProcessError: Command '['bitbake', 'core-image-full-cmdli=
ne']' returned non-zero exit status 1.

I changed the line in mkhybridiso.wks from part /boot --source isoimage-is=
ohybrid --sourceparams=3D"loader=3Dgrub-efi,image_name=3DHYBRID_ISO_IMG" --=
ondisk cd --label HYBRIDISO to part /boot --source isoimage-isohybrid --sou=
rceparams=3D"loader=3Dgrub-efi,image_name=3Dmkhybridiso" --ondisk cd --labe=
l mkhybridiso. Then I am able to create the=C2=A0mkhybridiso-cd.direct and=
=C2=A0mkhybridiso-cd.iso.

But the problem is that they are just 44MB in size. It seems that the root=
fs is not getting attached to the build. Can someone help me with this. My =
ultimate objective is to build an iso that I can run on vmware.

Thanks

--V7FaeVBnkuBv38bZ2Fzo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I am trying to build a bootable iso using mkhybridiso.wk=
s and I am not able to get through.&nbsp;<br /><br />In my local.conf, I am=
 using this<br />IMAGE_FSTYPES =3D "ext4 iso wic"<br />WKS_FILE =3D "mkhybr=
idiso.wks"<br /><br />Then when I try to create an iso using&nbsp;wic creat=
e /opt/graylog-poky/scripts/lib/wic/canned-wks/mkhybridiso.wks -f -e core-i=
mage-full-cmdline. It gave me the following error:<br /><br />
<div>INFO: Building rootfs...</div>
<div>&nbsp;</div>
<div>Loading cache: 100% |################################################=
##################################################################| Time: 0=
:00:00</div>
<div>Loaded 1300 entries from dependency cache.</div>
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>&nbsp;</div>
<div>Build Configuration:</div>
<div>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "1.44.0"</div>
<div>BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "x86_64-linux"=
</div>
<div>NATIVELSBSTRING &nbsp; &nbsp; &nbsp;=3D "universal"</div>
<div>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-poky-linux"=
</div>
<div>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "genericx=
86-64"</div>
<div>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "poky"</d=
iv>
<div>DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D "3.0.3"</div>
<div>TUNE_FEATURES &nbsp; &nbsp; &nbsp; &nbsp;=3D "m64 core2"</div>
<div>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D ""</div>
<div>meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</d=
iv>
<div>meta-poky &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-yocto-bsp &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-graylog &nbsp; &nbsp; &nbsp; &nbsp; =3D "zeus-v3.0.3:912757a10cc=
09d02ced6a349983ff349104c47a2"</div>
<div>&nbsp;</div>
<div>Initialising tasks: 100% |###########################################=
##################################################################| Time: 0=
:00:03</div>
<div>Checking sstate mirror object availability: 100% |###################=
##################################################################| Time: 0=
:00:02</div>
<div>NOTE: Executing Tasks</div>
<div>NOTE: Setscene tasks completed</div>
<div>ERROR: core-image-full-cmdline-1.0-r0 do_image_wic: Execution of '/op=
t/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-cmdl=
ine/1.0-r0/temp/run.do_image_wic.25067' failed with exit code 1:</div>
<div>INFO: Creating image(s)...</div>
<div>&nbsp;</div>
<div>INFO: The new image(s) can be found here:</div>
<div>&nbsp; /opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core=
-image-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image-complete/co=
re-image-full-cmdline-genericx86-64-20200617065836/HYBRID_ISO_IMG-cd.direct=
</div>
<div>&nbsp;</div>
<div>The following build artifacts were used to create the image(s):</div>
<div>&nbsp; ROOTFS_DIR["/boot"]: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/opt/gr=
aylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-cmdline/=
1.0-r0/rootfs</div>
<div>&nbsp; BOOTIMG_DIR: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core=
-image-full-cmdline/1.0-r0/recipe-sysroot/usr/share</div>
<div>&nbsp; KERNEL_DIR: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; /opt/graylog-poky/build/tmp/deploy/images/genericx86-64</div>
<div>&nbsp; NATIVE_SYSROOT: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; /opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-ful=
l-cmdline/1.0-r0/recipe-sysroot-native</div>
<div>&nbsp;</div>
<div>INFO: The image(s) were created using OE kickstart file:</div>
<div>&nbsp; /opt/graylog-poky/scripts/lib/wic/canned-wks/mkhybridiso.wks</=
div>
<div>mv: cannot stat '/opt/graylog-poky/build/tmp/work/genericx86_64-poky-=
linux/core-image-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image-c=
omplete/core-image-full-cmdline-genericx86-64-20200617065836/mkhybridiso*.d=
irect': No such file or directory</div>
<div>WARNING: exit code 1 from a shell command.</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: /opt/graylog-poky/build/tmp/work=
/genericx86_64-poky-linux/core-image-full-cmdline/1.0-r0/temp/log.do_image_=
wic.25067</div>
<div>Log data follows:</div>
<div>| DEBUG: Executing python function set_image_size</div>
<div>| DEBUG: 618638.800000 =3D 475876 * 1.300000</div>
<div>| DEBUG: 618638.800000 =3D max(618638.800000, 65536)[618638.800000] +=
 0</div>
<div>| DEBUG: 618639.000000 =3D int(618638.800000)</div>
<div>| DEBUG: 618639 =3D aligned(618639)</div>
<div>| DEBUG: returning 618639</div>
<div>| DEBUG: Python function set_image_size finished</div>
<div>| DEBUG: Executing python function extend_recipe_sysroot</div>
<div>| NOTE: Direct dependencies are ['/opt/graylog-poky/meta/recipes-devt=
ools/binutils/binutils-cross_2.32.bb:do_populate_sysroot', 'virtual:native:=
/opt/graylog-poky/meta/recipes-support/bmap-tools/bmap-tools_3.5.bb:do_popu=
late_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-extended/pigz=
/pigz_2.4.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-core/sys=
temd/systemd-boot_243.2.bb:do_populate_sysroot', 'virtual:native:/opt/grayl=
og-poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_sysroo=
t', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/autoconf/autoco=
nf_2.69.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/rec=
ipes-devtools/e2fsprogs/e2fsprogs_1.45.3.bb:do_populate_sysroot', 'virtual:=
native:/opt/graylog-poky/meta/recipes-devtools/syslinux/syslinux_6.04-pre2.=
bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-dev=
tools/automake/automake_1.16.1.bb:do_populate_sysroot', 'virtual:native:/op=
t/graylog-poky/meta/recipes-core/util-linux/util-linux_2.34.bb:do_populate_=
sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/ninja/nin=
ja_1.9.0.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/re=
cipes-extended/parted/parted_3.2.bb:do_populate_sysroot', 'virtual:native:/=
opt/graylog-poky/meta/recipes-devtools/flex/flex_2.6.0.bb:do_populate_sysro=
ot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/intltool/intlt=
ool_0.51.0.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/=
recipes-devtools/squashfs-tools/squashfs-tools_git.bb:do_populate_sysroot',=
 '/opt/graylog-poky/meta/recipes-devtools/mklibs/mklibs-native_0.1.44.bb:do=
_populate_sysroot', '/opt/graylog-poky/meta/recipes-devtools/cdrtools/cdrto=
ols-native_3.01.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-co=
re/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot', '/opt/graylog-poky=
/meta/recipes-bsp/gnu-efi/gnu-efi_3.0.9.bb:do_populate_sysroot', 'virtual:n=
ative:/opt/graylog-poky/meta/recipes-devtools/elfutils/elfutils_0.177.bb:do=
_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools=
/btrfs-tools/btrfs-tools_5.2.2.bb:do_populate_sysroot', 'virtual:native:/op=
t/graylog-poky/meta/recipes-support/lzop/lzop_1.04.bb:do_populate_sysroot',=
 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/opkg-utils/opkg-ut=
ils_0.4.2.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/r=
ecipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot', '/opt/gray=
log-poky/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sy=
sroot', 'virtual:native:/opt/graylog-poky/meta/recipes-bsp/grub/grub-efi_2.=
04.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-kernel/kern-too=
ls/kern-tools-native_git.bb:do_populate_sysroot', '/opt/graylog-poky/meta/r=
ecipes-devtools/libtool/libtool-cross_2.4.6.bb:do_populate_sysroot', '/opt/=
graylog-poky/meta/recipes-extended/texinfo-dummy-native/texinfo-dummy-nativ=
e.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-core/glibc/cross=
-localedef-native_2.30.bb:do_populate_sysroot', '/opt/graylog-poky/meta/rec=
ipes-devtools/syslinux/syslinux_6.04-pre2.bb:do_populate_sysroot', '/opt/gr=
aylog-poky/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_populate_sys=
root', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/gnu-config/g=
nu-config_git.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-kern=
el/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot', 'virtual:native:/o=
pt/graylog-poky/meta/recipes-devtools/meson/meson_0.51.2.bb:do_populate_sys=
root', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/patch/patch_=
2.7.6.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recip=
es-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virtual:native:/opt=
/graylog-poky/meta/recipes-devtools/dosfstools/dosfstools_4.1.bb:do_populat=
e_sysroot', '/opt/graylog-poky/meta/recipes-devtools/apt/apt-native_1.2.31.=
bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-cor=
e/gettext/gettext_0.19.8.1.bb:do_populate_sysroot', '/opt/graylog-poky/meta=
/recipes-devtools/gcc/gcc-cross_9.2.bb:do_populate_sysroot', 'virtual:nativ=
e:/opt/graylog-poky/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb:do_=
populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools/=
makedevs/makedevs_1.0.1.bb:do_populate_sysroot', 'virtual:native:/opt/grayl=
og-poky/meta/recipes-extended/bc/bc_1.07.1.bb:do_populate_sysroot', 'virtua=
l:native:/opt/graylog-poky/meta/recipes-devtools/mtools/mtools_4.0.23.bb:do=
_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-extended=
/xz/xz_5.2.4.bb:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/met=
a/recipes-extended/gperf/gperf_3.1.bb:do_populate_sysroot', '/opt/graylog-p=
oky/meta/recipes-devtools/gcc/gcc-runtime_9.2.bb:do_populate_sysroot', 'vir=
tual:native:/opt/graylog-poky/meta/recipes-devtools/fdisk/gptfdisk_1.0.4.bb=
:do_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devto=
ols/dpkg/dpkg_1.19.7.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recip=
es-core/util-linux/util-linux_2.34.bb:do_populate_sysroot', '/opt/graylog-p=
oky/meta/recipes-core/glibc/glibc_2.30.bb:do_populate_sysroot', 'virtual:na=
tive:/opt/graylog-poky/meta/recipes-devtools/bison/bison_3.4.1.bb:do_popula=
te_sysroot', '/opt/graylog-poky/meta/recipes-bsp/grub/grub-efi_2.04.bb:do_p=
opulate_sysroot', '/opt/graylog-poky/meta/recipes-devtools/libtool/libtool-=
native_2.4.6.bb:do_populate_sysroot', '/opt/graylog-poky/meta/recipes-suppo=
rt/libcap/libcap_2.27.bb:do_populate_sysroot', '/opt/graylog-poky/meta/reci=
pes-kernel/kmod/kmod-native_git.bb:do_populate_sysroot', '/opt/graylog-poky=
/meta/recipes-core/gettext/gettext-minimal-native_0.19.8.1.bb:do_populate_s=
ysroot', '/opt/graylog-poky/meta/recipes-kernel/linux/linux-yocto_5.2.bb:do=
_populate_sysroot', 'virtual:native:/opt/graylog-poky/meta/recipes-devtools=
/python/python3_3.7.7.bb:do_populate_sysroot', 'virtual:native:/opt/graylog=
-poky/meta/recipes-devtools/prelink/prelink_git.bb:do_populate_sysroot']</d=
iv>
<div>| NOTE: Installed into sysroot: []</div>
<div>| NOTE: Skipping as already exists in sysroot: ['binutils-cross-x86_6=
4', 'bmap-tools-native', 'pigz-native', 'systemd-boot', 'update-rc.d-native=
', 'autoconf-native', 'e2fsprogs-native', 'syslinux-native', 'automake-nati=
ve', 'util-linux-native', 'ninja-native', 'parted-native', 'flex-native', '=
intltool-native', 'squashfs-tools-native', 'mklibs-native', 'cdrtools-nativ=
e', 'ldconfig-native', 'gnu-efi', 'elfutils-native', 'btrfs-tools-native', =
'lzop-native', 'opkg-utils-native', 'pkgconfig-native', 'qemuwrapper-cross'=
, 'grub-efi-native', 'kern-tools-native', 'libtool-cross', 'texinfo-dummy-n=
ative', 'cross-localedef-native', 'syslinux', 'quilt-native', 'gnu-config-n=
ative', 'depmodwrapper-cross', 'meson-native', 'patch-native', 'pseudo-nati=
ve', 'dosfstools-native', 'apt-native', 'gettext-native', 'gcc-cross-x86_64=
', 'openssl-native', 'makedevs-native', 'bc-native', 'mtools-native', 'xz-n=
ative', 'gperf-native', 'gcc-runtime', 'gptfdisk-native', 'dpkg-native', 'u=
til-linux', 'glibc', 'bison-native', 'grub-efi', 'libtool-native', 'libcap'=
, 'kmod-native', 'gettext-minimal-native', 'linux-yocto', 'python3-native',=
 'prelink-native', 'systemd-systemctl-native', 'zlib-native', 'python3-six-=
native', 'python3-setuptools-native', 'm4-native', 'qemu-native', 'shadow-n=
ative', 'libcap-ng-native', 'ncurses-native', 'readline-native', 'libxml-pa=
rser-perl-native', 'acl-native', 'attr-native', 'lzo-native', 'glib-2.0-nat=
ive', 'gtk+3-native', 'gdk-pixbuf-native', 'e2fsprogs', 'debianutils-native=
', 'db-native', 'curl-native', 'linux-libc-headers', 'libgcc', 'gtk-doc-nat=
ive', 'binutils-native', 'nasm-native', 're2c-native', 'lz4-native', 'cpio-=
native', 'mpfr-native', 'libmpc-native', 'gmp-native', 'popt-native', 'perl=
-native', 'bzip2-native', 'ncurses', 'opkg-utils', 'bash-completion', 'libx=
crypt', 'libcap-ng', 'zlib', 'libffi-native', 'libnsl2-native', 'gdbm-nativ=
e', 'libtirpc-native', 'sqlite3-native', 'unzip-native', 'expat-native', 'l=
ibpcre-native', 'libxfixes-native', 'libxcomposite-native', 'libxcursor-nat=
ive', 'libx11-native', 'fontconfig-native', 'libpng-native', 'pango-native'=
, 'at-spi2-atk-native', 'libxdamage-native', 'libxrender-native', 'atk-nati=
ve', 'cairo-native', 'gobject-introspection-native', 'libxi-native', 'libjp=
eg-turbo-native', 'libxext-native', 'libxrandr-native', 'shared-mime-info-n=
ative', 'attr', 'groff-native', 'xorgproto-native', 'util-macros-native', '=
xtrans-native', 'libxcb-native', 'freetype-native', 'fribidi-native', 'libx=
ft-native', 'harfbuzz-native', 'libxml2-native', 'at-spi2-core-native', 'db=
us-native', 'libsm-native', 'pixman-native', 'cmake-native', 'libxdmcp-nati=
ve', 'libxau-native', 'xcb-proto-native', 'libpthread-stubs-native', 'icu-n=
ative', 'libxtst-native', 'libice-native']</div>
<div>| DEBUG: Python function extend_recipe_sysroot finished</div>
<div>| DEBUG: Executing shell function do_image_wic</div>
<div>| INFO: Creating image(s)...</div>
<div>|&nbsp;</div>
<div>| INFO: The new image(s) can be found here:</div>
<div>| &nbsp; /opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/co=
re-image-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image-complete/=
core-image-full-cmdline-genericx86-64-20200617065836/HYBRID_ISO_IMG-cd.dire=
ct</div>
<div>|&nbsp;</div>
<div>| The following build artifacts were used to create the image(s):</di=
v>
<div>| &nbsp; ROOTFS_DIR["/boot"]: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/opt/=
graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-cmdlin=
e/1.0-r0/rootfs</div>
<div>| &nbsp; BOOTIMG_DIR: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/co=
re-image-full-cmdline/1.0-r0/recipe-sysroot/usr/share</div>
<div>| &nbsp; KERNEL_DIR: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; /opt/graylog-poky/build/tmp/deploy/images/genericx86-64</div=
>
<div>| &nbsp; NATIVE_SYSROOT: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; /opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-f=
ull-cmdline/1.0-r0/recipe-sysroot-native</div>
<div>|&nbsp;</div>
<div>| INFO: The image(s) were created using OE kickstart file:</div>
<div>| &nbsp; /opt/graylog-poky/scripts/lib/wic/canned-wks/mkhybridiso.wks=
</div>
<div>| mv: cannot stat '/opt/graylog-poky/build/tmp/work/genericx86_64-pok=
y-linux/core-image-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image=
-complete/core-image-full-cmdline-genericx86-64-20200617065836/mkhybridiso*=
.direct': No such file or directory</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Execution of '/opt/graylog-poky/build/tmp/work/genericx86_64=
-poky-linux/core-image-full-cmdline/1.0-r0/temp/run.do_image_wic.25067' fai=
led with exit code 1:</div>
<div>| INFO: Creating image(s)...</div>
<div>|&nbsp;</div>
<div>| INFO: The new image(s) can be found here:</div>
<div>| &nbsp; /opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/co=
re-image-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image-complete/=
core-image-full-cmdline-genericx86-64-20200617065836/HYBRID_ISO_IMG-cd.dire=
ct</div>
<div>|&nbsp;</div>
<div>| The following build artifacts were used to create the image(s):</di=
v>
<div>| &nbsp; ROOTFS_DIR["/boot"]: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/opt/=
graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-full-cmdlin=
e/1.0-r0/rootfs</div>
<div>| &nbsp; BOOTIMG_DIR: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;/opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/co=
re-image-full-cmdline/1.0-r0/recipe-sysroot/usr/share</div>
<div>| &nbsp; KERNEL_DIR: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; /opt/graylog-poky/build/tmp/deploy/images/genericx86-64</div=
>
<div>| &nbsp; NATIVE_SYSROOT: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; /opt/graylog-poky/build/tmp/work/genericx86_64-poky-linux/core-image-f=
ull-cmdline/1.0-r0/recipe-sysroot-native</div>
<div>|&nbsp;</div>
<div>| INFO: The image(s) were created using OE kickstart file:</div>
<div>| &nbsp; /opt/graylog-poky/scripts/lib/wic/canned-wks/mkhybridiso.wks=
</div>
<div>| mv: cannot stat '/opt/graylog-poky/build/tmp/work/genericx86_64-pok=
y-linux/core-image-full-cmdline/1.0-r0/deploy-core-image-full-cmdline-image=
-complete/core-image-full-cmdline-genericx86-64-20200617065836/mkhybridiso*=
.direct': No such file or directory</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>|&nbsp;</div>
<div>ERROR: Task (/opt/graylog-poky/meta/recipes-extended/images/core-imag=
e-full-cmdline.bb:do_image_wic) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 4476 tasks of which 4475 didn't need t=
o be rerun and 1 failed.</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; /opt/graylog-poky/meta/recipes-extended/images/core-image-full=
-cmdline.bb:do_image_wic</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit c=
ode.</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "/opt/graylog-poky/scripts/wic", line 525, in &lt;module&=
gt;</div>
<div>&nbsp; &nbsp; sys.exit(main(sys.argv[1:]))</div>
<div>&nbsp; File "/opt/graylog-poky/scripts/wic", line 520, in main</div>
<div>&nbsp; &nbsp; return hlp.invoke_subcommand(args, parser, hlp.wic_help=
_usage, subcommands)</div>
<div>&nbsp; File "/opt/graylog-poky/scripts/lib/wic/help.py", line 83, in =
invoke_subcommand</div>
<div>&nbsp; &nbsp; subcmd[0](args, usage)</div>
<div>&nbsp; File "/opt/graylog-poky/scripts/wic", line 147, in wic_create_=
subcommand</div>
<div>&nbsp; &nbsp; subprocess.check_call(argv)</div>
<div>&nbsp; File "/usr/lib/python3.7/subprocess.py", line 347, in check_ca=
ll</div>
<div>&nbsp; &nbsp; raise CalledProcessError(retcode, cmd)</div>
<div>subprocess.CalledProcessError: Command '['bitbake', 'core-image-full-=
cmdline']' returned non-zero exit status 1.<br /><br />I changed the line i=
n mkhybridiso.wks from&nbsp;<em>part /boot --source isoimage-isohybrid --so=
urceparams=3D"loader=3Dgrub-efi,image_name=3DHYBRID_ISO_IMG" --ondisk cd --=
label HYBRIDISO</em> to&nbsp;<em>part /boot --source isoimage-isohybrid --s=
ourceparams=3D"loader=3Dgrub-efi,image_name=3Dmkhybridiso" --ondisk cd --la=
bel mkhybridiso</em>. Then I am able to create the&nbsp;mkhybridiso-cd.dire=
ct and&nbsp;mkhybridiso-cd.iso.<br /><br />But the problem is that they are=
 just 44MB in size. It seems that the rootfs is not getting attached to the=
 build. Can someone help me with this. My ultimate objective is to build an=
 iso that I can run on vmware.<br /><br />Thanks</div>

--V7FaeVBnkuBv38bZ2Fzo--
