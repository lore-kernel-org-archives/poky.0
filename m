Return-Path: <jinrong.liao@amlogic.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE40C61D97
	for <webhook@archiver.kernel.org>; Fri, 24 Nov 2023 05:31:54 +0000 (UTC)
Subject: [PATCH] update_udev_hwdb: fix the fail to postinstall intercept update_udev_hwdb 
To: poky@lists.yoctoproject.org
From: jinrong.liao@amlogic.com
X-Originating-Location: Hsinchu, TW (60.248.184.76)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Nov 2023 21:31:45 -0800
Message-ID: <OUs1.1700803905876989857.Olfi@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="QAi2rYAUCH2IKtrMtdaK"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 24 Nov 2023 05:31:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13210

--QAi2rYAUCH2IKtrMtdaK
Content-Type: multipart/alternative; boundary="Or6FhHxOtqiHfXAsVCxQ"

--Or6FhHxOtqiHfXAsVCxQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

when multilib enabled, the lib32 udevadm will be installed to oe-sdk-hardco=
ded-buildpath/sysroots/armv8a-poky-linux/bin/, it will fail=C2=A0when run u=
pdate_udev_hwdb for 64 bit script:
|qemu-aarch64: /xxxxxx/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linu=
x/bin/udevadm: Invalid ELF image for this architecture

the update_udev_hwdb fail to re-run udevadm with same arch qemuwrapper if r=
un ${binprefix}qemuwrapper fail, because the binprefix is empty when=C2=A0r=
un in 64 bit script

error:
NOTE: Running intercept scripts:
NOTE: > Executing update_udev_hwdb-lib32 intercept ...
+ [ True =3D False -a lib32-qemuwrapper-cross !=3D nativesdk-qemuwrapper-cr=
oss ]
+ qemu-arm -r 3.2.0 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao/yocto/t=
est/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/a=
mlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysr=
oots/armv8a-poky-linux/usr/lib:/mnt/fileroot/jinrong.liao/yocto/test/build-=
av400-lib32-=C2=A0 popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlo=
gic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroot=
s/armv8a-poky-linux/lib -L /mnt/fileroot/jinrong.liao/yocto/test/build-av40=
0-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yoc=
to/1.0-r0/sdk/image/usr/local/ oe-sdk-hardcoded-buildpath/sysroots/armv8a-p=
oky-linux /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-popular-s=
dk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/ima=
ge/usr/local/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux/bin/udev=
adm hwdb --update --root /mnt/fileroot/=C2=A0 =C2=A0 jinrong.liao/yocto/tes=
t/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/aml=
ogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroo=
ts/armv8a-poky-linux --usr

NOTE: > Executing update_gio_module_cache intercept ...
NOTE: + [ True =3D False -a qemuwrapper-cross !=3D nativesdk-qemuwrapper-cr=
oss ]
+ qemu-aarch64 -r 3.14 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao/yoct=
o/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linu=
x/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/s=
ysroots/armv8a-poky-linux/usr/lib64:/mnt/fileroot/jinrong.liao/yocto/test/b=
uild-av400-=C2=A0 =C2=A0lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky=
-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildp=
ath/sysroots/armv8a-poky-linux/lib64 -L /mnt/fileroot/jinrong.liao/yocto/te=
st/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/am=
logic-sbr-yocto/1.0-r0/sdk/image/=C2=A0 =C2=A0usr/local/oe-sdk-hardcoded-bu=
ildpath/sysroots/armv8a-poky-linux /mnt/fileroot/jinrong.liao/yocto/test/bu=
ild-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic=
-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/a=
rmv8a-poky-linux/usr/libexec/gio-querymodules /mnt/=C2=A0 =C2=A0 =C2=A0 =C2=
=A0fileroot/jinrong.liao/yocto/test/build-av400-lib32-popular-sdk/tmp/work/=
mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local=
/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux/usr/lib64/gio/module=
s/

