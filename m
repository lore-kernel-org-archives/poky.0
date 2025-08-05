Return-Path: <srivamsi_malladi@trimble.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA74DC87FCB
	for <webhook@archiver.kernel.org>; Tue,  5 Aug 2025 08:45:14 +0000 (UTC)
Subject: Multiple glibc libraries on a single host #bitbake #poky
To: poky@lists.yoctoproject.org
From: "Srivamsi Malladi" <srivamsi_malladi@trimble.com>
X-Originating-Location: Frankfurt am Main, Hesse, DE (24.206.112.163)
X-Originating-Platform: Windows Chrome 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 05 Aug 2025 01:45:13 -0700
Message-ID: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
X-Old-Date: Tue, 05 Aug 2025 01:43:52 -0700
Content-Type: multipart/mixed; boundary="C0rkrA858Frkzr3a0jdV"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 08:45:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13709
Message-ID: <20250805084513.HbngP1Pz1e-FpNv2ZNHGqmXIQcFIDpec-rKRvAH2Kk4@z>

--C0rkrA858Frkzr3a0jdV
Content-Type: multipart/alternative; boundary="rv1YHeQhGIZXOu65VMaM"

--rv1YHeQhGIZXOu65VMaM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,
I am a bit new to Poky and the Yocto Project, so please spare me for this o=
ne.

I am using Poky 2.1.2 (I cannot update it for now), so I have glibc 2.23 by=
 defauly from open-embedded. But I have a tool that was build with glib 2.2=
8 and I cannot build this tool from source with a different version of glib=
c like the glibc 2.23 I have (as the source is not accessible).

Now, I tried first to specify PREFERRED_VERSION_glibc=3D"2.28" and I got an=
 error saying the version of poky I have only supports glibc 2.23

Then I proceeded to look for recipes for glibc 2.28 online and found the gl=
ibc 2.28 recipe from open-embedded supported by poky 2.6 ( https://git.open=
embedded.org/openembedded-core/tree/meta/recipes-core/glibc/glibc_2.28.bb?h=
=3Dthud ). I took the recipe as it is, but I got errors related to incompat=
ibility of the recipe as it is from a different version of poky (and I did =
not change a single character).

Then I though maybe I should write the recipe on my own and found this guid=
e ( https://askubuntu.com/questions/1345342/how-to-install-glibc-2-32-when-=
i-already-have-glibc2-31 ) on how to build glibc from source when there is =
a different version of glibc already installed. I named my new recipe glibc=
-wl_2.28. I put these steps from the guide I found into a recipe and added =
configure --prefix=3D/opt/glibc-2.28 to get the glibc 2.28 installed into a=
 different directory or else it uses the default location where glibc 2.23 =
is already present.
Now, the compilation and installation works perfectly, but I have series of=
 errors while packaging the files. So I copied the packaging related lines =
from the glibc 2.28 recipe from open-embedded ( https://git.openembedded.or=
g/openembedded-core/tree/meta/recipes-core/glibc/glibc-package.inc?h=3Dthud=
 ) and tried to change the directories to /opt/glibc-2.28, but I get errors=
 saying glibc-wl is trying to install files into a shared area when those f=
iles already exist.

>=20
> ERROR: glibc-wl-2.23-r0 do_packagedata: The recipe glibc-wl is trying to
> install files into a shared area when those files already exist. Those
> files and their manifest location are:
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/ldd
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/glibc-thread-db
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/libmemusage
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/libmemusage.packaged
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/catchsegv
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/libsegfault
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/nscd
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/sln.packaged
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/sln
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/tzcode
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/libsotruss
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/glibc-extra-nss
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/libsotruss.packaged
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/glibc-thread-db.packaged
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/libcidn
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime/libsegfault.packaged
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/shlibs2/glibc-thread-db.list
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/shlibs2/libmemusage.list
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/shlibs2/libsegfault.list
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime-rprovides/glibc-thread-db/glibc-thread-db
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime-rprovides/(=3D2.23)/glibc-thread-db
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime-rprovides/eglibc-extra-nss/glibc-extra-nss
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime-rprovides/eglibc-thread-db/glibc-thread-db
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime-reverse/libmemusage
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime-reverse/libsegfault
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime-reverse/sln
>=20
> Matched in manifest-htm-tj-glibc.packagedata
> /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgda=
ta/runtime-reverse/libsotruss
>=20
> Matched in manifest-htm-tj-glibc.packagedata
>=20
>=20

Then, I deleted these files, as they will not be installed if they are not =
present. Anyway, a copy of these files (though older version) are already i=
nstalled and are available. I am not sure if deleting these files is an act=
ual fix. Please let me know the effects of this action.
But now there are some RPROVIDES_glibc-wl-some_package_name that are creati=
ng errors. Following is the error and attached is the do_package_write_rpm =
log file.

>=20
> ERROR: glibc-wl-2.23-r0 do_package_qa: Recipe glibc-wl is trying to creat=
e
> package catchsegv which was already written by recipe glibc. This will
> cause corruption, please resolve this and only provide the package from
> one recipe or the other or only build one of the recipes.
>=20

This is my recipe

