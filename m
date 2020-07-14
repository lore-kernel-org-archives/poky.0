Subject: Failed to rebuild image after building it's SDK with MULTILIBS feature enabled #yocto
To: poky@lists.yoctoproject.org
From: ip.jango@gmail.com
X-Originating-Location: Moscow, RU (80.87.144.137)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 Jul 2020 08:18:35 -0700
Message-ID: <a3b7.1594739915804870711.BX4b@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sxcu26yGtXBk7MnvsISP"

--sxcu26yGtXBk7MnvsISP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone, found you a tricky bug:)

I have a build with *MULTILIBS* enabled ( x86_64 + x86 , but aarch64 + arm=
v7 have the save issue). When building an image everything is ok. Then I bu=
ild SDK (with -c populate_sdk ) and after that build of the image itself br=
eaks on do_rootfs task.

MULTILIBS is important, because without this feature everything is ok - sa=
me chain (build image, than SDK, than rebuild image) works.

The problem is in *lib32-glibc-locale-en-gb*. When building image, lib32-g=
libc-locale-en-gb doesn't appear as a dependency and is not built. But when=
 building the SDK of this image, it also builds a lib32-glibc-locale-en-gb =
package and packs it into SDK. Than rebuilding the image issues an error:
>=20
>=20
> WARNING : symway-image-docker-1.0-r0 do_rootfs: Unable to install packag=
es.
> Command
> '/build-yocto/build/tmp/work/x86_64_docker-poky-linux/symway-image-docke=
r/1.0-r0/recipe-sysroot-native/usr/bin/opkg
> --volatile-cache -f /build-yocto
> /build/tmp/work/x86_64_docker-poky-linux/symway-image-docker/1.0-r0/opkg=
.conf
> -t
> /build-yocto/build/tmp/work/x86_64_docker-poky-linux/symway-image-docker=
/1.0-r0/temp/ipktemp/
> -o /build-yocto/build/tmp/work/x86_64_docker-poky-linux/
> symway-image-docker/1.0-r0/rootfs =C2=A0--force_postinstall
> --prefer-arch-to-version =C2=A0--add-exclude lib32-glibc-locale-en-gb
> --force-maintainer --force-overwrite --add-exclude
> lib32-glibc-locale-en-gb install avahi-locale-en-gb cups-loc
> ale-en glibc-locale-en-gb lib32-glibc-locale-en-gb
> lib32-libglib-2.0-locale-en-gb lib32-libpam-locale-en-gb
> lib32-shared-mime-info-locale-en-gb libglib-2.0-locale-en-gb
> libpam-locale-en-gb shared-mime-info-locale-en-gb wget-locale-
> en-gb' returned 255:
> Collected errors:
> * opkg_prepare_url_for_install: Couldn't find anything to satisfy
> 'lib32-glibc-locale-en-gb'.
> WARNING : symway-image-docker-1.0-r0 do_rootfs: [log_check]
> symway-image-docker: found 1 warning message in the logfile:
> [log_check] WARNING: Unable to install packages. Command
> '/build-yocto/build/tmp/work/x86_64_docker-poky-linux/symway-image-docke=
r/1.0-r0/recipe-sysroot-native/usr/bin/opkg
> --volatile-cache -f /build-yocto/build/tmp/work/x86_64_doc
> ker-poky-linux/symway-image-docker/1.0-r0/opkg.conf -t
> /build-yocto/build/tmp/work/x86_64_docker-poky-linux/symway-image-docker=
/1.0-r0/temp/ipktemp/
> -o
> /build-yocto/build/tmp/work/x86_64_docker-poky-linux/symway-image-docker=
/1.0-r0
>=20
> /rootfs =C2=A0--force_postinstall --prefer-arch-to-version =C2=A0--add-e=
xclude
> lib32-glibc-locale-en-gb --force-maintainer --force-overwrite
> --add-exclude lib32-glibc-locale-en-gb install avahi-locale-en-gb
> cups-locale-en glibc-locale-en-gb
> lib32-glibc-locale-en-gb lib32-libglib-2.0-locale-en-gb
> lib32-libpam-locale-en-gb lib32-shared-mime-info-locale-en-gb
> libglib-2.0-locale-en-gb libpam-locale-en-gb shared-mime-info-locale-en-=
gb
> wget-locale-en-gb' returned 255:
>=20
> ERROR : symway-image-docker-1.0-r0 do_rootfs: [log_check]
> symway-image-docker: found 1 error message in the logfile:
> [log_check] Collected errors:
>=20
>=20

