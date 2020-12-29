Subject: tar: unrecognized option '--clamp-mtime' even when using scripts/install-buildtools SDK
To: poky@lists.yoctoproject.org
From: "Josias Inacio da Silva Filho" <josiasinacio@hotmail.com>
X-Originating-Location: Maceió, Alagoas, BR (191.184.45.60)
X-Originating-Platform: Mac Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Dec 2020 21:01:50 -0800
Message-ID: <tfVc.1609218110867458033.wtTt@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hYNQwf3EXveoFsP3jgoK"

--hYNQwf3EXveoFsP3jgoK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm attempting to move my current project from Warrior to Dunfell. Our Orac=
le Linux host is pretty outdated so I had to use the buildtools generated b=
y scripts/install-buildtools to pick newer gcc etc.

However I'm facing several recipes failing with the same error:

>=20
> Command
> 'PATH=3D"/localdata/project/build/tmp/sysroots-uninative/x86_64-linux/us=
r/bin:/localdata/project/sources/poky/scripts:/localdata/project/build/tmp/=
work/mymachine1-picoos-linux-musleabi/base-files/3.0.14-r89/recipe-sysroot-=
native/usr/bin/arm-picoos-linux-musleabi:/localdata/project/build/tmp/work/=
mymachine1-picoos-linux-musleabi/base-files/3.0.14-r89/recipe-sysroot/usr/b=
in/crossscripts:/localdata/project/build/tmp/work/mymachine1-picoos-linux-m=
usleabi/base-files/3.0.14-r89/recipe-sysroot-native/usr/sbin:/localdata/pro=
ject/build/tmp/work/mymachine1-picoos-linux-musleabi/base-files/3.0.14-r89/=
recipe-sysroot-native/usr/bin:/localdata/project/build/tmp/work/mymachine1-=
picoos-linux-musleabi/base-files/3.0.14-r89/recipe-sysroot-native/sbin:/loc=
aldata/project/build/tmp/work/mymachine1-picoos-linux-musleabi/base-files/3=
.0.14-r89/recipe-sysroot-native/bin:/localdata/project/sources/poky/bitbake=
/bin:/localdata/project/build/tmp/hosttools"
> opkg-build -Z xz -a "--memlimit=3D50% --threads=3D8" base-files-dev
> /localdata/project/build/tmp/work/mymachine1-picoos-linux-musleabi/base-=
files/3.0.14-r89/deploy-ipks/mymachine1'
> returned non-zero exit status 1.
>=20

>=20
> Subprocess output:tar: unrecognized option '--clamp-mtime'
> Try `tar --help' or `tar --usage' for more information.
>=20

>=20
> Summary: 7 tasks failed:
> mc:arm32:/localdata/project/sources/poky/meta/recipes-core/busybox/busyb=
ox-inittab_1.31.0.bb:do_package_write_ipk
>=20
> mc:arm32:/localdata/project/sources/poky/meta/recipes-devtools/qemu/qemu=
wrapper-cross_1.0.bb:do_package_write_ipk
>=20
> mc:arm32:/localdata/project/sources/poky/meta/recipes-core/musl/bsd-head=
ers.bb:do_package_write_ipk
>=20
> mc:arm32:/localdata/project/sources/poky/meta/recipes-extended/shadow/sh=
adow-securetty_4.6.bb:do_package_write_ipk
>=20
> mc:arm32:/localdata/project/sources/poky/meta/recipes-kernel/linux-libc-=
headers/linux-libc-headers_5.4.bb:do_package_write_ipk
>=20
> mc:arm32:/localdata/project/sources/poky/meta/recipes-core/musl/libssp-n=
onshared.bb:do_package_write_ipk
>=20
> mc:arm32:/localdata/project/sources/poky/meta/recipes-core/base-files/ba=
se-files_3.0.14.bb:do_package_write_ipk
>=20
>=20

It does seem to be picking the SDK's tar bin, but that's likely not the ca=
use:
$ tar --version
tar (GNU tar) 1.32

Any hints why that is happening?