NOTE: > Executing update_gio_module_cache-lib32 intercept ...
NOTE: + [ True =3D False -a lib32-qemuwrapper-cross !=3D nativesdk-qemuwrap=
per-cross ]
+ qemu-arm -r 3.2.0 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao/yocto/t=
est/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/a=
mlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysr=
oots/armv8a-poky-linux/usr/lib:/mnt/fileroot/jinrong.liao/yocto/test/build-=
av400-lib32-=C2=A0 popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlo=
gic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroot=
s/armv8a-poky-linux/lib -L /mnt/fileroot/jinrong.liao/yocto/test/build-av40=
0-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yoc=
to/1.0-r0/sdk/image/usr/local/ oe-sdk-hardcoded-buildpath/sysroots/armv8a-p=
oky-linux /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-popular-s=
dk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/ima=
ge/usr/local/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux/usr/libe=
xec/lib32-gio-querymodules /mnt/fileroot/=C2=A0 jinrong.liao/yocto/test/bui=
ld-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-=
sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/ar=
mv8a-poky-linux/usr/lib/gio/modules/

NOTE: > Executing update_udev_hwdb intercept ...
NOTE: Exit code 255. Output:
+ [ True =3D False -a qemuwrapper-cross !=3D nativesdk-qemuwrapper-cross ]
+ qemu-aarch64 -r 3.14 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao/yoct=
o/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linu=
x/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/s=
ysroots/armv8a-poky-linux/usr/lib64:/mnt/fileroot/jinrong.liao/yocto/test/b=
uild-av400-=C2=A0 =C2=A0lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky=
-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildp=
ath/sysroots/armv8a-poky-linux/lib64 -L /mnt/fileroot/jinrong.liao/yocto/te=
st/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/am=
logic-sbr-yocto/1.0-r0/sdk/image/=C2=A0 =C2=A0usr/local/oe-sdk-hardcoded-bu=
ildpath/sysroots/armv8a-poky-linux /mnt/fileroot/jinrong.liao/yocto/test/bu=
ild-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic=
-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/a=
rmv8a-poky-linux/bin/udevadm hwdb --update --root /mnt/=C2=A0 =C2=A0fileroo=
t/jinrong.liao/yocto/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av=
400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-ha=
rdcoded-buildpath/sysroots/armv8a-poky-linux --usr
qemu-aarch64: /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-popul=
ar-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk=
/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux/bin/=
udevadm: Invalid ELF image for this architecture
+ [ True =3D False -a qemuwrapper-cross !=3D nativesdk-qemuwrapper-cross ]
+ qemu-aarch64 -r 3.14 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao/yoct=
o/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linu=
x/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/s=
ysroots/armv8a-poky-linux/usr/lib64:/mnt/fileroot/jinrong.liao/yocto/test/b=
uild-av400-=C2=A0 =C2=A0lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky=
-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildp=
ath/sysroots/armv8a-poky-linux/lib64 -L /mnt/fileroot/jinrong.liao/yocto/te=
st/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/am=
logic-sbr-yocto/1.0-r0/sdk/image/=C2=A0 =C2=A0usr/local/oe-sdk-hardcoded-bu=
ildpath/sysroots/armv8a-poky-linux /mnt/fileroot/jinrong.liao/yocto/test/bu=
ild-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic=
-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/a=
rmv8a-poky-linux/bin/udevadm hwdb --update --root /mnt/=C2=A0 =C2=A0fileroo=
t/jinrong.liao/yocto/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av=
400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-ha=
rdcoded-buildpath/sysroots/armv8a-poky-linux --usr
qemu-aarch64: /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-popul=
ar-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk=
/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux/bin/=
udevadm: Invalid ELF image for this architecture

ERROR: The postinstall intercept hook 'update_udev_hwdb' failed, details in=
 /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-popular-sdk/tmp/wo=
rk/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/temp/log.do_popu=
late_sdk

--Or6FhHxOtqiHfXAsVCxQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>&nbsp;when multilib enabled, the lib32 udevadm will be installed to oe=
-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux/bin/, it will fail&nbsp=
;when run update_udev_hwdb for 64 bit script:</div>
<div>&nbsp; &nbsp; |qemu-aarch64: /xxxxxx/oe-sdk-hardcoded-buildpath/sysroo=
ts/armv8a-poky-linux/bin/udevadm: Invalid ELF image for this architecture</=
div>
<div>&nbsp;</div>
<div>the update_udev_hwdb fail to re-run udevadm with same arch qemuwrapper=
 if run ${binprefix}qemuwrapper fail, because the binprefix is empty when&n=
