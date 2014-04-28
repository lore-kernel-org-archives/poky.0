Return-Path: <jigar.chokshi89@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A682EE00BD5
	for <poky@yoctoproject.org>; Mon, 28 Apr 2014 00:57:02 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id m1so6727886oag.7
	for <poky@yoctoproject.org>; Mon, 28 Apr 2014 00:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=lnUOS1MDEnNPVF7xeCHJvomZSmPqQx/487ERNZIA61Y=;
	b=KAIIp2YexuBMnVuTJS1tGS6yxaW6MKumSxDfeemsZVVhL0XY1J6efqiR1yDa0f8Mo2
	IePIRX9gc4fBrb6RBNBaZ0M9plMhPSlTXTwrUtz9YScf4OUtxAGkOpGfszdRMcLTr7dj
	1q4YvJfFvCSnG8fb22BnY+i8zrsCq8KHRJ03KztUq+9q7isqtxT7l1yyOteLzaYbtWEZ
	ujL49mg8tRoKhSutgWP5ZR0sUaE8M1hyWWdnxGcx9H7vfHg1HV/SeXheqUTTXsCnQzSw
	iXTfg5toE1JUwRUVuHEVpBqmseyKEbeKns5KMnHzvNkt+KfZyblVH9Al0EwlUf273VDs
	0mkQ==
MIME-Version: 1.0
X-Received: by 10.60.115.129 with SMTP id jo1mr21279193oeb.0.1398671821558;
	Mon, 28 Apr 2014 00:57:01 -0700 (PDT)
Received: by 10.182.126.130 with HTTP; Mon, 28 Apr 2014 00:57:01 -0700 (PDT)
In-Reply-To: <CAAEo+ZrTKqkFUxcaP4BU+hcg-9RZsFHnZs3PLA54zwdeh99W-w@mail.gmail.com>
References: <CAAEo+ZrTKqkFUxcaP4BU+hcg-9RZsFHnZs3PLA54zwdeh99W-w@mail.gmail.com>
Date: Mon, 28 Apr 2014 09:57:01 +0200
Message-ID: <CAAEo+ZoJ8wXt8y=XPVdA6bdpCYmUk1uYUMz4T+2NoFQakPAdfg@mail.gmail.com>
From: jigar chokshi <jigar.chokshi89@gmail.com>
To: poky@yoctoproject.org
Subject: oe_runconf failed
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 Apr 2014 07:57:02 -0000
Content-Type: multipart/alternative; boundary=089e011619b614d95104f815a976

--089e011619b614d95104f815a976
Content-Type: text/plain; charset=UTF-8

Hello,

Here i attached important parameter of my local.conf file of
core-image-minimal.

MACHINE ??= 'imx6qsabreauto'
DISTRO ?= 'poky'
PACKAGE_CLASSES ?= "package_rpm"
EXTRA_IMAGE_FEATURES = "debug-tweaks ssh-server-openssh"
IMAGE_INSTALL_append = " gcc g++ binutils libgcc libgcc-dev libstdc++
libstdc++-dev glib-2.0 libsigc++-2.0-dev libstdc++-staticdev tslib-conf
tslib-tests tslib-calibrate openssh-sftp-server alsa-lib alsa-tools
alsa-state alsa-utils-alsaconf tslib evtest dbus nano qtbase qtbase-fonts
qtbase-plugins qtbase-examples cinematicexperience gstreamer cairo pango
fontconfig freetype pulseaudio "
DISTRO_FEATURES_remove = "x11 wayland"


I am trying to cross compile a library of an application but i am getting
error.
The .bb file of libraray is following:

DESCRIPTION = "Library"
HOMEPAGE = "www.xyz.de"
SECTION = "libs"
DEPENDS = "libsigc++-2.0 libxml2 libxslt"
PRIORITY = "optional"
LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://COPYING;md5=0cd9a07afbeb24026c9b03aecfeba458"
PR = "r0"


SRC_URI = "file://library/"

S = "${WORKDIR}/library"

inherit autotools pkgconfig

EXTRA_OECONF = "--enable-shared --disable-static"

INSANE_SKIP_${PN} = "installed-vs-shipped"

#do_configure () {
#    sudo make clean
#    sudo ./autogen.sh -host=arm-poky-linux-gnueabi --enable-shared
--disable-static
#}
#
#
#do_compile () {
#    sudo make
#}
#
#do_install (){
#    sudo make install
#}

i am getting following error when i tried to bitbake core-image-minimal
 configure: exit 1