--hYNQwf3EXveoFsP3jgoK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm attempting to move my current project from Warrior to Dunfell. Our Orac=
le Linux host is pretty outdated so I had to use the buildtools generated b=
y scripts/install-buildtools to pick newer gcc etc.<br /><br />However I'm =
facing several recipes failing with the same error:<br /><br />
<div>
<blockquote>
<div><em>Command 'PATH=3D"/localdata/project/build/tmp/sysroots-uninative/=
x86_64-linux/usr/bin:/localdata/project/sources/poky/scripts:/localdata/pro=
ject/build/tmp/work/mymachine1-picoos-linux-musleabi/base-files/3.0.14-r89/=
recipe-sysroot-native/usr/bin/arm-picoos-linux-musleabi:/localdata/project/=
build/tmp/work/mymachine1-picoos-linux-musleabi/base-files/3.0.14-r89/recip=
e-sysroot/usr/bin/crossscripts:/localdata/project/build/tmp/work/mymachine1=
-picoos-linux-musleabi/base-files/3.0.14-r89/recipe-sysroot-native/usr/sbin=
:/localdata/project/build/tmp/work/mymachine1-picoos-linux-musleabi/base-fi=
les/3.0.14-r89/recipe-sysroot-native/usr/bin:/localdata/project/build/tmp/w=
ork/mymachine1-picoos-linux-musleabi/base-files/3.0.14-r89/recipe-sysroot-n=
ative/sbin:/localdata/project/build/tmp/work/mymachine1-picoos-linux-muslea=
bi/base-files/3.0.14-r89/recipe-sysroot-native/bin:/localdata/project/sourc=
es/poky/bitbake/bin:/localdata/project/build/tmp/hosttools" opkg-build -Z x=
z -a "--memlimit=3D50% --threads=3D8" base-files-dev /localdata/project/bui=
ld/tmp/work/mymachine1-picoos-linux-musleabi/base-files/3.0.14-r89/deploy-i=
pks/mymachine1' returned non-zero exit status 1.</em></div>
</blockquote>
</div>
<blockquote>
<div><em>Subprocess output:tar: unrecognized option '--clamp-mtime'</em></=
div>
<div><em>Try `tar --help' or `tar --usage' for more information.</em></div=
>
</blockquote>
<div>
<blockquote>
<div><em>Summary: 7 tasks failed:</em></div>
<div><em>&nbsp; mc:arm32:/localdata/project/sources/poky/meta/recipes-core=
/busybox/busybox-inittab_1.31.0.bb:do_package_write_ipk</em></div>
<div><em>&nbsp; mc:arm32:/localdata/project/sources/poky/meta/recipes-devt=
ools/qemu/qemuwrapper-cross_1.0.bb:do_package_write_ipk</em></div>
<div><em>&nbsp; mc:arm32:/localdata/project/sources/poky/meta/recipes-core=
/musl/bsd-headers.bb:do_package_write_ipk</em></div>
<div><em>&nbsp; mc:arm32:/localdata/project/sources/poky/meta/recipes-exte=
nded/shadow/shadow-securetty_4.6.bb:do_package_write_ipk</em></div>
<div><em>&nbsp; mc:arm32:/localdata/project/sources/poky/meta/recipes-kern=
el/linux-libc-headers/linux-libc-headers_5.4.bb:do_package_write_ipk</em></=
div>
<div><em>&nbsp; mc:arm32:/localdata/project/sources/poky/meta/recipes-core=
/musl/libssp-nonshared.bb:do_package_write_ipk</em></div>
<div><em>&nbsp; mc:arm32:/localdata/project/sources/poky/meta/recipes-core=
/base-files/base-files_3.0.14.bb:do_package_write_ipk</em></div>
</blockquote>
</div>
<div><br />It does seem to be picking the SDK's tar bin, but that's likely=
 not the cause:<br />
<div>$ tar --version</div>
<div>tar (GNU tar) 1.32</div>
<div><br />Any hints why that is happening?</div>
</div>

--hYNQwf3EXveoFsP3jgoK--