>=20
> SUMMARY =C2=A0 =C2=A0 =3D "GLIBC 2.28 for Infineon wl tool"
> DESCRIPTION =3D "GLIBC 2.23 is included by default, but the Infineon wl t=
ool
> needs 2.28"
> AUTHOR =C2=A0 =C2=A0 =C2=A0=3D "Srivamsi Malladi"
>=20
> #Temp workaraound!!
> #Because bitbake is complaining about some version incompatibility of
> common files in 2.23 and 2.28
> PV =3D "2.23"
>=20
> inherit autotools gettext
>=20
> DEPENDS +=3D "gperf-native bison-native make-native"
> DEPENDS +=3D "virtual/kernel"
>=20
> SRC_URI =C2=A0 =3D "https://mirror.dogado.de/gnu/glibc/glibc-2.28.tar.gz"
> SRC_URI[md5sum] =3D "d5fea592406659df50d00666ff9d0c53"
> SRC_URI[sha256sum] =3D
> "f318d6e3f1f4ed0b74d2832ac4f491d0fb928e451c9eda594cbf1c3bee7af47c"
>=20
> # ${PV} is pulled from the recipe filename, e.g. helloworld_2.7.bb ->
> ${PV} expands to "2.7".
> # We use immediate evaluation to define a new var PVBASE holding the
> original value of ${PV}.
> PVBASE :=3D "${PV}"
>=20
> # We need to tell bitbake about our current directory structure or we
> won't be able to find patches after we mess with ${PV}
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PVBASE}:"
>=20
> # Then redefine PV to tack the svn rev onto the base version. This is
> evaluated at fetch time.
> # Then the package will get rebuilt any time the relevant part of the
> source tree changes.
> #PV =3D "${PVBASE}.${SRCPV}"
>=20
> S =3D "${WORKDIR}/glibc-2.28/"
> #PKGDATA_DIR =3D "${WORKDIR}/pkgdata/glibc-wl"
> GLIBC228_TARGET_DIR =3D "/opt/glibc-2.28"
>=20
> EXTRA_OECONF =3D "--host=3D${TARGET_SYS} \
> --enable-kernel=3D${GLIBC_KRNL_VERSION} \
> --with-headers=3D${STAGING_INCDIR} \
> --enable-obsolete-rpc \
> --enable-obsolete-nsl \
> --disable-profile \
> --disable-nls \
> --disable-static-nss \
> --disable-built-in-nss-modules \
> --with-binutils=3D${STAGING_BINDIR} \
> --with-linker=3D${TARGET_PREFIX}ld \
> --with-arch=3D${TUNE_ARCH}"
>=20
> do_configure() {
> # Glibc typically requires an out-of-tree build directory.
> # ${B} is the standard variable for the build directory.
> mkdir -p ${B}
> cd ${B}
>=20
> # Run the configure script from the source directory (${S}),
> # passing the defined configuration options.
> # The --prefix, --libdir etc., are usually handled by the autotools class
> defaults
> # but explicitly adding them here ensures they are passed.
> ${S}/configure \
> ${EXTRA_OECONF} \
> --prefix=3D${GLIBC228_TARGET_DIR} \
> --libdir=3D${GLIBC228_TARGET_DIR}/lib \
> --libexecdir=3D${GLIBC228_TARGET_DIR}/libexec \
> --bindir=3D${GLIBC228_TARGET_DIR}/bin \
> --sbindir=3D${GLIBC228_TARGET_DIR}/sbin \
> --datadir=3D${GLIBC228_TARGET_DIR}/share \
> --includedir=3D${GLIBC228_TARGET_DIR}/include \
> --sysconfdir=3D${GLIBC228_TARGET_DIR}/etc \
> --localstatedir=3D${GLIBC228_TARGET_DIR}/var \
> --sharedstatedir=3D${GLIBC228_TARGET_DIR}/com
> }
>=20
> do_install() {
> cd ${B}
> oe_runmake install DESTDIR=3D${D}
> }
>=20
> # Removing files that are already present because of v2.28
> # Temp fix!! After effects not known because of this!!
> do_packagedata_append() {
> rm ${WORKDIR}/pkgdata/runtime/ldd
> rm ${WORKDIR}/pkgdata/runtime/glibc-thread-db
> rm "${WORKDIR}/pkgdata/runtime-rprovides/(=3D2.23)/glibc-thread-db"
> rm ${WORKDIR}/pkgdata/runtime/libmemusage
> rm ${WORKDIR}/pkgdata/runtime/libmemusage.packaged
> rm ${WORKDIR}/pkgdata/runtime/libsegfault
> rm ${WORKDIR}/pkgdata/runtime/catchsegv
> rm ${WORKDIR}/pkgdata/runtime/nscd
> rm ${WORKDIR}/pkgdata/runtime/sln.packaged
> rm ${WORKDIR}/pkgdata/runtime/tzcode
> rm ${WORKDIR}/pkgdata/runtime/libsotruss
> rm ${WORKDIR}/pkgdata/runtime/glibc-extra-nss
> rm ${WORKDIR}/pkgdata/runtime/libsotruss.packaged
> rm ${WORKDIR}/pkgdata/runtime/glibc-thread-db.packaged
> rm ${WORKDIR}/pkgdata/runtime/libcidn
> rm ${WORKDIR}/pkgdata/runtime/libsegfault.packaged
> rm ${WORKDIR}/pkgdata/runtime/sln
> rm ${WORKDIR}/pkgdata/shlibs2/glibc-thread-db.list
> rm ${WORKDIR}/pkgdata/shlibs2/libmemusage.list
> rm ${WORKDIR}/pkgdata/shlibs2/libsegfault.list
> rm ${WORKDIR}/pkgdata/runtime-rprovides/glibc-thread-db/glibc-thread-db
> rm ${WORKDIR}/pkgdata/runtime-rprovides/eglibc-extra-nss/glibc-extra-nss
> rm ${WORKDIR}/pkgdata/runtime-rprovides/eglibc-thread-db/glibc-thread-db
> rm ${WORKDIR}/pkgdata/runtime-reverse/libmemusage
> rm ${WORKDIR}/pkgdata/runtime-reverse/libsegfault
> rm ${WORKDIR}/pkgdata/runtime-reverse/sln
> rm ${WORKDIR}/pkgdata/runtime-reverse/libsotruss
> }
>=20
> PACKAGES =3D "${PN}-dbg catchsegv sln nscd ldd tzcode glibc-thread-db
> ${PN}-pic libcidn libmemusage libnss-db libsegfault ${PN}-pcprofile
> libsotruss ${PN} ${PN}-utils glibc-extra-nss ${PN}-dev ${PN}-staticdev
> ${PN}-doc"
>=20
> #PACKAGES =3D "${PN}-dbg ${PN}-pic ${PN}-pcprofile ${PN} ${PN}-utils
> ${PN}-dev ${PN}-staticdev ${PN}-doc"
>=20
> RPROVIDES_${PN} =3D "eglibc rtld(GNU_HASH)"
> RPROVIDES_${PN}-utils =3D "eglibc-utils"
> RPROVIDES_${PN}-mtrace =3D "eglibc-mtrace libc-mtrace"
> RPROVIDES_${PN}-pic =3D "eglibc-pic"
> RPROVIDES_${PN}-dev =3D "eglibc-dev libc6-dev virtual-libc-dev"
> RPROVIDES_${PN}-staticdev =3D "eglibc-staticdev"
> RPROVIDES_${PN}-doc =3D "eglibc-doc"
> RPROVIDES_glibc-extra-nss =3D "eglibc-extra-nss"
> RPROVIDES_glibc-thread-db =3D "eglibc-thread-db"
> RPROVIDES_${PN}-pcprofile =3D "eglibc-pcprofile"
> RPROVIDES_${PN}-dbg =3D "eglibc-dbg"
> libc_baselibs =3D " ${GLIBC228_TARGET_DIR}/lib/libc.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libc-*.so \
> ${GLIBC228_TARGET_DIR}/lib/libm*.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libm-*.so \
> ${GLIBC228_TARGET_DIR}/lib/libmvec-*.so \
> ${GLIBC228_TARGET_DIR}/lib/ld*.so.* \
> ${GLIBC228_TARGET_DIR}/lib/ld-*.so \
> ${GLIBC228_TARGET_DIR}/lib/libpthread*.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libpthread-*.so =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/libresolv*.so.* =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/libresolv-*.so =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/librt*.so.* =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/librt-*.so =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/libutil*.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libutil-*.so =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/libnsl*.so.* =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/libnsl-*.so =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/libdl*.so.* =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/libdl-*.so =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/libanl*.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libanl-*.so =C2=A0\
> ${GLIBC228_TARGET_DIR}/lib/libBrokenLocale*.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libBrokenLocale-*.so \
> /usr \
> ${GLIBC228_TARGET_DIR}/lib/libnss_files*.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libnss_files-*.so \
> ${GLIBC228_TARGET_DIR}/lib/libnss_compat*.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libnss_compat-*.so \
> ${GLIBC228_TARGET_DIR}/lib/libnss_dns*.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libnss_dns-*.so \
> ${GLIBC228_TARGET_DIR}/etc \
> ${GLIBC228_TARGET_DIR}/share \
> ${GLIBC228_TARGET_DIR}/libexec \
> ${GLIBC228_TARGET_DIR}/etc/rpc \
> ${GLIBC228_TARGET_DIR}/share \
> ${GLIBC228_TARGET_DIR}/share \
> ${GLIBC228_TARGET_DIR}/"
>=20
> libc_baselibs_append_aarch64 =3D
> "${GLIBC228_TARGET_DIR}/lib/ld-linux-aarch64*.so.1"
> INSANE_SKIP_${PN}_append_aarch64 =3D " ${GLIBC228_TARGET_DIR}/lib"
>=20
> FILES_${PN} =3D " ${libc_baselibs} \
> ${GLIBC228_TARGET_DIR}/lib/* \
> ${GLIBC228_TARGET_DIR}/sbin/ldconfig \
> ${GLIBC228_TARGET_DIR}/etc/ld.so.conf"
> FILES_ldd =3D " ${GLIBC228_TARGET_DIR}/bin/ldd"
> FILES_libsegfault =3D " ${GLIBC228_TARGET_DIR}/lib/libSegFault*"
> FILES_libcidn =3D " ${GLIBC228_TARGET_DIR}/lib/libcidn-*.so \
> ${GLIBC228_TARGET_DIR}/lib/libcidn.so.*"
> FILES_libmemusage =3D " ${GLIBC228_TARGET_DIR}/lib/libmemusage.so"
> FILES_libnss-db =3D " ${GLIBC228_TARGET_DIR}/lib/libnss_db.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libnss_db-*.so \
> ${GLIBC228_TARGET_DIR}/var/db/Makefile =C2=A0 =C2=A0\
> ${GLIBC228_TARGET_DIR}/var/db/makedbs.sh"
> RDEPENDS_libnss-db =3D "${PN}-utils"
> FILES_glibc-extra-nss =3D "${GLIBC228_TARGET_DIR}/lib/libnss_*-*.so \
> ${GLIBC228_TARGET_DIR}/lib/libnss_*.so.*"
> FILES_sln =3D "${GLIBC228_TARGET_DIR}/sbin/sln"
> FILES_${PN}-pic =3D " ${GLIBC228_TARGET_DIR}/lib/*_pic.a \
> ${GLIBC228_TARGET_DIR}/lib/*_pic.map \
> ${GLIBC228_TARGET_DIR}/lib/libc_pic/*.o"
> FILES_libsotruss =3D "${GLIBC228_TARGET_DIR}/lib/audit/sotruss-lib.so"
> FILES_SOLIBSDEV =3D "${GLIBC228_TARGET_DIR}/lib/lib*${SOLIBSDEV}"
> FILES_${PN}-dev +=3D " ${GLIBC228_TARGET_DIR}/lib/*_nonshared.a \
> ${GLIBC228_TARGET_DIR}/lib/*_nonshared.a \
> ${GLIBC228_TARGET_DIR}/lib/*.o \
> ${datadir}/aclocal"
> FILES_${PN}-staticdev +=3D " ${GLIBC228_TARGET_DIR}/lib/*.a \
> ${GLIBC228_TARGET_DIR}/lib/*.a"
> FILES_nscd =3D " ${GLIBC228_TARGET_DIR}/sbin/nscd* \
> ${GLIBC228_TARGET_DIR}/etc/init.d/nscd \
> ${systemd_unitdir}/system/nscd* \
> ${GLIBC228_TARGET_DIR}/etc/tmpfiles.d/nscd.conf \
> ${GLIBC228_TARGET_DIR}/etc/nscd.conf \
> ${GLIBC228_TARGET_DIR}/etc/default/volatiles/98_nscd \
> ${GLIBC228_TARGET_DIR}/var/db/nscd"
> FILES_${PN}-mtrace =3D "${GLIBC228_TARGET_DIR}/bin/mtrace"
> FILES_tzcode =3D "${GLIBC228_TARGET_DIR}/bin/tzselect \
> ${GLIBC228_TARGET_DIR}/sbin/zic \
> ${GLIBC228_TARGET_DIR}/sbin/zdump"
> FILES_${PN}-utils =3D " ${GLIBC228_TARGET_DIR}/bin/* \
> ${GLIBC228_TARGET_DIR}/sbin/*"
> FILES_catchsegv =3D " ${GLIBC228_TARGET_DIR}/bin/catchsegv"
> RDEPENDS_catchsegv =3D " libsegfault"
> FILES_${PN}-pcprofile =3D "${GLIBC228_TARGET_DIR}/lib/libpcprofile.so"
> FILES_glibc-thread-db =3D "${GLIBC228_TARGET_DIR}/lib/libthread_db.so.* \
> ${GLIBC228_TARGET_DIR}/lib/libthread_db-*.so"
> RPROVIDES_${PN}-dev +=3D "libc-dev"
> RPROVIDES_${PN}-staticdev +=3D "libc-staticdev"
>=20

