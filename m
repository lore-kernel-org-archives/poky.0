Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB93BC25B5C
	for <webhook@archiver.kernel.org>; Fri,  3 May 2024 12:26:28 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web10.11161.1714739184611567224
 for <poky@lists.yoctoproject.org>;
 Fri, 03 May 2024 05:26:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=Zn4Hkj6s;
 spf=pass (domain: gmx.li, ip: 212.227.15.18, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1714739183; x=1715343983; i=star@gmx.li;
	bh=kHkrRw3WirlH6I8mSHNnjTlE3uTTduLtB5/z5Oz7N8s=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=Zn4Hkj6sgsfOnFfBIUOtSmeyzXIe1QWAN+AqRv/l52bDo9Sh75hUakeFDLeKEI6U
	 Mwd3rxTsl1TPbkF4fjeOR3STCEahZ/dXqPkKODobbKx4cVAol+XsYngcRvUYk0nsZ
	 3AkTiGfNSmqOLEBOZj7Gxm4V2P0oC8OHCWDsw7NCPGTruw8Jia4v2vsRASl7oVV4z
	 2iDL4TQ85/oI3szDLbYzH2PftyOjOvlBvkcKo8u8FDvSWwHnu1f0C/vJPjMKFw40P
	 ooNYIFagNlB0N3e1PVe+NXoPo48imwl+GCemSTnTnFNrzzte6gj91ZC2je6bYZzKS
	 Ks5E0cV4BLoaJtpkHA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.83.13]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MBDjA-1rvkyO4890-00BW5j for
 <poky@lists.yoctoproject.org>; Fri, 03 May 2024 14:26:23 +0200
Message-ID: <62238bf6-16a7-4c31-bf1f-609301970134@gmx.li>
Date: Fri, 3 May 2024 14:26:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] avahi configuration (without d-bus/X11)
To: poky@lists.yoctoproject.org
References: <17995B12D8E7BA2D.25909@lists.yoctoproject.org>
 <55b9a7c9-3ac3-40f2-a3cb-44328a067499@gmx.li>
 <447234ef-efc0-4b35-b71c-b4988b34859f@gmx.li>
 <55CA67CE-8196-4E70-B2BD-D8C5BB95B0F9@arm.com>
 <1204f795-ca39-4d9f-a1ec-820b8c2d577e@gmx.li>
 <CANx9H-CHJqUef2Zh39gCNK3NkK=wBsW8zOVCBbN9P9nrTn5DqA@mail.gmail.com>
Content-Language: en-US
From: star <star@gmx.li>
In-Reply-To: <CANx9H-CHJqUef2Zh39gCNK3NkK=wBsW8zOVCBbN9P9nrTn5DqA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:sCWXCrzWJ0QW/8/CXObDvYKkPGx6OfsBZC8JDy+ba83H4aFSfd3
 9iGAfDsIsHjOfpn37fCzyvyJYv0oMiCY5L1foIOEjIWXM67CeUXQpYlMU7wrlbtgWIa80C4
 Mtl8jds33W1zlXarX/SNMWZHYebdKkUr3t08LfiVj8SbdNmABokitdTsoWqh8Y53/aMTttI
 wGn3x6rNIFOz7wS/28uyw==
UI-OutboundReport: notjunk:1;M01:P0:+p5qJG2AAzY=;/a6rZgbsvn8txBbugnvecAw9v/B
 S/ckc82vEzwXjjagGM5D0SgFrIEUBqBUx7FzP4ksra8LhQBEH7QLrfU8LakdiZkXO/qz63vUe
 pYp0LCdS6QXugJ/DtTtOMG4ITPdERX8UHBGrTkJUHNiBy8kcFzZhJmazhBQ6tnsrVMmvoDkJY
 G4pnxGRNrmFIaHq2sV3Qj7RydMhogf3PTBuragBF8obPMiwoknTikKYZJbtxzsnLtCS34+5BD
 8mkk8tJZ9v7Lo0JNpkoWCndmB9QIMuB1F6rndXDzHDSJFjycd28DrtzKOhcu9Rf7D4nHL2BCC
 MT5K5+OkMLSip6a1GDSs6Lg537PY0Rb5JLOZ1tRnVtPbCZCouoeKqqE6A6WrOrdWq8yz7Im5I
 f4VYYfYKMi1lhDPFERB/GrprqW7UVMoRpQYf7PEerExz8UfyfXZi0zlIJvAYQIX5fzlRj8Fn6
 /C4wPbadkaxseDJD7K5T8QpMpz4HldUdjDOacGeRWp9PklClTwrCLr+H7aziMRapr1zVR9Qe1
 T/seg+EtB30+6hfDEuOlh998/wS5Q5JvWsRZgZKak9iqAGyRMS/UL5z8ygZ5Rb0T1qtcOlt+v
 uEKQ2IdTH5nVrNwJghmTctMuDjJZTb5x8KCbGKTBIBXaN7wLvPXvtHs4LELAd4zt4z3qMzhKb
 4BRuj8SqZlr7KVV3KlkRo5MuXWSKroqodu0UQbjW9CbIOVsSBjqNHH3FVRMoEmUdaUfondq3O
 ObSJMI513OAjat2fvkD0+ePfvuOZanJYF7NA+xC3bnmLJtntWlGgwWCGc73kjwQJwAlRPGBKf
 /8wmXyX/ZOtBeC9NEKry7TEEBqzL1k2JcbXXozvd+sIpM=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 May 2024 12:26:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13342

