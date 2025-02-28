Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2B8CC282C1
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 16:00:19 +0000 (UTC)
Subject: Just need a user to exist but I'm getting a package install error on my recipe  #poky #raspberrypi
To: poky@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Feb 2025 08:00:15 -0800
Message-ID: <LOpy.1740758415720844712.R8rO@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="l3K3bwECmF2yDaQgqguv"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 28 Feb 2025 16:00:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13545

--l3K3bwECmF2yDaQgqguv
Content-Type: multipart/alternative; boundary="wzM78AB0P3KbvgXBKZJV"

--wzM78AB0P3KbvgXBKZJV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to create a user for my board. I require a user in order to have=
 pulseaudio to run as a user level service in systemd startup.

I've included my "board-user.bb" file which is a greatly cut down recipe fr=
om the skeleton examples provided in poky. I've also included the recipe fo=
r my board file which is just a rename of the "core-image-minimal.bb" file =
and my changes. It is there I've added my board-user recipe so that all ver=
sions of my "libby" image will have the user "libby".

My error that I'm getting is:

>=20
> ERROR: libby-image-1.0-r0 do_rootfs: Unable to install packages. Command
> '/home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linu=
x/libby-image/1.0/recipe-sysroot-native/usr/bin/opkg
> --volatile-cache -f
> /home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux=
/libby-image/1.0/opkg.conf
> -t
> /home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux=
/libby-image/1.0/temp/ipktemp/
> -o
> /home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux=
/libby-image/1.0/rootfs
> --force_postinstall --prefer-arch-to-version =C2=A0 install alsa-lib alsa=
-utils
> bluez5 board-user dhcpcd i2c-tools linux-firmware-bcm43430 openssh
> packagegroup-core-boot pi-bluetooth pulseaudio-server run-postinsts sudo
> util-linux wpa-supplicant' returned 255:
> *error: opkg_solver_install: No candidates to install board-user (null)!*
> *error: opkg_finalize_intercepts: Failed to open dir
> /home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux=
/libby-image/1.0/temp/ipktemp//opkg-XorTPq/opkg-intercept-w88StC:
> No such file or directory.*
>=20

I'm not sure where to go with this. Why would opkg have an issue with this?=
 In fact there is only the side effect of the "adduser" command running so =
that the user is installed on the rootfs properly. It should be modifying f=
iles and creating a directory.

Any advice would be greatly appreciated.

Cheers!!

--wzM78AB0P3KbvgXBKZJV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm trying to create a user for my board. I require a user in order to=
 have pulseaudio to run as a user level service in systemd startup.</div>
<div>&nbsp;</div>
<div>I've included my "board-user.bb" file which is a greatly cut down reci=
pe from the skeleton examples provided in poky. I've also included the reci=
pe for my board file which is just a rename of the "core-image-minimal.bb" =
file and my changes. It is there I've added my board-user recipe so that al=
l versions of my "libby" image will have the user "libby".</div>
<div>&nbsp;</div>
<div>My error that I'm getting is:</div>
<div>
<div>&nbsp;</div>
<div>
<blockquote>
<div>ERROR: libby-image-1.0-r0 do_rootfs: Unable to install packages. Comma=
nd '/home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-lin=
ux/libby-image/1.0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /=
home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/li=
bby-image/1.0/opkg.conf -t /home/jdowd/Project/Libby/poky/build/tmp/work/ra=
spberrypi0_64_wf-oe-linux/libby-image/1.0/temp/ipktemp/ -o /home/jdowd/Proj=
ect/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/r=
ootfs &nbsp;--force_postinstall --prefer-arch-to-version &nbsp; install als=
a-lib alsa-utils bluez5 board-user dhcpcd i2c-tools linux-firmware-bcm43430=
 openssh packagegroup-core-boot pi-bluetooth pulseaudio-server run-postinst=
s sudo util-linux wpa-supplicant' returned 255:<br /><strong>error: opkg_so=
lver_install: No candidates to install board-user (null)!</strong><br /><st=
rong>error: opkg_finalize_intercepts: Failed to open dir /home/jdowd/Projec=
t/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/tem=
p/ipktemp//opkg-XorTPq/opkg-intercept-w88StC: No such file or directory.</s=
trong></div>
</blockquote>
<div>I'm not sure where to go with this. Why would opkg have an issue with =
this? In fact there is only the side effect of the "adduser" command runnin=
g so that the user is installed on the rootfs properly. It should be modify=
ing files and creating a directory.&nbsp;</div>
<div>&nbsp;</div>
<div>Any advice would be greatly appreciated.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>
<div>&nbsp;</div>
</div>
</div>