bsp;run in 64 bit script</div>
<div><br />error:&nbsp;</div>
NOTE: Running intercept scripts:</div>
<div>NOTE: &gt; Executing update_udev_hwdb-lib32 intercept ...</div>
<div>+ [ True =3D False -a lib32-qemuwrapper-cross !=3D nativesdk-qemuwrapp=
er-cross ]</div>
<div>+ qemu-arm -r 3.2.0 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao/yo=
cto/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-li=
nux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath=
/sysroots/armv8a-poky-linux/usr/lib:/mnt/fileroot/jinrong.liao/yocto/test/b=
uild-av400-lib32-&nbsp; popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux=
/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sy=
sroots/armv8a-poky-linux/lib -L /mnt/fileroot/jinrong.liao/yocto/test/build=
-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sb=
r-yocto/1.0-r0/sdk/image/usr/local/ oe-sdk-hardcoded-buildpath/sysroots/arm=
v8a-poky-linux /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-popu=
lar-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sd=
k/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux/bin=
/udevadm hwdb --update --root /mnt/fileroot/&nbsp; &nbsp; jinrong.liao/yoct=
o/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linu=
x/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/s=
ysroots/armv8a-poky-linux --usr</div>
<div>&nbsp;</div>
<div>NOTE: &gt; Executing update_gio_module_cache intercept ...</div>
<div>NOTE: + [ True =3D False -a qemuwrapper-cross !=3D nativesdk-qemuwrapp=
er-cross ]</div>
<div>+ qemu-aarch64 -r 3.14 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao=
/yocto/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky=
-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildp=
ath/sysroots/armv8a-poky-linux/usr/lib64:/mnt/fileroot/jinrong.liao/yocto/t=
est/build-av400-&nbsp; &nbsp;lib32-popular-sdk/tmp/work/mesona5_av400_lib32=
-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-b=
uildpath/sysroots/armv8a-poky-linux/lib64 -L /mnt/fileroot/jinrong.liao/yoc=
to/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-lin=
ux/amlogic-sbr-yocto/1.0-r0/sdk/image/&nbsp; &nbsp;usr/local/oe-sdk-hardcod=
ed-buildpath/sysroots/armv8a-poky-linux /mnt/fileroot/jinrong.liao/yocto/te=
st/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/am=
logic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysro=
ots/armv8a-poky-linux/usr/libexec/gio-querymodules /mnt/&nbsp; &nbsp; &nbsp=
; &nbsp;fileroot/jinrong.liao/yocto/test/build-av400-lib32-popular-sdk/tmp/=
work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/=
local/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux/usr/lib64/gio/m=
odules/</div>
<div>&nbsp;</div>
<div>NOTE: &gt; Executing update_gio_module_cache-lib32 intercept ...</div>
<div>NOTE: + [ True =3D False -a lib32-qemuwrapper-cross !=3D nativesdk-qem=
uwrapper-cross ]</div>
<div>+ qemu-arm -r 3.2.0 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao/yo=
cto/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-li=
nux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath=
/sysroots/armv8a-poky-linux/usr/lib:/mnt/fileroot/jinrong.liao/yocto/test/b=
uild-av400-lib32-&nbsp; popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux=
/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sy=
sroots/armv8a-poky-linux/lib -L /mnt/fileroot/jinrong.liao/yocto/test/build=
-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sb=
r-yocto/1.0-r0/sdk/image/usr/local/ oe-sdk-hardcoded-buildpath/sysroots/arm=
v8a-poky-linux /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-popu=
lar-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sd=
k/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux/usr=
/libexec/lib32-gio-querymodules /mnt/fileroot/&nbsp; jinrong.liao/yocto/tes=
t/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/aml=
ogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroo=
ts/armv8a-poky-linux/usr/lib/gio/modules/</div>
<div>&nbsp;</div>
<div>NOTE: &gt; Executing update_udev_hwdb intercept ...</div>
<div>NOTE: Exit code 255. Output:</div>
<div>+ [ True =3D False -a qemuwrapper-cross !=3D nativesdk-qemuwrapper-cro=
ss ]</div>
<div>+ qemu-aarch64 -r 3.14 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao=
/yocto/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky=
-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildp=
ath/sysroots/armv8a-poky-linux/usr/lib64:/mnt/fileroot/jinrong.liao/yocto/t=
est/build-av400-&nbsp; &nbsp;lib32-popular-sdk/tmp/work/mesona5_av400_lib32=
-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-b=
uildpath/sysroots/armv8a-poky-linux/lib64 -L /mnt/fileroot/jinrong.liao/yoc=
to/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-lin=
ux/amlogic-sbr-yocto/1.0-r0/sdk/image/&nbsp; &nbsp;usr/local/oe-sdk-hardcod=
ed-buildpath/sysroots/armv8a-poky-linux /mnt/fileroot/jinrong.liao/yocto/te=
st/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/am=
logic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysro=
ots/armv8a-poky-linux/bin/udevadm hwdb --update --root /mnt/&nbsp; &nbsp;fi=
leroot/jinrong.liao/yocto/test/build-av400-lib32-popular-sdk/tmp/work/meson=
a5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-s=
dk-hardcoded-buildpath/sysroots/armv8a-poky-linux --usr</div>
<div>qemu-aarch64: /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-=
popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r=
0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux=
/bin/udevadm: Invalid ELF image for this architecture</div>
<div>+ [ True =3D False -a qemuwrapper-cross !=3D nativesdk-qemuwrapper-cro=
ss ]</div>
<div>+ qemu-aarch64 -r 3.14 -E LD_LIBRARY_PATH=3D/mnt/fileroot/jinrong.liao=
/yocto/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky=
-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildp=
ath/sysroots/armv8a-poky-linux/usr/lib64:/mnt/fileroot/jinrong.liao/yocto/t=
est/build-av400-&nbsp; &nbsp;lib32-popular-sdk/tmp/work/mesona5_av400_lib32=
-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-b=
uildpath/sysroots/armv8a-poky-linux/lib64 -L /mnt/fileroot/jinrong.liao/yoc=
to/test/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-lin=
ux/amlogic-sbr-yocto/1.0-r0/sdk/image/&nbsp; &nbsp;usr/local/oe-sdk-hardcod=
ed-buildpath/sysroots/armv8a-poky-linux /mnt/fileroot/jinrong.liao/yocto/te=
st/build-av400-lib32-popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/am=
logic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysro=
ots/armv8a-poky-linux/bin/udevadm hwdb --update --root /mnt/&nbsp; &nbsp;fi=
leroot/jinrong.liao/yocto/test/build-av400-lib32-popular-sdk/tmp/work/meson=
a5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/sdk/image/usr/local/oe-s=
dk-hardcoded-buildpath/sysroots/armv8a-poky-linux --usr</div>
<div>qemu-aarch64: /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-=
popular-sdk/tmp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r=
0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/armv8a-poky-linux=
/bin/udevadm: Invalid ELF image for this architecture</div>
<div>&nbsp;</div>
<div>ERROR: The postinstall intercept hook 'update_udev_hwdb' failed, detai=
ls in /mnt/fileroot/jinrong.liao/yocto/test/build-av400-lib32-popular-sdk/t=
mp/work/mesona5_av400_lib32-poky-linux/amlogic-sbr-yocto/1.0-r0/temp/log.do=
_populate_sdk</div>
<div>&nbsp;</div>

