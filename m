Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web08.4456.1616654058318332160
 for <poky@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 23:34:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o1aQOLXd;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id q26so783700qkm.6
        for <poky@lists.yoctoproject.org>; Wed, 24 Mar 2021 23:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=cf53fme91xcwJwje5Bk2n2YHCTlhfxvsAjqqRvBp2ZA=;
        b=o1aQOLXdmMT/4+PqthMK441u9qxu2v+Q107vCeQiIX890rgwAcfbEubPLd7VYeMYf0
         dfWLiOfWG0M+uqLwfvX9fZNTj4o5zjtcFdZiA2xRLRhrikUO0H0xFKrH9CVTF2anUQyY
         3HvCu+nFdG79NOf1lZOcTg2cIeXEC2LihQ48NAdbmFL/84s7+AAgPmGKxttF9/sTk2jj
         IZog5amSEfbkMz+dUnJwBaluJO2c+c65g6x4/T5rAl7/YhASSaI3IwLCqCHCyoJQOCZW
         ZYGC5CDu2PknjwW15xD/fiKze6PT9IzTS+l8z1EAUYCLamI+jC/8EHOB0Ak5V5UO4KF0
         CByQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=cf53fme91xcwJwje5Bk2n2YHCTlhfxvsAjqqRvBp2ZA=;
        b=NpAKdDs3AhmFt/ep6HDFIMjmoUSWfabA2OktAcvOAIfZEjBQaW4tUQavPvZJxeU2SP
         HsHIlaIUxGv6/tFwIl3QBt4x8Yy+xYhvyIbD3BOV7hPibZLsuLiHd2V6vaI7EBJBjghj
         z2agWCMM65AxB6InsdWKnvo2LbPYngqvsFhaADjb025oZO4fVjDFE73blEawsrnE0wgI
         aeyDRDF6DjJH7mICcYTD2l8B86pT7uDC9hl3OcIvDgfRYMrIw/kZATuRV3TSWDEeOUG9
         +5RjDRGdWGd3F9zodCcWFG+CULJAdW+0Q5S54vTXHOEHRrin8fh70lR3m1qIsLUmDI2O
         bonA==
X-Gm-Message-State: AOAM5332vxxKqGU46vGPpG/h2dzJcPVJBHNDaqbGTFi+ZXXp7t69ck4T
	eDU9eRHL8MgFA0Q51O5l0QKxe/VxOVa+g8XAOpQ=
X-Google-Smtp-Source: ABdhPJxJsHBsmupHHJ3E4IKzSJVkQprDWqI1wKXAcAWNYZIUjkVeG4vW+p6oXpNEozxQQuunl3qlu5OqA1T+8Gv93DU=
X-Received: by 2002:a05:620a:a12:: with SMTP id i18mr6661078qka.119.1616654057449;
 Wed, 24 Mar 2021 23:34:17 -0700 (PDT)
MIME-Version: 1.0
References: <12874.1616620083179682241@lists.yoctoproject.org> <4418.1616651321229040975@lists.yoctoproject.org>
In-Reply-To: <4418.1616651321229040975@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 24 Mar 2021 23:33:51 -0700
Message-ID: <CAMKF1srqcRg9U4Vtbbi4OdS5=EOSsf=sTCjBtpqmJyB13vRV3g@mail.gmail.com>
Subject: Re: [poky] Weird Compilation issue with a c++ recipe
To: Arun Ravindran <arunlee@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 24, 2021 at 10:48 PM Arun Ravindran <arunlee@gmail.com> wrote:
>
> I have a new issue now. The package i am trying to build has this depend=
ency on a pre compiled .so file which is part of the source tree.
> The dependency is mentioned in the CMakeList.txt as
>
> if(MSVC)
>     set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/=
lib/windows/x64)
> elseif(${CMAKE_SYSTEM_PROCCESSOR} MATCHES "aarch64|AARCH64")
>     set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/=
lib/linux/aarch64)
> else()
>     set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/=
lib/linux/x86_64)
> endif()
>
> But the build is failing with a QA issue.
>
> ERROR: rs-oem-kit-server-1.8.2.0-r0 do_package_qa: QA Issue: package rs-=
oem-kit-server contains bad RPATH /home/aravind2/work/mevolve-yocto/mvdevic=
e/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit=
-server/librscalibrationapi/lib/linux/aarch64 in file /home/aravind2/work/m=
evolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1=
.8.2.0-r0/packages-split/rs-oem-kit-server/usr/bin/rs-calibration-simple
> package rs-oem-kit-server contains bad RPATH /home/aravind2/work/mevolve=
-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0=
-r0/rs-oem-kit-server/librscalibrationapi/lib/linux/aarch64 in file /home/a=
ravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oe=
m-kit-server/1.8.2.0-r0/packages-split/rs-oem-kit-server/usr/bin/rs-calibra=
tion-converter
> package rs-oem-kit-server contains bad RPATH /home/aravind2/work/mevolve=
-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0=
-r0/rs-oem-kit-server/librscalibrationapi/lib/linux/aarch64 in file /home/a=
ravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oe=
m-kit-server/1.8.2.0-r0/packages-split/rs-oem-kit-server/usr/bin/rs-calibra=
tion-info [rpaths]
> ERROR: rs-oem-kit-server-1.8.2.0-r0 do_package_qa: QA Issue: /usr/bin/rs=
-calibration-simple contained in package rs-oem-kit-server requires libDSDy=
namicCalibrationAPI.so()(64bit), but no providers found in RDEPENDS_rs-oem-=
kit-server? [file-rdeps]
> ERROR: rs-oem-kit-server-1.8.2.0-r0 do_package_qa: QA run found fatal er=
rors. Please consider fixing them.
> ERROR: Logfile of failure stored in: /home/aravind2/work/mevolve-yocto/m=
vdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/temp=
/log.do_package_qa.13723
> ERROR: Task (/home/aravind2/work/mevolve-yocto/poky/../meta-mevolveapps/=
recipes-production/rs-oem-kit-server/rs-oem-kit-server_1.8.2.0.bb:do_packag=
e_qa) failed with exit cod
>
> Could you please suggest a fix for this?
>

Firstly package the right version into staging area in do_install

MYARCH_aarch64 =3D "aarch64"
MYARCH_x86-64 =3D "x86_64"

do_insall_append() {
  install -Dm0755
${S}//librscalibrationapi/lib/linux/${MYARCH}/libDSDynamicCalibrationAPI.s=
o
${D}{libdir}/libDSDynamicCalibrationAPI.so
}

secondly search your CMakeFiles and they must be setting -rpath via
linker options, you can disable doing that.

if you don't want to do that then you might have to edit it out in
recipe with patchelf

DEPENDS +=3D "patchelf-native"

do_install_append() {
   patchelf --remove-rpath ${D}${bindir}/rs-calibration-info
   patchelf --remove-rpath ${D}${bindir}/rs-calibration-simple
   patchelf --remove-rpath ${D}${bindir}/rs-calibration-converter
}



> Thanks..
>=20
>
