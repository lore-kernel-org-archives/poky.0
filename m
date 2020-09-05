Subject: Need Suggestion to upstream the changes with respect to systemd build failure in core-image-minimal. #poky
To: poky@lists.yoctoproject.org
From: "Rahul Chauhan" <rahulchauhankitps@gmail.com>
X-Originating-Location: Noida, Uttar Pradesh, IN (103.217.132.60)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 05 Sep 2020 10:31:06 -0700
Message-ID: <G60C.1599327066876287016.ZNpw@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="r5nxcNIU6QM7Vd1lLsQK"

--r5nxcNIU6QM7Vd1lLsQK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Community Members,

I was trying to build core-image-minimal with systemd support.
Yocto Project Version 3.1 (dunfell).

To enable systemd as system init manager I added below lines in local.conf
DISTRO_FEATURES_append =3D " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"

but during build it got failed.

/opt/Projects/eboards-project/project-layres/poky/meta/recipes-devtools/gc=
c/gcc-runtime_9.3.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['pseudo-native', 'glibc', =
'patch-native', 'quilt-native', 'gcc-cross-arm', 'gcc-runtime', 'linux-libc=
-headers', 'libgcc', 'flex-native', 'xz-native', 'libtool-native', 'automak=
e-native', 'binutils-cross-arm', 'zlib-native', 'mpfr-native', 'texinfo-dum=
my-native', 'autoconf-native', 'libmpc-native', 'gnu-config-native', 'gmp-n=
ative', 'attr-native', 'm4-native', 'gettext-minimal-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| sed: -e expression #1, char 13: unterminated `s' command
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/opt/Projects/eboards-project/eboards-build/tmp/wor=
k/eb_beaglebone_black-poky-linux-gnueabi/systemd-serialgetty/1.0-r5/temp/ru=
n.do_install.11228' failed with exit code 1:
| sed: -e expression #1, char 13: unterminated `s' command
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/opt/Projects/eboards-project/project-layres/poky/meta/recipe=
s-core/systemd/systemd-serialgetty.bb:do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1852 tasks of which 1847 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
/opt/Projects/eboards-project/project-layres/poky/meta/recipes-core/system=
d/systemd-serialgetty.bb:do_install
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

I debug the recipe and found the solution and created a patch which solved=
 this issue for me.

rahul@rahul-Latitude-3460:/opt/Projects/eboards-project/project-layres/pok=
y$ git diff
diff --git a/meta/recipes-core/systemd/systemd-serialgetty.bb b/meta/recip=
es-core/systemd/systemd-serialgetty.bb
index 044c6c5b67..059fccc2b6 100644
--- a/meta/recipes-core/systemd/systemd-serialgetty.bb
+++ b/meta/recipes-core/systemd/systemd-serialgetty.bb
@@ -21,7 +21,7 @@ do_install() {
install -d ${D}${systemd_unitdir}/system/
install -d ${D}${sysconfdir}/systemd/system/getty.target.wants/
install -m 0644 ${WORKDIR}/serial-getty@.service ${D}${systemd_unitdir}/sy=
stem/
-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 sed -i -e s/\@BAUDRATE\@/$default_baudrate/g ${D}${systemd_un=
itdir}/system/serial-getty@.service
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 sed -i -e 's/\@BAUDRATE\@/$default_baudrate/g' ${D}${systemd_=
unitdir}/system/serial-getty@.service

tmp=3D"${SERIAL_CONSOLES}"
for entry in $tmp ; do

Can anyone please suggest me, to send this patch to upstream or this is no=
t a bug this is my local system issue.

--r5nxcNIU6QM7Vd1lLsQK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Community Members,<br /><br />I was trying to build core-image-minimal w=
ith systemd support.<br />Yocto Project Version 3.1 (dunfell).<br /><br />T=
o enable systemd as system init manager I added below lines in local.conf <=
br />DISTRO_FEATURES_append =3D " systemd"<br />DISTRO_FEATURES_BACKFILL_CO=
NSIDERED +=3D "sysvinit"<br />VIRTUAL-RUNTIME_init_manager =3D "systemd"<br=
 />VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units" <br /><br />but d=
uring build it got failed.<br />&nbsp;<br />/opt/Projects/eboards-project/p=
roject-layres/poky/meta/recipes-devtools/gcc/gcc-runtime_9.3.bb:do_populate=
_sysroot']<br />| NOTE: Installed into sysroot: []<br />| NOTE: Skipping as=
 already exists in sysroot: ['pseudo-native', 'glibc', 'patch-native', 'qui=
lt-native', 'gcc-cross-arm', 'gcc-runtime', 'linux-libc-headers', 'libgcc',=
 'flex-native', 'xz-native', 'libtool-native', 'automake-native', 'binutils=
-cross-arm', 'zlib-native', 'mpfr-native', 'texinfo-dummy-native', 'autocon=
f-native', 'libmpc-native', 'gnu-config-native', 'gmp-native', 'attr-native=
', 'm4-native', 'gettext-minimal-native']<br />| DEBUG: Python function ext=
end_recipe_sysroot finished<br />| DEBUG: Executing shell function do_insta=
ll<br />| sed: -e expression #1, char 13: unterminated `s' command<br />| W=
ARNING: exit code 1 from a shell command.<br />| ERROR: Execution of '/opt/=
Projects/eboards-project/eboards-build/tmp/work/eb_beaglebone_black-poky-li=
nux-gnueabi/systemd-serialgetty/1.0-r5/temp/run.do_install.11228' failed wi=
th exit code 1:<br />| sed: -e expression #1, char 13: unterminated `s' com=
mand<br />| WARNING: exit code 1 from a shell command.<br />| <br />ERROR: =
Task (/opt/Projects/eboards-project/project-layres/poky/meta/recipes-core/s=
ystemd/systemd-serialgetty.bb:do_install) failed with exit code '1'<br />NO=
TE: Tasks Summary: Attempted 1852 tasks of which 1847 didn't need to be rer=
un and 1 failed.<br /><br />Summary: 1 task failed:<br />&nbsp; /opt/Projec=
ts/eboards-project/project-layres/poky/meta/recipes-core/systemd/systemd-se=
rialgetty.bb:do_install<br />Summary: There was 1 ERROR message shown, retu=
rning a non-zero exit code.<br /><br /><br />I debug the recipe and found t=
he solution and created a patch which solved this issue for me. <br /><br /=
>rahul@rahul-Latitude-3460:/opt/Projects/eboards-project/project-layres/pok=
y$ git diff<br />diff --git a/meta/recipes-core/systemd/systemd-serialgetty=
.bb b/meta/recipes-core/systemd/systemd-serialgetty.bb<br />index 044c6c5b6=
7..059fccc2b6 100644<br />--- a/meta/recipes-core/systemd/systemd-serialget=
ty.bb<br />+++ b/meta/recipes-core/systemd/systemd-serialgetty.bb<br />@@ -=
21,7 +21,7 @@ do_install() {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${systemd_=
unitdir}/system/<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfdir}/systemd/=
system/getty.target.wants/<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0644 ${WORKDIR}/=
serial-getty@.service ${D}${systemd_unitdir}/system/<br />-&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed -i=
 -e s/\@BAUDRATE\@/$default_baudrate/g ${D}${systemd_unitdir}/system/serial=
-getty@.service<br />+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed -i -e 's/\@BAUDRATE\@/$default_baudrate=
/g' ${D}${systemd_unitdir}/system/serial-getty@.service<br />&nbsp;<br />&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; tmp=3D"${SERIAL_CONSOLES}"<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for entry in =
$tmp ; do<br /><br />Can anyone please suggest me, to send this patch to up=
stream or this is not a bug this is my local system issue.

--r5nxcNIU6QM7Vd1lLsQK--