*Build configuration* (using *dunfell 3.1* ) *:*
>=20
> BB_VERSION =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=3D "1.46.0"
> BUILD_SYS =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=3D "x86_64-linux"
> NATIVELSBSTRING =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "universal"
> TARGET_SYS =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=3D "x86_64-poky-linux"
> MACHINE =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=3D "x86-64-docker"
> DISTRO =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=3D "symway"
> DISTRO_VERSION =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "3.1"
> TUNE_FEATURES =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "m64 core2"
> TARGET_FPU =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=3D ""
> meta-oe
> meta-initramfs
> meta-multimedia
> meta-networking
> meta-filesystems
> meta-python =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "H=
EAD:a62ad77973b16daac1cbaa03cbda3c6b9b91f2ff"
> meta
> meta-poky
> meta-yocto-bsp =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D "HEAD:5d47cdf448b=
6cff5bb7cc5b0ba0426b8235ec478"
>=20

Looks like the problem is somewhere in *poky/meta/lib/oe/package_manager.p=
y* and/or *poky/scripts/oe-pkgdata-util*.

After building image itself there is no anything about package lib32-glibc=
-locale-en-gb in build/tmp/pkgdata/<machine_name>. But after building SDK p=
ackage lib32-glibc-locale-en-gb appears as:

* *build/tmp/pkgdata/<machine_name>/runtime-reverse/lib32-glibc-locale-en-=
gb*
* build/tmp/pkgdata/<machine_name>/runtime/lib32-glibc-locale-en-gb
* build/tmp/pkgdata/<machine_name>/runtime/lib32-glibc-locale-en-gb.packag=
ed

Than during *re* building of the image *build/tmp/work/..../<image_name>/1=
.0-r0/oe-rootfs-repo* is generated correctly - there is no anything about l=
ib32-glibc-locale-en-gb ( no lib32-glibc-locale-en-gb....ipk ). PackageMana=
ger:install_complementary method ( package_manager.py:554 ) generates packa=
ges list from this directory correctly. But than oe-pkgdata-util:glob funct=
ion ( oe-pkgdata-util:37 )=C2=A0uses another directory ( build/tmp/pkgdata/=
<machine_name> ) for generating globbed complementary packages list; there =
we have lib32-glibc-locale-en-gb. That's how lib32-glibc-locale-en-gb appea=
rs in complementary packages list and is tried to be installed... and fails=
 as there is no lib32-glibc-locale-en-gb...ipk in build/tmp/work/..../<imag=
e_name>/1.0-r0/oe-rootfs-repo.

My first attempt to workaround was variable *PACKAGE_EXCLUDE_COMPLEMENTARY=
* , but it didn't work)) I tried to exclude directly package lib32-glibc-lo=
cale-en-gb from complementary packages list, but function oe-pkgdata-util:g=
lob uses the same correct package list from build/tmp/work/..../<image_name=
>/1.0-r0/oe-rootfs-repo for excluding and only after that analyses build/tm=
p/pkgdata/<machine_name> directory. Finally lib32-glibc-locale-en-gb appear=
ed in complementary packages list by hitting search through PN (see oe-pkgd=
ata-util:glob ).

