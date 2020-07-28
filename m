Subject: Re: How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
To: poky@lists.yoctoproject.org
From: kar_947@hotmail.fr
X-Originating-Location: Treillieres, Pays de la Loire, FR (185.10.176.241)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 28 Jul 2020 03:01:04 -0700
References: <aea0b4b9d1a4414d89428c3b7d262a94@basmevissen.nl>
In-Reply-To: <aea0b4b9d1a4414d89428c3b7d262a94@basmevissen.nl>
Message-ID: <19786.1595930464343330876@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Azthb1ljmJpDzGJGMDMm"

--Azthb1ljmJpDzGJGMDMm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Bas,

I have a big problem during the compilation of the Yocto.
In the recipes "linux-arm_4.1.15.bb", the URL : "git://git.freescale.com/i=
mx/linux-imx.git;protocol=3Dgit" is down. Can you help to find an other URL=
.
This is my file :

# Copyright (C) 2013-2016 Freescale Semiconductor
# Released under the MIT license (see COPYING.MIT for the terms)

SUMMARY =3D "Linux Kernel provided and supported by Freescale"
DESCRIPTION =3D "Linux Kernel provided and supported by Freescale with foc=
us on \
i.MX Family Reference Boards. It includes support for many IPs such as GPU=
, VPU and IPU."

require recipes-kernel/linux/linux-imx.inc
require recipes-kernel/linux/linux-dtb.inc

DEPENDS +=3D "lzop-native bc-native"

SRCBRANCH =3D "imx_4.1.15_2.0.0_ga"
LOCALVERSION =3D "-2.0.1"
SRCREV =3D "b63f3f52cb393e3287352cf63f0caef31a33ab63"
KERNEL_SRC ?=3D "git://git.freescale.com/imx/linux-imx.git;protocol=3Dgit"
SRC_URI =3D "${KERNEL_SRC};branch=3D${SRCBRANCH}"

SRC_URI +=3D "file://0001-ARM-imx-imx6ul-add-PHY-KSZ8081-new-silicon-revis=
ion-.patch \
file://0001-MLK-13418-ASoC-wm8960-workaround-no-sound-issue-in-m.patch \
file://0002-MLK-13422-ASoC-wm8960-fix-the-pitch-shift-issue-afte.patch "

DEFAULT_PREFERENCE =3D "1"

DO_CONFIG_V7_COPY =3D "no"
DO_CONFIG_V7_COPY_mx6 =3D "yes"
DO_CONFIG_V7_COPY_mx6ul =3D "yes"
DO_CONFIG_V7_COPY_mx7 =3D "yes"

addtask copy_defconfig after do_patch before do_preconfigure #do_configure
do_copy_defconfig () {
if [ ${DO_CONFIG_V7_COPY} =3D "yes" ]; then
# copy latest imx_v7_defconfig to use for mx6, mx6ul and mx7
mkdir -p ${B}
cp ${S}/arch/arm/configs/imx_v7_defconfig ${B}/.config
cp ${S}/arch/arm/configs/imx_v7_defconfig ${B}/../defconfig
fi
}

COMPATIBLE_MACHINE =3D "(mx6|mx6ul|mx7)"

Best regards

--Azthb1ljmJpDzGJGMDMm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Bas,<br /><br />I have a big problem during the compilation of the Yo=
cto.<br />In the recipes "linux-arm_4.1.15.bb", the URL : "git://git.freesc=
ale.com/imx/linux-imx.git;protocol=3Dgit" is down. Can you help to find an =
other URL.&nbsp;<br />This is my file :&nbsp;<br /><br /><br /><br />
<div style=3D"line-height: 1.42857;"># Copyright (C) 2013-2016 Freescale S=
emiconductor</div>
<div style=3D"line-height: 1.42857;"># Released under the MIT license (see=
 COPYING.MIT for the terms)</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">SUMMARY =3D "Linux Kernel provided an=
d supported by Freescale"</div>
<div style=3D"line-height: 1.42857;">DESCRIPTION =3D "Linux Kernel provide=
d and supported by Freescale with focus on \</div>
<div style=3D"line-height: 1.42857;">i.MX Family Reference Boards. It incl=
udes support for many IPs such as GPU, VPU and IPU."</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">require recipes-kernel/linux/linux-im=
x.inc</div>
<div style=3D"line-height: 1.42857;">require recipes-kernel/linux/linux-dt=
b.inc</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">DEPENDS +=3D "lzop-native bc-native"<=
/div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">SRCBRANCH =3D "imx_4.1.15_2.0.0_ga"</=
div>
<div style=3D"line-height: 1.42857;">LOCALVERSION =3D "-2.0.1"</div>
<div style=3D"line-height: 1.42857;">SRCREV =3D "b63f3f52cb393e3287352cf63=
f0caef31a33ab63"</div>
<div style=3D"line-height: 1.42857;">KERNEL_SRC ?=3D "git://git.freescale.=
com/imx/linux-imx.git;protocol=3Dgit"</div>
<div style=3D"line-height: 1.42857;">SRC_URI =3D "${KERNEL_SRC};branch=3D$=
{SRCBRANCH}"</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">SRC_URI +=3D "file://0001-ARM-imx-imx=
6ul-add-PHY-KSZ8081-new-silicon-revision-.patch \</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; file://0001-MLK-13418-ASoC-wm8960-workaround-no-sound-issue-in-m.patch=
 \</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; file://0002-MLK-13422-ASoC-wm8960-fix-the-pitch-shift-issue-afte.patch=
 "</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">DEFAULT_PREFERENCE =3D "1"</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">DO_CONFIG_V7_COPY =3D "no"</div>
<div style=3D"line-height: 1.42857;">DO_CONFIG_V7_COPY_mx6 =3D "yes"</div>
<div style=3D"line-height: 1.42857;">DO_CONFIG_V7_COPY_mx6ul =3D "yes"</di=
v>
<div style=3D"line-height: 1.42857;">DO_CONFIG_V7_COPY_mx7 =3D "yes"</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">addtask copy_defconfig after do_patch=
 before do_preconfigure #do_configure</div>
<div style=3D"line-height: 1.42857;">do_copy_defconfig () {</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; if [ ${DO_CONFIG_V7_COP=
Y} =3D "yes" ]; then</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; # copy la=
test imx_v7_defconfig to use for mx6, mx6ul and mx7</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; mkdir -p =
${B}</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; cp ${S}/a=
rch/arm/configs/imx_v7_defconfig ${B}/.config</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; cp ${S}/a=
rch/arm/configs/imx_v7_defconfig ${B}/../defconfig</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; fi</div>
<div style=3D"line-height: 1.42857;">}</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">COMPATIBLE_MACHINE =3D "(mx6|mx6ul|mx=
7)"<br /><br /><br /><br />Best regards</div>

--Azthb1ljmJpDzGJGMDMm--
