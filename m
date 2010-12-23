Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3F9B4C80FD4
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:35:13 -0600 (CST)
Received: by wwb31 with SMTP id 31so7567271wwb.11
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 06:35:07 -0800 (PST)
Received: by 10.216.59.143 with SMTP id s15mr4338992wec.49.1293114898382;
	Thu, 23 Dec 2010 06:34:58 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id o33sm3774252wej.37.2010.12.23.06.34.57
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 23 Dec 2010 06:34:57 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1293113340.1588.860.camel@rex>
Date: Thu, 23 Dec 2010 15:34:56 +0100
Message-Id: <0AA1E123-3984-442B-986C-6B4C8B0C3021@dominion.thruhere.net>
References: <1293050270.3578.172.camel@rex>
	<1293111933-5071-1-git-send-email-koen@openembedded.org>
	<1293113340.1588.860.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [RFC][PATCH] RDEPENDS, RRECOMMENDS -> RDPEPENDS_${PN}, RRECOMMENDS_${PN}
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Dec 2010 14:35:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 23 dec 2010, om 15:09 heeft Richard Purdie het volgende geschreven:

> On Thu, 2010-12-23 at 14:45 +0100, Koen Kooi wrote:
>> From: Koen Kooi <koen@dominion.thruhere.net>
>>=20
>> For these recipes the depencies listed in RDEPENDS and RRECOMMENDS =
only apply to ${PN}
>=20
> Patch looks good overall. I spotted a few things as I read through it:
>=20
>> diff --git =
a/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb =
b/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
>> index 022f709..2283336 100644
>> --- a/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
>> +++ b/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
>> @@ -5,9 +5,9 @@ Linux operating system."
>> HOMEPAGE =3D "http://www.openswan.org"
>> LICENSE =3D "GPLv2"
>> DEPENDS =3D "gmp flex-native"
>> -RRECOMMENDS =3D "kernel-module-ipsec"
>> +RRECOMMENDS_${PN} =3D "kernel-module-ipsec"
>> RDEPENDS_nylon =3D "perl"
>=20
> This should probably become:
>=20
> RDEPENDS_${PN}_append_nylon =3D "perl"

fixed

>> diff --git a/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb =
b/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
>> index 566d0fa..b879064 100644
>> --- a/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
>> +++ b/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
>> @@ -1,5 +1,5 @@
>> require abiword-2.5.inc
>>=20
>> -PR =3D "r1"
>> +PR =3D "r2"
>>=20
>> RCONFLICTS =3D "abiword-embedded"
>=20
> RCONFLICTS_${PN} =3D "abiword-embedded"

fixed

>> diff --git a/meta/recipes-connectivity/avahi/avahi.inc =
b/meta/recipes-connectivity/avahi/avahi.inc
>> index b266ea4..5c3b4dd 100644
>> --- a/meta/recipes-connectivity/avahi/avahi.inc
>> +++ b/meta/recipes-connectivity/avahi/avahi.inc
>> @@ -16,7 +16,7 @@ PRIORITY =3D "optional"
>> LICENSE =3D "GPLv2+ & LGPLv2.1+"
>>=20
>> DEPENDS =3D "expat libcap libdaemon dbus glib-2.0 gtk+ libglade"
>> -RRECOMMENDS =3D "libnss-mdns"
>> +RRECOMMENDS_${PN} =3D "libnss-mdns"
>> RRECOMMENDS_avahi-daemon =3D "libnss-mdns"
>=20
> Hmm, which bit of avahi needs this? This looks a little odd...

It's an nss plugin, I install it so ssh can resolve .local addresses, =
not sure if avahi actually needs it. Any suggestions?

> diff --git a/meta/recipes-connectivity/gsm/gsmd.inc =
b/meta/recipes-connectivity/gsm/gsmd.inc
>> index 9818188..385c40e 100644
>> --- a/meta/recipes-connectivity/gsm/gsmd.inc
>> +++ b/meta/recipes-connectivity/gsm/gsmd.inc
>> @@ -19,7 +19,7 @@ SRC_URI =3D =
"svn://svn.openmoko.org/trunk/src/target;module=3Dgsm;proto=3Dhttp \
>> S =3D "${WORKDIR}/gsm"
>>=20
>> inherit autotools pkgconfig update-rc.d
>> -# handle update-rc.d RDEPENDS manually, we don't need it on
>> +# handle update-rc.d RDEPENDS_${PN} manually, we don't need it on
>> # anything but gsmd
>> RDEPENDS_append =3D ""
>=20
> This looks like some kind of bug waiting to be fixed...