So finally my solution is to patch oe-pkgdata-util:glob so PACKAGE_EXCLUDE=
_COMPLEMENTARY works correctly:
>=20
>=20
> diff --git a/scripts/oe-pkgdata-util b/scripts/oe-pkgdata-util
> index 93220e3617..de60f38e1b 100755
> --- a/scripts/oe-pkgdata-util
> +++ b/scripts/oe-pkgdata-util
> @@ -45,8 +45,10 @@ def glob(args):
> sys.exit(1)
>=20
> skipval =3D
> "-locale-|^locale-base-|-dev$|-doc$|-dbg$|-staticdev$|^kernel-module-"
> + =C2=A0=C2=A0=C2=A0postskipregex =3D None
> if args.exclude:
> skipval +=3D "|" + args.exclude
> + =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0postskipregex =3D re.compile=
(args.exclude)
> skipregex =3D re.compile(skipval)
>=20
> skippedpkgs =3D set()
> @@ -137,8 +139,12 @@ def glob(args):
> break
>=20
> if mappedpkg:
> - =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0logger.debug("%s (%s) -> %s" =
% (pkg, g, mappedpkg))
> - =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mappedpkgs.add(mappedpkg)
> + =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if postskipregex and postskip=
regex.search(mappedpkg):
>=20
> + =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0skipp=
edpkgs.add(mappedpkg)
> + =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0logge=
r.debug("%s -> !" % mappedpkg)
> + =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else:
> + =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0logge=
r.debug("%s (%s) -> %s" % (pkg, g,
> mappedpkg))
> + =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mappe=
dpkgs.add(mappedpkg)
> else:
> logger.debug("%s (%s) -> ?" % (pkg, g))
>=20

And add package lib32-glibc-locale-en-gb to PACKAGE_EXCLUDE_COMPLEMENTARY:

>=20
> PACKAGE_EXCLUDE_COMPLEMENTARY =3D "lib32-glibc-locale-.*"
> PACKAGE_EXCLUDE_COMPLEMENTARY_class-nativesdk =3D ""

The question is, how well this solution fits the Yocto concepts? Are there=
 any more graceful options?

--sxcu26yGtXBk7MnvsISP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone, found you a tricky bug:)<br /><br />I have a build with <st=
rong>MULTILIBS</strong> enabled (<em>x86_64 + x86</em>, but <em>aarch64 + a=
rmv7</em> have the save issue). When building an image everything is ok. Th=
en I build SDK (with <em>-c populate_sdk</em>) and after that build of the =
image itself breaks on <em>do_rootfs</em> task.&nbsp;<br /><br /><em>MULTIL=
IBS</em> is important, because without this feature everything is ok - same=
 chain (build image, than SDK, than rebuild image) works.<br /><br />The pr=
oblem is in <strong>lib32-glibc-locale-en-gb</strong>. When building image,=
 <em>lib32-glibc-locale-en-gb</em> doesn't appear as a dependency and is no=
t built. But when building the SDK of this image, it also builds a <em>lib3=
2-glibc-locale-en-gb</em> package and packs it into SDK. Than rebuilding th=
e image issues an error:
<blockquote><span style=3D"font-family: monospace;"><span style=3D"font-we=
ight: bold; color: #ff9900;">WARNING</span><span style=3D"color: #000000;">=
: </span><span style=3D"color: #b26818;">symway-image-docker-1.0-r0 do_root=
fs: Unable to install packages. Command '/build-yocto/build/tmp/work/x86_64=
_docker-poky-linux/symway-image-docker/1.0-r0/recipe-sysroot-native/usr/bin=
/opkg --volatile-cache -f /build-yocto</span><br />/build/tmp/work/x86_64_d=
ocker-poky-linux/symway-image-docker/1.0-r0/opkg.conf -t /build-yocto/build=
/tmp/work/x86_64_docker-poky-linux/symway-image-docker/1.0-r0/temp/ipktemp/=
 -o /build-yocto/build/tmp/work/x86_64_docker-poky-linux/<br />symway-image=
