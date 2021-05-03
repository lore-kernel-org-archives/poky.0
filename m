Subject: win create failing at mcopy #poky #raspberrypi
To: poky@lists.yoctoproject.org
From: proclivis@gmail.com
X-Originating-Location: Colorado Springs, Colorado, US (73.217.66.143)
X-Originating-Platform: Mac Safari 14.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 May 2021 10:37:00 -0700
Message-ID: <Swdb.1620063420405659881.gFTl@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="K9IzgjZmBeUm73F1jKpi"

--K9IzgjZmBeUm73F1jKpi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am getting a Codepage 850 error from mcopy when using meta-raspberrypi wi=
th the openbmc layers.

What is strange is I had no problems for months, set aside my project, cam=
e back and had the failure. The only thing that can be different is my comm=
and line actions, or the code pulled from repositories has changed, which i=
n my understanding can't happen.

Before I give details, note that if I use /usr/bin/mtools on the vfat, it =
succeeds. It is only the mtools from the build that are a problem. Therefor=
e, I concluded that the vfat itself is ok, and the problem is with the tool=
s. Also note I tried older/newer versions of mtools, going back to .18, whi=
ch is what the base linux OS has and works. But the results are the same. F=
rom this I conclude it is not a bug in mtools per se.

There is another thread on this with the context of two docker images, and=
 the result was some missing mtools files. However, I don't have the knowle=
dge of poky and mtools and could not use that hint to actually solve the pr=
oblem. So if there is something missing in a layer, conf, etc, I need somew=
hat complete pointers, examples, or learning resources to succeed. Just say=
ing a file is missing is not going to get me far, because I am not a yocto =
expert yet.

I will break down the info into some categories, and hopefully someone can=
 point me in the right direction:

* SOURCE
* ENVIRONMENT
* CONF
* ERROR
* MANUAL WIC CREATE RESULTS

-- DETAILS --

SOURCE

openbmc tag 2.8 or 2.9
Adding some layers for device tree and driver patches, but nothing that ef=
fects the image

ENVIORNMENT

Ubuntu 14, 16, 18, 20, all have the same results
I use these commands to set the environment and build:

* scripts/install-buildtools
* . poky/buildtools/environment-setup-x86_64-pokysdk-linux
* . oe-init-build-env
* bitbake obmc-phosphor-image

Note that if I build core-image-base I don't have problems. It is in the c=
ontext of openbmc layers that I=C2=A0have problems. The question may have t=
o be asked on the obmc list, but if so, perhaps someone can help me frame t=
he post to best advantage.

CONF

local.conf has these pertinent settings:

require conf/machine/include/obmc-bsp-common.inc

IMAGE_FSTYPES =3D "tar.bz2 ext3 wic.bz2 wic.bmap"

The second line prevented obmc image layers from making images incorrectly=
, as images are normally for ASPEED, not Raspberry Pi. And this worked for =
months and has not been changed.

ERROR

output: Error converting to codepage 850 Invalid argument

| Cannot initialize '::'

| Bad target ::/

MANUAL WIC CREATE RESULTS

I ran wic create manually and get the same result:

wic create sdimage-raspberrypi -e obmc-phosphor-image

INFO: Building wic-tools...

Loading cache: 100% |#####################################################=
##############################################################| Time: 0:00:=
01

Loaded 3376 entries from dependency cache.

Parsing recipes: 100% |###################################################=
##############################################################| Time: 0:00:=
04

Parsing of 2286 .bb files complete (2285 cached, 1 parsed). 3377 targets, =
352 skipped, 0 masked, 0 errors.

NOTE: Resolving any missing task queue dependencies

Build Configuration:

BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "1.46.0"

BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D "x86_64-linux"

NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "ubuntu-18.04"

TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "arm-openbmc-linux-gnueabi"

MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "raspberrypi4"

DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D "openbmc-phosphor"

DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "0.1.0"

TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm vfp corte=
xa7 neon vfpv4 thumb callconvention-hard"

TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=3D=
 "hard"

meta

meta-poky

meta-oe

meta-networking

meta-python

meta-webserver

meta-raspberrypi=C2=A0=C2=A0=C2=A0=C2=A0 =3D "HEAD:35a774200999ac2fca48693=
c1c169bf99d2f63ea"

meta-pmbus-raspberrypi =3D "master:ab92ff0828a0278494e5deeb5ea1af2d4dcec2d=
4"

