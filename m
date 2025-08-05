Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C829C87FCB
	for <webhook@archiver.kernel.org>; Tue,  5 Aug 2025 08:50:24 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web11.17159.1754383816496581022
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Aug 2025 01:50:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NUbIxWMy;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-70744e8ed6eso42546356d6.2
        for <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 01:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754383815; x=1754988615; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TOq0se1KJ7HwfVUEFyrdLc0rlCDbvjQnKbZMG+9Rp7U=;
        b=NUbIxWMyC3xohkQpie6i+r/jevgchU4X7IZIkY+vMSmOGftuUhj+tlbHtzO4wphrFL
         stXYe/0+jT9Yj+EPISQkSUImjZ7Ok/Ta5mSA15PcHeU8/PLC7dba86OJF/GE4RKTmjJP
         PmnL/US8dp4clMRhNp1eLFn0u6QNq2ArQrYv+91BgKjAGnMRpvS9ruIb3wdqAOTTsiBP
         6VOqd8YnxwdGd+M+7DJ/v4b7F5Lwj8bVf+OA0khItoA5RLwiml7gAdAGzGtwalD7xHuz
         VjnAdTPuv7+eXlmcNfaMxVcS0htLQmCdlCkOucEWGM/Nir6jbld2szMiatCpA7CCuBaF
         VhWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754383815; x=1754988615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TOq0se1KJ7HwfVUEFyrdLc0rlCDbvjQnKbZMG+9Rp7U=;
        b=oeHrOB9Q0CqdzlSB9A1W3YWlslfGgll9tv29TGQMzra5lL0ydCB1JNDHm686BI3wo+
         xNVEyQZuSpkQ4sJbr0KM6QxRKH6hxd/eMAyee+AyunXQyVxHCPWzo5FH8x25TQKeZfkY
         f5Ul6OmZnq2RFJYz/3mRKMFEmdg5QPm0YrqVHOvgsdYlhVKU4TezQz7R20gdVa3SIa54
         sdGEb7VbEMWNeJ1MWKoU1j1BN2zSlx1jksSiU9CEUafnH/7Q6Q2r08JacTc7xxmIJ57Z
         JV5A4Cx99q+ucWaxHeMSzqgU0gnHOhTtoNXKqJvh7O4fKfBK56NeRd9kp4XM3JQuIU3p
         R3TQ==
X-Gm-Message-State: AOJu0YzTJFVb+Fc/kg0hdK+y259w58TOrpArhn5p839lxTIfn4Sr8ph4
	XmdwAIzCyThxLleTdBg3BVN1UoXwAgQMqiH5wuPchNhXDa2Z8JSszU1YBsbx6INBBT1ufEkZtIj
	a1Nyoa/1D9G+rn8E2J+HV1HnivlydjS4=
X-Gm-Gg: ASbGncu4yWA08RacjrRb4WJnYjViMFKPC8XeGzQbQDRNTtcaeXdOWQpgk707p4eqzY9
	h1As8Io8QuvIFcN0V10ss1pL45bIKKBGYnI5hRyPF5wVyeGgJ7O/ghJJpueH08fby+wYX16BcNv
	4qOJ59d44rKkBJTz4xva0gVwUwhSwEsPayapHL4GhIm6rmmY7j90Bb6BPI8KTP8KMEMFisue6r3
	48SqfbzOtjA9g8de5FS6r6iX3a+C/7FsqXv9tNizw==
X-Google-Smtp-Source: AGHT+IGn5wcLF60t5eLEUH10pxCXItb4XrP/yrfZSsyl1Ahm5OSOw3fVfdEyVtKAV/YgEW3/43Xe2q7yt2gdh6B0qII=
X-Received: by 2002:a05:6214:5183:b0:707:6934:cc67 with SMTP id
 6a1803df08f44-7093627247emr189607836d6.25.1754383815219; Tue, 05 Aug 2025
 01:50:15 -0700 (PDT)
