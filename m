Subject: IMAGE_ROOTFS_EXTRA_SPACE and IMAGE_OVERHEAD_FACTOR do not work as expected #yocto
To: poky@lists.yoctoproject.org
From: ejo@datarespons.no
X-Originating-Location: Bergen, Vestland, NO (80.212.162.69)
X-Originating-Platform: Linux Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 29 Jan 2021 08:20:38 -0800
Message-ID: <7ca9.1611937238495516995.3t90@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AdYqrp35CgS3rLA9Y5Oh"

--AdYqrp35CgS3rLA9Y5Oh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If I set IMAGE_OVERHEAD_FACTOR =3D "1" and IMAGE_ROOTFS_EXTRA_SPACE =3D "60=
0000", I would expect the generated rootfs to have an additional freespace =
of 600M but I get this:

```
$ ls tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.root=
fs.ext4 -lh
-rw-r--r-- 2 ejo ejo 1,3G jan.=C2=A0 29 17:09 tmp/deploy/images/rpi-cm3/co=
re-base-image-rpi-cm3-20210129160710.rootfs.ext4
$ ls tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.root=
fs.ext4 -l
-rw-r--r-- 2 ejo ejo 1308622848 jan.=C2=A0 29 17:09 tmp/deploy/images/rpi-=
cm3/core-base-image-rpi-cm3-20210129160710.rootfs.ext4

$ fdisk tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.r=
ootfs.wic -l
Device=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Boot=C2=A0=C2=
=
=A0 Start=C2=A0=C2=A0=C2=A0=C2=A0 End Sectors=C2=A0 Size Id Type
tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.rootfs.wi=
c1 *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8192=C2=A0=C2=A0 69335=C2=A0=C2=A0=
 61144 29,9M=C2=A0 c W95 FAT32 (LBA)
tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.rootfs.wi=
c2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 73728 3396403 3322676=C2=A0 1,=
6G 83 Linux
tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.rootfs.wi=
c3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3399680 6722355 3322676=C2=A0 1,6G 83 Linu=
x
tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.rootfs.wi=
c4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6725632 8056831 1331200=C2=A0 650M 83 Linu=
x

```
Vs when not setting the variables:

```

$ ls tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.root=
fs.ext4 -lh
-rw-r--r-- 2 ejo ejo 856M jan.=C2=A0 29 16:58 tmp/deploy/images/rpi-cm3/co=
re-base-image-rpi-cm3-20210129155627.rootfs.ext4
$ ls tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.root=
fs.ext4 -l
-rw-r--r-- 2 ejo ejo 897581056 jan.=C2=A0 29 16:58 tmp/deploy/images/rpi-c=
m3/core-base-image-rpi-cm3-20210129155627.rootfs.ext4

$ fdisk tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.r=
ootfs.wic -l
Device=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Boot=C2=A0=C2=
=
=A0 Start=C2=A0=C2=A0=C2=A0=C2=A0 End Sectors=C2=A0 Size Id Type
tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129155627.rootfs.wi=
c1 *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8192=C2=A0=C2=A0 69335=C2=A0=C2=A0=
 61144 29,9M=C2=A0 c W95 FAT32 (LBA)
tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129155627.rootfs.wi=
c2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 73728 2352743 2279016=C2=A0 1,=
1G 83 Linux
tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129155627.rootfs.wi=
c3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2359296 4638311 2279016=C2=A0 1,1G 83 Linu=
x
tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129155627.rootfs.wi=
c4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4644864 5976063 1331200=C2=A0 650M 83 Linu=
x

```
So it looks like by setting the variables bitbake first adds 411041792 byt=
es 392 MiB to the .ext4 file, then WKS adds another 0.3GB to each rootfs pa=
rtition. Why does this happen? Why isn't the full 600MB added to the .ext4 =
file? This causes issues with the meta-rauc layer which uses .ext4 file whe=
n creating update bundles, see issue here https://github.com/rauc/meta-rauc=
/issues/173

IMO when setting IMAGE_ROOTFS_EXTRA_SPACE =3D "600000" 600kB should be add=
ed to the .ext4 file not 392MiB and then another 300MB by growing the parti=
tion in wks.