meta-phosphor=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "HEAD:35a77420=
0999ac2fca48693c1c169bf99d2f63ea"

meta-pmbus-phosphor=C2=A0 =3D "master:6f2f8a4f8dcdad057f8ff9d81583f277a3ae=
a0f2"

Initialising tasks: 100% |################################################=
##############################################################| Time: 0:00:=
02

Sstate summary: Wanted 4 Found 0 Missed 4 Current 52 (0% match, 92% comple=
te)

NOTE: Executing Tasks

NOTE: Tasks Summary: Attempted 437 tasks of which 416 didn't need to be re=
run and all succeeded.

INFO: Creating image(s)...

WARNING: bootloader config not specified, using defaults

ERROR: _exec_cmd: export PATH=3D/home/openbmc/share/design/code/openbmc/bu=
ild/tmp/work/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-tools/1.0-r0=
/recipe-sysroot-native/sbin:/home/openbmc/share/design/code/openbmc/build/t=
mp/work/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-tools/1.0-r0/reci=
pe-sysroot-native/usr/sbin:/home/openbmc/share/design/code/openbmc/build/tm=
p/work/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-tools/1.0-r0/recip=
e-sysroot-native/usr/bin:$PATH;mcopy -i ./tmp.wic.yrj_5bbq/rootfs_boot.1.vf=
at -s ./tmp.wic.yrj_5bbq/boot.1/* ::/ returned '1' instead of 0

output: Error converting to codepage 850 Invalid argument

Cannot initialize '::'

Bad target ::/

--K9IzgjZmBeUm73F1jKpi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am getting a Codepage 850 error from mcopy when using meta-raspberrypi wi=
th the openbmc layers.<br/><br/>What is strange is I had no problems for mo=
nths, set aside my project, came back and had the failure. The only thing t=
hat can be different is my command line actions, or the code pulled from re=
positories has changed, which in my understanding can&#39;t happen.<br/><br=
/>Before I give details, note that if I use /usr/bin/mtools on the vfat, it=
 succeeds. It is only the mtools from the build that are a problem. Therefo=
re, I concluded that the vfat itself is ok, and the problem is with the too=
ls. Also note I tried older/newer versions of mtools, going back to .18, wh=
ich is what the base linux OS has and works. But the results are the same. =
From this I conclude it is not a bug in mtools per se.<br/><br/>There is an=
other thread on this with the context of two docker images, and the result =
was some missing mtools files. However, I don&#39;t have the knowledge of p=
oky and mtools and could not use that hint to actually solve the problem. S=
o if there is something missing in a layer, conf, etc, I need somewhat comp=
lete pointers, examples, or learning resources to succeed. Just saying a fi=
le is missing is not going to get me far, because I am not a yocto expert y=
et.<br/><br/>I will break down the info into some categories, and hopefully=
 someone can point me in the right direction:<br/><br/>
<ul>
<li>SOURCE</li>
<li>ENVIRONMENT</li>
<li>CONF</li>
<li>ERROR</li>
<li>MANUAL WIC CREATE RESULTS</li>
</ul>
<br/>-- DETAILS --<br/><br/>SOURCE<br/><br/>openbmc tag 2.8 or 2.9<br/>Add=
ing some layers for device tree and driver patches, but nothing that effect=
s the image<br/><br/>ENVIORNMENT<br/><br/>Ubuntu 14, 16, 18, 20, all have t=
he same results<br/>I use these commands to set the environment and build:<=
br/><br/>
<ul>
<li><span style=3D"caret-color: #000000; color: #000000; font-family: Cali=
bri, sans-serif; font-size: 14.666666984558105px;">scripts/install-buildtoo=
ls</span></li>
<li><span style=3D"caret-color: #000000; color: #000000; font-family: Cali=
bri, sans-serif; font-size: 14.666666984558105px;">. poky/buildtools/enviro=
nment-setup-x86_64-pokysdk-linux</span></li>
<li><span style=3D"caret-color: #000000; color: #000000; font-family: Cali=
bri, sans-serif; font-size: 14.666666984558105px;">. oe-init-build-env</spa=
n></li>
<li><span style=3D"caret-color: #000000; color: #000000; font-family: Cali=
bri, sans-serif; font-size: 14.666666984558105px;">bitbake obmc-phosphor-im=
age</span></li>
</ul>
<br/>Note that if I build=C2=A0<span style=3D"color: #000000; font-family:=
 Calibri, sans-serif;"><span style=3D"caret-color: #000000; font-size: 14.6=
66666984558105px;">core-image-base I don&#39;t have problems. It is in the =
context of openbmc layers that I=C2=A0have problems. The question may have =
to be asked on the obmc list, but if so, perhaps someone can help me frame =
the post to best advantage.<br/><br/></span></span>CONF<br/><br/>local.conf=
 has these pertinent settings:<br/><br/>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">require conf/machine/include/obmc-bsp-common.inc</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">IMAGE_FSTYPES =3D &#34;tar.bz2 ext3 wic.bz2 wic.bmap&#34;=
<br/><br/>The second line prevented obmc image layers from making images in=
correctly, as images are normally for ASPEED, not Raspberry Pi. And this wo=
rked for months and has not been changed.<br/><br/>ERROR<br/><br/></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">=C2=A0output: Error converting to codepage 850 Invalid ar=
gument</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">| Cannot initialize &#39;::&#39;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">| Bad target ::/<br/><br/><span style=3D"caret-color: #33=
3333; color: #333333; font-family: &#39;Helvetica Neue&#39;, Helvetica, Ari=
al, sans-serif; font-size: 14px;">MANUAL WIC CREATE RESULTS<br/><br/></span=
>I ran wic create manually and get the same result:<br/><br/></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">wic create sdimage-raspberrypi -e obmc-phosphor-image</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">INFO: Building wic-tools...</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">Loading cache: 100% |####################################=
###########################################################################=
####| Time: 0:00:01</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">Loaded 3376 entries from dependency cache.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">Parsing recipes: 100% |##################################=
###########################################################################=
####| Time: 0:00:04</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">Parsing of 2286 .bb files complete (2285 cached, 1 parsed=
). 3377 targets, 352 skipped, 0 masked, 0 errors.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">NOTE: Resolving any missing task queue dependencies</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">Build Configuration:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &#34;1.46.0&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 =3D &#34;x86_64-linux&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#34;ub=
untu-18.04&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &#34;arm-openbmc-linux-gnueabi&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#34;raspberrypi4&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#34;openbmc-phosphor&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#=
34;0.1.0&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &#34;arm vfp cortexa7 neon vfpv4 thumb callconvention-hard&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0=3D &#34;hard&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta-networking=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta-webserver=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta-raspberrypi=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#34;HEAD:35=
a774200999ac2fca48693c1c169bf99d2f63ea&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta-pmbus-raspberrypi =3D &#34;master:ab92ff0828a0278494=
e5deeb5ea1af2d4dcec2d4&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta-phosphor=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &#34;HEAD:35a774200999ac2fca48693c1c169bf99d2f63ea&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">meta-pmbus-phosphor=C2=A0 =3D &#34;master:6f2f8a4f8dcdad0=
57f8ff9d81583f277a3aea0f2&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">Initialising tasks: 100% |###############################=
###########################################################################=
####| Time: 0:00:02</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">Sstate summary: Wanted 4 Found 0 Missed 4 Current 52 (0% =
match, 92% complete)</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">NOTE: Executing Tasks</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">NOTE: Tasks Summary: Attempted 437 tasks of which 416 did=
n&#39;t need to be rerun and all succeeded.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">INFO: Creating image(s)...</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">WARNING: bootloader config not specified, using defaults<=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">ERROR: _exec_cmd: export PATH=3D/home/openbmc/share/desig=
n/code/openbmc/build/tmp/work/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi=
/wic-tools/1.0-r0/recipe-sysroot-native/sbin:/home/openbmc/share/design/cod=
e/openbmc/build/tmp/work/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-=
tools/1.0-r0/recipe-sysroot-native/usr/sbin:/home/openbmc/share/design/code=
/openbmc/build/tmp/work/cortexa7t2hf-neon-vfpv4-openbmc-linux-gnueabi/wic-t=
ools/1.0-r0/recipe-sysroot-native/usr/bin:$PATH;mcopy -i ./tmp.wic.yrj_5bbq=
/rootfs_boot.1.vfat -s ./tmp.wic.yrj_5bbq/boot.1/* ::/ returned &#39;1&#39;=
 instead of 0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">output: Error converting to codepage 850 Invalid argument=
</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">Cannot initialize &#39;::&#39;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font=
-family: Calibri, sans-serif; caret-color: #000000; color: #000000;" style=
=3D"margin:0px;">Bad target ::/</p>
<br/>

--K9IzgjZmBeUm73F1jKpi--