In general, I would like to understand how to create recipes such that two =
versions of the same library/application are installed.
I guess, applications are easier. Just create a recipe with a different nam=
e and install into a different directory.
But with libraries, especially like the glibc, it is tough as it installs f=
iles into a lot of directories, especially shared directories.

The idea at the end is to run the tool with LD_LIBRARY_PATH=3D/opt/ glibc-w=
l/lib:$LD_LIBRARY_ PATH.
And if this will not work, there is no point in installing glibc 2.28 along=
side 2.23.

Please let me know if any more info is needed and help me install glibc 2.2=
8 alongside 2.23.

Thanks
Vamsi.

--rv1YHeQhGIZXOu65VMaM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>Hi all,<br />I am a bit new to Poky and the Yocto Project, so please s=
pare me for this one.</div>
<div>&nbsp;</div>
<div>I am using Poky 2.1.2 (I cannot update it for now), so I have glibc 2.=
23 by defauly from open-embedded. But I have a tool that was build with gli=
b 2.28 and I cannot build this tool from source with a different version of=
 glibc like the glibc 2.23 I have (as the source is not accessible).</div>
<div>&nbsp;</div>
<div>Now, I tried first to specify PREFERRED_VERSION_glibc=3D"2.28" and I g=
ot an error saying the version of poky I have only supports glibc 2.23</div=
>
<div>&nbsp;</div>
<div>Then I proceeded to look for recipes for glibc 2.28 online and found t=
he <a href=3D"https://git.openembedded.org/openembedded-core/tree/meta/reci=
pes-core/glibc/glibc_2.28.bb?h=3Dthud" target=3D"_blank" rel=3D"nofollow no=
opener">glibc 2.28 recipe from open-embedded supported by poky 2.6</a>. I t=
ook the recipe as it is, but I got errors related to incompatibility of the=
 recipe as it is from a different version of poky (and I did not change a s=
ingle character).</div>
<div>&nbsp;</div>
<div>Then I though maybe I should write the recipe on my own and found <a h=
ref=3D"https://askubuntu.com/questions/1345342/how-to-install-glibc-2-32-wh=
en-i-already-have-glibc2-31" target=3D"_blank" rel=3D"nofollow noopener">th=
is guide</a> on how to build glibc from source when there is a different ve=
rsion of glibc already installed. I named my new recipe glibc-wl_2.28. I pu=
t these steps from the guide I found into a recipe and added <span style=3D=
"font-family: courier;">configure --prefix=3D/opt/glibc-2.28 <span style=3D=
"font-family: system-ui;">to get the glibc 2.28 installed into a different =
directory or else it uses the default location where glibc 2.23 is already =
present.</span></span></div>
<div><span style=3D"font-family: courier;"><span style=3D"font-family: syst=
em-ui;">Now, the compilation and installation works perfectly, but I have s=
eries of errors while packaging the files. So I copied the <a href=3D"https=
://git.openembedded.org/openembedded-core/tree/meta/recipes-core/glibc/glib=
c-package.inc?h=3Dthud" target=3D"_blank" rel=3D"nofollow noopener">packagi=
ng related lines from the glibc 2.28 recipe from open-embedded</a> and trie=
d to change the directories to /opt/glibc-2.28, but I get errors saying gli=
bc-wl is trying to install files into a shared area when those files alread=
y exist.&nbsp;</span></span><span style=3D"font-family: courier;"><span sty=
le=3D"font-family: system-ui;"></span></span></div>
<blockquote>
<div><span style=3D"font-family: courier;"><span style=3D"font-family: syst=
em-ui;"><span style=3D"font-family: courier; font-size: 12px;">ERROR: glibc=
-wl-2.23-r0 do_packagedata: The recipe glibc-wl is trying to install files =
into a shared area when those files already exist. Those files and their ma=
nifest location are:</span><br /><span style=3D"font-family: courier; font-=
size: 12px;">&nbsp; &nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/t=
mp/sysroots/htm-tj/pkgdata/runtime/ldd</span><br /><span style=3D"font-fami=
ly: courier; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packa=
gedata</span><br /><span style=3D"font-family: courier; font-size: 12px;">&=
nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pk=
gdata/runtime/glibc-thread-db</span><br /><span style=3D"font-family: couri=
er; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata</s=
pan><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;/hom=
e/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/run=
time/libmemusage</span><br /><span style=3D"font-family: courier; font-size=
: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata</span><br /><sp=
an style=3D"font-family: courier; font-size: 12px;">&nbsp;/home/ubuntu1404/=
work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/runtime/libmemus=
age.packaged</span><br /><span style=3D"font-family: courier; font-size: 12=
px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata</span><br /><span s=
tyle=3D"font-family: courier; font-size: 12px;">&nbsp;/home/ubuntu1404/work=
/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/runtime/catchsegv</s=
pan><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;Matc=
hed in manifest-htm-tj-glibc.packagedata</span><br /><span style=3D"font-fa=
mily: courier; font-size: 12px;">&nbsp;/home/ubuntu1404/work/hurricane-yoct=
o/build_htm/tmp/sysroots/htm-tj/pkgdata/runtime/libsegfault</span><br /><sp=
an style=3D"font-family: courier; font-size: 12px;">&nbsp;Matched in manife=
st-htm-tj-glibc.packagedata</span><br /><span style=3D"font-family: courier=
; font-size: 12px;">&nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/t=
mp/sysroots/htm-tj/pkgdata/runtime/nscd</span><br /><span style=3D"font-fam=
ily: courier; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.pack=
agedata</span><br /><span style=3D"font-family: courier; font-size: 12px;">=
&nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/p=
kgdata/runtime/sln.packaged</span><br /><span style=3D"font-family: courier=
; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata</spa=
n><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;/home/=
ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/runti=
me/sln</span><br /><span style=3D"font-family: courier; font-size: 12px;">&=
nbsp;Matched in manifest-htm-tj-glibc.packagedata</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">&nbsp;/home/ubuntu1404/work/hur=
ricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/runtime/tzcode</span><br=
 /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;Matched in =