MIME-Version: 1.0
References: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
In-Reply-To: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 5 Aug 2025 10:50:04 +0200
X-Gm-Features: Ac12FXwfP3xSRegbEyrU7qFgEkGaPVy-AS3_Bgmkw0Y56vB20pc91YpW_SaHfu0
Message-ID: <CANNYZj8A1-fADU_nxS2+8+1MEXEpwe+zkiT0+eeAD2qPaNyhPw@mail.gmail.com>
Subject: Re: [poky] Multiple glibc libraries on a single host #bitbake #poky
To: srivamsi_malladi@trimble.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 08:50:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13710

I have bad news: this is not feasible, and especially for a beginner.
Your options are:

- update yocto to a version that has the needed glibc
- obtain source code for the tool, via management escalation if
needed, and write a recipe that builds it from source.
- ask the tool vendor for a statically linked version
- find alternatives to the tool

Alex

On Tue, 5 Aug 2025 at 10:43, Srivamsi Malladi via
lists.yoctoproject.org
<srivamsi_malladi=3Dtrimble.com@lists.yoctoproject.org> wrote:
>
> Hi all,
> I am a bit new to Poky and the Yocto Project, so please spare me for this=
 one.
>
> I am using Poky 2.1.2 (I cannot update it for now), so I have glibc 2.23 =
by defauly from open-embedded. But I have a tool that was build with glib 2=
.28 and I cannot build this tool from source with a different version of gl=
ibc like the glibc 2.23 I have (as the source is not accessible).
>
> Now, I tried first to specify PREFERRED_VERSION_glibc=3D"2.28" and I got =
an error saying the version of poky I have only supports glibc 2.23
>
> Then I proceeded to look for recipes for glibc 2.28 online and found the =
glibc 2.28 recipe from open-embedded supported by poky 2.6. I took the reci=
pe as it is, but I got errors related to incompatibility of the recipe as i=
t is from a different version of poky (and I did not change a single charac=
ter).
>
> Then I though maybe I should write the recipe on my own and found this gu=
ide on how to build glibc from source when there is a different version of =
glibc already installed. I named my new recipe glibc-wl_2.28. I put these s=
teps from the guide I found into a recipe and added configure --prefix=3D/o=
pt/glibc-2.28 to get the glibc 2.28 installed into a different directory or=
 else it uses the default location where glibc 2.23 is already present.
> Now, the compilation and installation works perfectly, but I have series =
of errors while packaging the files. So I copied the packaging related line=
s from the glibc 2.28 recipe from open-embedded and tried to change the dir=
ectories to /opt/glibc-2.28, but I get errors saying glibc-wl is trying to =
install files into a shared area when those files already exist.
>
> ERROR: glibc-wl-2.23-r0 do_packagedata: The recipe glibc-wl is trying to =
install files into a shared area when those files already exist. Those file=
s and their manifest location are:
>    /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pk=
gdata/runtime/ldd
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/glibc-thread-db
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/libmemusage
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/libmemusage.packaged
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/catchsegv
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/libsegfault
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/nscd
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/sln.packaged
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/sln
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/tzcode
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/libsotruss
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/glibc-extra-nss
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/libsotruss.packaged
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/glibc-thread-db.packaged
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/libcidn
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime/libsegfault.packaged
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/shlibs2/glibc-thread-db.list
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/shlibs2/libmemusage.list
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/shlibs2/libsegfault.list
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime-rprovides/glibc-thread-db/glibc-thread-db
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime-rprovides/(=3D2.23)/glibc-thread-db
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime-rprovides/eglibc-extra-nss/glibc-extra-nss
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime-rprovides/eglibc-thread-db/glibc-thread-db
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime-reverse/libmemusage
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime-reverse/libsegfault
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime-reverse/sln
>  Matched in manifest-htm-tj-glibc.packagedata
>  /home/ubuntu1404/work/hurricane-yocto/build_htm/tmp/sysroots/htm-tj/pkgd=
ata/runtime-reverse/libsotruss
>  Matched in manifest-htm-tj-glibc.packagedata
>
>
> Then, I deleted these files, as they will not be installed if they are no=
t present. Anyway, a copy of these files (though older version) are already=
 installed and are available. I am not sure if deleting these files is an a=