-docker/1.0-r0/rootfs &nbsp;--force_postinstall --prefer-arch-to-version &n=
bsp;--add-exclude lib32-glibc-locale-en-gb --force-maintainer --force-overw=
rite --add-exclude lib32-glibc-locale-en-gb install avahi-locale-en-gb cups=
-loc<br />ale-en glibc-locale-en-gb lib32-glibc-locale-en-gb lib32-libglib-=
2.0-locale-en-gb lib32-libpam-locale-en-gb lib32-shared-mime-info-locale-en=
-gb libglib-2.0-locale-en-gb libpam-locale-en-gb shared-mime-info-locale-en=
-gb wget-locale-<br />en-gb' returned 255:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br /><span st=
yle=3D"color: #b26818;">Collected errors:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><=
br /><span style=3D"color: #b26818;"> * opkg_prepare_url_for_install: Could=
n't find anything to satisfy 'lib32-glibc-locale-en-gb'. &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=3D"color=
: #000000;">&nbsp;</span><span style=3D"color: #b26818;">&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</span><span style=3D"color: #000000;">&nbsp;</span><br /><span=
 style=3D"font-weight: bold; color: #ff9900;">WARNING</span><span style=3D"=
color: #000000;">: </span><span style=3D"color: #b26818;">symway-image-dock=
er-1.0-r0 do_rootfs: [log_check] symway-image-docker: found 1 warning messa=
ge in the logfile:</span><span style=3D"color: #000000;"> </span><br /><spa=
n style=3D"color: #b26818;">[log_check] WARNING: Unable to install packages=
. Command '/build-yocto/build/tmp/work/x86_64_docker-poky-linux/symway-imag=
e-docker/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /bui=
ld-yocto/build/tmp/work/x86_64_doc</span><br />ker-poky-linux/symway-image-=
docker/1.0-r0/opkg.conf -t /build-yocto/build/tmp/work/x86_64_docker-poky-l=
inux/symway-image-docker/1.0-r0/temp/ipktemp/ -o /build-yocto/build/tmp/wor=
k/x86_64_docker-poky-linux/symway-image-docker/1.0-r0<br />/rootfs &nbsp;--=
force_postinstall --prefer-arch-to-version &nbsp;--add-exclude lib32-glibc-=
locale-en-gb --force-maintainer --force-overwrite --add-exclude lib32-glibc=
-locale-en-gb install avahi-locale-en-gb cups-locale-en glibc-locale-en-gb =
<br />lib32-glibc-locale-en-gb lib32-libglib-2.0-locale-en-gb lib32-libpam-=
locale-en-gb lib32-shared-mime-info-locale-en-gb libglib-2.0-locale-en-gb l=
ibpam-locale-en-gb shared-mime-info-locale-en-gb wget-locale-en-gb' returne=
d 255: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=3D"color: #000000;">&nbsp;=
</span><br /><span style=3D"color: #b26818;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;</span><span style=3D"color: #000000;">&nbsp;</span><br /><span style=3D"f=
ont-weight: bold; color: #ff5454;">ERROR</span><span style=3D"color: #00000=
0;">: </span><span style=3D"color: #b21818;">symway-image-docker-1.0-r0 do_=
rootfs: [log_check] symway-image-docker: found 1 error message in the logfi=
le:</span><span style=3D"color: #000000;"> </span><br /><span style=3D"colo=
r: #b21818;">[log_check] Collected errors:</span><br /><span style=3D"color=
: #000000;"> </span><br /></span></blockquote>
<strong>Build configuration </strong>(using <strong>dunfell 3.1</strong>)<=
strong>:</strong>
<blockquote><span style=3D"font-family: monospace;"><span style=3D"color: =
#000000;">BB_VERSION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;=3D "1.46.0" </span><br />BUILD_SYS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "x86_64-linux" <br />NATIVELSBSTRING &=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "universal" <br />TARGET_SYS &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "x86_64-poky-linux" <br =
/>MACHINE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;=3D "x86-64-docker" <br />DISTRO &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "symway" <br />D=
ISTRO_VERSION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "3.1" <br />TUNE_FEAT=
URES &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "m64 core2" <br />TARGET=
_FPU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "" <br=
 />meta-oe &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;<br />meta-initramfs &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;<br />meta-multimedia &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />met=
