Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0325C25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 16:14:00 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web11.19271.1716999231341090351
 for <poky@lists.yoctoproject.org>;
 Wed, 29 May 2024 09:13:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GRuu4Y82;
 spf=pass (domain: gmail.com, ip: 209.85.160.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-24fdc459343so1013238fac.2
        for <poky@lists.yoctoproject.org>; Wed, 29 May 2024 09:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716999230; x=1717604030; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2FtgJycoICCMf2+hiPtgKCDTl1DNn8t8rUK+q79nLYw=;
        b=GRuu4Y82kRUmY98S+zlI26obMv5wK8HwYxkbNLSVPYbLj8DCa2yEQstiuV8/Cnirjb
         oFLhPFfBoL3+4Cf4Y5hdiW04rDyaZ95u5wwcAj3ETMLPMZ1ei5OYNNYPDhStiMfgLCI1
         wk4fAR7oKyN44S2r5uRpYM+nEyXwl33cMqYgu3cNNTb9RXeLOPr8hDG44Qy4wrlhuYLs
         NCxZctemXifVKtZKOFM6wAHbEpY6SnjOYpn6uZVjtZHZ+YtLdt0eB/mPTzRbss2OI1B5
         T1632gIK0CyU4GmAx37KJpvEuACTh+Yv/KkO51z27qLN5NGfJHGDO6yY7N6RFK9WDaEH
         E5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716999230; x=1717604030;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2FtgJycoICCMf2+hiPtgKCDTl1DNn8t8rUK+q79nLYw=;
        b=SMcOYI42Q/Pp8Tj4KGmcs562QxaRGrpsLTPxb158klca1nJBA4y5Sft6PwLgb9j1Bu
         F1aWa6lEDmuyAHFtSK6dNQBVsXymnr82AK2bcsax+oF3/zKzipKBAIBiaLbuhvUOxlQA
         eD0xVBmM/Q5beqjMfckMJ8sszDBQ0YEsUqzjrGDtQX0vKkiSEyriK43R21TLFFb7DSr4
         X1T9ATaqgM0xEJBvDI2p6R15a4nmr78NWCWCJNejD9s6DUpkjIzj1uiaA/Hv4mcvL56c
         GLw6SuwthPk/cSsgZPdI3u1C5TutNOzaHJ4t//Oy7nwsr5wV2Sn8eoz1Rbhr6pinRvkq
         c2WQ==
X-Gm-Message-State: AOJu0YxB6teh6Z31iy/iw0ozCclWrA03JdFxbgNFRq7JMCHu4d0zoPjX
	Zcbr4vZDuVUeoM+GU1brVnuWb/SfxEY2ZJN78H+Ti3MFtdBsx3v8dfqFMXQyQTTk6EtAeVTFnQE
	jCKh/q1y7Q48cEhXkA3EuQqQTDO1oyXNuTNZDcg==
X-Google-Smtp-Source: AGHT+IHh7ekFs7GggRzoZWSMi5jZNUFflXnqWOamORRqJeqRKo/H6Ev9d5zIfoe10bGGB3GiUgbKZ60IRkvi/UVnCso=
X-Received: by 2002:a05:6870:23a4:b0:250:129a:d0ef with SMTP id
 586e51a60fabf-250129ad1b5mr7840482fac.36.1716999230287; Wed, 29 May 2024
 09:13:50 -0700 (PDT)
MIME-Version: 1.0
References: <17D34F5B4A354ADD.28935@lists.yoctoproject.org> <SL2P216MB1277413EA3E7677FB4CBEB8399F22@SL2P216MB1277.KORP216.PROD.OUTLOOK.COM>
In-Reply-To: <SL2P216MB1277413EA3E7677FB4CBEB8399F22@SL2P216MB1277.KORP216.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 29 May 2024 09:13:23 -0700
Message-ID: <CAMKF1sppGW4HwCMdpttk7KjWmxeJ+RQXnK4nSthqpNrzErMpMw@mail.gmail.com>
Subject: Re: [poky][meta-clang][musl][kirkstone] Poky with clang coverage
 using musl
To: hope.sneddon@outlook.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 29 May 2024 16:14:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13361

On Wed, May 29, 2024 at 5:00=E2=80=AFAM Hope Sneddon via
lists.yoctoproject.org
<hope.sneddon=3Doutlook.com@lists.yoctoproject.org> wrote:
>
>
> Hi Poky community,
>
> This is a pretty edge-case poky setup, I am trying to implement poky with=
 clang (including code coverage flags) as the compiler and musl as the stan=
dard C library. With this setup on kirkstone (current release distro -1), I=
 am getting the following consistent error:
>
> | /home/user/dev/poky/build/tmp/work/cortexa57-poky-linux-musl/musl/1.2.3=
+gitAUTOINC+7a43f6fea9-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux-=
musl/aarch64-poky-linux-musl-ld: cannot find /home/user/dev/poky/build/tmp/=
work/cortexa57-poky-linux-musl/musl/1.2.3+gitAUTOINC+7a43f6fea9-r0/recipe-s=
ysroot/usr/lib/clang/14.0.6/lib/linux/libclang_rt.profile-aarch64.a: No suc=
h file or directory
>

profiling is covered by a packageconfig option see
https://github.com/kraj/meta-clang/blob/kirkstone/recipes-devtools/clang/co=
mpiler-rt_git.bb#L50

Most likely thats the issue here, however I will also say that its not
a default tested option set so there might be more
problems you might face once you enable it, clang toolchain is more
and more single tree build these days where
there might be dependencies which are hard to express in a cross build
system like OE/yocto e.g. freshly baked tools
in build areas etc. expected to exist before some of these options can
be enabled,


> | clang-14: error: linker command failed with exit code 1 (use -v to see =
invocation)
>
> | make: *** [Makefile:163: lib/libc.so] Error 1
>
> | ERROR: oe_runmake failed
>
> | WARNING: /home/user/dev/poky/build/tmp/work/cortexa57-poky-linux-musl/m=
usl/1.2.3+gitAUTOINC+7a43f6fea9-r0/temp/run.do_compile.97139:168 exit 1 fro=
m 'exit 1'
>
> | WARNING: Backtrace (BB generated script):
>
> |       #1: bbfatal_log, /home/user/dev/poky/build/tmp/work/cortexa57-pok=
y-linux-musl/musl/1.2.3+gitAUTOINC+7a43f6fea9-r0/temp/run.do_compile.97139,=
 line 168
>
> |       #2: die, /home/user/dev/poky/build/tmp/work/cortexa57-poky-linux-=
musl/musl/1.2.3+gitAUTOINC+7a43f6fea9-r0/temp/run.do_compile.97139, line 15=
2
>
> |       #3: oe_runmake, /home/user/dev/poky/build/tmp/work/cortexa57-poky=
-linux-musl/musl/1.2.3+gitAUTOINC+7a43f6fea9-r0/temp/run.do_compile.97139, =
line 147
>
> |       #4: do_compile, /home/user/dev/poky/build/tmp/work/cortexa57-poky=
-linux-musl/musl/1.2.3+gitAUTOINC+7a43f6fea9-r0/temp/run.do_compile.97139, =
line 142
>
> |       #5: main, /home/user/dev/poky/build/tmp/work/cortexa57-poky-linux=
-musl/musl/1.2.3+gitAUTOINC+7a43f6fea9-r0/temp/run.do_compile.97139, line 1=
81
>
> ERROR: Task (/home/user/dev/poky/build/../meta/recipes-core/musl/musl_git=
.bb:do_compile) failed with exit code '1'
>
> It appears that the clang build is not making it into the target director=
y from the native host=E2=80=A6 I have searched the internet for what confi=
guration element I am missing and have yet to find anything that progresses=
 beyond this oe_runmake error. I have included my configuration above the s=
tandard poky setup below:
>
> /home/user/dev/poky/build/conf/local.conf:
>
> MACHINE =3D "qemuarm64"
>
> SDKMACHINE =3D "x86_64"
>
> TCLIBC ?=3D "musl"
>
>
>
> TOOLCHAIN =3D "clang"
>
> TARGET_CPPFLAGS:prepend:class-target:toolchain-clang =3D "-fprofile-instr=
-generate -fcoverage-mapping -v "
>
> RUNTIME =3D "llvm"
>
> CLANGSDK =3D "1"
>
> /home/user/poky/meta/conf/bblayer.conf:
>
> BBLAYERS +=3D "${TOPDIR}/../meta-clang"
>
> /home/user/dev/poky/meta-clang/recipes-devtools/clang/llvm-project-source=
.inc
>
> CLANG_EXTRA_OE_VENDORS ?=3D "${TARGET_VENDOR} ${SDK_VENDOR} -poky"
>
> /home/user/dev/poky/musl/configure
>
> wrapper=3Dyes
>
> gcc_wrapper=3Dno
>
> clang_wrapper=3Dyes
>
> /home/user/dev/poky/musl/INSTALL
>
> CC=3Dmusl-clang ./configure ...
>
> Performing this setup with glibc largely works except for missing a runti=
me library. But the linking/ compatibility error with musl seems to be more=
 severe than glibc.
>
> Even some guidance on getting more logging information on the error would=
 be helpful as invoking clang with -v doesn=E2=80=99t seem to produce more =
useful information on the source of the linking error either.
>
> Thank you,
>
> Hope
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13360): https://lists.yoctoproject.org/g/poky/message=
/13360
> Mute This Topic: https://lists.yoctoproject.org/mt/106367207/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

