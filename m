Subject: Error Compilation Yocto - firmware-imx_5.4.bb and firmware-imx.inc - #compiler #yocto #library #devtool #firmware
To: poky@lists.yoctoproject.org
From: kar_947@hotmail.fr
X-Originating-Location: Nantes, Pays de la Loire, FR (93.23.132.1)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 30 Jul 2020 11:31:33 -0700
Message-ID: <J4nX.1596133893252693009.HYZS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6WHem4Na0cCjIy6lft0o"

--6WHem4Na0cCjIy6lft0o
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I have a big problem during the compilation of the Yocto project. I have a=
n error with the file=C2=A0firmware-imx_5.4.bb and the file=C2=A0firmware-i=
mx.inc. I have tried everything. Please, some can help me?

This is my terminal :

ERROR: firmware-imx-1_5.4-r0 do_install: Function failed: do_install (log =
file is located at /home/karim/Bureau/f6du1_yocto_211/build_directory/tmp/w=
ork/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/1_5.4-r0/temp/lo=
g.do_install.23348)
ERROR: Logfile of failure stored in: /home/karim/Bureau/f6du1_yocto_211/bu=
ild_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-i=
mx/1_5.4-r0/temp/log.do_install.23348
Log data follows:
| DEBUG: Executing shell function do_install
| 'firmware/Android.mk' -> '/home/karim/Bureau/f6du1_yocto_211/build_direc=
tory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/1_5.4-=
r0/image/lib/firmware/Android.mk'
| 'firmware/epdc' -> '/home/karim/Bureau/f6du1_yocto_211/build_directory/t=
mp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/1_5.4-r0/ima=
ge/lib/firmware/epdc'
| 'firmware/epdc/epdc_E97_V110.fw' -> '/home/karim/Bureau/f6du1_yocto_211/=
build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware=
-imx/1_5.4-r0/image/lib/firmware/epdc/epdc_E97_V110.fw'
| 'firmware/epdc/epdc_E60_V220.fw' -> '/home/karim/Bureau/f6du1_yocto_211/=
build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware=
-imx/1_5.4-r0/image/lib/firmware/epdc/epdc_E60_V220.fw'
| 'firmware/epdc/epdc_E60_V110.fw' -> '/home/karim/Bureau/f6du1_yocto_211/=
build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware=
-imx/1_5.4-r0/image/lib/firmware/epdc/epdc_E60_V110.fw'
| 'firmware/epdc/epdc_E060SCM.fw' -> '/home/karim/Bureau/f6du1_yocto_211/b=
uild_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-=
imx/1_5.4-r0/image/lib/firmware/epdc/epdc_E060SCM.fw'
| 'firmware/epdc/fsl-epdc.mk' -> '/home/karim/Bureau/f6du1_yocto_211/build=
_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/=
1_5.4-r0/image/lib/firmware/epdc/fsl-epdc.mk'
| 'firmware/epdc/epdc_ED060XH2C1.fw.nonrestricted' -> '/home/karim/Bureau/=
f6du1_yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-=
gnueabi/firmware-imx/1_5.4-r0/image/lib/firmware/epdc/epdc_ED060XH2C1.fw.no=
nrestricted'
| 'firmware/sdma' -> '/home/karim/Bureau/f6du1_yocto_211/build_directory/t=
mp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/1_5.4-r0/ima=
ge/lib/firmware/sdma'
| 'firmware/sdma/sdma-imx35-to1.bin' -> '/home/karim/Bureau/f6du1_yocto_21=
1/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmwa=
re-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx35-to1.bin'
| 'firmware/sdma/sdma-imx51-to3.bin' -> '/home/karim/Bureau/f6du1_yocto_21=
1/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmwa=
re-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx51-to3.bin'
| 'firmware/sdma/sdma-imx25-to1.bin' -> '/home/karim/Bureau/f6du1_yocto_21=
1/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmwa=
re-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx25-to1.bin'
| 'firmware/sdma/sdma-imx53-to1.bin' -> '/home/karim/Bureau/f6du1_yocto_21=
1/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmwa=
re-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx53-to1.bin'
| 'firmware/sdma/sdma-imx35-to2.bin' -> '/home/karim/Bureau/f6du1_yocto_21=
1/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmwa=
re-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx35-to2.bin'
| 'firmware/sdma/sdma-imx31-to1.bin' -> '/home/karim/Bureau/f6du1_yocto_21=
1/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmwa=
re-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx31-to1.bin'
| 'firmware/sdma/sdma-imx31-to2.bin' -> '/home/karim/Bureau/f6du1_yocto_21=
1/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmwa=
re-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx31-to2.bin'
| 'firmware/vpu' -> '/home/karim/Bureau/f6du1_yocto_211/build_directory/tm=
p/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/1_5.4-r0/imag=
e/lib/firmware/vpu'
| 'firmware/vpu/vpu_fw_imx27_TO1.bin' -> '/home/karim/Bureau/f6du1_yocto_2=
11/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmw=
are-imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx27_TO1.bin'
| 'firmware/vpu/vpu_fw_imx27_TO2.bin' -> '/home/karim/Bureau/f6du1_yocto_2=
11/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmw=
are-imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx27_TO2.bin'
| 'firmware/vpu/vpu_fw_imx6d.bin' -> '/home/karim/Bureau/f6du1_yocto_211/b=
uild_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-=
imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx6d.bin'
| 'firmware/vpu/vpu_fw_imx53.bin' -> '/home/karim/Bureau/f6du1_yocto_211/b=
uild_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-=
imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx53.bin'
| 'firmware/vpu/vpu_fw_imx51.bin' -> '/home/karim/Bureau/f6du1_yocto_211/b=
uild_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-=
imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx51.bin'
| 'firmware/vpu/vpu_fw_imx6q.bin' -> '/home/karim/Bureau/f6du1_yocto_211/b=
uild_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-=
imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx6q.bin'
| cp: cannot stat 'git/brcm/1BW_BCM43340/*.bin': No such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_install (log file is located at /home/karim/B=
ureau/f6du1_yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-=
linux-gnueabi/firmware-imx/1_5.4-r0/temp/log.do_install.23348)
ERROR: Task 1802 (/home/karim/Bureau/f6du1_yocto_211/sources/meta-fsl-bsp-=
release/imx/meta-bsp/recipes-bsp/firmware-imx/firmware-imx_5.4.bb, do_insta=
ll) failed with exit code '1'

