Return-Path: <srivamsi_malladi@trimble.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E792BC2D0CD
	for <webhook@archiver.kernel.org>; Mon, 19 May 2025 07:08:41 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.45296.1747638516338564176
 for <poky@lists.yoctoproject.org>;
 Mon, 19 May 2025 00:08:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@trimble.com header.s=google header.b=WpcTP4Ku;
 spf=pass (domain: trimble.com, ip: 209.85.219.52, mailfrom: srivamsi_malladi@trimble.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6f0ad744811so28793846d6.1
        for <poky@lists.yoctoproject.org>; Mon, 19 May 2025 00:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trimble.com; s=google; t=1747638515; x=1748243315; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ab2NgVZVNaiBGKqbT/RO/OUNNXvRJcYcjgnxiMAo5fg=;
        b=WpcTP4Kuz3HK0wkFvhjK4RlfsjVrqJT5ptdZIwHgSAKCjqxR0q9E3Aa6i0JzTTx6h7
         CX1LTD0P1heScfmgRlGyLiTkLg1XDfwSF3HuCVQOXXre23wB/oYh5IQ1yjLPrBF5Trqq
         PPWhswZo216ijQfHjbwU4UAaOEpnQcroNls0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747638515; x=1748243315;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ab2NgVZVNaiBGKqbT/RO/OUNNXvRJcYcjgnxiMAo5fg=;
        b=qYg/f5VUp3wwBgQtBmvpx56+Y0QVg4d5DTUCAQCHD+JxcFNS6oawi1y18z2RWd31pg
         bUtWUHqGU5mOiODgY4Anqck4tOtzzGoaYIYKhKNRzgBeH6SCzFfVflq6Ztq5rMruaOha
         Wu1uHhJ/KCRDYs7LXKPQU9+q49Q6c0Q8IkATSjboamMHGACPPS2285ySlt8DqGAknppn
         DBXTzmJalgkiSQDRZiNngb+FF+McuL9NECKGI1d6IARDVanzEthjTXu40mGG/V7V6k/f
         jkwA8JQ3iGaSmyijD9H2guSnhM+f5LJMy0AKCGsDcUGePsCFi0T72x1pcB59O3hANiyD
         L53w==
X-Gm-Message-State: AOJu0Yw6CwDK4AJ5IJHBg6ECw8zUlEYl0VemMf1G2q66YKCtoV6XnL8y
	AjJ7sOL+B5nimZwJSCIYxzSHrqs8blEE7swUzc16ZEWKQuXG+zh5rYuAwRKiAB86Yq8zTYxMfYA
	TPp+PJJ1VX+KJPNU5ajXHJ20RaEqgnxe4QvjVUwGQnw==
X-Gm-Gg: ASbGncsOkZl+iO5upA+GVYfhsWktwTIzBMse5Tg38zbp20qx80/aXE+GF4wVEnjGGHx
	0py/JP/NZhzodcKb3EkxOhkc1PaHo/GX9M1p0gvemG4lwoCEO/SQX9j0YEwPFuH+d1zGdJAi7LA
	AW1I/1UdBbYp7r63avbCWlE3razi3yPnubEXUiaou+eZu3
X-Google-Smtp-Source: AGHT+IHz+qYFmBf4Lkryw4d48Tyt3NYweK0IkQIECPKqze5gXOxMohJZiOdZIDK0ht481oUPXbq1v2emU6DgCa0sWgw=
X-Received: by 2002:a05:6214:1d24:b0:6f8:ae13:9049 with SMTP id
 6a1803df08f44-6f8b08b3260mr205208966d6.18.1747638514776; Mon, 19 May 2025
 00:08:34 -0700 (PDT)
MIME-Version: 1.0
References: <7iAm.1747306937631397189.DLQB@lists.yoctoproject.org> <AS1PR10MB5697D3D7D92BD987D5535AC5FD90A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5697D3D7D92BD987D5535AC5FD90A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
From: Srivamsi Malladi <srivamsi_malladi@trimble.com>
Date: Mon, 19 May 2025 09:08:24 +0200
X-Gm-Features: AX0GCFtqZk2a4pAEv1cmryMt5tP9zrHHWaX2AG1fwj_JOVP-Y9eyzhK7ku-8Clg
Message-ID: <CAGOSiZ=j8VZ-js9GXiwS_E4k=WUNrEXp5zVi572XgH2+711K3g@mail.gmail.com>
Subject: Re: [poky] Error while bitbaking core-image-minimal using Poky 5.0.9
 (Scarthgap) on VMware
To: peter.marko@siemens.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000df161a063577ccb6"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 19 May 2025 07:08:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13623

--000000000000df161a063577ccb6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you so much Peter, Alex and Quentin for quick and informative
responses.

I tried running bitbake world -c cleanall just to be sure to run a complete
fresh build. Then ran bitbake core-image-minimal and it finished without
any errors.
I also tried running bitbake -c cleansstate createrepo-c and then bitbake
createrepo-c. Everything went well, no errors.

Also, I changed my VM config to 8 cores, 16GB RAM and 16GB swap memory. But
still did not get any errors regarding do_compile() on gcc. I used
BB_NUMBER_THREADS=3D8 PARALLEL_MAKE=3D8 in this build and maybe that is why=
 I
did not get any OOM errors this time



On Thu, May 15, 2025 at 3:01=E2=80=AFPM Peter Marko via lists.yoctoproject.=
org
<peter.marko=3Dsiemens.com@lists.yoctoproject.org> wrote:

> RAM consumption under bitbake is a topic which you usually need to
> fine-tune for your setup.
> By default bitbake spawns number of build processes equal to number of
> cores and each of those processes will spawn the same number of compiler
> threads.
> So it's exponential, which is very problematic and oom-kills occur when
> several memory hungry build processes are run at the same time..
>
> The rule is - the more CPUs, the faster the build.
> However there is the RAM caveat - you have to have sufficient RAM for all
> the spawned processes.
> I personally gave to my (Debian) VM 24 cores and 48G RAM with default
> exponential settings and never observer OOM kill.
> My rule of thumb is to give it 2GB RAM for each CPU I assign.
>
> Of course this is not guaranteed to work in all cases.
> In worst case, you need cores*cores*x GB of RAM (e.g. for 16 cores you
> need 256*x GB).
> But the reality is better, since likelihood that all running bitbake
> processes are busy with super-memory-hungry compiler processes is very lo=
w.
> Since only few components are extremely memory hungry compilation
> processes, the average memory factor for each bitbake process is lower wi=
th
> higher cpu count.
> You also have to take into account that with low number of cores and RAM,
> also the system eats something.
>
> As example: you build image with 200 components, 8 of them are
> super-memory-hungry and usually there are some dependencies so they can't
> run all at the same time.
> If you give it two cores, probability that all running processes will be
> memory hungry is basically 100%, so give it 4GB per core.
> It you have 32 cores, you can't get to situation that spawned all
> processes are memory hungry, so even if some several at the same time, th=
e
> sum will not be extreme, 2GB should be fine.
>
> Additionally, you can tweak compression settings (e.g. yocto default for
> xz is set to unbelievable 50% of whole RAM ... imagine that 8 components
> are using it at the same time)
> Also using BB_PRESSURE_MAX_{CPU|IO|MEMORY} configuration will help limit
> concurrent processes thus allow using less RAM.
> Also maybe don't use the default cores*cores formula and tweak
> BB_NUMBER_THREADS/PARALLEL_MAKE variables.
> And there are for sure other RAM relevant configurations/optimizations
> possible.
>
> ---
>
> Regarding the problem with quilt - quilt should be used from recipe
> sysroot (workdir), not from host.
> Per log below bitbake thinks it is installed but it is not found when
> needed.
> I think this may be a consequence of oom-kill.
> When oom-kill happens, I'd recommend deleting whole build directory
> because it is probably corrupted.
> Trying to perform a build in corrupted build directory leads to very
> strange build errors.
>
> ---
>
> Peter
>
> > -----Original Message-----
> > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On
> Behalf Of
> > srivamsi_malladi via lists.yoctoproject.org
> > Sent: Thursday, May 15, 2025 13:02
> > To: poky@lists.yoctoproject.org
> > Subject: [poky] Error while bitbaking core-image-minimal using Poky 5.0=
.9
> > (Scarthgap) on VMware
> >
> > Hello all,
> >
> > TL;DR: I ran into a couple of errors and fixed them with the help of
> Gemini. I would
> > like to know if there are any better solutions to solve these errors.
> >
> > I am absolutely new to the Yocto project and Poky, so I thought I will
> so a 'hello
> > world' kind of thing with Poky. For that, I setup a VMware with Ubuntu
> 22.04 LTS
> > and with 27.7GB RAM and 16 cores hardware config. My host computer is a
> i9-
> > 13th gen with 32GB RAM running Windows. I chose the really high (max
> actually)
> > RAM and cores thinking I would have a really fast VM, but due to the
> problems I
> > ran into, I realized more RAM, mores cores !=3D more performance. So,
> following is
> > the problem I ran into.
> >
> > When I bitbake core-image-minimal in terminal, I got an error saying
> do_compile
> > failed on gcc 13.0.1 and when I looked at the log, it said error
> x86_64-poky-linux-
> > g++: fatal error: Killed signal terminated program cc1plus.
> > After spending some time on Google and some forums, I found that my VM
> might
> > be fighting with my host PC for resources and in this process, the task=
s
> that
> > bitbake wants to run (compiling gcc in this case) are not able to get
> enough PC
> > resources due to which cc1plus got terminated which is needed in the
> process.
> > I tried reducing the RAM to 16GB and cores to 8 and then to 4, the erro=
r
> still
> > remained. After reducing the RAM to 8GB and cores to 2, gcc could final=
ly
> > compile, but I ran into another error.
> >
> >
> > When I run bitbake core-image-minimal, I get an error and following are
> the
> > contents of the corresponding log file
> >
> >       DEBUG: Executing python function extend_recipe_sysroot
> >
> >       NOTE: Direct dependencies are
> > ['/home/ubuntu2204/work/poky/meta/recipes-devtools/quilt/quilt-
> > native_0.67.bb:do_populate_sysroot']
> >
> >       NOTE: Installed into sysroot: []
> >
> >       NOTE: Skipping as already exists in sysroot: ['quilt-native']
> >
> >       DEBUG: Python function extend_recipe_sysroot finished
> >
> >       DEBUG: Executing python function do_patch
> >
> >       DEBUG: Executing python function patch_do_patch
> >
> >       DEBUG: Searching for 0001-Do-not-set-PYTHON_INSTALL_DIR-by-
> > running-python.patch in paths:
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c-1.0.4/poky
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c/poky
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/files/poky
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c-1.0.4/
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c/
> >
> >
>  /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c-1.0.4/x86-64
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c/x86-64
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/files/x86-64
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c-1.0.4/
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c/
> >
> >
>  /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/
> >
> >       DEBUG: Using /home/ubuntu2204/work/poky/meta/recipes-
> > devtools/createrepo-c/createrepo-c/0001-Do-not-set-PYTHON_INSTALL_DIR-b=
y-
> > running-python.patch for 0001-Do-not-set-PYTHON_INSTALL_DIR-by-running-
> > python.patch
> >
> >       DEBUG: Searching for 0001-include-rpm-rpmstring.h.patch in paths:
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c-1.0.4/poky
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c/poky
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/files/poky
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c-1.0.4/
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c/
> >
> >
>  /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c-1.0.4/x86-64
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c/x86-64
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/files/x86-64
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c-1.0.4/
> >
> >           /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-
> > c/createrepo-c/
> >
> >
>  /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/
> >
> >       DEBUG: Using /home/ubuntu2204/work/poky/meta/recipes-
> > devtools/createrepo-c/createrepo-c/0001-include-rpm-rpmstring.h.patch
> for 0001-
> > include-rpm-rpmstring.h.patch
> >
> >       NOTE: Applying patch '0001-Do-not-set-PYTHON_INSTALL_DIR-by-
> > running-python.patch'
> (../meta/recipes-devtools/createrepo-c/createrepo-c/0001-
> > Do-not-set-PYTHON_INSTALL_DIR-by-running-python.patch)
> >
> >       ERROR: Applying patch '0001-Do-not-set-PYTHON_INSTALL_DIR-by-
> > running-python.patch' on target directory
> > '/home/ubuntu2204/work/poky/build/tmp/work/x86_64-linux/createrepo-c-
> > native/1.0.4/git'
> >
> >       CmdError('quilt --quiltrc
> > /home/ubuntu2204/work/poky/build/tmp/work/x86_64-linux/createrepo-c-
> > native/1.0.4/recipe-sysroot-native/etc/quiltrc push', 0, 'stdout:
> >
> >       stderr: /bin/sh: 1: quilt: not found
> >
> >       ')
> >
> >       DEBUG: Python function patch_do_patch finished
> >
> >       DEBUG: Python function do_patch finished
> >
> > I asked Gemini about the error and it suggested installing quilt. But i=
t
> was already
> > installed.
> > Then I gave it the whole log file and then it explained that
> quilt-native is available in
> > sysroot but not in PATH and so asked me to create a new layer with
> > do_patch:prepend()where I should add the bindir (which should be
> /usr/bin in the
> > sysroot) to PATH.
> > This fixed the error.
> >
> > Now my questions are
> > 1. Regarding the first error, I had to decrease the RAM to 8GB and core=
s
> to 2
> > which cured the error but increased the build time. Is there a better
> way to handle
> > this without compromising on the build time?
> > 2. Regarding the second error, did this occur because of some problems
> in my
> > system? Or is this a known error with Poky Scarthgap?
> >
> > Thanks & Regards,
> > Srivamsi Malladi.
> >
> >
> >
> >
> >
> >
> >
> >
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13621):
> https://lists.yoctoproject.org/g/poky/message/13621
> Unfollow This Topic: https://lists.yoctoproject.org/unft/113124703/981000=
1
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> srivamsi_malladi@trimble.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000df161a063577ccb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thank you so much Peter, Alex and <span style=3D=
"color:rgb(51,51,51);font-family:system-ui,&quot;Segoe UI&quot;,Roboto,&quo=
t;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liberation Sans&quot;,Ar=
ial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&qu=
ot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px">Quent=
in for quick and informative responses.</span></div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(51,51,51);font-family:system-ui,&quot;Segoe U=
I&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liber=
ation Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe=
 UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;fo=
nt-size:16px">I tried running bitbake world -c cleanall just to be sure to =
run a complete fresh build. Then ran bitbake core-image-minimal and it fini=
shed without any errors.</span></div>
<div><span style=3D"color:rgb(51,51,51);font-family:system-ui,&quot;Segoe U=
I&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liber=
ation Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe=
 UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;fo=
nt-size:16px">I also tried running bitbake -c cleansstate createrepo-c and =
then bitbake createrepo-c. Everything went well, no errors.<br style=3D"box=
-sizing:border-box"></span></div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(51,51,51);font-family:system-ui,&quot;Segoe U=
I&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liber=
ation Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe=
 UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;fo=
nt-size:16px">Also, I changed my VM config to 8 cores, 16GB RAM and 16GB sw=
ap memory. But still did not get any errors regarding do_compile() on gcc. =
I used BB_NUMBER_THREADS=3D8 PARALLEL_MAKE=3D8 in this build and maybe that=
 is why I did not get any OOM errors this time</span></div></div><div><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><b=
r></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, May 15, 2025 at 3:01=E2=80=AFPM Peter Marko via <=
a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproje=
ct.org</a> &lt;peter.marko=3D<a href=3D"mailto:siemens.com@lists.yoctoproje=
ct.org" target=3D"_blank">siemens.com@lists.yoctoproject.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">RAM consumption=
 under bitbake is a topic which you usually need to fine-tune for your setu=
p.<br>
By default bitbake spawns number of build processes equal to number of core=
s and each of those processes will spawn the same number of compiler thread=
s.<br>
So it&#39;s exponential, which is very problematic and oom-kills occur when=
 several memory hungry build processes are run at the same time..<br>
<br>
The rule is - the more CPUs, the faster the build.<br>
However there is the RAM caveat - you have to have sufficient RAM for all t=
he spawned processes.<br>
I personally gave to my (Debian) VM 24 cores and 48G RAM with default expon=
ential settings and never observer OOM kill.<br>
My rule of thumb is to give it 2GB RAM for each CPU I assign.<br>
<br>
Of course this is not guaranteed to work in all cases.<br>
In worst case, you need cores*cores*x GB of RAM (e.g. for 16 cores you need=
 256*x GB).<br>
But the reality is better, since likelihood that all running bitbake proces=
ses are busy with super-memory-hungry compiler processes is very low.<br>
Since only few components are extremely memory hungry compilation processes=
, the average memory factor for each bitbake process is lower with higher c=
pu count.<br>
You also have to take into account that with low number of cores and RAM, a=
lso the system eats something.<br>
<br>
As example: you build image with 200 components, 8 of them are super-memory=
-hungry and usually there are some dependencies so they can&#39;t run all a=
t the same time.<br>
If you give it two cores, probability that all running processes will be me=
mory hungry is basically 100%, so give it 4GB per core.<br>
It you have 32 cores, you can&#39;t get to situation that spawned all proce=
sses are memory hungry, so even if some several at the same time, the sum w=
ill not be extreme, 2GB should be fine.<br>
<br>
Additionally, you can tweak compression settings (e.g. yocto default for xz=
 is set to unbelievable 50% of whole RAM ... imagine that 8 components are =
using it at the same time)<br>
Also using BB_PRESSURE_MAX_{CPU|IO|MEMORY} configuration will help limit co=
ncurrent processes thus allow using less RAM.<br>
Also maybe don&#39;t use the default cores*cores formula and tweak BB_NUMBE=
R_THREADS/PARALLEL_MAKE variables.<br>
And there are for sure other RAM relevant configurations/optimizations poss=
ible.<br>
<br>
---<br>
<br>
Regarding the problem with quilt - quilt should be used from recipe sysroot=
 (workdir), not from host.<br>
Per log below bitbake thinks it is installed but it is not found when neede=
d.<br>
I think this may be a consequence of oom-kill.<br>
When oom-kill happens, I&#39;d recommend deleting whole build directory bec=
ause it is probably corrupted.<br>
Trying to perform a build in corrupted build directory leads to very strang=
e build errors.<br>
<br>
---<br>
<br>
Peter<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:poky@lists.yoctoproject.org" target=3D"_blank"=
>poky@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:poky@lists.yoctoproj=
ect.org" target=3D"_blank">poky@lists.yoctoproject.org</a>&gt; On Behalf Of=
<br>
&gt; srivamsi_malladi via <a href=3D"http://lists.yoctoproject.org" rel=3D"=
noreferrer" target=3D"_blank">lists.yoctoproject.org</a><br>
&gt; Sent: Thursday, May 15, 2025 13:02<br>
&gt; To: <a href=3D"mailto:poky@lists.yoctoproject.org" target=3D"_blank">p=
oky@lists.yoctoproject.org</a><br>
&gt; Subject: [poky] Error while bitbaking core-image-minimal using Poky 5.=
0.9<br>
&gt; (Scarthgap) on VMware<br>
&gt; <br>
&gt; Hello all,<br>
&gt; <br>
&gt; TL;DR: I ran into a couple of errors and fixed them with the help of G=
emini. I would<br>
&gt; like to know if there are any better solutions to solve these errors.<=
br>
&gt; <br>
&gt; I am absolutely new to the Yocto project and Poky, so I thought I will=
 so a &#39;hello<br>
&gt; world&#39; kind of thing with Poky. For that, I setup a VMware with Ub=
untu 22.04 LTS<br>
&gt; and with 27.7GB RAM and 16 cores hardware config. My host computer is =
a i9-<br>
&gt; 13th gen with 32GB RAM running Windows. I chose the really high (max a=
ctually)<br>
&gt; RAM and cores thinking I would have a really fast VM, but due to the p=
roblems I<br>
&gt; ran into, I realized more RAM, mores cores !=3D more performance. So, =
following is<br>
&gt; the problem I ran into.<br>
&gt; <br>
&gt; When I bitbake core-image-minimal in terminal, I got an error saying d=
o_compile<br>
&gt; failed on gcc 13.0.1 and when I looked at the log, it said error x86_6=
4-poky-linux-<br>
&gt; g++: fatal error: Killed signal terminated program cc1plus.<br>
&gt; After spending some time on Google and some forums, I found that my VM=
 might<br>
&gt; be fighting with my host PC for resources and in this process, the tas=
ks that<br>
&gt; bitbake wants to run (compiling gcc in this case) are not able to get =
enough PC<br>
&gt; resources due to which cc1plus got terminated which is needed in the p=
rocess.<br>
&gt; I tried reducing the RAM to 16GB and cores to 8 and then to 4, the err=
or still<br>
&gt; remained. After reducing the RAM to 8GB and cores to 2, gcc could fina=
lly<br>
&gt; compile, but I ran into another error.<br>
&gt; <br>
&gt; <br>
&gt; When I run bitbake core-image-minimal, I get an error and following ar=
e the<br>
&gt; contents of the corresponding log file<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Executing python function extend_reci=
pe_sysroot<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0NOTE: Direct dependencies are<br>
&gt; [&#39;/home/ubuntu2204/work/poky/meta/recipes-devtools/quilt/quilt-<br=
>
&gt; native_0.67.bb:do_populate_sysroot&#39;]<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0NOTE: Installed into sysroot: []<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0NOTE: Skipping as already exists in sysroot:=
 [&#39;quilt-native&#39;]<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Python function extend_recipe_sysroot=
 finished<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Executing python function do_patch<br=
>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Executing python function patch_do_pa=
tch<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Searching for 0001-Do-not-set-PYTHON_=
INSTALL_DIR-by-<br>
&gt; running-python.patch in paths:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c-1.0.4/poky<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c/poky<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/files/poky<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c-1.0.4/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-c/files/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c-1.0.4/x86-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c/x86-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/files/x86-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c-1.0.4/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-c/files/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Using /home/ubuntu2204/work/poky/meta=
/recipes-<br>
&gt; devtools/createrepo-c/createrepo-c/0001-Do-not-set-PYTHON_INSTALL_DIR-=
by-<br>
&gt; running-python.patch for 0001-Do-not-set-PYTHON_INSTALL_DIR-by-running=
-<br>
&gt; python.patch<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Searching for 0001-include-rpm-rpmstr=
ing.h.patch in paths:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c-1.0.4/poky<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c/poky<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/files/poky<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c-1.0.4/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-c/files/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c-1.0.4/x86-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c/x86-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/files/x86-64<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c-1.0.4/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-<br>
&gt; c/createrepo-c/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/ubuntu2204/work/poky/met=
a/recipes-devtools/createrepo-c/files/<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Using /home/ubuntu2204/work/poky/meta=
/recipes-<br>
&gt; devtools/createrepo-c/createrepo-c/0001-include-rpm-rpmstring.h.patch =
for 0001-<br>
&gt; include-rpm-rpmstring.h.patch<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0NOTE: Applying patch &#39;0001-Do-not-set-PY=
THON_INSTALL_DIR-by-<br>
&gt; running-python.patch&#39; (../meta/recipes-devtools/createrepo-c/creat=
erepo-c/0001-<br>
&gt; Do-not-set-PYTHON_INSTALL_DIR-by-running-python.patch)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ERROR: Applying patch &#39;0001-Do-not-set-P=
YTHON_INSTALL_DIR-by-<br>
&gt; running-python.patch&#39; on target directory<br>
&gt; &#39;/home/ubuntu2204/work/poky/build/tmp/work/x86_64-linux/createrepo=
-c-<br>
&gt; native/1.0.4/git&#39;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0CmdError(&#39;quilt --quiltrc<br>
&gt; /home/ubuntu2204/work/poky/build/tmp/work/x86_64-linux/createrepo-c-<b=
r>
&gt; native/1.0.4/recipe-sysroot-native/etc/quiltrc push&#39;, 0, &#39;stdo=
ut:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0stderr: /bin/sh: 1: quilt: not found<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Python function patch_do_patch finish=
ed<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG: Python function do_patch finished<br>
&gt; <br>
&gt; I asked Gemini about the error and it suggested installing quilt. But =
it was already<br>
&gt; installed.<br>
&gt; Then I gave it the whole log file and then it explained that quilt-nat=
ive is available in<br>
&gt; sysroot but not in PATH and so asked me to create a new layer with<br>
&gt; do_patch:prepend()where I should add the bindir (which should be /usr/=
bin in the<br>
&gt; sysroot) to PATH.<br>
&gt; This fixed the error.<br>
&gt; <br>
&gt; Now my questions are<br>
&gt; 1. Regarding the first error, I had to decrease the RAM to 8GB and cor=
es to 2<br>
&gt; which cured the error but increased the build time. Is there a better =
way to handle<br>
&gt; this without compromising on the build time?<br>
&gt; 2. Regarding the second error, did this occur because of some problems=
 in my<br>
&gt; system? Or is this a known error with Poky Scarthgap?<br>
&gt; <br>
&gt; Thanks &amp; Regards,<br>
&gt; Srivamsi Malladi.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13621): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13621" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13621</a><br>
Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/1131247=
03/9810001" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/unft/113124703/9810001</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:srivamsi_malladi@trimble.com" target=3D"_blank">sriv=
amsi_malladi@trimble.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000df161a063577ccb6--