a-networking &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />meta-filesystems &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;<br />meta-python &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;=3D "HEAD:a62ad77973b16daac1cbaa03cbda3c6b9b91f2ff"=
 <br />meta &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />meta-poky &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />meta-yocto-bsp &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "HEAD:5d47cdf448b6cff5bb7cc5b0ba0426b=
8235ec478"<br /></span></blockquote>
<br />Looks like the problem is somewhere in <strong>poky/meta/lib/oe/pack=
age_manager.py</strong> and/or <strong>poky/scripts/oe-pkgdata-util</strong=
>.<br /><br />After building image itself there is no anything about packag=
e&nbsp;<em>lib32-glibc-locale-en-gb</em> in <em>build/tmp/pkgdata/&lt;machi=
ne_name&gt;.</em>&nbsp;But after building SDK package&nbsp;<em>lib32-glibc-=
locale-en-gb</em> appears as:&nbsp;<br />
<ul>
<li><strong>build/tmp/pkgdata/&lt;machine_name&gt;/runtime-reverse/lib32-g=
libc-locale-en-gb</strong></li>
<li><span style=3D"font-weight: bold;">build/tmp/pkgdata/&lt;machine_name&=
gt;/runtime/lib32-glibc-locale-en-gb</span></li>
<li><span style=3D"font-weight: bold;">build/tmp/pkgdata/&lt;machine_name&=
gt;/runtime/lib32-glibc-locale-en-gb.packaged</span></li>
</ul>
Than during <strong>re</strong>building of the image&nbsp;<strong>build/tm=
p/work/..../&lt;image_name&gt;/1.0-r0/oe-rootfs-repo</strong> is generated =
correctly - there is no anything about&nbsp;<em>lib32-glibc-locale-en-gb (<=
/em>no&nbsp;<em>lib32-glibc-locale-en-gb....ipk</em><em>).&nbsp;</em><em>Pa=
ckageManager:install_complementary</em> method (<em>package_manager.py:554<=
/em>) generates packages list from this directory correctly. But than <em>o=
e-pkgdata-util:glob</em>&nbsp;function (<em>oe-pkgdata-util:37</em>)&nbsp;u=
ses another directory (<em>build/tmp/pkgdata/&lt;machine_name&gt;</em>) for=
 generating globbed complementary packages list; there we have&nbsp;<em>lib=
32-glibc-locale-en-gb.</em> That's how&nbsp;<em>lib32-glibc-locale-en-gb&nb=
sp;</em>appears in complementary packages list and is tried to be installed=
... and fails as there is no&nbsp;<em>lib32-glibc-locale-en-gb...ipk</em> i=
n <em>build/tmp/work/..../&lt;image_name&gt;/1.0-r0/oe-rootfs-repo</em>.<br=
 /><br />My first attempt to workaround was variable&nbsp;<strong>PACKAGE_E=
XCLUDE_COMPLEMENTARY</strong>, but it didn't work)) I tried to exclude dire=
ctly package&nbsp;<em>lib32-glibc-locale-en-gb</em> from complementary pack=
ages list, but function&nbsp;<em>oe-pkgdata-util:glob</em> uses the same co=
rrect package list from <em>build/tmp/work/..../&lt;image_name&gt;/1.0-r0/o=
e-rootfs-repo</em> for excluding and only after that analyses&nbsp;<em>buil=
d/tmp/pkgdata/&lt;machine_name&gt;&nbsp;</em>directory. Finally&nbsp;<em>li=
b32-glibc-locale-en-gb</em> appeared in complementary packages list by hitt=
ing search through PN (see&nbsp;<em>oe-pkgdata-util:glob</em>).<br /><br />=
So finally my solution is to patch&nbsp;<em>oe-pkgdata-util:glob</em> so <e=
m>PACKAGE_EXCLUDE_COMPLEMENTARY</em> works correctly:
<blockquote><span style=3D"font-family: monospace;"><span style=3D"font-we=
ight: bold; color: #000000;">diff --git a/scripts/oe-pkgdata-util b/scripts=
/oe-pkgdata-util</span><span style=3D"color: #000000;"> </span><br /><span =
style=3D"font-weight: bold; color: #000000;">index 93220e3617..de60f38e1b 1=
00755</span><span style=3D"color: #000000;"> </span><br /><span style=3D"fo=
nt-weight: bold; color: #000000;">--- a/scripts/oe-pkgdata-util</span><span=
 style=3D"color: #000000;"> </span><br /><span style=3D"font-weight: bold; =