ERROR: oe_runconf failed
WARNING: run.do_configure.9057:1 exit 1 from
exit 1
ERROR: Function failed: do_configure (log file is located at
log.do_configure.9057)

so, i checked log file in that file i can found following details:

arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'
arm-poky-linux-gnueabi-gcc: fatal error: no input files
compilation terminated.

arm-poky-linux-gnueabi-gcc: error: unrecognized command line option
'-qversion'
arm-poky-linux-gnueabi-gcc: fatal error: no input files
compilation terminated.

I don't know where am i wrong?

Thank you,
Jigar Chokshi

--089e011619b614d95104f815a976
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div class=3D"gmail_quote"><div dir=3D"ltr"><div=
><div><div><div><div><div><div><div><div><div><div><br></div>Here i attache=
d important parameter of my local.conf file of core-image-minimal.<br><br>M=
ACHINE ??=3D &#39;imx6qsabreauto&#39;<br>
DISTRO ?=3D &#39;poky&#39;<br>

PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;<br>EXTRA_IMAGE_FEATURES =3D &q=
uot;debug-tweaks ssh-server-openssh&quot;<br>IMAGE_INSTALL_append
 =3D &quot; gcc g++ binutils libgcc libgcc-dev libstdc++ libstdc++-dev glib=
-2.0
 libsigc++-2.0-dev libstdc++-staticdev tslib-conf tslib-tests=20
tslib-calibrate openssh-sftp-server alsa-lib alsa-tools alsa-state=20
alsa-utils-alsaconf tslib evtest dbus nano qtbase qtbase-fonts=20
qtbase-plugins qtbase-examples cinematicexperience gstreamer cairo pango
 fontconfig freetype pulseaudio &quot; <br>
DISTRO_FEATURES_remove =3D &quot;x11 wayland&quot;<br><br><br></div></div>I=
 am trying to cross compile a library of an application but i am getting er=
ror. <br>The .bb file of libraray is following:<br><br>DESCRIPTION =3D &quo=
t;Library&quot;<br>

HOMEPAGE =3D &quot;<a href=3D"http://www.xyz.de" target=3D"_blank">www.xyz.=
de</a>&quot;<br>SECTION =3D &quot;libs&quot;<br>DEPENDS =3D &quot;libsigc++=
-2.0 libxml2 libxslt&quot;<br>PRIORITY =3D &quot;optional&quot;<br>LICENSE =
=3D &quot;GPLv3&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D0cd9a07afbeb24026c9b03aecfe=
ba458&quot;<br>
PR =3D &quot;r0&quot;<br><br><br>SRC_URI =3D &quot;file://library/&quot;<br=
><br>S =3D &quot;${WORKDIR}/library&quot;<br><br>inherit autotools pkgconfi=
g<br><br>EXTRA_OECONF =3D &quot;--enable-shared --disable-static&quot;<br><=
br>
INSANE_SKIP_${PN} =3D &quot;installed-vs-shipped&quot;<br>
<br>#do_configure () {<br>#=C2=A0=C2=A0=C2=A0 sudo make clean<br>#=C2=A0=C2=
=A0=C2=A0 sudo ./autogen.sh -host=3Darm-poky-linux-gnueabi --enable-shared =
--disable-static<br>#}<br>#<br>#<br>#do_compile () {<br>#=C2=A0=C2=A0=C2=A0=
 sudo make<br>#}<br>#<br>#do_install (){<br>

#=C2=A0=C2=A0=C2=A0 sudo make install<br>#}<br><br></div></div>i am getting=
 following error when i tried to bitbake core-image-minimal<br></div></div>=
=C2=A0configure: exit 1<br>ERROR: oe_runconf failed<br>WARNING: run.do_conf=
igure.9057:1 exit 1 from<br>

exit 1<br>ERROR: Function failed: do_configure (log file is located at log.=
do_configure.9057)<br><br></div><div>so, i checked log file in that file i =
can found following details:<br><br></div><div>arm-poky-linux-gnueabi-gcc: =
error: unrecognized command line option &#39;-V&#39;<br>

arm-poky-linux-gnueabi-gcc: fatal error: no input files<br>compilation term=
inated.<br><br>arm-poky-linux-gnueabi-gcc: error: unrecognized command line=
 option &#39;-qversion&#39;<br>arm-poky-linux-gnueabi-gcc: fatal error: no =
input files<br>

compilation terminated.<br><br></div></div>I don&#39;t know where am i wron=
g?<br><br></div>Thank you,<br></div>Jigar Chokshi</div>
</div></div>

--089e011619b614d95104f815a976--
