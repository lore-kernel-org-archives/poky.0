Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web11.4224.1599328238350118964
 for <poky@lists.yoctoproject.org>;
 Sat, 05 Sep 2020 10:50:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h4p80OVI;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id w16so9438016qkj.7
        for <poky@lists.yoctoproject.org>; Sat, 05 Sep 2020 10:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ohqbDQmuw9moyrKwHqEVHHZxrR0+5ujXly7QO62YWds=;
        b=h4p80OVInWROhRnWLJAfe5CvNmqNUQ9WW442F6quAC9dFnN2FoQmGj59GxsYCEzrnd
         2xTiwyoPQQyUV9KYFsU0Z9AMVDnfRu/Yd671RdgbWUSByQURvOmW4+Hi9CL45yZ9lGpt
         C2owermJc0FHXcJVaZQ7rgOIPenWGqZD0bn78cCnkvYz5heAL2iB7z3avKCtKdGoYgdC
         ZRGLvEd9Kfnzl6/vFnlbRzdYmPy4tQotGrgK4pBzD/gE7xHWCL6b7cdL94cTEpNwFDoz
         c/UXDxsD69/YQMFBCo7B129jF6khFDva2sRkN+io8Vl0VePG0nHKyHakJDmdm53YPfn8
         3JEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ohqbDQmuw9moyrKwHqEVHHZxrR0+5ujXly7QO62YWds=;
        b=ZU3y6q48C4H1TVcoQstoDT6PcutLTGImMJSYoh/v5Zy8Q971Sy2AOmQHAKCZeqlCOq
         DR05q/NawxhDS9kUOpGMMxQhuRrkIaOX9qRosg7AoN4XLhI0/5JuJrJ+1ZPlQcVbD2eT
         RjZMkMsb/ai5xhEOpC/I/Mi6gQLUvT/amonJ+TcWOqq8bUiolZ6EDZGudAxOBjxCbLgO
         K4z2YsEF3Np+/lQoJtH7cRWUA2mgDC3C+w61rvZ/1fPPtQfz2eLob5GWptVKF3RbxLbg
         1VcZNU0o2RkyezrNCO2f3+kXYYYOHkJizHuEB7vIjGO1qj9C3ECyQ5aB5yb7xqoO1dOn
         QzVQ==
X-Gm-Message-State: AOAM5311hFQECZFkbhrj6L6DnWGZr5bBoBr9NA97ZUbglxqwBe+p3sYk
	lgvvPYL/MCfy3y3ls6ssoFuXHW04jOhH/1yW1NQ=
X-Google-Smtp-Source: ABdhPJz1qGo2OdDmwkDAyvvaLM2KCyw3fFCDa2mbeEyrRD6Fr3mDjFvJLaHmjJ4wKS9PE2OPJqJPWAvZ2qd6uort0/M=
X-Received: by 2002:a37:c408:: with SMTP id d8mr12592415qki.71.1599328237224;
 Sat, 05 Sep 2020 10:50:37 -0700 (PDT)
MIME-Version: 1.0
References: <G60C.1599327066876287016.ZNpw@lists.yoctoproject.org>
In-Reply-To: <G60C.1599327066876287016.ZNpw@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 5 Sep 2020 10:50:11 -0700
Message-ID: <CAMKF1soMJ0Uu3mMO3P17LpcAaJsRWWrLydq0dQ+6s4VMfdO4Mw@mail.gmail.com>
Subject: Re: [poky] Need Suggestion to upstream the changes with respect to systemd build failure in core-image-minimal. #poky
To: Rahul Chauhan <rahulchauhankitps@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 5, 2020 at 10:31 AM Rahul Chauhan
<rahulchauhankitps@gmail.com> wrote:
>
> Hi Community Members,
>
> I was trying to build core-image-minimal with systemd support.
> Yocto Project Version 3.1 (dunfell).
>
> To enable systemd as system init manager I added below lines in local.co=
nf
> DISTRO_FEATURES_append =3D " systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"
>
> but during build it got failed.
>
> /opt/Projects/eboards-project/project-layres/poky/meta/recipes-devtools/=
gcc/gcc-runtime_9.3.bb:do_populate_sysroot']
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['pseudo-native', 'glibc'=
, 'patch-native', 'quilt-native', 'gcc-cross-arm', 'gcc-runtime', 'linux-li=
bc-headers', 'libgcc', 'flex-native', 'xz-native', 'libtool-native', 'autom=
ake-native', 'binutils-cross-arm', 'zlib-native', 'mpfr-native', 'texinfo-d=
ummy-native', 'autoconf-native', 'libmpc-native', 'gnu-config-native', 'gmp=
-native', 'attr-native', 'm4-native', 'gettext-minimal-native']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_install
> | sed: -e expression #1, char 13: unterminated `s' command
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/opt/Projects/eboards-project/eboards-build/tmp/w=
ork/eb_beaglebone_black-poky-linux-gnueabi/systemd-serialgetty/1.0-r5/temp/=
run.do_install.11228' failed with exit code 1:
> | sed: -e expression #1, char 13: unterminated `s' command
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task (/opt/Projects/eboards-project/project-layres/poky/meta/reci=
pes-core/systemd/systemd-serialgetty.bb:do_install) failed with exit code '=
1'
> NOTE: Tasks Summary: Attempted 1852 tasks of which 1847 didn't need to b=
e rerun and 1 failed.
>
> Summary: 1 task failed:
>   /opt/Projects/eboards-project/project-layres/poky/meta/recipes-core/sy=
stemd/systemd-serialgetty.bb:do_install
> Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.
>
>
> I debug the recipe and found the solution and created a patch which solv=
ed this issue for me.
>
> rahul@rahul-Latitude-3460:/opt/Projects/eboards-project/project-layres/p=
oky$ git diff
> diff --git a/meta/recipes-core/systemd/systemd-serialgetty.bb b/meta/rec=
ipes-core/systemd/systemd-serialgetty.bb
> index 044c6c5b67..059fccc2b6 100644
> --- a/meta/recipes-core/systemd/systemd-serialgetty.bb
> +++ b/meta/recipes-core/systemd/systemd-serialgetty.bb
> @@ -21,7 +21,7 @@ do_install() {
>                 install -d ${D}${systemd_unitdir}/system/
>                 install -d ${D}${sysconfdir}/systemd/system/getty.target=
.wants/
>                 install -m 0644 ${WORKDIR}/serial-getty@.service ${D}${s=
ystemd_unitdir}/system/
> -               sed -i -e s/\@BAUDRATE\@/$default_baudrate/g ${D}${syste=
md_unitdir}/system/serial-getty@.service
> +               sed -i -e 's/\@BAUDRATE\@/$default_baudrate/g' ${D}${sys=
temd_unitdir}/system/serial-getty@.service

this change is fine, please prepare a patch and send it to oe-core ml

>
>                 tmp=3D"${SERIAL_CONSOLES}"
>                 for entry in $tmp ; do
>
> Can anyone please suggest me, to send this patch to upstream or this is =
not a bug this is my local system issue.=20