--Or6FhHxOtqiHfXAsVCxQ--

--QAi2rYAUCH2IKtrMtdaK
Content-Type: application/octet-stream; name="0001-update_udev_hwdb-fix-the-fail-to-postinstall-interce.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="0001-update_udev_hwdb-fix-the-fail-to-postinstall-interce.patch"

RnJvbSA5ZTgyYjRiODFhMjQ4NDI5MmExODNhNWMzYzdiZGQwZDljYWYwZTBiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiAiamlucm9uZy5saWFvIiA8amlucm9uZy5saWFvQGFtbG9naWMu
Y29tPgpEYXRlOiBGcmksIDI0IE5vdiAyMDIzIDEwOjEyOjA1ICswODAwClN1YmplY3Q6IFtQQVRD
SF0gdXBkYXRlX3VkZXZfaHdkYjogZml4IHRoZSBmYWlsIHRvIHBvc3RpbnN0YWxsIGludGVyY2Vw
dAogdXBkYXRlX3VkZXZfaHdkYiBbMS8xXQoKd2hlbiBtdWx0aWxpYiBlbmFibGVkLCB0aGUgbGli
MzIgdWRldmFkbSB3aWxsIGJlIGluc3RhbGxlZCB0bwpvZS1zZGstaGFyZGNvZGVkLWJ1aWxkcGF0
aC9zeXNyb290cy9hcm12OGEtcG9reS1saW51eC9iaW4vLCBpdCB3aWxsIGZhaWwKd2hlbiBydW4g
dXBkYXRlX3VkZXZfaHdkYiBmb3IgNjQgYml0IHNjcmlwdDoKfHFlbXUtYWFyY2g2NDogL3h4eHh4
eC9vZS1zZGstaGFyZGNvZGVkLWJ1aWxkcGF0aC9zeXNyb290cy9hcm12OGEtcG9reS1saW51eC9i
aW4vdWRldmFkbTogSW52YWxpZCBFTEYgaW1hZ2UgZm9yIHRoaXMgYXJjaGl0ZWN0dXJlCgp0aGUg
dXBkYXRlX3VkZXZfaHdkYiBmYWlsIHRvIHJlLXJ1biB1ZGV2YWRtIHdpdGggc2FtZSBhcmNoIHFl
bXV3cmFwcGVyCmlmIHJ1biAke2JpbnByZWZpeH1xZW11d3JhcHBlciBmYWlsLCBiZWNhdXNlIHRo
ZSBiaW5wcmVmaXggaXMgZW1wdHkgd2hlbgpydW4gaW4gNjQgYml0IHNjcmlwdAoKcmVsYXRlZCBj
aGFuZ2U6CmNvbW1pdCAwOWQyY2EyMGNiZTA4NTdhMDQwMTRmOGEzNjJmMDNkMTQ4MGYxNzQ4CkF1
dGhvcjogS2FpIEthbmcgPGthaS5rYW5nQHdpbmRyaXZlci5jb20+CkRhdGU6ICAgRnJpIEFwciAx
NSAyMjozODowMyAyMDIyICswODAwCgogICAgdXBkYXRlX3VkZXZfaHdkYjogZml4IG11bHRpbGli
IGlzc3VlIHdpdGggc3lzdGVtZAoKICAgIEl0IGR1cGxpY2F0ZXMgdWRldmFkbSBpbiBzeXN0ZW1k
IHJlY2lwZSB0byBtYWtlIGl0IGNvdWxkIHJ1bgogICAgdXBkYXRlX3VkZXZfaHdkYiB3aXRoIG11
bHRpbGliIGVuYWJsZWQuIFNpbmNlIHN5c3RlbWQgbGFzdCB1cGRhdGUsCiAgICBpdCBkZXBsb3lz
IGEgc2hhcmVkIGxpYnJhcnkgbGlic3lzdGVtZC1zaGFyZWQtMjUwLnNvIGluIC9saWIvc3lzdGVt
ZC8uCiAgICBUaGUgbGlicmFyeSB3aWxsIGJlIG92ZXJ3cml0dGVuIHdoZW4gbXVsdGlsaWIgZW5h
YmxlZC4gVGhlbiBpZiBib3RoCiAgICB1ZGV2LWh3ZGIgYW5kIGxpYjMyLXVkZXYtaHdkYiBhcmUg
aW5zdGFsbGVkLCBpdCBmYWlscyB0byBydW4gdGhlCiAgICBtdWx0aWxpYiB2ZXJzaW9uIHBvc3Rp
bnN0YWxsIGludGVyY2VwdCB1cGRhdGVfdWRldl9od2RiOgoKICAgIHwgL3BhdGgvdG8vYnVpbGQv
dG1wLWdsaWJjL3dvcmsvaW50ZWxfeDg2XzY0LXdycy1saW51eC93cmxpbnV4LWltYWdlLXNtYWxs
LzEuMC1yMS9yb290ZnMvdXNyL2xpYmV4ZWMvbGliMzItdWRldmFkbToKICAgICAgICBlcnJvciB3
aGlsZSBsb2FkaW5nIHNoYXJlZCBsaWJyYXJpZXM6IGxpYnN5c3RlbWQtc2hhcmVkLTI1MC5zbzog
d3JvbmcgRUxGIGNsYXNzOiBFTEZDTEFTUzY0CgogICAgYHVkZXZhZG0gaHdkYiAtLXVwZGF0ZWAg
anVzdCBjb25jYXRlbmF0ZXMgLmh3ZGIgZmlsZXMgaW4gZGlycwogICAgL2V0Yy91ZGV2L2h3ZGIu
ZCBhbmQgL2xpYi91ZGV2L2h3ZGIuZC4gVGhlIG91dHB1dCBmaWxlIGh3ZGIuYmluIGlzCiAgICBp
ZGVudGljYWwgd2l0aCB0aGUgb25lIGNyZWF0ZWQgYnkgbGliMzItdWRldmFkbS4gU28gZG8gTk9U
IGR1cGxpY2F0ZQogICAgbGliMzItdWRldmFkbSBpbiBzeXN0ZW1kIGFuZCBldWRldi4gQW5kIHVw
ZGF0ZSBpbnRlcmNlcHQgc2NyaXB0CiAgICB1cGRhdGVfdWRldl9od2RiIHRoYXQgcmUtcnVuIHVk
ZXZhZG0gd2l0aCBzYW1lIGFyY2ggcWVtdXdyYXBwZXIgaWYgcnVuCiAgICAke2JpbnByZWZpeH1x
ZW11d3JhcHBlciBmYWlsZWQuCgogICAgKEZyb20gT0UtQ29yZSByZXY6IDc0ZmUxYjVhZjA2NGY2
NDRhN2Q1NTViNjE1MjdiYjdkMDJjYzMwYjgpCgpDaGFuZ2UtSWQ6IEkzYmVlOTQzNDdmNzk2YzZj
ZTZhZTNjNjk5YzNkNDkzYzdiZDc0ZWUwClNpZ25lZC1vZmYtYnk6IGppbnJvbmcubGlhbyA8amlu
cm9uZy5saWFvQGFtbG9naWMuY29tPgotLS0KIHNjcmlwdHMvcG9zdGluc3QtaW50ZXJjZXB0cy91
cGRhdGVfdWRldl9od2RiIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9wb3N0aW5zdC1pbnRlcmNlcHRzL3Vw
ZGF0ZV91ZGV2X2h3ZGIgYi9zY3JpcHRzL3Bvc3RpbnN0LWludGVyY2VwdHMvdXBkYXRlX3VkZXZf
aHdkYgppbmRleCA4YjNmNWRlNzkxLi41NDA0Y2NkNmE1IDEwMDY0NAotLS0gYS9zY3JpcHRzL3Bv
c3RpbnN0LWludGVyY2VwdHMvdXBkYXRlX3VkZXZfaHdkYgorKysgYi9zY3JpcHRzL3Bvc3RpbnN0
LWludGVyY2VwdHMvdXBkYXRlX3VkZXZfaHdkYgpAQCAtMjAsNiArMjAsNiBAQCBjYXNlICIke1BS
RUZFUlJFRF9QUk9WSURFUl91ZGV2fSIgaW4KIGVzYWMKIAogcm0gLWYgJEQke1VERVZMSUJESVJ9
L3VkZXYvaHdkYi5iaW4KLVBTRVVET19VTkxPQUQ9MSAke2JpbnByZWZpeH1xZW11d3JhcHBlciAt
TCAkRCAkRCR7VURFVkFETX0gaHdkYiAtLXVwZGF0ZSAtLXJvb3QgJEQgJHtVREVWX0VYVFJBX0FS
R1N9IHx8CitQU0VVRE9fVU5MT0FEPTEgbGliMzItcWVtdXdyYXBwZXIgLUwgJEQgJEQke1VERVZB
RE19IGh3ZGIgLS11cGRhdGUgLS1yb290ICREICR7VURFVl9FWFRSQV9BUkdTfSB8fAogCVBTRVVE
T19VTkxPQUQ9MSBxZW11d3JhcHBlciAtTCAkRCAkRCR7VURFVkFETX0gaHdkYiAtLXVwZGF0ZSAt
LXJvb3QgJEQgJHtVREVWX0VYVFJBX0FSR1N9CiBjaG93biByb290OnJvb3QgJEQke1VERVZMSUJE
SVJ9L3VkZXYvaHdkYi5iaW4KLS0gCjIuMzQuMQoK

--QAi2rYAUCH2IKtrMtdaK--

