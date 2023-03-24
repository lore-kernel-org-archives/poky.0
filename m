Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web10.10151.1679696026321588830
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 15:13:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GBwEwVXq;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-17e140619fdso3147815fac.11
        for <poky@lists.yoctoproject.org>; Fri, 24 Mar 2023 15:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679696025;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NaB4VHcohNSJeBtPQEQeDSbUfwKzDt3TJ4R09o+tonM=;
        b=GBwEwVXq4iH6LapqCGr75DAcUVsU3C9+c6IzD5QpSPTAtmFU12fbSoSZi2RVflrBK9
         zHyQXINmz+DFwXbRF2wl0Unh/L9p0NeF+pJYVefxNZAk9Z+CFCM7CvJUv1i7SVdnmu/7
         dQeFT+YsnU9u4PkyvfvkWmrNvmnpVMRa+6LmHt97c1K599NZYydnBBMdwUHwTKNUmb/d
         U62Z+xb7Zw+VmjNG8RtNjZLfSpHwNv2EDkOYYmDbmXCGe23eL7eH9xmkLaEE5gBiuTsK
         JrHOH6XXxVZw4tshio4sg4EjTZy5Js0CveMUy6MldEaPGkQrT4BwKzVIBJfTZjQ/Z6mK
         T2qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679696025;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NaB4VHcohNSJeBtPQEQeDSbUfwKzDt3TJ4R09o+tonM=;
        b=V5W8Abql1HjxWIMgZrs/ZPq86NOGUo85uUL2rY398b0D4n3jr0f/PeLkFKzWPZmXop
         3crcCg1/t8jBzSTSDUlG+8Y8rfXYv3llc6buRly85lsuagaLOzwrIVoCK62ULl3E1Ga+
         2C+PGzUBYqvXabCH4lOtvI1LR8CbLI4PZPeYX28mGpSz5WcQPaDAreBozY7r00vZpuNR
         bg5H+XO4/cLDe8GMkpG/p/m9d+3lRbxBz4Gh2F/sbkuXXzniMMuLGEadoB6VM5ooVtVl
         DpeO4V08wKAgLNoXlGRdBzSGkfTz8IMQLp4VUOOwj83KfsMtYxQOZfMcaHPvQO55rSqm
         Yn0Q==
X-Gm-Message-State: AAQBX9eobQ/26pACvHadSD4iyQ4K9NrJMKO4yAXm9EWb7IZRZLAZDG5e
	R2dzyg/PDReF3gBXoXJ3LbqLP1agi9oTJ0Ymlao=
X-Google-Smtp-Source: AKy350ZYrNQFzhwIszWc0fHoMSfUIQ9DufNliMGSNLFOW/xB6QHBYZpAmhZC44RKDAGCQpzKwkkHjf5tnEnBkmFaKHs=
X-Received: by 2002:a05:6870:f916:b0:177:90f5:b995 with SMTP id
 ao22-20020a056870f91600b0017790f5b995mr1230981oac.4.1679696025375; Fri, 24
 Mar 2023 15:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <LZpV.1679640532008145166.lhJQ@lists.yoctoproject.org>
In-Reply-To: <LZpV.1679640532008145166.lhJQ@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 24 Mar 2023 15:13:19 -0700
Message-ID: <CAMKF1sqnoFCmOBJnC1Y2_fsFfs-sjDQ0NTCw_6P3BjcMdEZi=A@mail.gmail.com>
Subject: Re: [poky] Unable to build latest dunfell branch python3 module
To: sarathmadala03@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It says

| Failed to build these modules:
| _ssl

so look for the error messages in your build logs for python3-native.
It seems your build host
might have some customizations. Its good to use one of tested
distributions for better results.

see the list here
https://docs.yoctoproject.org/3.1.24/ref-manual/ref-system-requirements.htm=
l#supported-linux-distributions

On Thu, Mar 23, 2023 at 11:48=E2=80=AFPM <sarathmadala03@gmail.com> wrote:
>
> Initialising tasks: 100% |###############################################=
###################################################| Time: 0:00:02
> Sstate summary: Wanted 459 Found 0 Missed 459 Current 408 (0% match, 47% =
complete)
> NOTE: Executing Tasks
> ERROR: python3-native-3.8.14-r0 do_install: Execution of '/mt/sdb2/kernal=
_sandboxes/build_emmc_debug/tmp/work/x86_64-linux/python3-native/3.8.14-r0/=
temp/run.do_install.11207' failed with exit code 1
> ERROR: Logfile of failure stored in: /mt/sdb2/kernal_sandboxes/build_emmc=
_debug/tmp/work/x86_64-linux/python3-native/3.8.14-r0/temp/log.do_install.1=
1207
> Log data follows:
> | DEBUG: Executing python function autotools_aclocals
> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bi=
t-64', 'x86_64-linux', 'common']
> | DEBUG: Python function autotools_aclocals finished
> | DEBUG: Executing shell function do_install
> | Failed to build these modules:
> | _ssl
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/mt/sdb2/kernal_sandboxes/build_emmc_debug/tmp/wor=
k/x86_64-linux/python3-native/3.8.14-r0/temp/run.do_install.11207' failed w=
ith exit code 1
> ERROR: Task (virtual:native:/mt/sdb2/kernal_sandboxes/sources/poky/meta/r=
ecipes-devtools/python/python3_3.8.14.bb:do_install) failed with exit code =
'1'
> NOTE: Tasks Summary: Attempted 1316 tasks of which 1314 didn't need to be=
 rerun and 1 failed.
> NOTE: Writing build history
> NOTE: Writing build history took: 10 seconds
>
> Summary: 1 task failed:
>   virtual:native:/mt/sdb2/kernal_sandboxes/sources/poky/meta/recipes-devt=
ools/python/python3_3.8.14.bb:do_install
> Summary: There were 5 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> Above is the error I'm getting while trying to build the latest dunfell b=
ranch python3 module
> I'm building for the below machine and distro
> MACHINE ??=3D 'phx-core-pca'
> DISTRO ?=3D 'fslc-framebuffer'
>
>
>=20
>
