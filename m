Subject: fatal error: omp.h: No such file or directory #yocto
To: poky@lists.yoctoproject.org
From: "Rahul Chauhan" <rahulchauhankitps@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (36.255.87.241)
X-Originating-Platform: Linux Firefox 77
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 19 Jun 2020 22:14:13 -0700
Message-ID: <fU0J.1592630053844053370.0npg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b03N3oPlZIIb40zVVgpM"

--b03N3oPlZIIb40zVVgpM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi community Member,

I am trying to build core-image-minimal-xfce with below configuration.
Poky (master branch)
meta-openembedde (master branch)
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "1.47.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "universal"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "aarch64-poky-linux"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "3.1+snapshot-20200=
620"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "aarch64"

kindly help me out on this . do i missed any thing here

Errror:
4.15.1-r0/recipe-sysroot-native/usr/include -O2 -pipe -c ../../git/build/p=
arseSpec.c=C2=A0 -fPIC -DPIC -o .libs/parseSpec.o
| ../../git/build/parseSpec.c:10:10: fatal error: omp.h: No such file or d=
irectory
|=C2=A0=C2=A0=C2=A0 10 | #include <omp.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~
| compilation terminated.
| make[2]: *** [Makefile:642: parseSpec.lo] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: Leaving directory '/opt/Projects/Amlogic-project/amlogic-g1-mas=
ter/tmp/work/x86_64-linux/rpm-native/1_4.15.1-r0/build/build'
| make[1]: *** [Makefile:1359: all-recursive] Error 1
| make[1]: Leaving directory '/opt/Projects/Amlogic-project/amlogic-g1-mas=
ter/tmp/work/x86_64-linux/rpm-native/1_4.15.1-r0/build'
| make: *** [Makefile:788: all] Error 2
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (virtual:native:/opt/Projects/Amlogic-project/Project-layers/p=
oky/meta/recipes-devtools/rpm/rpm_4.15.1.bb:do_compile) failed with exit co=
de '1'

--b03N3oPlZIIb40zVVgpM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi community Member,<br /><br />I am trying to build core-image-minimal-xfc=
e with below configuration.<br />Poky (master branch)<br />meta-openembedde=
 (master branch)<br />BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; =3D "1.47.0"<br />BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "x86_64-linux"<br />NATIVELSBSTRIN=
G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "universal"<br />TARGET_SYS&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "aarch64-poky-linux"<b=
r />DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; =3D "poky"<br />DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; =3D "3.1+snapshot-20200620"<br />TUNE_FEATURES&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; =3D "aarch64"<br /><br />kindly help me out on th=
is . do i missed any thing here<br /><br /><br />Errror:<br />4.15.1-r0/rec=
ipe-sysroot-native/usr/include -O2 -pipe -c ../../git/build/parseSpec.c&nbs=
p; -fPIC -DPIC -o .libs/parseSpec.o<br />| ../../git/build/parseSpec.c:10:1=
0: fatal error: omp.h: No such file or directory<br />|&nbsp;&nbsp;&nbsp; 1=
0 | #include &lt;omp.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~<br />| compilati=
on terminated.<br />| make[2]: *** [Makefile:642: parseSpec.lo] Error 1<br =
/>| make[2]: *** Waiting for unfinished jobs....<br />| make[2]: Leaving di=
rectory '/opt/Projects/Amlogic-project/amlogic-g1-master/tmp/work/x86_64-li=
nux/rpm-native/1_4.15.1-r0/build/build'<br />| make[1]: *** [Makefile:1359:=
 all-recursive] Error 1<br />| make[1]: Leaving directory '/opt/Projects/Am=
logic-project/amlogic-g1-master/tmp/work/x86_64-linux/rpm-native/1_4.15.1-r=
0/build'<br />| make: *** [Makefile:788: all] Error 2<br />| WARNING: exit =
code 1 from a shell command.<br />| <br />ERROR: Task (virtual:native:/opt/=
Projects/Amlogic-project/Project-layers/poky/meta/recipes-devtools/rpm/rpm_=
4.15.1.bb:do_compile) failed with exit code '1'

--b03N3oPlZIIb40zVVgpM--