Not sure what you want me to do here :)

> diff --git a/meta/recipes-core/glibc/glibc.inc =
b/meta/recipes-core/glibc/glibc.inc
>> index ecaf593..e2b681f 100644
>> --- a/meta/recipes-core/glibc/glibc.inc
>> +++ b/meta/recipes-core/glibc/glibc.inc
>> @@ -13,7 +13,7 @@ DEPENDS =3D =
"virtual/${TARGET_PREFIX}gcc-intermediate linux-libc-headers"
>> RDEPENDS_${PN}-dev =3D "linux-libc-headers-dev"
>> #this leads to circular deps, so lets not add it yet
>> #RDEPENDS_ldd +=3D " bash"
>> -#RDEPENDS +=3D "${@['','libgcc']['nptl' in '${GLIBC_ADDONS}']}"
>> +#RDEPENDS_${PN} +=3D "${@['','libgcc']['nptl' in =
'${GLIBC_ADDONS}']}"
>> PROVIDES =3D "virtual/libc virtual/${TARGET_PREFIX}libc-for-gcc"
>> PROVIDES +=3D "virtual/libintl virtual/libiconv"
>>=20
>> diff --git a/meta/recipes-core/glibc/glibc_2.10.1.bb =
b/meta/recipes-core/glibc/glibc_2.10.1.bb
>> index 364a0e5..6c683ec 100644
>> --- a/meta/recipes-core/glibc/glibc_2.10.1.bb
>> +++ b/meta/recipes-core/glibc/glibc_2.10.1.bb
>> @@ -5,7 +5,7 @@ ARM_INSTRUCTION_SET =3D "arm"
>> PACKAGES_DYNAMIC =3D "libc6*"
>> RPROVIDES_${PN}-dev =3D "libc6-dev virtual-libc-dev"
>>=20
>> -PR =3D "r6"
>> +PR =3D "r7"
>>=20
>> # the -isystem in bitbake.conf screws up glibc do_stage
>> BUILD_CPPFLAGS =3D "-I${STAGING_INCDIR_NATIVE}"
>=20
> Lets drop the PR bump for a change in the comments :)

fixed


>> diff --git a/meta/recipes-core/meta/external-python-tarball.bb =
b/meta/recipes-core/meta/external-python-tarball.bb
>> index 494b21c..464c457 100644
>> --- a/meta/recipes-core/meta/external-python-tarball.bb
>> +++ b/meta/recipes-core/meta/external-python-tarball.bb
>> @@ -4,6 +4,8 @@ DEPENDS =3D "opkg-native opkg-utils-native =
virtual/fakeroot-native sed-native"
>>=20
>> inherit meta
>>=20
>> +PR =3D "r1"
>> +
>> SDK_DIR =3D "${WORKDIR}/sdk"
>> SDK_OUTPUT =3D "${SDK_DIR}/image"
>> SDK_DEPLOY =3D "${TMPDIR}/deploy/sdk"
>> @@ -33,7 +35,7 @@ TOOLCHAIN_HOST_TASK ?=3D "\
>>=20
>> TOOLCHAIN_OUTPUTNAME ?=3D "python-nativesdk-standalone-${SDKMACHINE}"
>>=20
>> -RDEPENDS =3D "${TOOLCHAIN_HOST_TASK}"
>> +RDEPENDS_${PN} =3D "${TOOLCHAIN_HOST_TASK}"
>>=20
>> EXCLUDE_FROM_WORLD =3D "1"
>=20
> Since PACKAGES =3D "" in this case, I think the RDEPENDS here is =
valid.

fixed=20

