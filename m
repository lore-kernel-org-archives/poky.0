Subject: Cross compile for Qt5 build error #yocto
To: poky@lists.yoctoproject.org
From: "David Fz" <d.fourdrigniez@idplus.org.mx>
X-Originating-Location: Mexico City, MX (187.170.148.196)
X-Originating-Platform: Android Phone Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Apr 2020 13:05:37 -0700
Message-ID: <o7Mi.1585771537618171041.6ijg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hGyJDTYl8uLR3PBoQkzT"

--hGyJDTYl8uLR3PBoQkzT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

After building a poky yocto image for the ARM emulator with Qt5, I am tryi=
ng to build a simple hello world program with the generated toolchain.

However I am getting these errors on QtCreator (also tried with command li=
ne, same result)

arm-poky-linux-gnueabi-g++ -march=3Darmv5e -marm --sysroot=3D/opt/poky/2.2=
.1/sysroots/armv5e-poky-linux-gnueabi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--=
as-needed -o helloworld main.o -L/opt/poky/2.2.4/sysroots/armv5e-poky-linux=
-gnueabi/usr/lib -lQt5Core -lpthread
/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find crt1.o: No suc=
h file or directory
/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find crti.o: No suc=
h file or directory
/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find crtbegin.o: No=
 such file or directory
/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find /lib/libpthrea=
d.so.0
/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find /usr/lib/libpt=
hread_nonshared.a
collect2: error: ld returned 1 exit status

I tried searching for those files, the one below for example is not in the=
 same sysroot I configured:

/opt/poky/2.2.4/sysroots/armv5e-poky-linux-gnueabi/usr/lib/arm-poky-linux-=
gnueabi/6.4.0/crtbegin.o

I also tried copying manually those missing files to the right directory w=
ith the necessary permissions but it didn't change anything.

I also tried putting libgcc in the poky configuration file and rebuilding =
the toolchain, but didn't work either:
# add the Qt packages so that they get included in the built image and we =
don't have to install them separately
IMAGE_INSTALL_append =3D " gcc g++ binutils libgcc libgcc-dev libstdc++ li=
bstdc++-dev libstdc++-staticdev eglibc-staticdev autoconf automake ccache c=
hkconfig glib-networking packagegroup-core-buildessential pkgconfig boost c=
make zlib glib-2.0 qt3d qt5-plugin-generic-vboxtouch qtbase qtcanvas3d qtch=
arts qtconnectivity qtdatavis3d qtdeclarative qtenginio qtgraphicaleffects =
qtimageformats qtlocation qtmultimedia qtquick1 qtquickcontrols2 qtquickcon=
trols qtscript qtsensors qtserialport qtsvg qtsystems qttools qttranslation=
s qtvirtualkeyboard qtwebchannel qtwebkit-examples qtwebkit qtwebsockets qt=
xmlpatterns openssh-sftp-server gdb gdbserver"

Would you have an idea how to fix the issue ?

Cheers,
David

--hGyJDTYl8uLR3PBoQkzT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogsc=
=
=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">Hello,<br /></span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">&nbsp;</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">After building a poky yocto image for the ARM emulator with Qt=
5, I am trying to build a simple hello world program with the generated too=
lchain.</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">&nbsp;</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">However I am getting these errors on QtCreator (also tried wit=
h command line, same result)</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">&nbsp;</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">arm-poky-linux-gnueabi-g++ -march=3Darmv5e -marm --sysroot=3D/=
opt/poky/2.2.1/sysroots/armv5e-poky-linux-gnueabi -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o helloworld main.o -L/opt/poky/2.2.4/sysroots/arm=
v5e-poky-linux-gnueabi/usr/lib -lQt5Core -lpthread</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find cr=
t1.o: No such file or directory</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find cr=
ti.o: No such file or directory</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find cr=
tbegin.o: No such file or directory</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find /l=
ib/libpthread.so.0</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">/opt/poky/2.2.4/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/6.4.0/real-ld: cannot find /u=
sr/lib/libpthread_nonshared.a</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">collect2: error: ld returned 1 exit status</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">&nbsp;</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">I tried searching for those files, the one below for example i=
s not in the same sysroot I configured:</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">&nbsp;</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">/opt/poky/2.2.4/sysroots/armv5e-poky-linux-gnueabi/usr/lib/arm=
-poky-linux-gnueabi/6.4.0/crtbegin.o</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">&nbsp;</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">I also tried copying manually those missing files to the right=
 directory with the necessary permissions but it didn't change anything.</s=
pan></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">&nbsp;</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">I also tried putting libgcc in the poky configuration file and=
 rebuilding the toolchain, but didn't work either:</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;"># add the Qt packages so that they get included in the built i=
mage and we don't have to install them separately</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">IMAGE_INSTALL_append =3D " gcc g++ binutils libgcc libgcc-dev =
libstdc++ libstdc++-dev libstdc++-staticdev eglibc-staticdev autoconf autom=
ake ccache chkconfig glib-networking packagegroup-core-buildessential pkgco=
nfig boost cmake zlib glib-2.0 qt3d qt5-plugin-generic-vboxtouch qtbase qtc=
anvas3d qtcharts qtconnectivity qtdatavis3d qtdeclarative qtenginio qtgraph=
icaleffects qtimageformats qtlocation qtmultimedia qtquick1 qtquickcontrols=
2 qtquickcontrols qtscript qtsensors qtserialport qtsvg qtsystems qttools q=
ttranslations qtvirtualkeyboard qtwebchannel qtwebkit-examples qtwebkit qtw=
ebsockets qtxmlpatterns openssh-sftp-server gdb gdbserver"</span></span></d=
iv>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">&nbsp;</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">Would you have an idea how to fix the issue ?</span></span></d=
iv>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">&nbsp;</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">Cheers,</span></span></div>
<div dir=3D"auto" style=3D"background-color: #141414 !important;" data-ogs=
c=3D"rgb(33, 33, 33)" data-ogsb=3D"rgb(255, 255, 255)"><span style=3D"color=
: #dfdfdf; font-family: -apple-system, HelveticaNeue;"><span style=3D"font-=
size: 16px;">David</span></span></div>

--hGyJDTYl8uLR3PBoQkzT--