--wzM78AB0P3KbvgXBKZJV--

--l3K3bwECmF2yDaQgqguv
Content-Type: application/octet-stream; name="board-user.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="board-user.bb"

U1VNTUFSWSA9ICJUaGlzIHJlY2lwZXMgZGVmaW5lcyB0aGUgdXNlcnMgdGhhdCBhcmUgcmVxdWly
ZWQgZm9yIHRoZSBzbGFzaGRldnNsYXNobnVsbC5vcmcgc3lzdGVtIgoKREVTQ1JJUFRJT04gPSAi
VGhpcyByZWNpcGUgc2VydmVzIGFzIGFuIGV4YW1wbGUgZm9yIHVzaW5nIGZlYXR1cmVzIGZyb20g
dXNlcmFkZC5iYmNsYXNzIgoKTElDRU5TRSA9ICJNSVQiCgppbmhlcml0IHVzZXJhZGQKCiMgTGli
YnkgdXNlciBwYXNzd29yZCBpcyAiTklDRSBUUlkuLi4gQ2hlY2sgdGhlIGRvY3VtZW50YXRpb24g
aW4gd2lraSBvbiBzbGFzaGRldnNsYXNobnVsbC5vcmciCkxJQkJZX1BBU1NXT1JEID0gIiR5JGo5
VCRRai8zQU9KNlVxN29BSFY2LjBDaEgvJGwuN2ZVL3BRTy9JUGNMVkxBRlRHd2tVaTJ5eWQyV09j
LzI1U3loazhQRy8iClVTRVJBRERfUEFDS0FHRVMgPSAiJHtQTn0iClVTRVJBRERfUEFSQU06JHtQ
Tn0gPSAiLS1jcmVhdGUtaG9tZSBcCiAgICAgICAgICAgICAgICAgICAgICAgLS1ncm91cHMgdHR5
LGF1ZGlvIFwKICAgICAgICAgICAgICAgICAgICAgICAtLXBhc3N3b3JkICR7TElCQllfUEFTU1dP
UkR9IFwKICAgICAgICAgICAgICAgICAgICAgICAtLXVzZXItZ3JvdXAgbGliYnkiCgoKRVhDTFVE
RV9GUk9NX1dPUkxEID0gIjEiCgojIFByZXZlbnRzIGRvX3BhY2thZ2UgZmFpbHVyZXMgd2l0aDoK
IyBkZWJ1Z3NvdXJjZXMubGlzdDogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeToKSU5ISUJJVF9Q
QUNLQUdFX0RFQlVHX1NQTElUID0gIjEiCg==

--l3K3bwECmF2yDaQgqguv
Content-Type: application/octet-stream; name="libby-image.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="libby-image.bb"

U1VNTUFSWSA9ICJUaGlzIGlzIHRoZSBib290IGltYWdlIGZvciBMaWJieSB3aGljaCBzdGFydGVk
IG9mZiBhcyB0aGUgY29yZS1pbWFnZS1taW5pbWFsIGltYWdlIGJ1dCBjYW4gZ3JvdyIKCklNQUdF
X0lOU1RBTEwgPSAicGFja2FnZWdyb3VwLWNvcmUtYm9vdCAke0NPUkVfSU1BR0VfRVhUUkFfSU5T
VEFMTH0iCgpJTUFHRV9MSU5HVUFTID0gIiAiCgpMSUNFTlNFID0gIk1JVCIKCmluaGVyaXQgY29y
ZS1pbWFnZSAKCklNQUdFX0lOU1RBTEw6YXBwZW5kID0gICIgYm9hcmQtdXNlciBcCiAgICAgICAg
ICAgICAgICAgICAgICAgICIKCklNQUdFX1JPT1RGU19TSVpFID89ICI4MTkyIgpJTUFHRV9ST09U
RlNfRVhUUkFfU1BBQ0U6YXBwZW5kID0gIiR7QGJiLnV0aWxzLmNvbnRhaW5zKCJESVNUUk9fRkVB
VFVSRVMiLCAic3lzdGVtZCIsICIgKyA0MDk2IiwgIiIsIGQpfSIK

--l3K3bwECmF2yDaQgqguv--