manifest-htm-tj-glibc.packagedata</span><br /><span style=3D"font-family: c=
ourier; font-size: 12px;">&nbsp;/home/ubuntu1404/work/hurricane-yocto/build=
_htm/tmp/sysroots/htm-tj/pkgdata/runtime/libsotruss</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">&nbsp;Matched in manifest-htm-t=
j-glibc.packagedata</span><br /><span style=3D"font-family: courier; font-s=
ize: 12px;">&nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysro=
ots/htm-tj/pkgdata/runtime/glibc-extra-nss</span><br /><span style=3D"font-=
family: courier; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.p=
ackagedata</span><br /><span style=3D"font-family: courier; font-size: 12px=
;">&nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-t=
j/pkgdata/runtime/libsotruss.packaged</span><br /><span style=3D"font-famil=
y: courier; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packag=
edata</span><br /><span style=3D"font-family: courier; font-size: 12px;">&n=
bsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkg=
data/runtime/glibc-thread-db.packaged</span><br /><span style=3D"font-famil=
y: courier; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packag=
edata</span><br /><span style=3D"font-family: courier; font-size: 12px;">&n=
bsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkg=
data/runtime/libcidn</span><br /><span style=3D"font-family: courier; font-=
size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata</span><br /=
><span style=3D"font-family: courier; font-size: 12px;">&nbsp;/home/ubuntu1=
404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/runtime/libs=
egfault.packaged</span><br /><span style=3D"font-family: courier; font-size=
: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata</span><br /><sp=
an style=3D"font-family: courier; font-size: 12px;">&nbsp;/home/ubuntu1404/=
work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/shlibs2/glibc-th=
read-db.list</span><br /><span style=3D"font-family: courier; font-size: 12=
px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata</span><br /><span s=
tyle=3D"font-family: courier; font-size: 12px;">&nbsp;/home/ubuntu1404/work=
/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/shlibs2/libmemusage.=
list</span><br /><span style=3D"font-family: courier; font-size: 12px;">&nb=
sp;Matched in manifest-htm-tj-glibc.packagedata</span><br /><span style=3D"=
font-family: courier; font-size: 12px;">&nbsp;/home/ubuntu1404/work/hurrica=
ne-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/shlibs2/libsegfault.list</sp=
an><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;Match=
ed in manifest-htm-tj-glibc.packagedata</span><br /><span style=3D"font-fam=
ily: courier; font-size: 12px;">&nbsp;/home/ubuntu1404/work/hurricane-yocto=
/build_htm/tmp/sysroots/htm-tj/pkgdata/runtime-rprovides/glibc-thread-db/gl=
ibc-thread-db</span><br /><span style=3D"font-family: courier; font-size: 1=
2px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata</span><br /><span =
style=3D"font-family: courier; font-size: 12px;">&nbsp;/home/ubuntu1404/wor=
k/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/runtime-rprovides/(=
=3D2.23)/glibc-thread-db</span><br /><span style=3D"font-family: courier; f=
ont-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata</span><=
br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;/home/ubu=
ntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgdata/runtime-=
rprovides/eglibc-extra-nss/glibc-extra-nss</span><br /><span style=3D"font-=
family: courier; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.p=
ackagedata</span><br /><span style=3D"font-family: courier; font-size: 12px=
;">&nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-t=
j/pkgdata/runtime-rprovides/eglibc-thread-db/glibc-thread-db</span><br /><s=
pan style=3D"font-family: courier; font-size: 12px;">&nbsp;Matched in manif=
est-htm-tj-glibc.packagedata</span><br /><span style=3D"font-family: courie=
r; font-size: 12px;">&nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/=
tmp/sysroots/htm-tj/pkgdata/runtime-reverse/libmemusage</span><br /><span s=
tyle=3D"font-family: courier; font-size: 12px;">&nbsp;Matched in manifest-h=
tm-tj-glibc.packagedata</span><br /><span style=3D"font-family: courier; fo=
nt-size: 12px;">&nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/s=
ysroots/htm-tj/pkgdata/runtime-reverse/libsegfault</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">&nbsp;Matched in manifest-htm-t=
j-glibc.packagedata</span><br /><span style=3D"font-family: courier; font-s=
ize: 12px;">&nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysro=
ots/htm-tj/pkgdata/runtime-reverse/sln</span><br /><span style=3D"font-fami=
ly: courier; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packa=
gedata</span><br /><span style=3D"font-family: courier; font-size: 12px;">&=
nbsp;/home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pk=
gdata/runtime-reverse/libsotruss</span><br /><span style=3D"font-family: co=
urier; font-size: 12px;">&nbsp;Matched in manifest-htm-tj-glibc.packagedata=
</span><br /></span></span></div>
</blockquote>
<div>&nbsp;</div>
<div><span style=3D"font-family: courier;"><span style=3D"font-family: syst=
em-ui;">Then, I deleted these files, as they will not be installed if they =
are not present. Anyway, a copy of these files (though older version) are a=
lready installed and are available. I am not sure if deleting these files i=
s an actual fix</span></span><span style=3D"font-family: system-ui;">. Plea=
se let me know the effects of this action.</span></div>
<div><span style=3D"font-family: courier;"><span style=3D"font-family: syst=
em-ui;">But now there are some RPROVIDES_glibc-wl-some_package_name that ar=
e creating errors. Following is the error and attached is the do_package_wr=
ite_rpm log file.</span></span></div>
<blockquote>
<div><span style=3D"font-family: courier; font-size: 12px;">ERROR: glibc-wl=
-2.23-r0 do_package_qa: Recipe glibc-wl is trying to create package catchse=
gv which was already written by recipe glibc. This will cause corruption, p=
lease resolve this and only provide the package from one recipe or the othe=
r or only build one of the recipes.</span></div>
</blockquote>
<div>&nbsp;</div>
<div>This is my recipe</div>
<blockquote>
<div><span style=3D"font-family: courier; font-size: 12px;">SUMMARY &nbsp; =
&nbsp; =3D "GLIBC 2.28 for Infineon wl tool"</span><br /><span style=3D"fon=
t-family: courier; font-size: 12px;">DESCRIPTION =3D "GLIBC 2.23 is include=
d by default, but the Infineon wl tool needs 2.28"</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">AUTHOR &nbsp; &nbsp; &nbsp;=3D =
"Srivamsi Malladi"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">#Temp wor=
karaound!!</span><br /><span style=3D"font-family: courier; font-size: 12px=
;">#Because bitbake is complaining about some version incompatibility of co=
mmon files in 2.23 and 2.28</span><br /><span style=3D"font-family: courier=
; font-size: 12px;">PV =3D "2.23"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">inherit a=
utotools gettext</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">DEPENDS +=
=3D "gperf-native bison-native make-native"</span><br /><span style=3D"font=
-family: courier; font-size: 12px;">DEPENDS +=3D "virtual/kernel"</span></d=
iv>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">SRC_URI &=
nbsp; =3D "https://mirror.dogado.de/gnu/glibc/glibc-2.28.tar.gz"</span><br =
/><span style=3D"font-family: courier; font-size: 12px;">SRC_URI[md5sum] =
=3D "d5fea592406659df50d00666ff9d0c53"</span><br /><span style=3D"font-fami=
ly: courier; font-size: 12px;">SRC_URI[sha256sum] =3D "f318d6e3f1f4ed0b74d2=
832ac4f491d0fb928e451c9eda594cbf1c3bee7af47c"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;"># ${PV} i=
s pulled from the recipe filename, e.g. helloworld_2.7.bb -&gt; ${PV} expan=
ds to "2.7".</span><br /><span style=3D"font-family: courier; font-size: 12=
px;"># We use immediate evaluation to define a new var PVBASE holding the o=
riginal value of ${PV}.</span><br /><span style=3D"font-family: courier; fo=
nt-size: 12px;">PVBASE :=3D "${PV}"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;"># We need=
 to tell bitbake about our current directory structure or we won't be able =