ctual fix. Please let me know the effects of this action.
> But now there are some RPROVIDES_glibc-wl-some_package_name that are crea=
ting errors. Following is the error and attached is the do_package_write_rp=
m log file.
>
> ERROR: glibc-wl-2.23-r0 do_package_qa: Recipe glibc-wl is trying to creat=
e package catchsegv which was already written by recipe glibc. This will ca=
use corruption, please resolve this and only provide the package from one r=
ecipe or the other or only build one of the recipes.
>
>
> This is my recipe
>
> SUMMARY     =3D "GLIBC 2.28 for Infineon wl tool"
> DESCRIPTION =3D "GLIBC 2.23 is included by default, but the Infineon wl t=
ool needs 2.28"
> AUTHOR      =3D "Srivamsi Malladi"
> LICENSE     =3D "CLOSED"
>
> #Temp workaraound!!
> #Because bitbake is complaining about some version incompatibility of com=
mon files in 2.23 and 2.28
> PV =3D "2.23"
>
> inherit autotools gettext
>
> DEPENDS +=3D "gperf-native bison-native make-native"
> DEPENDS +=3D "virtual/kernel"
>
> SRC_URI   =3D "https://mirror.dogado.de/gnu/glibc/glibc-2.28.tar.gz"
> SRC_URI[md5sum] =3D "d5fea592406659df50d00666ff9d0c53"
> SRC_URI[sha256sum] =3D "f318d6e3f1f4ed0b74d2832ac4f491d0fb928e451c9eda594=
cbf1c3bee7af47c"
>
> # ${PV} is pulled from the recipe filename, e.g. helloworld_2.7.bb -> ${P=
V} expands to "2.7".
> # We use immediate evaluation to define a new var PVBASE holding the orig=
inal value of ${PV}.
> PVBASE :=3D "${PV}"
>
> # We need to tell bitbake about our current directory structure or we won=
't be able to find patches after we mess with ${PV}
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PVBASE}:"
>
> # Then redefine PV to tack the svn rev onto the base version. This is eva=
luated at fetch time.
> # Then the package will get rebuilt any time the relevant part of the sou=
rce tree changes.
> #PV =3D "${PVBASE}.${SRCPV}"
>
> S =3D "${WORKDIR}/glibc-2.28/"
> #PKGDATA_DIR =3D "${WORKDIR}/pkgdata/glibc-wl"
> GLIBC228_TARGET_DIR =3D "/opt/glibc-2.28"
>
> EXTRA_OECONF =3D "--host=3D${TARGET_SYS} \
>                 --enable-kernel=3D${GLIBC_KRNL_VERSION} \
>                 --with-headers=3D${STAGING_INCDIR} \
>                 --enable-obsolete-rpc \
>                 --enable-obsolete-nsl \
>                 --disable-profile \
>                 --disable-nls \
>                 --disable-static-nss \
>                 --disable-built-in-nss-modules \
>                 --with-binutils=3D${STAGING_BINDIR} \
>                 --with-linker=3D${TARGET_PREFIX}ld \
>                 --with-arch=3D${TUNE_ARCH}"
>
> do_configure() {
>     # Glibc typically requires an out-of-tree build directory.
>     # ${B} is the standard variable for the build directory.
>     mkdir -p ${B}
>     cd ${B}
>
>     # Run the configure script from the source directory (${S}),
>     # passing the defined configuration options.
>     # The --prefix, --libdir etc., are usually handled by the autotools c=
lass defaults
>     # but explicitly adding them here ensures they are passed.
>     ${S}/configure \
>         ${EXTRA_OECONF} \
>         --prefix=3D${GLIBC228_TARGET_DIR} \
>         --libdir=3D${GLIBC228_TARGET_DIR}/lib \
>         --libexecdir=3D${GLIBC228_TARGET_DIR}/libexec \
>         --bindir=3D${GLIBC228_TARGET_DIR}/bin \
>         --sbindir=3D${GLIBC228_TARGET_DIR}/sbin \
>         --datadir=3D${GLIBC228_TARGET_DIR}/share \
>         --includedir=3D${GLIBC228_TARGET_DIR}/include \
>         --sysconfdir=3D${GLIBC228_TARGET_DIR}/etc \
>         --localstatedir=3D${GLIBC228_TARGET_DIR}/var \
>         --sharedstatedir=3D${GLIBC228_TARGET_DIR}/com
> }
>
> do_install() {
>  cd ${B}
>  oe_runmake install DESTDIR=3D${D}
> }
>
> # Removing files that are already present because of v2.28
> # Temp fix!! After effects not known because of this!!
> do_packagedata_append() {
>  rm ${WORKDIR}/pkgdata/runtime/ldd
>  rm ${WORKDIR}/pkgdata/runtime/glibc-thread-db
>  rm "${WORKDIR}/pkgdata/runtime-rprovides/(=3D2.23)/glibc-thread-db"
>  rm ${WORKDIR}/pkgdata/runtime/libmemusage
>  rm ${WORKDIR}/pkgdata/runtime/libmemusage.packaged
>  rm ${WORKDIR}/pkgdata/runtime/libsegfault
>  rm ${WORKDIR}/pkgdata/runtime/catchsegv
>  rm ${WORKDIR}/pkgdata/runtime/nscd
>  rm ${WORKDIR}/pkgdata/runtime/sln.packaged
>  rm ${WORKDIR}/pkgdata/runtime/tzcode
>  rm ${WORKDIR}/pkgdata/runtime/libsotruss
>  rm ${WORKDIR}/pkgdata/runtime/glibc-extra-nss
>  rm ${WORKDIR}/pkgdata/runtime/libsotruss.packaged
>  rm ${WORKDIR}/pkgdata/runtime/glibc-thread-db.packaged
>  rm ${WORKDIR}/pkgdata/runtime/libcidn
>  rm ${WORKDIR}/pkgdata/runtime/libsegfault.packaged
>  rm ${WORKDIR}/pkgdata/runtime/sln
>  rm ${WORKDIR}/pkgdata/shlibs2/glibc-thread-db.list
>  rm ${WORKDIR}/pkgdata/shlibs2/libmemusage.list
>  rm ${WORKDIR}/pkgdata/shlibs2/libsegfault.list
>  rm ${WORKDIR}/pkgdata/runtime-rprovides/glibc-thread-db/glibc-thread-db
>  rm ${WORKDIR}/pkgdata/runtime-rprovides/eglibc-extra-nss/glibc-extra-nss
>  rm ${WORKDIR}/pkgdata/runtime-rprovides/eglibc-thread-db/glibc-thread-db
>  rm ${WORKDIR}/pkgdata/runtime-reverse/libmemusage
>  rm ${WORKDIR}/pkgdata/runtime-reverse/libsegfault
>  rm ${WORKDIR}/pkgdata/runtime-reverse/sln
>  rm ${WORKDIR}/pkgdata/runtime-reverse/libsotruss
> }
>
> PACKAGES =3D "${PN}-dbg catchsegv sln nscd ldd tzcode glibc-thread-db ${P=
N}-pic libcidn libmemusage libnss-db libsegfault ${PN}-pcprofile libsotruss=
 ${PN} ${PN}-utils glibc-extra-nss ${PN}-dev ${PN}-staticdev ${PN}-doc"