--AdYqrp35CgS3rLA9Y5Oh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If I set IMAGE_OVERHEAD_FACTOR =3D "1" and IMAGE_ROOTFS_EXTRA_SPACE =3D "60=
0000", I would expect the generated rootfs to have an additional freespace =
of 600M but I get this:<br /><br />```<br />$ ls tmp/deploy/images/rpi-cm3/=
core-base-image-rpi-cm3-20210129143554.rootfs.ext4 -lh<br />-rw-r--r-- 2 ej=
o ejo 1,3G jan.&nbsp; 29 17:09 tmp/deploy/images/rpi-cm3/core-base-image-rp=
i-cm3-20210129160710.rootfs.ext4<br />$ ls tmp/deploy/images/rpi-cm3/core-b=
ase-image-rpi-cm3-20210129143554.rootfs.ext4 -l<br />-rw-r--r-- 2 ejo ejo 1=
308622848 jan.&nbsp; 29 17:09 tmp/deploy/images/rpi-cm3/core-base-image-rpi=
-cm3-20210129160710.rootfs.ext4<br /><br /><br />$ fdisk tmp/deploy/images/=
rpi-cm3/core-base-image-rpi-cm3-20210129143554.rootfs.wic -l<br />Device&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Boot&nbsp;&nbsp; Start&nbsp;&nbsp;&nbs=
p;&nbsp; End Sectors&nbsp; Size Id Type<br />tmp/deploy/images/rpi-cm3/core=
-base-image-rpi-cm3-20210129143554.rootfs.wic1 *&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 8192&nbsp;&nbsp; 69335&nbsp;&nbsp; 61144 29,9M&nbsp; c W95 FAT32 =
(LBA)<br />tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554=
.rootfs.wic2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 73728 3396403 332267=
6&nbsp; 1,6G 83 Linux<br />tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm=
3-20210129143554.rootfs.wic3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3399680 6722355 =
3322676&nbsp; 1,6G 83 Linux<br />tmp/deploy/images/rpi-cm3/core-base-image-=
rpi-cm3-20210129143554.rootfs.wic4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6725632 80=
56831 1331200&nbsp; 650M 83 Linux<br /><br />```<br />Vs when not setting t=
he variables:<br /><br />```<br /><br />$ ls tmp/deploy/images/rpi-cm3/core=
-base-image-rpi-cm3-20210129143554.rootfs.ext4 -lh<br />-rw-r--r-- 2 ejo ej=
o 856M jan.&nbsp; 29 16:58 tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm=
3-20210129155627.rootfs.ext4<br />$ ls tmp/deploy/images/rpi-cm3/core-base-=
image-rpi-cm3-20210129143554.rootfs.ext4 -l<br />-rw-r--r-- 2 ejo ejo 89758=
1056 jan.&nbsp; 29 16:58 tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-=
20210129155627.rootfs.ext4<br /><br /><br />$ fdisk tmp/deploy/images/rpi-c=
m3/core-base-image-rpi-cm3-20210129143554.rootfs.wic -l<br />Device&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Boot&nbsp;&nbsp; Start&nbsp;&nbsp;&nbsp;&nb=
sp; End Sectors&nbsp; Size Id Type<br />tmp/deploy/images/rpi-cm3/core-base=
-image-rpi-cm3-20210129155627.rootfs.wic1 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 8192&nbsp;&nbsp; 69335&nbsp;&nbsp; 61144 29,9M&nbsp; c W95 FAT32 (LBA)=
<br />tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129155627.root=
fs.wic2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 73728 2352743 2279016&nbs=
p; 1,1G 83 Linux<br />tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-202=
10129155627.rootfs.wic3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2359296 4638311 22790=
16&nbsp; 1,1G 83 Linux<br />tmp/deploy/images/rpi-cm3/core-base-image-rpi-c=
m3-20210129155627.rootfs.wic4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4644864 5976063=
 1331200&nbsp; 650M 83 Linux<br /><br />```<br />So it looks like by settin=
g the variables bitbake first adds 411041792 bytes 392 MiB to the .ext4 fil=
e, then WKS adds another 0.3GB to each rootfs partition. Why does this happ=
en? Why isn't the full 600MB added to the .ext4 file? This causes issues wi=
th the meta-rauc layer which uses .ext4 file when creating update bundles, =
see issue here <a href=3D"https://github.com/rauc/meta-rauc/issues/173" tar=
get=3D"_blank" rel=3D"noopener">https://github.com/rauc/meta-rauc/issues/17=
3</a> <br /><br />IMO when setting IMAGE_ROOTFS_EXTRA_SPACE =3D "600000" 60=
0kB should be added to the .ext4 file not 392MiB and then another 300MB by =
growing the partition in wks.

--AdYqrp35CgS3rLA9Y5Oh--
