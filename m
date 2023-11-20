Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1279DC2BB3F
	for <webhook@archiver.kernel.org>; Mon, 20 Nov 2023 14:28:00 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by mx.groups.io with SMTP id smtpd.web10.51392.1700490469850198792
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Nov 2023 06:27:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=star@gmx.li header.s=s31663417 header.b=QQgg/rjJ;
 spf=pass (domain: gmx.li, ip: 212.227.17.22, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1700490467; x=1701095267; i=star@gmx.li;
	bh=MPURV4vo/OuKwsys3CF8N4DGbmgMP6TDO1xURLDJ+pw=;
	h=X-UI-Sender-Class:Date:To:From:Subject;
	b=QQgg/rjJ5Z0JtT0EHAqvOnO+z6j14ybx7F5SsFSiry82wnz/6xqW5dpmYSpBt71b
	 xyGGS1uCc6a4ycHDVNfnGWDymPPTHQCrc6rviy7P6GZbI+3Uo4fL5cvoJtpkzMHKO
	 39gAEDAqeAU4F+cbwBzufHo7xX8JCXjvb6VzTV49Cg0qhldDVDBfw+CuxD0oryihr
	 E3CdghAJqJbrI4yh6numfGPxusJ4wTgbceKDUTF5Ebvg8OK+qUY4es70+WTMkicwf
	 ayOSFIHwVSzvI0bZsCIGHeA06SbYvgOjAveoi1hBSCNVQfeLXD91axkln/EiisUju
	 +5nM845KVgGWIpyrKA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([93.199.90.61]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1M2O2Q-1r3QIH39na-003rmg for
 <poky@lists.yoctoproject.org>; Mon, 20 Nov 2023 15:27:47 +0100
Message-ID: <67de211f-f0a6-43c4-a7b7-bc88e02ca475@gmx.li>
Date: Mon, 20 Nov 2023 15:27:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Language: en-US
From: star <star@gmx.li>
Subject: shared library location and linking
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:2HDZuFv0CfDEsePILzN1Bc7A60x9ci0GfkkAbtw4HiIx8OrpPDa
 u+KmibBxQ4krv2EYhRoEsGOLljEwp1eLIfrMNJcY5BnI7r9K2ZHSvtkIKklrApYpS9sbL/a
 uQoXin7K7/rtBIsEvKF7lOsSLhTyl+xxTvJaqMjZP4ptv5m9MxUgCWyQdKx9DZsYNYq+8T0
 7kVOEB5neNcCnYdDXbvfw==
UI-OutboundReport: notjunk:1;M01:P0:1bJmBpohgMo=;yYThLs9jddQWjELpvAey9+Kp7zo
 pG669X58YVYDRzKkkuLNilPQIiH+MdQnfSE9SHel4MOlVbUovNJ2pZIQKjWBf+P1mKcvvcsHf
 nfL2tpZw49Nh6nVT8QxksUrGUL+j8lnMw3i6fDZ7C2V4cC54fYsmBsIQIFo6OssCpgB4i9HJl
 cLe/VLGniRBoKGByb7CHZESwcV4CMaMXniGHW2XeqyDGfpontrLe0lQPIW2bNUUuX9JAHF6Sg
 q4DyWdqxJVtUgcG8kr4MxF35QmoIuxLhf6e0EJonIAfPB9wWl/zZIP7uxrNrVD1qFnD/3w12e
 AoTCo/NYygCHOg1j9b9a2TFeujqR8piHivBlU4/4LL38PZPnjoM/OkQ6S9uxgVajKVu2Dtzow
 jqKEGgQDOOD+LaTip9QauQuXyuKjQ6wtpZjwYeNV0d+pIgTU432o9qU2iJr4i/KR2sHq+rXMZ
 yCDtecjtg86TvX9z5W7B+P7m9lhLMtt0lO8NN6X2cs3upwlLDJu3k413YQDPoEmprdc6bR+KB
 SNTmz6zqyiNJd7spW1LsDI/HP3cpxslQ6ndp7jnyfXL8nqTL/NokNLhlnRnHD3vAq56SI0jss
 z5YQWbLeMcnPx9BFBX/1TaoN53Ec51zb8Ciz5j83DbefMTEPvHlJu7SuspujkPA4d5YWks/xH
 8Cg38lLMIcXCbV2GRDUujDjZCNSnBrkyDzgz6BrcsLLOe6awM+Xb9tXU60ToNyCFZvmuCUxHz
 32alQRCFTbhj6ak1I2o1xPOSdmSDFqrA5ae/tXxwNIXJvBPTwUp8gtQUGaPJtv1GPyrA0tjep
 O7CDJtuJ9QiD5LVRL7br+eF2kH4p3DwDOlLJ8hed+CsTOkqeskDrWrfnQtA9ZQ63HC5hD3uvD
 fEYKAie5owUwgB0f5fqgYYUeXQT5RhN3hdn18VV6R6pepwCmG+Q1guVKuFzLT8EDH1hfS2R9P
 ax2MGQ==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 20 Nov 2023 14:28:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13208

Hello,
I have a problem if a shared lib should be located in some other than
usual folder - in /opt/lib in my example. Althoug not usual, it should
be possible, right?
The lib itself is created well and with that including in recipe (which
tooks me some time to find):
SYSROOT_DIRS +=3D "/opt/lib"
this lib is also populated into sysroot-destdir/opt/lib

But recipe of app, that is depending on that lib, will not link -
although the lib is located in build directory of app in
recipe-sysroot/opt/lib (thanks to the trick above).

I couldn't figure out what is the problem:

| arm-poky-linux-gnueabi-gcc  -mfpu=3Dneon -mfloat-abi=3Dhard
-mcpu=3Dcortex-a9 -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2
-Wformat -Wformat-security -Werror=3Dformat-security
=2D-sysroot=3D/home/user/y/yocto_4014_sp2/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/sps/0.1-r0/recipe-sysroot
sps.c -L/opt/lib -lvision-device -o sps
|
/home/user/y/yocto_4014_sp2/build/tmp/work/cortexa9hf-neon-poky-linux-gnue=
abi/sps/0.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../=
libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/11.4.0/ld:
cannot find -lvision-device: No such file or directory
| collect2: error: ld returned 1 exit status

I don't know where the linker is looking for? Just as a dirty hack I
copied the libs in recipe as below, it works:

do_compile () {
     cp recipe-sysroot/opt/lib/* recipe-sysroot/usr/lib
     oe_runmake -f Makefile-sps
}

I seems the -L is not passed through!? Is it a bug? Or what do I miss?

Best regards and any help is welcome.
Steve

PS: Makefile is as simple:

LIBSINC  =3D -L/opt/lib
LIBS     =3D -lvision-device

all: sps

sps: *.c
         $(CC) sps.c $(LIBSINC) $(LIBS) -o sps

clean:
         rm -f sps

