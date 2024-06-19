Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A5CC27C53
	for <webhook@archiver.kernel.org>; Wed, 19 Jun 2024 18:54:25 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web11.29126.1718823261552918315
 for <poky@lists.yoctoproject.org>;
 Wed, 19 Jun 2024 11:54:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AZO5Eb5S;
 spf=pass (domain: gmail.com, ip: 209.85.160.44, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2598001aae7so80310fac.2
        for <poky@lists.yoctoproject.org>; Wed, 19 Jun 2024 11:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718823261; x=1719428061; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RubiUMVOh67GQlewtVrrmVDvf1GyAqGgjcdf706noJ4=;
        b=AZO5Eb5S1ik0GiYvslDExyvg2O4PJCwdTyJ/LgayQzHTzrFojrF1xqwHzQfh5al3/L
         KfqbI/k9iZcvBmM3MuWJoiSLLPu+DUTVe3G0vsr0tq1A/AZGIbPY4ogSWUj1lki12jnb
         9U71R22plcDZMZVXlUPSHaSnFyJcJtOyBXyel1o+RH/RdE8/rHoRxC1DwnNQkBHHF7j3
         O/52J3owlrQSS1t/83QIdH4j54eqsLA9u+UFyS2jE5T+Z4/Y118aJueRb+Mjufd7Ww6g
         nGstbuSXLw4XwZwcySwOOulm1ewWCmj400Ti2/CiD6vYUuJ7lAhHz1xJsoBlgjkf3ngv
         Lhpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718823261; x=1719428061;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RubiUMVOh67GQlewtVrrmVDvf1GyAqGgjcdf706noJ4=;
        b=Pi0H1ffRYCIcQa5NCjzvUpe4tY34EteLOxS1TgHwPf1ZYf7X6Qnw5LGIA2RqF9Gi8H
         p3jWXA3XjkNRNyEPk18fa2xfujY6bu5PhVmQJXy210zpT1HBo8NqjbhpwjLAcyoL/m5z
         DXmFMWZU4810ik+h40MLVj/YpsGqg4q1VPT2hfeJ4rVpuYSUYbm/37eLi8LKezeGGkQP
         S6SIXcqLr5zMKW9LRBdEaQUgUGFtxwk9A9/SLnt+PLTPtKTaOMnqD4qeEuapq4TvSkue
         gy9Blw2OCNIE9Sj5AAXVbpOq8oOIlAZQrRcyV9Ll+cc+J7cCW+KhyeKVZ6JIZo2y/z29
         7AwA==
X-Gm-Message-State: AOJu0YxLLrn8dfjS3XobmTuxB85Q53R/ThYNjzhEOByfCJnfcEwF0jjp
	nPMC+9rCe9ERUsfEX9X2BLbNhn2rNiitpl9hHbyiJZdrVvJzvZcMGvFhXgAoGM4fR1xR4Is16er
	a6cFVdhdiqjCoc0x+MRTp83ZTlic=
X-Google-Smtp-Source: AGHT+IEPzOQB+VkQsA1+w/+k17isTSvd1sVZnOR1RUt6cPDQfEMIg82z0mGuLopO4jZEKZnkrAaNXbTSnLHaYMFlb50=
X-Received: by 2002:a05:6870:6114:b0:24f:f282:2411 with SMTP id
 586e51a60fabf-25c94cf4f4emr3659587fac.47.1718823260655; Wed, 19 Jun 2024
 11:54:20 -0700 (PDT)
MIME-Version: 1.0
References: <DicH.1718789271790031308.xN6O@lists.yoctoproject.org>
In-Reply-To: <DicH.1718789271790031308.xN6O@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Jun 2024 11:53:54 -0700
Message-ID: <CAMKF1sqycQZ=h1i7SRjv5rQTEgV=5SNb-LGRhTzgBvRvwteFsA@mail.gmail.com>
Subject: Re: [poky] Changing the Prefix of a Yocto-Generated Toolchain
To: nicolas.wirth@speedgoat.ch
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 19 Jun 2024 18:54:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13382

On Wed, Jun 19, 2024 at 2:27=E2=80=AFAM Nicolas Wirth via
lists.yoctoproject.org
<nicolas.wirth=3Dspeedgoat.ch@lists.yoctoproject.org> wrote:
>
> Hi everyone,
>
> I would like to change my toolchain prefix. Currently, it is defined as "=
aarch64-poky-linux-"gcc/g++/ar...
> Is it possible to change it to "nicolas-"gcc/g++/ar...?
>

Well, Usually distro's insert their identify via setting TARGET_VENDOR
and let the build system compose the tuples
and those tuples are represented by ${TARGET|HOST|BUILD}_SYS which are
then used to componse equivalent _PREFIX variables.
for cross tools like gcc etc. not only target but host prefix is also
important. So if you override just target it still uses a mismatched
tuple and hence the errors you are seeing. I wonder if you override
TARGET_SYS and HOST_SYS it might make you go further.

> By reading the documentation, I was under the impression that changing th=
e TARGET_PREFIX variable would achieve this. However, I end up with a crypt=
ic error message that ends like this:
>
> | libtool: link: g++   -fPIC -DPIC -shared -nostdlib /usr/lib/gcc/x86_64-=
linux-gnu/11/../../../x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-gnu=
/11/crtbeginS.o  .libs/libcp1plugin.o .libs/callbacks.o .libs/connection.o =
.libs/marshall.o   -L/workdir/yocto/builds/myimage/work/x86_64-linux/gcc-cr=
oss-aarch64/11.2.0-r0/recipe-sysroot-native/usr/lib -L/workdir/yocto/builds=
/myimage/work/x86_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot-nativ=
e/lib -L/usr/lib/gcc/x86_64-linux-gnu/11 -L/usr/lib/gcc/x86_64-linux-gnu/11=
/../../../x86_64-linux-gnu -L/usr/lib/gcc/x86_64-linux-gnu/11/../../../../l=
ib -L/lib/x86_64-linux-gnu -L/lib/../lib -L/usr/lib/x86_64-linux-gnu -L/usr=
/lib/../lib -L/usr/lib/gcc/x86_64-linux-gnu/11/../../.. -lstdc++ -lm -lc -l=
gcc_s /usr/lib/gcc/x86_64-linux-gnu/11/crtendS.o /usr/lib/gcc/x86_64-linux-=
gnu/11/../../../x86_64-linux-gnu/crtn.o  -static-libstdc++ -static-libgcc -=
Wl,--enable-new-dtags -Wl,-rpath-link -Wl,/workdir/yocto/builds/myimage/wor=
k/x86_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot-native/usr/lib -W=
l,-rpath-link -Wl,/workdir/yocto/builds/myimage/work/x86_64-linux/gcc-cross=
-aarch64/11.2.0-r0/recipe-sysroot-native/lib -Wl,-rpath -Wl,/workdir/yocto/=
builds/myimage/work/x86_64-linux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot=
-native/usr/lib -Wl,-rpath -Wl,/workdir/yocto/builds/myimage/work/x86_64-li=
nux/gcc-cross-aarch64/11.2.0-r0/recipe-sysroot-native/lib -Wl,-O1 -Wl,--all=
ow-shlib-undefined -Wl,--dynamic-linker=3D/workdir/yocto/builds/myimage/sys=
roots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2 ../libiberty/pic/libi=
berty.a   -Wl,-soname -Wl,libcp1plugin.so.0 -Wl,-retain-symbols-file -Wl,..=
/../../../../../../work-shared/gcc-11.2.0-r0/gcc-11.2.0/libcc1/libcp1plugin=
.sym -o .libs/libcp1plugin.so.0.0.0
> | libtool: link: (cd ".libs" && rm -f "libcp1plugin.so.0" && ln -s "libcp=
1plugin.so.0.0.0" "libcp1plugin.so.0")
> | libtool: link: (cd ".libs" && rm -f "libcp1plugin.so" && ln -s "libcp1p=
lugin.so.0.0.0" "libcp1plugin.so")
> | libtool: link: ( cd ".libs" && rm -f "libcp1plugin.la" && ln -s "../lib=
cp1plugin.la" "libcp1plugin.la" )
> | make[2]: Leaving directory '/workdir/yocto/builds/myimage/work/x86_64-l=
inux/gcc-cross-aarch64/11.2.0-r0/gcc-11.2.0/build.x86_64-linux.aarch64-poky=
-linux/libcc1'
> | make[1]: Leaving directory '/workdir/yocto/builds/myimage/work/x86_64-l=
inux/gcc-cross-aarch64/11.2.0-r0/gcc-11.2.0/build.x86_64-linux.aarch64-poky=
-linux/libcc1'
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> ERROR: Task (/workdir/yocto/src/poky/meta/recipes-devtools/gcc/gcc-cross_=
11.2.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3649 tasks of which 2744 didn't need to be=
 rerun and 1 failed.
> NOTE: Writing buildhistory
>
> NOTE: Writing buildhistory took: 2 seconds
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13381): https://lists.yoctoproject.org/g/poky/message=
/13381
> Mute This Topic: https://lists.yoctoproject.org/mt/106757265/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