*firmware-imx.inc :

*
SUMMARY =3D "Freescale IMX firmware"
DESCRIPTION =3D "Freescale IMX firmware such as for the VPU"
SECTION =3D "base"
LICENSE =3D "Proprietary"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D8cf95184c220e247b9917e7244124c5=
a"

PE =3D "1"

#BRCM firmware git
SRCBRANCH ?=3D "master"

SRC_URI =3D "http://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-5.4.bin=
;fsl-eula=3Dtrue"

inherit fsl-eula-unpack

do_install() {
install -d ${D}${base_libdir}/firmware/imx
install -d ${D}${base_libdir}/firmware/bcm
install -d ${D}${sysconfdir}/firmware

cp -rfv firmware/* ${D}${base_libdir}/firmware/

#1BW_BCM43340
install -d ${D}${base_libdir}/firmware/bcm/1BW_BCM43340
cp -rfv git/brcm/1BW_BCM43340/*.bin ${D}${base_libdir}/firmware/bcm/1BW_BC=
M43340
cp -rfv git/brcm/1BW_BCM43340/*.cal ${D}${base_libdir}/firmware/bcm/1BW_BC=
M43340
cp -rfv git/brcm/1BW_BCM43340/*.hcd ${D}${sysconfdir}/firmware/

#1DX_BCM4343W
install -d ${D}${base_libdir}/firmware/bcm/1DX_BCM4343W
cp -rfv git/brcm/1DX_BCM4343W/*.bin ${D}${base_libdir}/firmware/bcm/1DX_BC=
M4343W
cp -rfv git/brcm/1DX_BCM4343W/*.cal ${D}${base_libdir}/firmware/bcm/1DX_BC=
M4343W
cp -rfv git/brcm/1DX_BCM4343W/*.hcd ${D}${sysconfdir}/firmware/

#SN8000_BCM43362
install -d ${D}${base_libdir}/firmware/bcm/SN8000_BCM43362
cp -rfv git/brcm/SN8000_BCM43362/*.bin ${D}${base_libdir}/firmware/bcm/SN8=
000_BCM43362
cp -rfv git/brcm/SN8000_BCM43362/*.cal ${D}${base_libdir}/firmware/bcm/SN8=
000_BCM43362
cp -rfv git/brcm/1DX_BCM4343W/*.hcd ${D}${sysconfdir}/firmware/

#ZP_BCM4339
install -d ${D}${base_libdir}/firmware/bcm/ZP_BCM4339
cp -rfv git/brcm/ZP_BCM4339/*.bin ${D}${base_libdir}/firmware/bcm/ZP_BCM43=
39
cp -rfv git/brcm/ZP_BCM4339/*.cal ${D}${base_libdir}/firmware/bcm/ZP_BCM43=
39
cp -rfv git/brcm/ZP_BCM4339/*.hcd ${D}${sysconfdir}/firmware/

mv ${D}${base_libdir}/firmware/epdc/ ${D}${base_libdir}/firmware/imx/epdc/
mv ${D}${base_libdir}/firmware/imx/epdc/epdc_ED060XH2C1.fw.nonrestricted $=
{D}${base_libdir}/firmware/imx/epdc/epdc_ED060XH2C1.fw

find ${D}${base_libdir}/firmware -type f -exec chmod 644 '{}' ';'
find ${D}${base_libdir}/firmware -type f -exec chown root:root '{}' ';'

# Remove files not going to be installed
find ${D}${base_libdir}/firmware/ -name '*.mk' -exec rm '{}' ';'
}

python populate_packages_prepend() {
vpudir =3D bb.data.expand('${base_libdir}/firmware/vpu', d)
do_split_packages(d, vpudir, '^vpu_fw_([^_]*).*\.bin',
output_pattern=3D'firmware-imx-vpu-%s',
description=3D'Freescale IMX Firmware %s',
extra_depends=3D'',
prepend=3DTrue)

sdmadir =3D bb.data.expand('${base_libdir}/firmware/sdma', d)
do_split_packages(d, sdmadir, '^sdma-([^-]*).*\.bin',
output_pattern=3D'firmware-imx-sdma-%s',
description=3D'Freescale IMX Firmware %s',
extra_depends=3D'',
prepend=3DTrue)
}

ALLOW_EMPTY_${PN} =3D "1"

PACKAGES_DYNAMIC =3D "${PN}-vpu-* ${PN}-sdma-*"

PACKAGES =3D+ "${PN}-epdc ${PN}-brcm"

FILES_${PN}-epdc =3D "${base_libdir}/firmware/imx/epdc/"
FILES_${PN}-brcm =3D "${base_libdir}/firmware/bcm/*/*.bin ${base_libdir}/f=
irmware/bcm/*/*.cal ${sysconfdir}/firmware/"

PACKAGE_ARCH =3D "${MACHINE_SOCARCH}"

*firmware-imx_5.4.bb :

*
# Copyright (C) 2012-2016 Freescale Semiconductor

require firmware-imx.inc
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D8cf95184c220e247b9917e7244124c5=
a"

SRC_URI[md5sum] =3D "dae846ca2fc4504067f725f501491adf"
SRC_URI[sha256sum] =3D "c5bd4bff48cce9715a5d6d2c190ff3cd2262c7196f7facb9b0=
eda231c92cc223"

#BRCM firmware git
SRCREV =3D "951c1363abe95dd75ab3e9447f640d7807240236"

COMPATIBLE_MACHINE =3D "(mx5|mx6|mx6ul|mx7)"

I really hope, someone can help me.

Best regards,

--6WHem4Na0cCjIy6lft0o
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br /><br />I have a big problem during the compilation of the =
Yocto project. I have an error with the file&nbsp;firmware-imx_5.4.bb and t=
he file&nbsp;firmware-imx.inc. I have tried everything. Please, some can he=
lp me?&nbsp;<br /><br />This is my terminal :&nbsp;<br /><br /><br />
<div>ERROR: firmware-imx-1_5.4-r0 do_install: Function failed: do_install =
(log file is located at /home/karim/Bureau/f6du1_yocto_211/build_directory/=
tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/1_5.4-r0/te=
mp/log.do_install.23348)</div>
<div>ERROR: Logfile of failure stored in: /home/karim/Bureau/f6du1_yocto_2=
11/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmw=
are-imx/1_5.4-r0/temp/log.do_install.23348</div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_install</div>
<div>| 'firmware/Android.mk' -&gt; '/home/karim/Bureau/f6du1_yocto_211/bui=
ld_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-im=
x/1_5.4-r0/image/lib/firmware/Android.mk'</div>
<div>| 'firmware/epdc' -&gt; '/home/karim/Bureau/f6du1_yocto_211/build_dir=
ectory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/1_5.=
4-r0/image/lib/firmware/epdc'</div>
<div>| 'firmware/epdc/epdc_E97_V110.fw' -&gt; '/home/karim/Bureau/f6du1_yo=
cto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/=
firmware-imx/1_5.4-r0/image/lib/firmware/epdc/epdc_E97_V110.fw'</div>
<div>| 'firmware/epdc/epdc_E60_V220.fw' -&gt; '/home/karim/Bureau/f6du1_yo=
cto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/=
firmware-imx/1_5.4-r0/image/lib/firmware/epdc/epdc_E60_V220.fw'</div>
<div>| 'firmware/epdc/epdc_E60_V110.fw' -&gt; '/home/karim/Bureau/f6du1_yo=
cto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/=
firmware-imx/1_5.4-r0/image/lib/firmware/epdc/epdc_E60_V110.fw'</div>
<div>| 'firmware/epdc/epdc_E060SCM.fw' -&gt; '/home/karim/Bureau/f6du1_yoc=
to_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/f=
irmware-imx/1_5.4-r0/image/lib/firmware/epdc/epdc_E060SCM.fw'</div>
<div>| 'firmware/epdc/fsl-epdc.mk' -&gt; '/home/karim/Bureau/f6du1_yocto_2=
11/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmw=
are-imx/1_5.4-r0/image/lib/firmware/epdc/fsl-epdc.mk'</div>
<div>| 'firmware/epdc/epdc_ED060XH2C1.fw.nonrestricted' -&gt; '/home/karim=
/Bureau/f6du1_yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-pok=
y-linux-gnueabi/firmware-imx/1_5.4-r0/image/lib/firmware/epdc/epdc_ED060XH2=
C1.fw.nonrestricted'</div>
<div>| 'firmware/sdma' -&gt; '/home/karim/Bureau/f6du1_yocto_211/build_dir=
ectory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/1_5.=
4-r0/image/lib/firmware/sdma'</div>
<div>| 'firmware/sdma/sdma-imx35-to1.bin' -&gt; '/home/karim/Bureau/f6du1_=
yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueab=
i/firmware-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx35-to1.bin'</div>
<div>| 'firmware/sdma/sdma-imx51-to3.bin' -&gt; '/home/karim/Bureau/f6du1_=
yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueab=
i/firmware-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx51-to3.bin'</div>
<div>| 'firmware/sdma/sdma-imx25-to1.bin' -&gt; '/home/karim/Bureau/f6du1_=
yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueab=
i/firmware-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx25-to1.bin'</div>
<div>| 'firmware/sdma/sdma-imx53-to1.bin' -&gt; '/home/karim/Bureau/f6du1_=
yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueab=
i/firmware-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx53-to1.bin'</div>
<div>| 'firmware/sdma/sdma-imx35-to2.bin' -&gt; '/home/karim/Bureau/f6du1_=
yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueab=
i/firmware-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx35-to2.bin'</div>
<div>| 'firmware/sdma/sdma-imx31-to1.bin' -&gt; '/home/karim/Bureau/f6du1_=
yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueab=
i/firmware-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx31-to1.bin'</div>
<div>| 'firmware/sdma/sdma-imx31-to2.bin' -&gt; '/home/karim/Bureau/f6du1_=
yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueab=
i/firmware-imx/1_5.4-r0/image/lib/firmware/sdma/sdma-imx31-to2.bin'</div>
<div>| 'firmware/vpu' -&gt; '/home/karim/Bureau/f6du1_yocto_211/build_dire=
ctory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/firmware-imx/1_5.4=
-r0/image/lib/firmware/vpu'</div>
<div>| 'firmware/vpu/vpu_fw_imx27_TO1.bin' -&gt; '/home/karim/Bureau/f6du1=
_yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnuea=
bi/firmware-imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx27_TO1.bin'</div>
<div>| 'firmware/vpu/vpu_fw_imx27_TO2.bin' -&gt; '/home/karim/Bureau/f6du1=
_yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnuea=
bi/firmware-imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx27_TO2.bin'</div>
<div>| 'firmware/vpu/vpu_fw_imx6d.bin' -&gt; '/home/karim/Bureau/f6du1_yoc=
to_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/f=
irmware-imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx6d.bin'</div>
<div>| 'firmware/vpu/vpu_fw_imx53.bin' -&gt; '/home/karim/Bureau/f6du1_yoc=
to_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/f=
irmware-imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx53.bin'</div>
<div>| 'firmware/vpu/vpu_fw_imx51.bin' -&gt; '/home/karim/Bureau/f6du1_yoc=
to_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/f=
irmware-imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx51.bin'</div>
<div>| 'firmware/vpu/vpu_fw_imx6q.bin' -&gt; '/home/karim/Bureau/f6du1_yoc=
to_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/f=
irmware-imx/1_5.4-r0/image/lib/firmware/vpu/vpu_fw_imx6q.bin'</div>
<div>| cp: cannot stat 'git/brcm/1BW_BCM43340/*.bin': No such file or dire=
ctory</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Function failed: do_install (log file is located at /home/ka=
rim/Bureau/f6du1_yocto_211/build_directory/tmp/work/cortexa9hf-neon-mx6qdl-=
poky-linux-gnueabi/firmware-imx/1_5.4-r0/temp/log.do_install.23348)</div>
<div>ERROR: Task 1802 (/home/karim/Bureau/f6du1_yocto_211/sources/meta-fsl=
-bsp-release/imx/meta-bsp/recipes-bsp/firmware-imx/firmware-imx_5.4.bb, do_=
install) failed with exit code '1'</div>
<div><br /><br /><br /><strong>firmware-imx.inc :<br /><br /></strong>
<div>SUMMARY =3D "Freescale IMX firmware"</div>
<div>DESCRIPTION =3D "Freescale IMX firmware such as for the VPU"</div>
<div>SECTION =3D "base"</div>
<div>LICENSE =3D "Proprietary"</div>
<div>LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D8cf95184c220e247b9917e7244=
124c5a"</div>
<div>&nbsp;</div>
<div>PE =3D "1"</div>
<div>&nbsp;</div>
<div>#BRCM firmware git</div>
<div>SRCBRANCH ?=3D "master"</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "http://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-5.=
4.bin;fsl-eula=3Dtrue"</div>
<div>&nbsp;</div>
<div>inherit fsl-eula-unpack</div>
<div>&nbsp;</div>
<div>do_install() {</div>
<div>&nbsp; &nbsp; install -d ${D}${base_libdir}/firmware/imx</div>
<div>&nbsp; &nbsp; install -d ${D}${base_libdir}/firmware/bcm</div>
<div>&nbsp; &nbsp; install -d ${D}${sysconfdir}/firmware</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; cp -rfv firmware/* ${D}${base_libdir}/firmware/</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; #1BW_BCM43340</div>
<div>&nbsp; &nbsp; install -d ${D}${base_libdir}/firmware/bcm/1BW_BCM43340=
</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/1BW_BCM43340/*.bin ${D}${base_libdir}/=
firmware/bcm/1BW_BCM43340</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/1BW_BCM43340/*.cal ${D}${base_libdir}/=
firmware/bcm/1BW_BCM43340</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/1BW_BCM43340/*.hcd ${D}${sysconfdir}/f=
irmware/</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; #1DX_BCM4343W</div>
<div>&nbsp; &nbsp; install -d ${D}${base_libdir}/firmware/bcm/1DX_BCM4343W=
</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/1DX_BCM4343W/*.bin ${D}${base_libdir}/=
firmware/bcm/1DX_BCM4343W</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/1DX_BCM4343W/*.cal ${D}${base_libdir}/=
firmware/bcm/1DX_BCM4343W</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/1DX_BCM4343W/*.hcd ${D}${sysconfdir}/f=
irmware/</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; #SN8000_BCM43362</div>
<div>&nbsp; &nbsp; install -d ${D}${base_libdir}/firmware/bcm/SN8000_BCM43=
362</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/SN8000_BCM43362/*.bin ${D}${base_libdi=
r}/firmware/bcm/SN8000_BCM43362</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/SN8000_BCM43362/*.cal ${D}${base_libdi=
r}/firmware/bcm/SN8000_BCM43362</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/1DX_BCM4343W/*.hcd ${D}${sysconfdir}/f=
irmware/</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; #ZP_BCM4339</div>
<div>&nbsp; &nbsp; install -d ${D}${base_libdir}/firmware/bcm/ZP_BCM4339</=
div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/ZP_BCM4339/*.bin ${D}${base_libdir}/fi=
rmware/bcm/ZP_BCM4339</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/ZP_BCM4339/*.cal ${D}${base_libdir}/fi=
rmware/bcm/ZP_BCM4339</div>
<div>&nbsp; &nbsp; cp -rfv git/brcm/ZP_BCM4339/*.hcd ${D}${sysconfdir}/fir=
mware/</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; mv ${D}${base_libdir}/firmware/epdc/ ${D}${base_libdir}=
/firmware/imx/epdc/</div>
<div>&nbsp; &nbsp; mv ${D}${base_libdir}/firmware/imx/epdc/epdc_ED060XH2C1=
.fw.nonrestricted ${D}${base_libdir}/firmware/imx/epdc/epdc_ED060XH2C1.fw</=
div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; find ${D}${base_libdir}/firmware -type f -exec chmod 64=
4 '{}' ';'</div>
<div>&nbsp; &nbsp; find ${D}${base_libdir}/firmware -type f -exec chown ro=
ot:root '{}' ';'</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; # Remove files not going to be installed</div>
<div>&nbsp; &nbsp; find ${D}${base_libdir}/firmware/ -name '*.mk' -exec rm=
 '{}' ';'</div>
<div>}</div>
<div>&nbsp;</div>
<div>python populate_packages_prepend() {</div>
<div>&nbsp; &nbsp; vpudir =3D bb.data.expand('${base_libdir}/firmware/vpu'=
, d)</div>
<div>&nbsp; &nbsp; do_split_packages(d, vpudir, '^vpu_fw_([^_]*).*\.bin',<=
/div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; output_pattern=3D'firmware-imx-vpu-%s',</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; description=3D'Freescale IMX Firmware %s',</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; extra_depends=3D'',</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; prepend=3DTrue)</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; sdmadir =3D bb.data.expand('${base_libdir}/firmware/sdm=
a', d)</div>
<div>&nbsp; &nbsp; do_split_packages(d, sdmadir, '^sdma-([^-]*).*\.bin',</=
div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; output_pattern=3D'firmware-imx-sdma-%s',</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; description=3D'Freescale IMX Firmware %s',</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; extra_depends=3D'',</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; prepend=3DTrue)</div>
<div>}</div>
<div>&nbsp;</div>
<div>ALLOW_EMPTY_${PN} =3D "1"</div>
<div>&nbsp;</div>
<div>PACKAGES_DYNAMIC =3D "${PN}-vpu-* ${PN}-sdma-*"</div>
<div>&nbsp;</div>
<div>PACKAGES =3D+ "${PN}-epdc ${PN}-brcm"</div>
<div>&nbsp;</div>
<div>FILES_${PN}-epdc =3D "${base_libdir}/firmware/imx/epdc/"</div>
<div>FILES_${PN}-brcm =3D "${base_libdir}/firmware/bcm/*/*.bin ${base_libd=
ir}/firmware/bcm/*/*.cal ${sysconfdir}/firmware/"</div>
<div>&nbsp;</div>
<div>PACKAGE_ARCH =3D "${MACHINE_SOCARCH}"<br /><br /><br /><br /></div>
</div>
<div><strong>firmware-imx_5.4.bb :<br /><br /></strong>
<div># Copyright (C) 2012-2016 Freescale Semiconductor</div>
<div>&nbsp;</div>
<div>require firmware-imx.inc</div>
<div>LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D8cf95184c220e247b9917e7244=
124c5a"</div>
<div>&nbsp;</div>
<div>SRC_URI[md5sum] =3D "dae846ca2fc4504067f725f501491adf"</div>
<div>SRC_URI[sha256sum] =3D "c5bd4bff48cce9715a5d6d2c190ff3cd2262c7196f7fa=
cb9b0eda231c92cc223"</div>
<div>&nbsp;</div>
<div>#BRCM firmware git</div>
<div>SRCREV =3D "951c1363abe95dd75ab3e9447f640d7807240236"</div>
<div>&nbsp;</div>
<div>COMPATIBLE_MACHINE =3D "(mx5|mx6|mx6ul|mx7)"</div>
<div><br /><br /><br />I really hope, someone can help me.&nbsp;<br /><br =
/>Best regards,&nbsp;</div>
</div>

--6WHem4Na0cCjIy6lft0o--