to find patches after we mess with ${PV}</span><br /><span style=3D"font-fa=
mily: courier; font-size: 12px;">FILESEXTRAPATHS_prepend :=3D "${THISDIR}/$=
{PN}-${PVBASE}:"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;"># Then re=
define PV to tack the svn rev onto the base version. This is evaluated at f=
etch time.</span><br /><span style=3D"font-family: courier; font-size: 12px=
;"># Then the package will get rebuilt any time the relevant part of the so=
urce tree changes.</span><br /><span style=3D"font-family: courier; font-si=
ze: 12px;">#PV =3D "${PVBASE}.${SRCPV}"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">S =3D "${=
WORKDIR}/glibc-2.28/"</span><br /><span style=3D"font-family: courier; font=
-size: 12px;">#PKGDATA_DIR =3D "${WORKDIR}/pkgdata/glibc-wl"</span><br /><s=
pan style=3D"font-family: courier; font-size: 12px;">GLIBC228_TARGET_DIR =
=3D "/opt/glibc-2.28"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">EXTRA_OEC=
ONF =3D "--host=3D${TARGET_SYS} \</span><br /><span style=3D"font-family: c=
ourier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; --enable-kernel=3D${GLIBC_KRNL_VERSION} \</span><br /><span style=3D=
"font-family: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; --with-headers=3D${STAGING_INCDIR} \</span><br /><spa=
n style=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; --enable-obsolete-rpc \</span><br /><span s=
tyle=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; --enable-obsolete-nsl \</span><br /><span styl=
e=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; --disable-profile \</span><br /><span style=3D"fo=
nt-family: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; --disable-nls \</span><br /><span style=3D"font-family: =
courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; --disable-static-nss \</span><br /><span style=3D"font-family: cour=
ier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; --disable-built-in-nss-modules \</span><br /><span style=3D"font-family=
: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; --with-binutils=3D${STAGING_BINDIR} \</span><br /><span style=3D"=
font-family: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; --with-linker=3D${TARGET_PREFIX}ld \</span><br /><span=
 style=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; --with-arch=3D${TUNE_ARCH}"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">do_config=