>> diff --git a/meta/recipes-core/meta/meta-toolchain.bb =
b/meta/recipes-core/meta/meta-toolchain.bb
>> index 40f8d7e..5eb2ae3 100644
>> --- a/meta/recipes-core/meta/meta-toolchain.bb
>> +++ b/meta/recipes-core/meta/meta-toolchain.bb
>> @@ -17,7 +17,7 @@ TOOLCHAIN_HOST_TASK ?=3D "task-sdk-host =
task-cross-canadian-${TRANSLATED_TARGET_AR
>> TOOLCHAIN_TARGET_TASK ?=3D "task-poky-standalone-sdk-target =
task-poky-standalone-sdk-target-dbg"
>> TOOLCHAIN_OUTPUTNAME ?=3D "${SDK_NAME}-toolchain-${DISTRO_VERSION}"
>>=20
>> -RDEPENDS =3D "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
>> +RDEPENDS_${PN} =3D "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
>>=20
>> EXCLUDE_FROM_WORLD =3D "1"
>=20
> and here.

fixed

> diff --git a/meta/recipes-core/tasks/task-base.bb =
b/meta/recipes-core/tasks/task-base.bb
>> index d613bb2..4f8c8d8 100644
>> --- a/meta/recipes-core/tasks/task-base.bb
>> +++ b/meta/recipes-core/tasks/task-base.bb
>> @@ -2,7 +2,7 @@ DESCRIPTION =3D "Merge machine and distro options to =
create a basic machine task/p
>> LICENSE =3D "MIT"
>> LIC_FILES_CHKSUM =3D =
"file://${POKYBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \
>>                     =
file://${POKYBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420=
"
>> -PR =3D "r69"
>> +PR =3D "r70"
>>=20
>> inherit task
>>=20
>> @@ -72,8 +72,8 @@ PCMCIA_MANAGER ?=3D =
"${@base_contains('MACHINE_FEATURES', 'kernel26','pcmciautils'
>> #
>> # those ones can be set in machine config to supply packages needed =
to get machine booting
>> #
>> -MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?=3D ""
>> -MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?=3D ""
>> +MACHINE_ESSENTIAL_EXTRA_RDEPENDS_${PN} ?=3D ""
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_${PN} ?=3D ""
>=20
> This isn't necessary...

fixed

>=20
>> #
>> # task-base contain stuff needed for base system (machine related)
>> diff --git a/meta/recipes-core/tasks/task-poky-boot.bb =
b/meta/recipes-core/tasks/task-poky-boot.bb
>> index e9c8e8a..3f8bc59 100644
>> --- a/meta/recipes-core/tasks/task-poky-boot.bb
>> +++ b/meta/recipes-core/tasks/task-poky-boot.bb
>> @@ -9,13 +9,13 @@ LIC_FILES_CHKSUM =3D =
"file://${POKYBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3
>> PACKAGE_ARCH =3D "${MACHINE_ARCH}"
>> DEPENDS =3D "virtual/kernel"
>> ALLOW_EMPTY =3D "1"
>> -PR =3D "r7"
>> +PR =3D "r8"
>>=20
>> #
>> # Set by the machine configuration with packages essential for device =
bootup
>> #
>> -MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?=3D ""
>> -MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?=3D ""
>> +MACHINE_ESSENTIAL_EXTRA_RDEPENDS_${PN} ?=3D ""
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_${PN} ?=3D ""
>>=20
>> RDEPENDS_task-poky-boot =3D "\
>>     base-files \
>=20
> likewise

fixed

>=20
>> diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb =
b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
>> index 3f9195a..ffe6dce 100644
>> --- a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
>> +++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
>> @@ -1,6 +1,6 @@
>> require e2fsprogs.inc
>>=20
>> -PR =3D "r19"
>> +PR =3D "r20"
>>=20
>> SRC_URI +=3D "file://quotefix.patch;patch=3D1 \
>>             file://acinclude.m4"
>> @@ -34,7 +34,7 @@ do_install () {
>> }
>>=20
>> # blkid used to be part of e2fsprogs but is useful outside, add it
>> -# as an RDEPENDS so that anything relying on it being in e2fsprogs
>> +# as an RDEPENDS_${PN} so that anything relying on it being in =
e2fsprogs
>> # still works
>> RDEPENDS_e2fsprogs =3D "e2fsprogs-blkid e2fsprogs-badblocks"
>=20
> no PR bump needed.

fixed

> diff --git a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb =
b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
>> index 087d254..2c19b39 100644
>> --- a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
>> +++ b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
>> @@ -5,10 +5,10 @@ PRIORITY =3D "optional"
>> LICENSE =3D "GPLv2+"
>> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f \
>>                     =
file://opkg.py;beginline=3D1;endline=3D18;md5=3D15917491ad6bf7acc666ca5f7c=
c1e083"
>> -RDEPENDS =3D "python"
>> +RDEPENDS_${PN} =3D "python"
>> RDEPENDS_virtclass-native =3D ""
>=20
> Need to change this to:
>=20
> RDEPENDS_${PN}_virtclass-native =3D ""

fixed

>=20
>> diff --git =
a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb =
b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
>> index 89313d6..50ba339 100644
>> --- a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
>> +++ b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
>> @@ -3,10 +3,10 @@ SECTION =3D "console/network"
>> LICENSE =3D "GPLv2+"
>> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D8ca43cbc842c2336e835926c2166c28b"
>>=20
>> -RDEPENDS =3D "pseudo"
>> +RDEPENDS_${PN} =3D "pseudo"
>> RDEPENDS_virtclass-native =3D "pseudo-native"
>> RDEPENDS_virtclass-nativesdk =3D "pseudo-nativesdk"
>=20
> Need to add ${PN} to the virtclass versions.

fixed, and that recipe seems to violate the OE versioning policy, which =
I didn't fix.

>=20
>> diff --git =
a/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.=
22.bb =
b/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.=
22.bb
>> index 5d38d5d..9943aa8 100644
>> --- =
a/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.=
22.bb
>> +++ =
b/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.=
22.bb
>> @@ -1,7 +1,9 @@
>> require update-alternatives-dpkg.inc
>>=20
>> +PR =3D "r1"
>> +
>> PROVIDES +=3D "virtual/update-alternatives"
>> RPROVIDES_${PN} +=3D "update-alternatives"
>> -EXTRA_RDEPENDS =3D "perl dpkg"
>> +EXTRA_RDEPENDS_${PN} =3D "perl dpkg"
>> EXTRA_RDEPENDS_virtclass-native =3D ""
>> RDEPENDS_${PN} +=3D "${EXTRA_RDEPENDS}"
>=20
> No change needed here :)

