Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10B5C61D90
	for <webhook@archiver.kernel.org>; Tue, 21 Nov 2023 15:14:00 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by mx.groups.io with SMTP id smtpd.web10.43456.1700579630986998773
 for <poky@lists.yoctoproject.org>;
 Tue, 21 Nov 2023 07:13:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=star@gmx.li header.s=s31663417 header.b=kGDIlj9t;
 spf=pass (domain: gmx.li, ip: 212.227.17.22, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1700579629; x=1701184429; i=star@gmx.li;
	bh=zhfNvsljivluQOOOplLEYBfc36us+mQom1K5l5XgKnU=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=kGDIlj9tZK8T155sCGyGGY19mz3YVGBcflb6KzXvhWvQjvXCLkQAO+3imNJ8DooL
	 fMVYFj/lZP8Jdk9pZYBcWx+zxxmNLHgqM3MlKiNk3AEDd6ahcCzne1Ju9MSTkhKpO
	 uhAWCt/dIGGDsd8xgahrlZ4ifoGUNKthJHHQaP2j012fQgkUU71YPlvGOYt2Is7TW
	 OU8gkFAcwLgdxpYdNb8NM1QXL1K2BhA2DLFwaa2rSD5FtDcY5O4cJ/kS2nLIxshJm
	 DSV+G/DYkJXRoZ1nyoORB2lW3bEmXsVSF7iXmHas4pqz4KmuUsNqyCUr9SfQB4BSz
	 SPsSQ9K9yE+uss5xAA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([93.199.90.61]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mnpnm-1rhJUl06J8-00pNrV for
 <poky@lists.yoctoproject.org>; Tue, 21 Nov 2023 16:13:49 +0100
Message-ID: <55b9a7c9-3ac3-40f2-a3cb-44328a067499@gmx.li>
Date: Tue, 21 Nov 2023 16:13:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] shared library location and linking
To: poky@lists.yoctoproject.org
References: <17995B12D8E7BA2D.25909@lists.yoctoproject.org>
Content-Language: en-US
From: star <star@gmx.li>
In-Reply-To: <17995B12D8E7BA2D.25909@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:cf8EU1Vg1PljGNRvwKfjnTIov/DQnOxqF+pXEQmi7lJswpXJefv
 /hOLEg8+QHDGO0vgCM6l+donWUupgNHfFX7Idc6VTS4/oXNHf/C8BG2QBli9ufsJ3VfBbAO
 olnV7Qn9/SPeGWyBGowq+N5o3NtImUtG6SwElnWJohhp/NwH6iXRG4zjQ3fgAur6JEVDGNy
 IGsFDfx58sSR1gl0HwWMw==
UI-OutboundReport: notjunk:1;M01:P0:+VfZFr8IrG8=;WeuUlnFL+Bu32wmYSZkWG0haC5R
 Evb7SThl/7EVR44/LA4Q3NnliLtH8rxebGIw65QEd/Dj/TSNWztER8K3GHHXmWBreY6Turi1z
 Qao4e7+qS8sg8Dlif2XBAO31mBV+t/VJusOp6wJuXjLpphjx8lWoP+KDiy9nkAUSCMYB046uL
 4oDFbx/t7HXyGhSYbAyqK/29J+f/IrUDzlUtuu4APNaLINTXE4GCW3lGMHhCtsxUWYC24HSj+
 b1mNXj5fULWMrr9aTe3Ct5EB3Z5LY9SNasjoKnbhIEV4MKyYpA/Hh9vApSTysvgH+0gTsuHKv
 QFFRIH580QqPOd86dDorGp02E4dWQekKX2HqgywlgG0xKwEeC7j7+q72xj68zMNjdYFDvH6Gj
 NhGnZ+pW/F7y9a7oV1K7FYqROlGBDkLm0nL2fa/siM7Ozi5dP+5ZhGzXUBHqsgg1JfrzMkjEE
 BVkRqLVnhwZOzDBAFiTPVKxdJkd5nXgrKQtpVrk5qbiXiVpb9S/UexI3sOtZz3AL/zbUcDRVY
 XQkwMLMHDwHRkrEwHCyIaUFl/16x94A1FkObRcIl8yyqsc15wpv3TuovTc1sEe6VXpWvtWL1B
 cKEB7eWJGWy0qJzJ17n6M5xEtFBa5a7e0Jft20qdHzY2TOYfPtU5X4A4nemkfVRfVdoA3OLz6
 zmtXnsGZOCVRzms7J4ITmwkLxWChWtvtN5mBeBsctzmcBuFJNnpIMsVk7W0Qi031UyQocroFO
 mVi47yNCwAVlezxICEb6by7U+o1tKcwSCX6rWTzAdhCD/5sEoDXEQlzMQIhSkxPEfmOg973tU
 PIgOFOZZs5mjz2yhg3OUOXWqHJ+eaTblvAVbe14yUHEG4hFkdkY3nOYeqpKPvaB5J4DFIqbv6
 NrIiK4rrvm9nILyHV5xJ2YokMGp7Si8hhYitBwIQKSD3mow7xcEkHfh5lvfix8zwFu/xfzh0G
 CAAvlA==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 21 Nov 2023 15:14:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13209

I found my issue described here, more or less exactly:

https://docs.yoctoproject.org/ref-manual/variables.html#term-SYSROOT_DIRS_=
IGNORE

For me it turns out to need in recipe of lib:
SYSROOT_DIRS:append =3D " /opt/lib"

and in recipe of app, using that lib:
TARGET_LDFLAGS:append =3D " -L${RECIPE_SYSROOT}/opt/lib"

But that's not helping. Looking at bitbake <recipe_app> -e I can't see
why linker does not find it. As mentioned
${WORKDIR}/recipe-sysroot/opt/lib is populated for the app.
A bug? Usually I am just miss something, but I don't have a clue how to
debug.

Best regards,
Steve


> Hello,
> I have a problem if a shared lib should be located in some other than
> usual folder - in /opt/lib in my example. Althoug not usual, it should
> be possible, right?
> The lib itself is created well and with that including in recipe (which
> tooks me some time to find):
> SYSROOT_DIRS +=3D "/opt/lib"
> this lib is also populated into sysroot-destdir/opt/lib
>
> But recipe of app, that is depending on that lib, will not link -
> although the lib is located in build directory of app in
> recipe-sysroot/opt/lib (thanks to the trick above).
>
> I couldn't figure out what is the problem:
>
> | arm-poky-linux-gnueabi-gcc=C2=A0 -mfpu=3Dneon -mfloat-abi=3Dhard
> -mcpu=3Dcortex-a9 -fstack-protector-strong=C2=A0 -O2 -D_FORTIFY_SOURCE=
=3D2
> -Wformat -Wformat-security -Werror=3Dformat-security
> --sysroot=3D/home/user/y/yocto_4014_sp2/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/sps/0.1-r0/recipe-sysroot
> sps.c -L/opt/lib -lvision-device -o sps
> |
> /home/user/y/yocto_4014_sp2/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/sps/0.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../.=
./libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/11.4.0/ld:
> cannot find -lvision-device: No such file or directory
> | collect2: error: ld returned 1 exit status
>
> I don't know where the linker is looking for? Just as a dirty hack I
> copied the libs in recipe as below, it works:
>
> do_compile () {
>  =C2=A0=C2=A0=C2=A0 cp recipe-sysroot/opt/lib/* recipe-sysroot/usr/lib
>  =C2=A0=C2=A0=C2=A0 oe_runmake -f Makefile-sps
> }
>
> I seems the -L is not passed through!? Is it a bug? Or what do I miss?
>
> Best regards and any help is welcome.
> Steve
>
> PS: Makefile is as simple:
>
> LIBSINC=C2=A0 =3D -L/opt/lib
> LIBS=C2=A0=C2=A0=C2=A0=C2=A0 =3D -lvision-device
>
> all: sps
>
> sps: *.c
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $(CC) sps.c $(LIBSINC) $(LIB=
S) -o sps
>
> clean:
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -f sps
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13208): https://lists.yoctoproject.org/g/poky/messag=
e/13208
> Mute This Topic: https://lists.yoctoproject.org/mt/102707949/3618575
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