>
> #PACKAGES =3D "${PN}-dbg ${PN}-pic ${PN}-pcprofile ${PN} ${PN}-utils ${PN=
}-dev ${PN}-staticdev ${PN}-doc"
>
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
>  ${GLIBC228_TARGET_DIR}/lib/libc-*.so \
>  ${GLIBC228_TARGET_DIR}/lib/libm*.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libm-*.so \
>  ${GLIBC228_TARGET_DIR}/lib/libmvec-*.so \
>  ${GLIBC228_TARGET_DIR}/lib/ld*.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/ld-*.so \
>  ${GLIBC228_TARGET_DIR}/lib/libpthread*.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libpthread-*.so  \
>  ${GLIBC228_TARGET_DIR}/lib/libresolv*.so.*  \
>  ${GLIBC228_TARGET_DIR}/lib/libresolv-*.so  \
>  ${GLIBC228_TARGET_DIR}/lib/librt*.so.*  \
>  ${GLIBC228_TARGET_DIR}/lib/librt-*.so  \
>  ${GLIBC228_TARGET_DIR}/lib/libutil*.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libutil-*.so  \
>  ${GLIBC228_TARGET_DIR}/lib/libnsl*.so.*  \
>  ${GLIBC228_TARGET_DIR}/lib/libnsl-*.so  \
>  ${GLIBC228_TARGET_DIR}/lib/libdl*.so.*  \
>  ${GLIBC228_TARGET_DIR}/lib/libdl-*.so  \
>  ${GLIBC228_TARGET_DIR}/lib/libanl*.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libanl-*.so  \
>  ${GLIBC228_TARGET_DIR}/lib/libBrokenLocale*.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libBrokenLocale-*.so \
>  /usr \
>  ${GLIBC228_TARGET_DIR}/lib/libnss_files*.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libnss_files-*.so \
>  ${GLIBC228_TARGET_DIR}/lib/libnss_compat*.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libnss_compat-*.so \
>  ${GLIBC228_TARGET_DIR}/lib/libnss_dns*.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libnss_dns-*.so \
>  ${GLIBC228_TARGET_DIR}/etc \
>  ${GLIBC228_TARGET_DIR}/share \
>  ${GLIBC228_TARGET_DIR}/libexec \
>    ${GLIBC228_TARGET_DIR}/etc/rpc \
>  ${GLIBC228_TARGET_DIR}/share \
>  ${GLIBC228_TARGET_DIR}/share \
>  ${GLIBC228_TARGET_DIR}/"
>
> libc_baselibs_append_aarch64 =3D "${GLIBC228_TARGET_DIR}/lib/ld-linux-aar=
ch64*.so.1"
> INSANE_SKIP_${PN}_append_aarch64 =3D " ${GLIBC228_TARGET_DIR}/lib"
>
> FILES_${PN} =3D " ${libc_baselibs} \
>  ${GLIBC228_TARGET_DIR}/lib/* \
>  ${GLIBC228_TARGET_DIR}/sbin/ldconfig \
>  ${GLIBC228_TARGET_DIR}/etc/ld.so.conf"
> FILES_ldd =3D " ${GLIBC228_TARGET_DIR}/bin/ldd"
> FILES_libsegfault =3D " ${GLIBC228_TARGET_DIR}/lib/libSegFault*"
> FILES_libcidn =3D " ${GLIBC228_TARGET_DIR}/lib/libcidn-*.so \
>  ${GLIBC228_TARGET_DIR}/lib/libcidn.so.*"
> FILES_libmemusage =3D " ${GLIBC228_TARGET_DIR}/lib/libmemusage.so"
> FILES_libnss-db =3D " ${GLIBC228_TARGET_DIR}/lib/libnss_db.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libnss_db-*.so \
>  ${GLIBC228_TARGET_DIR}/var/db/Makefile    \
>  ${GLIBC228_TARGET_DIR}/var/db/makedbs.sh"
> RDEPENDS_libnss-db =3D "${PN}-utils"
> FILES_glibc-extra-nss =3D "${GLIBC228_TARGET_DIR}/lib/libnss_*-*.so \
>  ${GLIBC228_TARGET_DIR}/lib/libnss_*.so.*"
> FILES_sln =3D "${GLIBC228_TARGET_DIR}/sbin/sln"
> FILES_${PN}-pic =3D " ${GLIBC228_TARGET_DIR}/lib/*_pic.a \
>  ${GLIBC228_TARGET_DIR}/lib/*_pic.map \
>  ${GLIBC228_TARGET_DIR}/lib/libc_pic/*.o"
> FILES_libsotruss =3D "${GLIBC228_TARGET_DIR}/lib/audit/sotruss-lib.so"
> FILES_SOLIBSDEV =3D "${GLIBC228_TARGET_DIR}/lib/lib*${SOLIBSDEV}"
> FILES_${PN}-dev +=3D " ${GLIBC228_TARGET_DIR}/lib/*_nonshared.a \
>  ${GLIBC228_TARGET_DIR}/lib/*_nonshared.a \
>  ${GLIBC228_TARGET_DIR}/lib/*.o \
>  ${datadir}/aclocal"
> FILES_${PN}-staticdev +=3D " ${GLIBC228_TARGET_DIR}/lib/*.a \
>  ${GLIBC228_TARGET_DIR}/lib/*.a"
> FILES_nscd =3D " ${GLIBC228_TARGET_DIR}/sbin/nscd* \
>  ${GLIBC228_TARGET_DIR}/etc/init.d/nscd \
>  ${systemd_unitdir}/system/nscd* \
>  ${GLIBC228_TARGET_DIR}/etc/tmpfiles.d/nscd.conf \
>               ${GLIBC228_TARGET_DIR}/etc/nscd.conf \
>  ${GLIBC228_TARGET_DIR}/etc/default/volatiles/98_nscd \
>  ${GLIBC228_TARGET_DIR}/var/db/nscd"
> FILES_${PN}-mtrace =3D "${GLIBC228_TARGET_DIR}/bin/mtrace"
> FILES_tzcode =3D "${GLIBC228_TARGET_DIR}/bin/tzselect \
>  ${GLIBC228_TARGET_DIR}/sbin/zic \
>  ${GLIBC228_TARGET_DIR}/sbin/zdump"
> FILES_${PN}-utils =3D " ${GLIBC228_TARGET_DIR}/bin/* \
>  ${GLIBC228_TARGET_DIR}/sbin/*"
> FILES_catchsegv =3D " ${GLIBC228_TARGET_DIR}/bin/catchsegv"
> RDEPENDS_catchsegv =3D " libsegfault"
> FILES_${PN}-pcprofile =3D "${GLIBC228_TARGET_DIR}/lib/libpcprofile.so"
> FILES_glibc-thread-db =3D "${GLIBC228_TARGET_DIR}/lib/libthread_db.so.* \
>  ${GLIBC228_TARGET_DIR}/lib/libthread_db-*.so"
> RPROVIDES_${PN}-dev +=3D "libc-dev"
> RPROVIDES_${PN}-staticdev +=3D "libc-staticdev"
>
>
> In general, I would like to understand how to create recipes such that tw=
o versions of the same library/application are installed.
> I guess, applications are easier. Just create a recipe with a different n=
ame and install into a different directory.
> But with libraries, especially like the glibc, it is tough as it installs=
 files into a lot of directories, especially shared directories.
>
> The idea at the end is to run the tool with LD_LIBRARY_PATH=3D/opt/glibc-=
wl/lib:$LD_LIBRARY_PATH.
> And if this will not work, there is no point in installing glibc 2.28 alo=
ngside 2.23.
>
> Please let me know if any more info is needed and help me install glibc 2=
.28 alongside 2.23.
>
> Thanks
> Vamsi.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13709): https://lists.yoctoproject.org/g/poky/message=
/13709
> Mute This Topic: https://lists.yoctoproject.org/mt/114545470/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/poky/mutehashtag/bitbake
> Mute #poky:https://lists.yoctoproject.org/g/poky/mutehashtag/poky
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

