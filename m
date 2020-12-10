Subject: Unable to complete even the basic tutorial about yocto #poky
To: poky@lists.yoctoproject.org
From: arunlee@gmail.com
X-Originating-Location: Helsinki, Uusimaa, FI (85.76.10.249)
X-Originating-Platform: Linux Firefox 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Dec 2020 06:22:11 -0800
Message-ID: <GRgk.1607610131558989797.iSws@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aAXLP7fHlGm883BdxaKO"

--aAXLP7fHlGm883BdxaKO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am following https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yo=
ctoprojectqs.html.

I am able to compile core-image-sato, but while trying to run there is an =
error

runqemu qemux86-64
runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
runqemu - INFO - Continuing with the following parameters:
KERNEL: [/home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage-=
-5.4.78+git0+d626f9108d_370ef947d5-r0-qemux86-64-20201210083639.bin]
MACHINE: [qemux86-64]
FSTYPE: [ext4]
ROOTFS: [/home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/core-ima=
ge-minimal-qemux86-64-20201210134810.rootfs.ext4]
CONFFILE: [/home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/core-i=
mage-minimal-qemux86-64-20201210134810.qemuboot.conf]

runqemu - INFO - Setting up tap interface under sudo
[sudo] password for arun:
Sorry, try again.
[sudo] password for arun:
runqemu - INFO - Network configuration: ip=3D192.168.7.2::192.168.7.1:255.=
255.255.0
runqemu - INFO - Running /home/arun/yocto/poky/build/tmp/work/x86_64-linux=
/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-x86_64=
 -device virtio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,i=
d=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -drive file=3D/home/arun=
/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-6=
4-20201210134810.rootfs.ext4,if=3Dvirtio,format=3Draw -show-cursor -usb -de=
vice usb-tablet -object rng-random,filename=3D/dev/urandom,id=3Drng0 -devic=
e virtio-rng-pci,rng=3Drng0=C2=A0=C2=A0 -cpu core2duo -m 256 -serial mon:vc=
 -serial null -kernel /home/arun/yocto/poky/build/tmp/deploy/images/qemux86=
-64/bzImage--5.4.78+git0+d626f9108d_370ef947d5-r0-qemux86-64-20201210083639=
.bin -append 'root=3D/dev/vda rw=C2=A0 mem=3D256M ip=3D192.168.7.2::192.168=
.7.1:255.255.255.0 oprofile.timer=3D1 '

runqemu - ERROR - Failed to run qemu: X Error:=C2=A0 BadValue
Request Major code 130 (MIT-SHM)
Request Minor code 3 ()
Value 0x400
Error Serial #2168
Current Serial #2169

runqemu - INFO - Cleaning up
Set 'tap0' nonpersistent

My host pc configuration is
Intel NUC
Ubuntu 20.04

regards
Arun

--aAXLP7fHlGm883BdxaKO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am following <a href=3D"https://docs.yoctoproject.org/brie=
f-yoctoprojectqs/brief-yoctoprojectqs.html" target=3D"_blank" rel=3D"noopen=
er">https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs=
.html</a>.<br /><br />I am able to compile core-image-sato, but while tryin=
g to run there is an error<br /><br />runqemu qemux86-64<br />runqemu - INF=
O - Running MACHINE=3Dqemux86-64 bitbake -e ...<br />runqemu - INFO - Conti=
nuing with the following parameters:<br />KERNEL: [/home/arun/yocto/poky/bu=
ild/tmp/deploy/images/qemux86-64/bzImage--5.4.78+git0+d626f9108d_370ef947d5=
-r0-qemux86-64-20201210083639.bin]<br />MACHINE: [qemux86-64]<br />FSTYPE: =
[ext4]<br />ROOTFS: [/home/arun/yocto/poky/build/tmp/deploy/images/qemux86-=
64/core-image-minimal-qemux86-64-20201210134810.rootfs.ext4]<br />CONFFILE:=
 [/home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-minim=
al-qemux86-64-20201210134810.qemuboot.conf]<br /><br />runqemu - INFO - Set=
ting up tap interface under sudo<br />[sudo] password for arun: <br />Sorry=
, try again.<br />[sudo] password for arun: <br />runqemu - INFO - Network =
configuration: ip=3D192.168.7.2::192.168.7.1:255.255.255.0<br />runqemu - I=
NFO - Running /home/arun/yocto/poky/build/tmp/work/x86_64-linux/qemu-helper=
-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-x86_64 -device vir=
tio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifn=
ame=3Dtap0,script=3Dno,downscript=3Dno -drive file=3D/home/arun/yocto/poky/=
build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-2020121013=
4810.rootfs.ext4,if=3Dvirtio,format=3Draw -show-cursor -usb -device usb-tab=
let -object rng-random,filename=3D/dev/urandom,id=3Drng0 -device virtio-rng=
-pci,rng=3Drng0&nbsp;&nbsp; -cpu core2duo -m 256 -serial mon:vc -serial nul=
l -kernel /home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage-=
-5.4.78+git0+d626f9108d_370ef947d5-r0-qemux86-64-20201210083639.bin -append=
 'root=3D/dev/vda rw&nbsp; mem=3D256M ip=3D192.168.7.2::192.168.7.1:255.255=
.255.0 oprofile.timer=3D1 '<br /><br />runqemu - ERROR - Failed to run qemu=
: X Error:&nbsp; BadValue<br />&nbsp; Request Major code 130 (MIT-SHM)<br /=
>&nbsp; Request Minor code 3 ()<br />&nbsp; Value 0x400<br />&nbsp; Error S=
erial #2168<br />&nbsp; Current Serial #2169<br /><br />runqemu - INFO - Cl=
eaning up<br />Set 'tap0' nonpersistent<br /><br />My host pc configuration=
 is<br />Intel NUC<br />Ubuntu 20.04<br /><br />regards<br />Arun

--aAXLP7fHlGm883BdxaKO--
