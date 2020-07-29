Subject: beaglebone-yocto: rootfs is not mounting during NFS boot.
To: poky@lists.yoctoproject.org
From: "Rahul Chauhan" <rahulchauhankitps@gmail.com>
X-Originating-Location: Delhi, National Capital Territory of Delhi, IN (103.217.132.60)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 Jul 2020 02:27:44 -0700
Message-ID: <SMbP.1596014864451885022.qGV4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="W9JbIWPg6TjPNoF87nUl"

--W9JbIWPg6TjPNoF87nUl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi community members,

I am using poky [dunfell].
and building "core-image-minimal" for machine "beaglebone-yocto"

and trying to NFS boot=C2=A0 but rootfs is not mounting.

logs:
IP-Config: Guessing netmask 255.255.255.0
IP-Config: Complete:
device=3Deth0, hwaddr=3D74:e1:82:8d:b7:bf, ipaddr=3D192.168.1.2, mask=3D25=
5.255.255.0, gw=3D192.168.1.1
host=3D192.168.1.2, domain=3D, nis-domain=3D(none)
bootserver=3D192.168.1.3, rootserver=3D192.168.1.3, rootpath=3D
cfg80211: Loading compiled-in X.509 certificates for regulatory database
cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
platform regulatory.0: Direct firmware load for regulatory.db failed with =
error -2
cfg80211: failed to load regulatory.db
VFS: Unable to mount root fs via NFS, trying floppy.
VFS: Cannot open root device "nfs" or unknown-block(2,0): error -6
Please append a correct "root=3D" boot option; here are the available part=
itions:

can any one please help me what am i missing for NFS boot.

--W9JbIWPg6TjPNoF87nUl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi community members,<br /><br />I am using poky [dunfell].<br />and buildi=
ng "core-image-minimal" for machine "beaglebone-yocto"<br /><br />and tryin=
g to NFS boot&nbsp; but rootfs is not mounting.<br /><br />logs:<br />IP-Co=
nfig: Guessing netmask 255.255.255.0<br />IP-Config: Complete:<br />&nbsp;&=
nbsp;&nbsp;&nbsp; device=3Deth0, hwaddr=3D74:e1:82:8d:b7:bf, ipaddr=3D192.1=
68.1.2, mask=3D255.255.255.0, gw=3D192.168.1.1<br />&nbsp;&nbsp;&nbsp;&nbsp=
; host=3D192.168.1.2, domain=3D, nis-domain=3D(none)<br />&nbsp;&nbsp;&nbsp=
;&nbsp; bootserver=3D192.168.1.3, rootserver=3D192.168.1.3, rootpath=3D<br =
/>cfg80211: Loading compiled-in X.509 certificates for regulatory database<=
br />cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'<br />platfo=
rm regulatory.0: Direct firmware load for regulatory.db failed with error -=
2<br />cfg80211: failed to load regulatory.db<br />VFS: Unable to mount roo=
t fs via NFS, trying floppy.<br />VFS: Cannot open root device "nfs" or unk=
nown-block(2,0): error -6<br />Please append a correct "root=3D" boot optio=
n; here are the available partitions:<br /><br />can any one please help me=
 what am i missing for NFS boot.

--W9JbIWPg6TjPNoF87nUl--
