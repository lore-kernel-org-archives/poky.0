Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.33276.1610368997285510955
 for <poky@lists.yoctoproject.org>;
 Mon, 11 Jan 2021 04:43:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=FLwtxBiE;
 spf=pass (domain: burtonini.com, ip: 209.85.208.169, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f169.google.com with SMTP id f11so3371969ljm.8
        for <poky@lists.yoctoproject.org>; Mon, 11 Jan 2021 04:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=niFy3wqkpieOuvjHE/f+SSQ0mht9K4pbJ2imUY/8WdI=;
        b=FLwtxBiEEbpQE2+oR2Twi0dAosBgOt85hthWF+u+imhpCJJu7/MrGIjPQ1DxkWXN80
         fawCi5USNnU/mgG6dQQsryKh7W5xZtw3IZ8gZFhkCJkAq6aRWf3SZluJki++GiGjzYFf
         +LjalRPHzIFSZ1tsnonUqjthM++VSglIwqYOnqGvfxA0Dk90znsG6VPxGjx8OZJHntC8
         zCv19/ng1bd+F6otrnq8HZgY0daX7DSb6nUW5M4KWY6Hjz9/QCbbvv1YX0XqFK9xqX9V
         G9jOQnl7DBCkLQKD/Jqtafd7cKjIJJKrJAk3JylKa+R+gVfRnpb48fyUJjtkLBSwKFHq
         /cBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=niFy3wqkpieOuvjHE/f+SSQ0mht9K4pbJ2imUY/8WdI=;
        b=ESjtDJ/kWwIWpLQIAgxbLrRWeauXDqbM36xb2Z3SX7HMgkq+p++FHoM/3xi7xpDLSn
         AnDpWIjtvaJrijcVwtrDJ4gzQ7Pd2I/7In1xhDLA3ABvsmbSLvuIQIoV1JninYPGpx4Y
         cjVCQGKmJgfXfON4JDp5R0ExW7C8M20RG8JYMECkpV0HkSNFUk6FbRLekZwt42zuTf3j
         26XczYJMkLW+41FUjbWbZZyGOj2+GlBhuQIN5SL1X/g8Oti10mqyEGNwoza3aQRJJ2+x
         /JVjnUJ55U+jfTGQjnEzuFDy+WVrt/oGZcvmxCwuoChteaMOZjomeVh++uxyMHC/cJo2
         UAxw==
X-Gm-Message-State: AOAM531UX4aoJbJN7x/NTiaPfTbMR9scFu9dS0N5KaAbvqOYocBNaY7K
	jgjjpgp0NsjWpYSdDaV31tCSX6bgT8UD1eKNjCVAbQ==
X-Google-Smtp-Source: ABdhPJyNZui8I3hin/DrmLq77euqxm5Pe0qouwNL0zynmlmyOCawJOhOxSEBVAZUno6bp9P6Ipw1xLS5B8ItuZVswwM=
X-Received: by 2002:a2e:8844:: with SMTP id z4mr7010446ljj.412.1610368995323;
 Mon, 11 Jan 2021 04:43:15 -0800 (PST)
MIME-Version: 1.0
References: <CAA7auRTsQqBhdOfD_aYNg2Xb6ZfMxHRiWTNxR7SwEQiZ-oVbxA@mail.gmail.com>
In-Reply-To: <CAA7auRTsQqBhdOfD_aYNg2Xb6ZfMxHRiWTNxR7SwEQiZ-oVbxA@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 11 Jan 2021 12:43:04 +0000
Message-ID: <CAAnfSTv87TAn538sATnFDajmLi=SmUoxZvczCTMfZetBB1JFOw@mail.gmail.com>
Subject: Re: [yocto] Python3-native illegal instruction on poky dunfell
To: Daniela-Marinela Bistrean <daniela.marinela.bistrean@gmail.com>
Cc: yocto@lists.yoctoproject.org, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Are you sharing sstate between multiple builders?

Ross

On Mon, 11 Jan 2021 at 08:58, Daniela-Marinela Bistrean
<daniela.marinela.bistrean@gmail.com> wrote:
>
> Hello community,
>
> I am trying to build core-image-minimal using poky only, on the dunfell =
branch. On certain machines the build fails unexpectedly with the following=
 error:
> Build Configuration:
> BB_VERSION           =3D "1.46.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "qemux86-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "3.1.4"
> TUNE_FEATURES        =3D "m64 core2"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp       =3D "dunfell:cd3abf42dae2310ecaa8a97b2c08378a9f6e12=
82"
>
> Initialising tasks: 100% |##############################################=
###########################################################################=
###########################################| Time: 0:00:11
> Sstate summary: Wanted 1025 Found 0 Missed 1025 Current 126 (0% match, 1=
0% complete)
> NOTE: Executing Tasks
> ERROR: python3-setuptools-native-45.2.0-r0 do_compile: 'python3 setup.py=
 build ' execution failed.
> ERROR: python3-setuptools-native-45.2.0-r0 do_compile: Execution of '/ho=
me/builder/src/build_yocto-test/tmp/work/x86_64-linux/python3-setuptools-na=
tive/45.2.0-r0/temp/run.do_compile.141' failed with exit code 1:
> Illegal instruction (core dumped)
> WARNING: exit code 1 from a shell command.
>
> ERROR: Logfile of failure stored in: /home/builder/src/build_yocto-test/=
tmp/work/x86_64-linux/python3-setuptools-native/45.2.0-r0/temp/log.do_compi=
le.141
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | Illegal instruction (core dumped)
> | ERROR: 'python3 setup.py build ' execution failed.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/home/builder/src/build_yocto-test/tmp/work/x86_6=
4-linux/python3-setuptools-native/45.2.0-r0/temp/run.do_compile.141' failed=
 with exit code 1:
> | Illegal instruction (core dumped)
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task (virtual:native:/home/builder/src/poky/meta/recipes-devtools=
/python/python3-setuptools_45.2.0.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 576 tasks of which 572 didn't need to be =
rerun and 1 failed.
>
> The do_compile task executes the following:
> do_compile() {
>     distutils3_do_compile
> }
>
> distutils3_do_compile() {
>         cd /home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/py=
thon3-setuptools-native/45.2.0-r0/setuptools-45.2.0
>         NO_FETCH_BUILD=3D1 \
>         STAGING_INCDIR=3D/home/builder/src/build_sw.sys.icp21/tmp/work/x=
86_64-linux/python3-setuptools-native/45.2.0-r0/recipe-sysroot-native/usr/i=
nclude \
>         STAGING_LIBDIR=3D/home/builder/src/build_sw.sys.icp21/tmp/work/x=
86_64-linux/python3-setuptools-native/45.2.0-r0/recipe-sysroot-native/usr/l=
ib \
>         /home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/pytho=
n3-setuptools-native/45.2.0-r0/recipe-sysroot-native/usr/bin/python3-native=
/python3 /home/builder/src/build_sw.sys.icp21/tmp/work/x86_64-linux/python3=
-setuptools-native/45.2.0-r0/setuptools-45.2.0/setup.py \
>         build --build-base=3D/home/builder/src/build_sw.sys.icp21/tmp/wo=
rk/x86_64-linux/python3-setuptools-native/45.2.0-r0/build  || \
>         bbfatal_log "'python3 setup.py build ' execution failed."
> }
>
> On this particular machine the build fails even when it is tried out fro=
m within a container. The configuration of this machine is:
> Distributor ID: Ubuntu
> Description: Ubuntu 18.04.5 LTS
> Release: 18.04
> Codename: bionic
>
> Linux vm 5.4.0-54-generic #60~18.04.1-Ubuntu SMP Fri Nov 6 17:25:16 UTC =
2020 x86_64 x86_64 x86_64 GNU/Linux
>
> 4 x Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz
>
> The python3-native binary generated by Yocto works and I can run it on t=
he host. I have identified that setup.py file of python3-setuptools-native =
recipe, part of do_compile fails with illegal instruction when trying to im=
port setuptools. On other machines the build has no issues. The machine wit=
h issues is under a VPN and a proxy (company's machine).
>
> Do you have any hint as why this might happen?
>
> Thank you and looking forward to your feedback,
> Daniela-M=C4=83rinela Bistrean
>
>=20
>