On 5/2/24 16:34, Tim Orling via lists.yoctoproject.org wrote:
>
>
> On Thu, May 2, 2024 at 7:18=E2=80=AFAM Steve via lists.yoctoproject.org
> <http://lists.yoctoproject.org> <star=3Dgmx.li@lists.yoctoproject.org
> <mailto:gmx.li@lists.yoctoproject.org>> wrote:
>
>     On 5/2/24 14:54, Ross Burton via lists.yoctoproject.org
>     <http://lists.yoctoproject.org> wrote:
>      > On 2 May 2024, at 13:00, Steve via lists.yoctoproject.org
>     <http://lists.yoctoproject.org> <star=3Dgmx.li@lists.yoctoproject.or=
g
>     <mailto:gmx.li@lists.yoctoproject.org>> wrote:
>      >>
>      >> Hello,
>      >> I need the avahi to announce my embedded device to network and
>     give it
>      >> an IP if DCHP is not working.
>      >> Over the normal "avahi-daemon.conf" I want to disable d-bus and
>     ipv6.
>      >> That is working by do_install:append changing that file.
>      >>
>      >> But, adding to image the package "avahi-daemon" (avahi-autoipd
>     is not a
>      >> problem) bloats my rootfs with dbus-daemon and libs and=C2=A0 li=
bX11
>     libs. I
>      >> don't have an screen attached.
>      >>
>      >> So question: How to avoid that?
>      >>
>      >> In my avahi_%.bbappend I added:
>      >> EXTRA_OECONF +=3D " \
>      >>=C2=A0 =C2=A0 =C2=A0--disable-dbus \
>      >>=C2=A0 =C2=A0 =C2=A0--disable-gtk \
>      >>=C2=A0 =C2=A0 =C2=A0--disable-gtk3 \
>      >>=C2=A0 =C2=A0 =C2=A0--disable-libevent \
>      >>=C2=A0 =C2=A0 =C2=A0--disable-qt5 \
>      >> "
>      >> But that doesn't seem to help.
>      >
>      > Have a look at the recipe, specifically the PACKAGECONFIG
>     options.=C2=A0 You want to disable the dbus and gtk3 options.=C2=A0 =
Note that
>     if you have a headless device so don=E2=80=99t need X11 at all, then=
 remove
>     x11 from DISTRO_FEATURES and that will never be built.
>      >
>      > Ross
>
>     Well Ross, you made my day ... again! Thanks.
>     Yes, as above mentioned I already disabled dbus and gtk3. But it see=
ms I
>     have to write also PACKAGECONFIG[dbus] =3D "--disable-dbus,
>     --disable-dbus,dbus"
>
>
> That is not what you needed to change. What you need to change is the
> "weak" default value of the PACKACONFIG ??=3D "dbus ..."
> So just setting PACKAGECONFIG =3D ""
>
> https://docs.yoctoproject.org/ref-manual/variables.html#term-PACKAGECONF=
IG <https://docs.yoctoproject.org/ref-manual/variables.html#term-PACKAGECO=
NFIG>
> https://git.yoctoproject.org/poky/tree/meta/recipes-connectivity/avahi/a=
vahi_0.8.bb#n50 <https://git.yoctoproject.org/poky/tree/meta/recipes-conne=
ctivity/avahi/avahi_0.8.bb#n50>
>

Thanks Tim, you are right!
That is even better.