ure() {</span><br /><span style=3D"font-family: courier; font-size: 12px;">=
&nbsp; &nbsp; # Glibc typically requires an out-of-tree build directory.</s=
pan><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp; &nb=
sp; # ${B} is the standard variable for the build directory.</span><br /><s=
pan style=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; mkdir -p=
 ${B}</span><br /><span style=3D"font-family: courier; font-size: 12px;">&n=
bsp; &nbsp; cd ${B}</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp; &n=
bsp; # Run the configure script from the source directory (${S}),</span><br=
 /><span style=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; # p=
assing the defined configuration options.</span><br /><span style=3D"font-f=
amily: courier; font-size: 12px;">&nbsp; &nbsp; # The --prefix, --libdir et=
c., are usually handled by the autotools class defaults</span><br /><span s=
tyle=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; # but explici=
tly adding them here ensures they are passed.</span><br /><span style=3D"fo=
nt-family: courier; font-size: 12px;">&nbsp; &nbsp; ${S}/configure \</span>=
<br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; =
&nbsp; &nbsp; ${EXTRA_OECONF} \</span><br /><span style=3D"font-family: cou=
rier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; --prefix=3D${GLIBC228_T=
ARGET_DIR} \</span><br /><span style=3D"font-family: courier; font-size: 12=
px;">&nbsp; &nbsp; &nbsp; &nbsp; --libdir=3D${GLIBC228_TARGET_DIR}/lib \</s=
pan><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp; &nb=
sp; &nbsp; &nbsp; --libexecdir=3D${GLIBC228_TARGET_DIR}/libexec \</span><br=
 /><span style=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; &nb=
sp; &nbsp; --bindir=3D${GLIBC228_TARGET_DIR}/bin \</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; --s=
bindir=3D${GLIBC228_TARGET_DIR}/sbin \</span><br /><span style=3D"font-fami=
ly: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; --datadir=3D${GL=
IBC228_TARGET_DIR}/share \</span><br /><span style=3D"font-family: courier;=
 font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; --includedir=3D${GLIBC228_TA=
RGET_DIR}/include \</span><br /><span style=3D"font-family: courier; font-s=
ize: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; --sysconfdir=3D${GLIBC228_TARGET_DI=
R}/etc \</span><br /><span style=3D"font-family: courier; font-size: 12px;"=
>&nbsp; &nbsp; &nbsp; &nbsp; --localstatedir=3D${GLIBC228_TARGET_DIR}/var \=
</span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp; =
&nbsp; &nbsp; &nbsp; --sharedstatedir=3D${GLIBC228_TARGET_DIR}/com</span><b=
r /><span style=3D"font-family: courier; font-size: 12px;">}</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">do_instal=
l() {</span><br /><span style=3D"font-family: courier; font-size: 12px;">&n=
bsp;cd ${B}</span><br /><span style=3D"font-family: courier; font-size: 12p=
x;">&nbsp;oe_runmake install DESTDIR=3D${D}</span><br /><span style=3D"font=
-family: courier; font-size: 12px;">}</span></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: courier; font-size: 12px;"># Removing file=
s that are already present because of v2.28</span><br /><span style=3D"font=
-family: courier; font-size: 12px;"># Temp fix!! After effects not known be=
cause of this!!</span><br /><span style=3D"font-family: courier; font-size:=
 12px;">do_packagedata_append() {</span><br /><span style=3D"font-family: c=
ourier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime/ldd</span><br=
 /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;rm ${WORKDI=
R}/pkgdata/runtime/glibc-thread-db</span><br /><span style=3D"font-family: =
courier; font-size: 12px;">&nbsp;rm "${WORKDIR}/pkgdata/runtime-rprovides/(=
=3D2.23)/glibc-thread-db"</span><br /><span style=3D"font-family: courier; =
font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime/libmemusage</span><br=
 /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;rm ${WORKDI=
R}/pkgdata/runtime/libmemusage.packaged</span><br /><span style=3D"font-fam=
ily: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime/libsegf=
ault</span><br /><span style=3D"font-family: courier; font-size: 12px;">&nb=
sp;rm ${WORKDIR}/pkgdata/runtime/catchsegv</span><br /><span style=3D"font-=
family: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime/nscd=
</span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;r=
m ${WORKDIR}/pkgdata/runtime/sln.packaged</span><br /><span style=3D"font-f=
amily: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime/tzcod=
e</span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;=
rm ${WORKDIR}/pkgdata/runtime/libsotruss</span><br /><span style=3D"font-fa=
mily: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime/glibc-=
extra-nss</span><br /><span style=3D"font-family: courier; font-size: 12px;=
">&nbsp;rm ${WORKDIR}/pkgdata/runtime/libsotruss.packaged</span><br /><span=
 style=3D"font-family: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgda=
ta/runtime/glibc-thread-db.packaged</span><br /><span style=3D"font-family:=
 courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime/libcidn</sp=
an><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;rm ${=
WORKDIR}/pkgdata/runtime/libsegfault.packaged</span><br /><span style=3D"fo=
nt-family: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime/s=
ln</span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp=
;rm ${WORKDIR}/pkgdata/shlibs2/glibc-thread-db.list</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/shl=
ibs2/libmemusage.list</span><br /><span style=3D"font-family: courier; font=
-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/shlibs2/libsegfault.list</span><b=
r /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;rm ${WORKD=
IR}/pkgdata/runtime-rprovides/glibc-thread-db/glibc-thread-db</span><br /><=
span style=3D"font-family: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/p=
kgdata/runtime-rprovides/eglibc-extra-nss/glibc-extra-nss</span><br /><span=
 style=3D"font-family: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgda=
ta/runtime-rprovides/eglibc-thread-db/glibc-thread-db</span><br /><span sty=
le=3D"font-family: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/r=
untime-reverse/libmemusage</span><br /><span style=3D"font-family: courier;=
 font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime-reverse/libsegfault<=
/span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;rm=
 ${WORKDIR}/pkgdata/runtime-reverse/sln</span><br /><span style=3D"font-fam=
ily: courier; font-size: 12px;">&nbsp;rm ${WORKDIR}/pkgdata/runtime-reverse=
/libsotruss</span><br /><span style=3D"font-family: courier; font-size: 12p=
x;">}</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">PACKAGES =
=3D "${PN}-dbg catchsegv sln nscd ldd tzcode glibc-thread-db ${PN}-pic libc=
idn libmemusage libnss-db libsegfault ${PN}-pcprofile libsotruss ${PN} ${PN=
}-utils glibc-extra-nss ${PN}-dev ${PN}-staticdev ${PN}-doc"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">#PACKAGES=
 =3D "${PN}-dbg ${PN}-pic ${PN}-pcprofile ${PN} ${PN}-utils ${PN}-dev ${PN}=
-staticdev ${PN}-doc"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">RPROVIDES=
_${PN} =3D "eglibc rtld(GNU_HASH)"</span><br /><span style=3D"font-family: =
courier; font-size: 12px;">RPROVIDES_${PN}-utils =3D "eglibc-utils"</span><=
br /><span style=3D"font-family: courier; font-size: 12px;">RPROVIDES_${PN}=
-mtrace =3D "eglibc-mtrace libc-mtrace"</span><br /><span style=3D"font-fam=
ily: courier; font-size: 12px;">RPROVIDES_${PN}-pic =3D "eglibc-pic"</span>=
<br /><span style=3D"font-family: courier; font-size: 12px;">RPROVIDES_${PN=
}-dev =3D "eglibc-dev libc6-dev virtual-libc-dev"</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">RPROVIDES_${PN}-staticdev =3D "=
eglibc-staticdev"</span><br /><span style=3D"font-family: courier; font-siz=
e: 12px;">RPROVIDES_${PN}-doc =3D "eglibc-doc"</span><br /><span style=3D"f=
ont-family: courier; font-size: 12px;">RPROVIDES_glibc-extra-nss =3D "eglib=
c-extra-nss"</span><br /><span style=3D"font-family: courier; font-size: 12=
px;">RPROVIDES_glibc-thread-db =3D "eglibc-thread-db"</span><br /><span sty=
le=3D"font-family: courier; font-size: 12px;">RPROVIDES_${PN}-pcprofile =3D=
 "eglibc-pcprofile"</span><br /><span style=3D"font-family: courier; font-s=
ize: 12px;">RPROVIDES_${PN}-dbg =3D "eglibc-dbg"</span><br /><span style=3D=
"font-family: courier; font-size: 12px;">libc_baselibs =3D " ${GLIBC228_TAR=
GET_DIR}/lib/libc.so.* \</span><br /><span style=3D"font-family: courier; f=
ont-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libc-*.so \</span><br /><=
span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARG=
ET_DIR}/lib/libm*.so.* \</span><br /><span style=3D"font-family: courier; f=
ont-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libm-*.so \</span><br /><=
span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARG=
ET_DIR}/lib/libmvec-*.so \&nbsp;</span><br /><span style=3D"font-family: co=
urier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/ld*.so.* \</span>=
<br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC2=
28_TARGET_DIR}/lib/ld-*.so \</span><br /><span style=3D"font-family: courie=
r; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libpthread*.so.* \</s=
pan><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GL=
IBC228_TARGET_DIR}/lib/libpthread-*.so &nbsp;\</span><br /><span style=3D"f=
ont-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/lib=
resolv*.so.* &nbsp;\</span><br /><span style=3D"font-family: courier; font-=
size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libresolv-*.so &nbsp;\</span>=
<br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC2=
28_TARGET_DIR}/lib/librt*.so.* &nbsp;\</span><br /><span style=3D"font-fami=
ly: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/librt-*.so =
&nbsp;\</span><br /><span style=3D"font-family: courier; font-size: 12px;">=
&nbsp;${GLIBC228_TARGET_DIR}/lib/libutil*.so.* \&nbsp;</span><br /><span st=
yle=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}=
/lib/libutil-*.so &nbsp;\</span><br /><span style=3D"font-family: courier; =
font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libnsl*.so.* &nbsp;\</sp=
an><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLI=
BC228_TARGET_DIR}/lib/libnsl-*.so &nbsp;\</span><br /><span style=3D"font-f=
amily: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libdl*.s=
o.* &nbsp;\</span><br /><span style=3D"font-family: courier; font-size: 12p=
x;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libdl-*.so &nbsp;\</span><br /><span s=
tyle=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR=
}/lib/libanl*.so.* \&nbsp;</span><br /><span style=3D"font-family: courier;=
 font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libanl-*.so &nbsp;\</sp=
