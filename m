Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F48C07E8F
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 07:52:00 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
 by mx.groups.io with SMTP id smtpd.web10.13118.1713772313545476990
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 00:51:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C4F/7PQT;
 spf=pass (domain: gmail.com, ip: 209.85.160.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-234cbd333f5so2829638fac.0
        for <poky@lists.yoctoproject.org>; Mon, 22 Apr 2024 00:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713772313; x=1714377113; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dpzbdvA+M6zqzZ6l1mNoFOS4BB9W2w3qQrY7EJtUTCg=;
        b=C4F/7PQT1reNgyOjqePdyc4AeVKymlygAhdwfOZlL7Y8Lv3Kcin8K5kT8o3aC4Fxkb
         MkidD/V7yECv1fBK0Yt+KnUHgPMycuNdMQelBypJF22H5aFcLOAY7swF1h90/7cXQ/R6
         /5f/xdayuexL5uq1V+IDnWSigiC9gYUEeSMhzNa/G2uMCrooBC79H1FCATJZlDUUMH49
         32M7RGd7rJL7kdcCxiyzR1qIM4hW/xZBpSokBSkdpFp3CzkdboKLBJdFgBW1B7L09hN6
         HCApeNPC/8cN2X05YDRL9DRQTEI9vFgYyJof+O3YpnXyBQHAnZHoOgeJG15cMD5125YW
         oufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713772313; x=1714377113;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dpzbdvA+M6zqzZ6l1mNoFOS4BB9W2w3qQrY7EJtUTCg=;
        b=PtuY+CRNyNXrMYlxxFyVPg6P13+9NBFQCk+OiCNXl6EJolquXMW2tHoTQMDz9jecw4
         PBnB/ExgPccp85oghO17roKc9sXvoqW8MvRsTIS9aM0LKy3hHAiJGpHaRaa+THeaksRN
         /anFkifS028AUTyiYsVl73mbgRS4HqtltYJcDxI7ZmCMZ+sL6N+b8LDX3tacTgT7NWF8
         9ujfz3ycVu4bLEoUtQbM2HlYL+sGl1uJ/xbOpU5rMUu6+EWN+5pDs11bj6DtHjGztIcc
         TKlF3Y9E80bQzMLbjJKVQ9dBgVGQBuSE+gHTuWlDRYg7ss9DEb5079ucM7dYoJTYVR3H
         3vqQ==
X-Gm-Message-State: AOJu0Ywr3ZsnfLCM6y4nMnMXf28y7efC59UFKUcV0I78UaoOIVazXNvS
	5XHbVM4QiJ62wv/zmOq1DveCIZEqsNDnDnx/+TygXWpaG153x43G0LRbnEHe0lAIB0N6RFI2cOx
	wyBqvV/q8NtKiTVajBDl+/w3opoo=
X-Google-Smtp-Source: AGHT+IET/JKcjtItAsmgrLMFXEsvY9N6Wa8lOcmE5pxUyefx7wu2PDJABnGzCtKfLczEc+v2bkoHKrgtB2XpfDNRY3o=
X-Received: by 2002:a05:6870:30a:b0:22f:6ad0:20ee with SMTP id
 m10-20020a056870030a00b0022f6ad020eemr5578946oaf.20.1713772312682; Mon, 22
 Apr 2024 00:51:52 -0700 (PDT)
MIME-Version: 1.0
References: <SL2P216MB127763AD758C2A81F525573499122@SL2P216MB1277.KORP216.PROD.OUTLOOK.COM>
In-Reply-To: <SL2P216MB127763AD758C2A81F525573499122@SL2P216MB1277.KORP216.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Apr 2024 00:51:41 -0700
Message-ID: <CAMKF1sqzzdZyasyPqiM_P2-4yzSOxDkTuLA8iqEOvxCHmoF+QA@mail.gmail.com>
Subject: Re: [poky] Compiling Poky with Clang and Clang Coverage Flags
To: hope.sneddon@outlook.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ec665d0616aab51b"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 22 Apr 2024 07:52:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13328

--000000000000ec665d0616aab51b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can you try something like this

*TARGET_CPPFLAGS:prepend:class-target:toolchain-clang =3D
"-fprofile-instr-generate -fcoverage-mapping "*




On Mon, Apr 22, 2024 at 3:42=E2=80=AFAM Hope Sneddon via lists.yoctoproject=
.org
<hope.sneddon=3Doutlook.com@lists.yoctoproject.org> wrote:

> =EF=BB=BF
>
> Hi Poky Community,
>
>
>
> I am trying to build a Yocto code base using Clang and LLVM as the defaul=
t
> toolchain (i.e. nonclangables still compile with GCC) as per the =E2=80=
=9CUsing
> Clang Compiler with Yocto Project=E2=80=9D presentation instructions
> <https://elinux.org/images/f/ff/Yps2021.11-clang.pdf>. The issue is I
> need to compile with code coverage via the Clang coverage flags which do
> not seem to work with Yocto/ Poky by default. I have simplified my
> application all the way back to a freshly cloned Poky repo with only the
> following changes to reproduce the error, proving it is not a problem
> caused by custom configurations/ use case development.
>
>
>
> That is, to show the issue, in a fresh clone of Poky, the following lines
> are added to *local.conf*:
>
> *TOOLCHAIN =3D "clang"*
>
> *TARGET_CPPFLAGS:prepend =3D "-fprofile-instr-generate -fcoverage-mapping=
 "*
>
> *RUNTIME =3D "llvm"*
>
> *CLANGSDK =3D "1"*
>
>
>
> Simple Clang compilation of Poky works, however I need to compile with
> code coverage which doesn=E2=80=99t seem to currently work by default (i.=
e. add the
> Clang coverage flags in *local.conf* using *TARGET_CPPFLAGS:prepend =3D
> "-fprofile-instr-generate -fcoverage-mapping "*).
>
>
>
> To demonstrate this I have implemented a simple =E2=80=9Chello-world=E2=
=80=9D recipe as *hello-world_1.0.0.bb
> <http://hello-world_1.0.0.bb>* (extract below excludes recipe header
> lines):
>
> *S =3D "${WORKDIR}/${PN}-${PV}"*
>
>
>
> *python do_hello_world(){*
>
> *    print("Hello World\n")*
>
> *}*
>
>
>
> *addtask do_hello_world*
>
>
>
> Compiling this via the command *bitbake hello-world* fails.
>
>
>
> Failure is caused by the *do_compile *step to failing due to *oe_runmake*
> failing:
>
> *ERROR: gcc-cross-x86_64-11.4.0-r0 do_compile: oe_runmake failed. *
>
>
>
> The log data from *oe_runmake* indicates the failure is induced at the
> following *oe_runmake* step (log output):
>
> *checking for suffix of object files... configure: error: in
> `/home/dev/poky/build/tmp/work/x86_64-linux/gcc-cross-x86_64/11.4.0-r0/gc=
c-11.4.0/build.x86_64-linux.x86_64-poky-linux/x86_64-poky-linux/libgcc':*
>
> *| configure: error: cannot compute suffix of object files: cannot compil=
e*
>
>
>
> The failure of gcc_cross does not seem to be representative of the actual
> root of the issue, so debugging this is proving difficult. Any guidance o=
n
> how to get Clang coverage working would be greatly appreciated as my
> application requires the employment of a lot of the llvm-cov toolset (the
> motivation for substituting compiler in the first place).
>
>
>
> Thank you,
>
>
>
> Hope
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13327):
> https://lists.yoctoproject.org/g/poky/message/13327
> Mute This Topic: https://lists.yoctoproject.org/mt/105662464/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ec665d0616aab51b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Can you try something like this</div><div dir=3D"auto"><b=
r></div><div dir=3D"auto"><div><blockquote style=3D"color:rgb(49,49,49);fon=
t-family:&#39;-apple-system&#39;,&#39;helvetica neue&#39;;font-size:16px;fo=
nt-style:normal;font-weight:400;letter-spacing:normal;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:1px;text-decoration:none"><d=
iv dir=3D"ltr"><div><p style=3D"background:rgb(217,217,217)" dir=3D"auto"><=
b><i style=3D"font-size:1rem">TARGET_CPPFLAGS:prepend:class-target:toolchai=
n-clang =3D &quot;-fprofile-instr-generate -fcoverage-mapping &quot;</i></b=
></p></div></div></blockquote></div><br></div><div dir=3D"auto"><br></div><=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Apr 22, 2024 at 3:42=E2=80=AFAM Hope Sneddon via <a href=3D"http://li=
sts.yoctoproject.org">lists.yoctoproject.org</a> &lt;hope.sneddon=3D<a href=
=3D"mailto:outlook.com@lists.yoctoproject.org">outlook.com@lists.yoctoproje=
ct.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



<div dir=3D"auto">
<div dir=3D"ltr">=EF=BB=BF
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi Poky Community,</s=
pan></p>
<p class=3D"MsoNormal"><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am trying to build a Yocto code base using Clang a=
nd LLVM as the default toolchain (i.e. nonclangables still compile with GCC=
) as per the
<a href=3D"https://elinux.org/images/f/ff/Yps2021.11-clang.pdf" target=3D"_=
blank">=E2=80=9CUsing Clang Compiler with Yocto Project=E2=80=9D presentati=
on instructions</a>. The issue is I need to compile with code coverage via =
the Clang coverage flags which do not seem to work with Yocto/ Poky
 by default. I have simplified my application all the way back to a freshly=
 cloned Poky repo with only the following changes to reproduce the error, p=
roving it is not a problem caused by custom configurations/ use case develo=
pment.
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">That is, to show the issue, in a fresh clone of Poky=
, the following lines are added to
<b><i>local.conf</i></b>:<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>TOOLCHAIN =3D &qu=
ot;clang&quot;<u></u><u></u></i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>TARGET_CPPFLAGS:p=
repend =3D &quot;-fprofile-instr-generate -fcoverage-mapping &quot;<u></u><=
u></u></i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>RUNTIME =3D &quot=
;llvm&quot;<u></u><u></u></i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>CLANGSDK =3D &quo=
t;1&quot;</i></b><i><u></u><u></u></i></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Simple Clang compilation of Poky works, however I ne=
ed to compile with code coverage which doesn=E2=80=99t seem to currently wo=
rk by default (i.e. add the Clang coverage flags in
<b>local.conf</b> using <b><i>TARGET_CPPFLAGS:prepend =3D &quot;-fprofile-i=
nstr-generate -fcoverage-mapping &quot;</i></b>).
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">To demonstrate this I have implemented a simple =E2=
=80=9Chello-world=E2=80=9D recipe as
<b><i><a href=3D"http://hello-world_1.0.0.bb" target=3D"_blank">hello-world=
_1.0.0.bb</a></i></b> (extract below excludes recipe header lines):<u></u><=
u></u></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>S =3D &quot;${WOR=
KDIR}/${PN}-${PV}&quot;<u></u><u></u></i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i><u></u>=C2=A0<u><=
/u></i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>python do_hello_w=
orld(){<u></u><u></u></i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>=C2=A0=C2=A0=C2=
=A0 print(&quot;Hello World\n&quot;)<u></u><u></u></i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>}<u></u><u></u></=
i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i><u></u>=C2=A0<u><=
/u></i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>addtask do_hello_=
world<u></u><u></u></i></b></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Compiling this via the command <b><i>bitbake hello-w=
orld</i></b> fails.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Failure is caused by the <b><i>do_compile </i></b>st=
ep to failing due to
<b><i>oe_runmake</i></b> failing:<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>ERROR: gcc-cross-=
x86_64-11.4.0-r0 do_compile: oe_runmake failed.
<u></u><u></u></i></b></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The log data from <b><i>oe_runmake</i></b> indicates=
 the failure is induced at the following
<b><i>oe_runmake</i></b> step (log output): <u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>checking for suff=
ix of object files... configure: error: in `/home/dev/poky/build/tmp/work/x=
86_64-linux/gcc-cross-x86_64/11.4.0-r0/gcc-11.4.0/build.x86_64-linux.x86_64=
-poky-linux/x86_64-poky-linux/libgcc&#39;:<u></u><u></u></i></b></p>
<p class=3D"MsoNormal" style=3D"background:#d9d9d9"><b><i>| configure: erro=
r: cannot compute suffix of object files: cannot compile</i><u></u><u></u><=
/b></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The failure of gcc_cross does not seem to be represe=
ntative of the actual root of the issue, so debugging this is proving diffi=
cult. Any guidance on how to get Clang coverage working would be greatly ap=
preciated as my application requires
 the employment of a lot of the llvm-cov toolset (the motivation for substi=
tuting compiler in the first place).<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU">Thank you,<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-AU" style=3D"font-size:12.0pt=
;font-family:&quot;Helvetica&quot;,sans-serif;color:navy"><u></u>=C2=A0<u><=
/u></span></i></b></p>
<p class=3D"MsoNormal">Hope<u></u><u></u></p>
</div>
</div>
</blockquote>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13327): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13327" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13327</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105662464/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/105662464/1997914</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000ec665d0616aab51b--

