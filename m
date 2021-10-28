Subject: Building linux5-11 fails in yocto #yocto
To: poky@lists.yoctoproject.org
From: jjvazha@yahoo.com
X-Originating-Location: Hayward, California, US (96.68.159.213)
X-Originating-Platform: Mac Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 28 Oct 2021 14:58:31 -0700
Message-ID: <nomb.1635458311287294151.lLpf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VJwRC6OMjiRRjYXKzHow"

--VJwRC6OMjiRRjYXKzHow
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to build linux5.11 in yocto. However it fails
linux-altera/5.11+gitAUTOINC+27e8b9142b-r0/recipe-sysroot-native/usr/bin/ar=
m-poky-linux-gnueabi/../../lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gn=
ueabi/8.3.0/plugin/include/system.h:687:17: fatal error: gmp.h: No such fil=
e or directory
|=C2=A0 #include <gmp.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
| compilation terminated.
| make[3]: *** [scripts/gcc-plugins/arm_ssp_per_task_plugin.so] Error 1
| make[2]: *** [scripts/gcc-plugins] Error 2
| make[1]: *** [scripts] Error 2
| make: *** [__sub-make] Error 2
| ERROR: oe_runmake failed

I added EXTRA_OEMAKE as suggested by https://lists.yoctoproject.org/g/linux=
-yocto/topic/76045798

That leads in to another error of missing header
linux-altera/5.11+gitAUTOINC+27e8b9142b-r0/recipe-sysroot-native/usr/bin/ar=
m-poky-linux-gnueabi/../../lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gn=
ueabi/8.3.0/plugin/include/system.h:691:23: fatal error: libiberty.h: No su=
ch file or directory
|=C2=A0 #include "libiberty.h"
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
| compilation terminated.
| make[3]: *** [scripts/gcc-plugins/arm_ssp_per_task_plugin.so] Error 1
| make[2]: *** [scripts/gcc-plugins] Error 2
| make[1]: *** [scripts] Error 2
| make: *** [__sub-make] Error 2

Since libiberty is a part of binutils, I added
DEPENDS+=3D " binutils-native"

But that leads in to another error of missing poly-int.h

--VJwRC6OMjiRRjYXKzHow
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to build linux5.11 in yocto. However it fails <br />linux-alter=
a/5.11+gitAUTOINC+27e8b9142b-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi/../../lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0=
/plugin/include/system.h:687:17: fatal error: gmp.h: No such file or direct=
ory<br />|&nbsp; #include &lt;gmp.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^=
<br />| compilation terminated.<br />| make[3]: *** [scripts/gcc-plugins/ar=
m_ssp_per_task_plugin.so] Error 1<br />| make[2]: *** [scripts/gcc-plugins]=
 Error 2<br />| make[1]: *** [scripts] Error 2<br />| make: *** [__sub-make=
] Error 2<br />| ERROR: oe_runmake failed<br /><br /><br />I added EXTRA_OE=
MAKE as suggested by <a href=3D"https://lists.yoctoproject.org/g/linux-yoct=
o/topic/76045798" target=3D"_blank" rel=3D"noopener">https://lists.yoctopro=
ject.org/g/linux-yocto/topic/76045798</a><br /><br />That leads in to anoth=
er error of missing header <br />linux-altera/5.11+gitAUTOINC+27e8b9142b-r0=
/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../lib/arm-poky-li=
nux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/plugin/include/system.h:691:23=
: fatal error: libiberty.h: No such file or directory<br />|&nbsp; #include=
 "libiberty.h"<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ^<br />| compilation terminated.<br />| make[3]: *** [scripts/gcc=
-plugins/arm_ssp_per_task_plugin.so] Error 1<br />| make[2]: *** [scripts/g=
cc-plugins] Error 2<br />| make[1]: *** [scripts] Error 2<br />| make: *** =
[__sub-make] Error 2<br /><br />Since libiberty is a part of binutils, I ad=
ded <br />DEPENDS+=3D " binutils-native"<br /><br />But that leads in to an=
other error of missing poly-int.h

--VJwRC6OMjiRRjYXKzHow--