fixed

>=20
>> diff --git a/meta/recipes-gnome/gtk+/gtk+.inc =
b/meta/recipes-gnome/gtk+/gtk+.inc
>> index c34283e..ac7795e 100644
>> --- a/meta/recipes-gnome/gtk+/gtk+.inc
>> +++ b/meta/recipes-gnome/gtk+/gtk+.inc
>> @@ -35,7 +35,7 @@ FILES_${PN}-dbg +=3D " \
>> 	${libdir}/gtk-2.0/${LIBV}/engines/.debug/* \
>> 	${libdir}/gtk-2.0/${LIBV}/printbackends/.debug/*"
>>=20
>> -BASE_RRECOMMENDS =3D "ttf-dejavu-sans"
>> +BASE_RRECOMMENDS_${PN} =3D "ttf-dejavu-sans"
>> BASE_RRECOMMENDS_angstrom =3D "ttf-dejavu-sans gdk-pixbuf-loader-png =
gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm"
>> BASE_RRECOMMENDS_poky =3D "gdk-pixbuf-loader-png =
gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm =
shared-mime-info"
>> BASE_RRECOMMENDS_moblin =3D "gdk-pixbuf-loader-png =
gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm =
shared-mime-info"
>=20
> Need to add ${PN} into these. We should really consider changing the
> default here...

fixed the PN part, not the default setting

>=20
>> diff --git a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb =
b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
>> index f3b3716..7a2ddb6 100644
>> --- a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
>> +++ b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
>> @@ -10,11 +10,11 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dbf0158b89be493d523d69d9f29265038 \
>>                     =
file://100dpi/fonts.alias;md5=3D85bebd6ca213aa656c301a72eb4397cb"
>>=20
>> DEPENDS =3D "virtual/xserver font-util"
>> -RDEPENDS =3D "encodings font-util"
>> +RDEPENDS_${PN} =3D "encodings font-util"
>> RDEPENDS_virtclass-native =3D "font-util"
>=20
> another virtclass to add ${PN} into.

fixed

> PE =3D "1"
>> -PR =3D "${INC_PR}.0"
>> +PR =3D "${INC_PR}.1"
>>=20
>> SRC_URI[md5sum] =3D "6d25f64796fef34b53b439c2e9efa562"
>> SRC_URI[sha256sum] =3D =
"8b453b2aae1cfa8090009ca037037b8c5e333550651d5a158b7264ce1d472c9a"
>> diff --git a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb =
b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
>> index 972e9e3..14ba51a 100644
>> --- a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
>> +++ b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
>> @@ -12,10 +12,10 @@ PACKAGE_ARCH =3D "${BASE_PACKAGE_ARCH}"
>>=20
>> DEPENDS =3D "encodings util-macros"
>> DEPENDS_virtclass-native =3D "util-macros-native"
>> -RDEPENDS =3D "mkfontdir mkfontscale encodings"
>> +RDEPENDS_${PN} =3D "mkfontdir mkfontscale encodings"
>> RDEPENDS_virtclass-native =3D "mkfontdir-native mkfontscale-native"
>=20
> and here

and fixed!!

>=20
> Cheers,
>=20
> Richard
>=20
>=20