color: #000000;">+++ b/scripts/oe-pkgdata-util</span><span style=3D"color: =
#000000;"> </span><br /><span style=3D"color: #18b2b2;">@@ -45,8 +45,10 @@<=
/span><span style=3D"color: #000000;"> def glob(args): </span><br />&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sys.exit(1) <br />&nbsp;<br />&nbs=
p;&nbsp;&nbsp;&nbsp;skipval =3D "-locale-|^locale-base-|-dev$|-doc$|-dbg$|-=
staticdev$|^kernel-module-" <br /><span style=3D"color: #18b218;">+ &nbsp;&=
nbsp;&nbsp;postskipregex =3D None</span><span style=3D"color: #000000;"> </=
span><br />&nbsp;&nbsp;&nbsp;&nbsp;if args.exclude: <br />&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;skipval +=3D "|" + args.exclude <br /><span =
style=3D"color: #18b218;">+ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;posts=
kipregex =3D re.compile(args.exclude)</span><span style=3D"color: #000000;"=
> </span><br />&nbsp;&nbsp;&nbsp;&nbsp;skipregex =3D re.compile(skipval) <b=
r />&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;skippedpkgs =3D set() <br /><span s=
tyle=3D"color: #18b2b2;">@@ -137,8 +139,12 @@</span><span style=3D"color: #=
000000;"> def glob(args): </span><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break <br />&nbsp;<br />&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;if mappedpkg: <br /><span style=3D"color: #b21818;">- &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;logger.debug("%s (%s) -&gt; %s" % (pkg, g, mappedpkg))=
</span><span style=3D"color: #000000;"> </span><br /><span style=3D"color: =
#b21818;">- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mappedpkgs.add(mappedpkg=
)</span><span style=3D"color: #000000;"> </span><br /><span style=3D"color:=
 #18b218;">+ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if postskipregex and po=
stskipregex.search(mappedpkg):</span><span style=3D"color: #000000;"> </spa=
n><br /><span style=3D"color: #18b218;">+ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;skippedpkgs.add(mappedpkg)</span><span style=
=3D"color: #000000;"> </span><br /><span style=3D"color: #18b218;">+ &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;logger.debug("%s =
-&gt; !" % mappedpkg)</span><span style=3D"color: #000000;"> </span><br /><=
span style=3D"color: #18b218;">+ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;els=
e:</span><span style=3D"color: #000000;"> </span><br /><span style=3D"color=
: #18b218;">+ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;logger.debug("%s (%s) -&gt; %s" % (pkg, g, mappedpkg))</span><span style=
=3D"color: #000000;"> </span><br /><span style=3D"color: #18b218;">+ &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mappedpkgs.add(ma=
ppedpkg)</span><span style=3D"color: #000000;"> </span><br />&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;else: <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;logger.debu=
g("%s (%s) -&gt; ?" % (pkg, g)) <br /></span></blockquote>
<br />And add package&nbsp;<em>lib32-glibc-locale-en-gb </em>to&nbsp;<em>P=
ACKAGE_EXCLUDE_COMPLEMENTARY:<br /></em><br />
<blockquote>PACKAGE_EXCLUDE_COMPLEMENTARY =3D "lib32-glibc-locale-.*"<br /=
>PACKAGE_EXCLUDE_COMPLEMENTARY_class-nativesdk =3D ""</blockquote>
The question is, how well this solution fits the Yocto concepts? Are there=
 any more graceful options?

--sxcu26yGtXBk7MnvsISP--