an><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLI=
BC228_TARGET_DIR}/lib/libBrokenLocale*.so.* \&nbsp;</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/li=
b/libBrokenLocale-*.so \</span><br /><span style=3D"font-family: courier; f=
ont-size: 12px;">&nbsp;/usr \</span><br /><span style=3D"font-family: couri=
er; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libnss_files*.so.* \=
</span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;$=
{GLIBC228_TARGET_DIR}/lib/libnss_files-*.so \</span><br /><span style=3D"fo=
nt-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libn=
ss_compat*.so.* \</span><br /><span style=3D"font-family: courier; font-siz=
e: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libnss_compat-*.so \</span><br /=
><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TA=
RGET_DIR}/lib/libnss_dns*.so.* \</span><br /><span style=3D"font-family: co=
urier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/libnss_dns-*.so \=
</span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;$=
{GLIBC228_TARGET_DIR}/etc \</span><br /><span style=3D"font-family: courier=
; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/share \</span><br /><span =
style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DI=
R}/libexec \</span><br /><span style=3D"font-family: courier; font-size: 12=
px;">&nbsp; &nbsp;${GLIBC228_TARGET_DIR}/etc/rpc \</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/sh=
are \</span><br /><span style=3D"font-family: courier; font-size: 12px;">&n=
bsp;${GLIBC228_TARGET_DIR}/share \</span><br /><span style=3D"font-family: =
courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">libc_base=
libs_append_aarch64 =3D "${GLIBC228_TARGET_DIR}/lib/ld-linux-aarch64*.so.1"=
</span><br /><span style=3D"font-family: courier; font-size: 12px;">INSANE_=
SKIP_${PN}_append_aarch64 =3D " ${GLIBC228_TARGET_DIR}/lib"</span></div>
<div><br /><span style=3D"font-family: courier; font-size: 12px;">FILES_${P=
N} =3D " ${libc_baselibs} \</span><br /><span style=3D"font-family: courier=
; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/* \</span><br /><span =
style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DI=
R}/sbin/ldconfig \</span><br /><span style=3D"font-family: courier; font-si=
ze: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/etc/ld.so.conf"</span><br /><span s=
tyle=3D"font-family: courier; font-size: 12px;">FILES_ldd =3D " ${GLIBC228_=
TARGET_DIR}/bin/ldd"</span><br /><span style=3D"font-family: courier; font-=
size: 12px;">FILES_libsegfault =3D " ${GLIBC228_TARGET_DIR}/lib/libSegFault=
*"</span><br /><span style=3D"font-family: courier; font-size: 12px;">FILES=
_libcidn =3D " ${GLIBC228_TARGET_DIR}/lib/libcidn-*.so \</span><br /><span =
style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DI=
R}/lib/libcidn.so.*"</span><br /><span style=3D"font-family: courier; font-=
size: 12px;">FILES_libmemusage =3D " ${GLIBC228_TARGET_DIR}/lib/libmemusage=
.so"</span><br /><span style=3D"font-family: courier; font-size: 12px;">FIL=
ES_libnss-db =3D " ${GLIBC228_TARGET_DIR}/lib/libnss_db.so.* \</span><br />=
<span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TAR=
GET_DIR}/lib/libnss_db-*.so \</span><br /><span style=3D"font-family: couri=
er; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/var/db/Makefile &nbsp; &=
nbsp;\</span><br /><span style=3D"font-family: courier; font-size: 12px;">&=
nbsp;${GLIBC228_TARGET_DIR}/var/db/makedbs.sh"</span><br /><span style=3D"f=
ont-family: courier; font-size: 12px;">RDEPENDS_libnss-db =3D "${PN}-utils"=
</span><br /><span style=3D"font-family: courier; font-size: 12px;">FILES_g=
libc-extra-nss =3D "${GLIBC228_TARGET_DIR}/lib/libnss_*-*.so \</span><br />=
<span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TAR=
GET_DIR}/lib/libnss_*.so.*"</span><br /><span style=3D"font-family: courier=
; font-size: 12px;">FILES_sln =3D "${GLIBC228_TARGET_DIR}/sbin/sln"</span><=
br /><span style=3D"font-family: courier; font-size: 12px;">FILES_${PN}-pic=
 =3D " ${GLIBC228_TARGET_DIR}/lib/*_pic.a \</span><br /><span style=3D"font=
-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/*_pic.=
map \</span><br /><span style=3D"font-family: courier; font-size: 12px;">&n=
bsp;${GLIBC228_TARGET_DIR}/lib/libc_pic/*.o"</span><br /><span style=3D"fon=
t-family: courier; font-size: 12px;">FILES_libsotruss =3D "${GLIBC228_TARGE=
T_DIR}/lib/audit/sotruss-lib.so"</span><br /><span style=3D"font-family: co=
urier; font-size: 12px;">FILES_SOLIBSDEV =3D "${GLIBC228_TARGET_DIR}/lib/li=
b*${SOLIBSDEV}"</span><br /><span style=3D"font-family: courier; font-size:=
 12px;">FILES_${PN}-dev +=3D " ${GLIBC228_TARGET_DIR}/lib/*_nonshared.a \</=
span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${G=
LIBC228_TARGET_DIR}/lib/*_nonshared.a \</span><br /><span style=3D"font-fam=
ily: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/lib/*.o \</spa=
n><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${data=
dir}/aclocal"</span><br /><span style=3D"font-family: courier; font-size: 1=
2px;">FILES_${PN}-staticdev +=3D " ${GLIBC228_TARGET_DIR}/lib/*.a \&nbsp;</=
span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${G=
LIBC228_TARGET_DIR}/lib/*.a"</span><br /><span style=3D"font-family: courie=
r; font-size: 12px;">FILES_nscd =3D " ${GLIBC228_TARGET_DIR}/sbin/nscd* \</=
span><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${G=
LIBC228_TARGET_DIR}/etc/init.d/nscd \</span><br /><span style=3D"font-famil=
y: courier; font-size: 12px;">&nbsp;${systemd_unitdir}/system/nscd* \</span=
><br /><span style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC=
228_TARGET_DIR}/etc/tmpfiles.d/nscd.conf \</span><br /><span style=3D"font-=
family: courier; font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; ${GLIBC228_TARGET_DIR}/etc/nscd.conf \</span><br /><span style=3D"=
font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/etc/de=
fault/volatiles/98_nscd \</span><br /><span style=3D"font-family: courier; =
font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/var/db/nscd"</span><br /><sp=
an style=3D"font-family: courier; font-size: 12px;">FILES_${PN}-mtrace =3D =
"${GLIBC228_TARGET_DIR}/bin/mtrace"</span><br /><span style=3D"font-family:=
 courier; font-size: 12px;">FILES_tzcode =3D "${GLIBC228_TARGET_DIR}/bin/tz=
select \</span><br /><span style=3D"font-family: courier; font-size: 12px;"=
>&nbsp;${GLIBC228_TARGET_DIR}/sbin/zic \</span><br /><span style=3D"font-fa=
mily: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/sbin/zdump"</=
span><br /><span style=3D"font-family: courier; font-size: 12px;">FILES_${P=
N}-utils =3D " ${GLIBC228_TARGET_DIR}/bin/* \</span><br /><span style=3D"fo=
nt-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGET_DIR}/sbin/*"<=
/span><br /><span style=3D"font-family: courier; font-size: 12px;">FILES_ca=
tchsegv =3D " ${GLIBC228_TARGET_DIR}/bin/catchsegv"</span><br /><span style=
=3D"font-family: courier; font-size: 12px;">RDEPENDS_catchsegv =3D " libseg=
fault"</span><br /><span style=3D"font-family: courier; font-size: 12px;">F=
ILES_${PN}-pcprofile =3D "${GLIBC228_TARGET_DIR}/lib/libpcprofile.so"</span=
><br /><span style=3D"font-family: courier; font-size: 12px;">FILES_glibc-t=
hread-db =3D "${GLIBC228_TARGET_DIR}/lib/libthread_db.so.* \</span><br /><s=
pan style=3D"font-family: courier; font-size: 12px;">&nbsp;${GLIBC228_TARGE=
T_DIR}/lib/libthread_db-*.so"</span><br /><span style=3D"font-family: couri=
er; font-size: 12px;">RPROVIDES_${PN}-dev +=3D "libc-dev"</span><br /><span=
 style=3D"font-family: courier; font-size: 12px;">RPROVIDES_${PN}-staticdev=
 +=3D "libc-staticdev"</span></div>
</blockquote>
<div>&nbsp;</div>
<div>In general, I would like to understand how to create recipes such that=
 two versions of the same library/application are installed.&nbsp;</div>
<div>I guess, applications are easier. Just create a recipe with a differen=
t name and install into a different directory.<br />But with libraries, esp=
ecially like the glibc, it is tough as it installs files into a lot of dire=
ctories, especially shared directories.</div>
<div>&nbsp;</div>
<div>The idea at the end is to run the tool with <span style=3D"color: #000=
000; font-family: monospace; font-size: 16px; font-style: normal; font-weig=
ht: 400; letter-spacing: normal; text-align: start; text-transform: none; w=
ord-spacing: 0px; background-color: #ffffff; display: inline;">LD_LIBRARY_P=
ATH=3D/opt/</span><wbr /><span style=3D"color: #000000; font-family: monosp=
ace; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing:=
 normal; text-align: start; text-transform: none; word-spacing: 0px; backgr=
ound-color: #ffffff; display: inline;">glibc-wl/lib:$LD_LIBRARY_</span><wbr=
 /><span style=3D"color: #000000; font-family: monospace; font-size: 16px; =
font-style: normal; font-weight: 400; letter-spacing: normal; text-align: s=
tart; text-transform: none; word-spacing: 0px; background-color: #ffffff; d=
isplay: inline;">PATH<span style=3D"font-family: system-ui;">. </span></spa=
n></div>
<div><span style=3D"color: #000000; font-family: monospace; font-size: 16px=
; font-style: normal; font-weight: 400; letter-spacing: normal; text-align:=
 start; text-transform: none; word-spacing: 0px; background-color: #ffffff;=
 display: inline;"><span style=3D"font-family: system-ui;">And if this will=
 not work, there is no point in installing glibc 2.28 alongside 2.23.</span=
></span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #000000; font-family: monospace; font-size: 16px=
; font-style: normal; font-weight: 400; letter-spacing: normal; text-align:=
 start; text-transform: none; word-spacing: 0px; background-color: #ffffff;=
 display: inline;"><span style=3D"font-family: system-ui;">Please let me kn=
ow if any more info is needed and help me install glibc 2.28 alongside 2.23=
.</span></span></div>
<div>&nbsp;</div>
<div>Thanks</div>
<div>Vamsi.</div>

--rv1YHeQhGIZXOu65VMaM--

--C0rkrA858Frkzr3a0jdV
Content-Type: application/octet-stream; name="log.do_package_write_rpm.114071"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="log.do_package_write_rpm.114071"

groupsio/53638/114545470/13709/0

--C0rkrA858Frkzr3a0jdV--

