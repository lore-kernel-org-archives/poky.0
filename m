Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 023E6EB64DA
	for <webhook@archiver.kernel.org>; Sat, 24 Jun 2023 07:32:28 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web11.13000.1687591943247822379
 for <poky@lists.yoctoproject.org>;
 Sat, 24 Jun 2023 00:32:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=star@gmx.li header.s=s31663417 header.b=h3VUfGG9;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li;
 s=s31663417; t=1687591941; x=1688196741; i=star@gmx.li;
 bh=85t54o2RoFDD+L5X9Eg2JJkcEICux/lfNyBMJMwLyj0=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=h3VUfGG9WCJFO/9I4xHaF6uW7yb+Nv3joPUqMCMoUmWDI4ZCpWyuJYksSmaVPgAWD/hXc6M
 QV6wyixyvL3U+vSJbCZHdoKti4Wv2CnXqleZj87zIrN4J2hS5YIH9YQ224crWxXPfl2T2d3bG
 8J5CkB97Y+Gih9DEKqrh34b667P28DNDh5wyk+OQOlZ5S1bGNVKFexNhmb2llmKwRDGmxYnSn
 WS4hKOQpx0pPuQVshXmJPTVo0SbAxeRtbRuF2nEYAgBiw9b9Bx9r+CMy6pG05M4HKgLWRsZxv
 OMt5B66E1b4+M0yqjsW0WQ8KUpU+RHNikZ3wG3v4WS1iyja7L1+A==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.249.207]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MacOQ-1pfGtr27ti-00cBxV for
 <poky@lists.yoctoproject.org>; Sat, 24 Jun 2023 09:32:21 +0200
Message-ID: <e9911c59-6a53-ff38-e362-b156206f3753@gmx.li>
Date: Sat, 24 Jun 2023 09:32:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [poky] Yocto and kernel - dependencies
Content-Language: en-US
To: poky@lists.yoctoproject.org
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li>
 <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
 <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li>
 <CANNYZj-Y3fHBuPU4LxnhQbrw_MdKcAJFsh08ZNBBmfAMGFqW9w@mail.gmail.com>
 <d18af7ff-ed61-5e3f-363a-29d85fa10903@gmx.li>
 <CANNYZj8yFLetMj52Gf_jRzpxs=nN1W7z30eBFCO50WHayJeGEA@mail.gmail.com>
 <78205739-5dc8-af4f-e498-378a00b4c245@gmx.li>
 <CANx9H-Av+J1N+04vV_=5jaH_39U762QgUMa=CYCy9keS15wtEw@mail.gmail.com>
From: Arno Steffens <star@gmx.li>
In-Reply-To: <CANx9H-Av+J1N+04vV_=5jaH_39U762QgUMa=CYCy9keS15wtEw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:mhhK58qqjkDxT50QR5dg4WpeHS1+ntw0/sImWio1Mr7spq6Hkcc
 LglN+FYobYJCxY3WwT8n5JzrZCRPOPkRcD+Wv/KWw6TRv4teUdWTpA6MEd2xHME2NbHcobj
 EKi3f/UGTy9odhNeC/1kyi+M5U/glCrI+sUsvbBWEu7X5gRiNK/X/q7BiISeXNgz3WEFlVS
 OtXhj1ccmn8gHLu9k5CWQ==
UI-OutboundReport: notjunk:1;M01:P0:dY7JWbUa/cw=;rnmtrgOBnePcTnJvN2vRuiwKi9s
 9dRckmMSkeYfL+AqvSk5zrw/6pSBJIU/764wf6LNZlPRiCotTsDD422VKlxVD1M8Rs3/UWYn/
 Gcdhjt7OSoHPClF/cl4kIAN4WA9Qe/8fVFLG9OYadgXPBz1QKN7Vo61hME3fYb2NNv/qnk/04
 tOC27v0nCywjSoeuhU0sYYfoLz9ETusLziXWfqZmgldSWGk/B2iRGq+jIzJcpGmdvS8cVqp9o
 +4zypVSxc1m6Bf/j05uJO5MerhrYG96efMvLso/6xaa7CJHaqwDg4ZSrgF2zclSGplNN+YVgx
 ID7LlYL4eIHMTQoMsyvW+NK1zpjw9cuhusxbN94cRN+CMKT7k6De+fwIoFgVHzWY5o5utMjEt
 SLQG2eFOMvQC68sEpKGLSKNuhgwD6uXd06fynbOd52aXjRKmebt+IuB+JDgUxO/arH2leqLLJ
 9CTGUyTvRrhh7Yu8QnIzGJZ5yfluwBDZoaI90zfqGsVbXl5Uh86dbTy4a0cc8X7+Zxb1jZU3B
 HdsC4LkcXUbCRzAZ4ZNr5dy2I4A89wz6v1IsK7dQ0mjFpar7jPSTbTydAlOJEsSs4vzjcLIBY
 il3gQvHDOiawgNDlYlBg7vXdzVpnUBbNklmSw+0TtzPjszE6ewXwa1/QdcBH8ZzaYHpCl359I
 MBVM4DA8vVGG00LUOGoDvryEnjeCpLdr4B1bV/MYDRZx4klzB5xEFTtBtfyk/D8/YRfmZtxgd
 gx5MZZm+max7kyPmip0IyBjjsUZUnOPwuVZIVcgux2HE5QDJ0UmU5nyDaDzZ8bCqPFNAexaxw
 Dx07TXjolSenD+NNQs7gs3jsJRgFt8+LDZIzjCyTJMVmFzMmJ33q8CM4Zhd6QlWu8tNwflFDv
 QkIRc5IGz/iWvsrjj7hkEPiUKESB4bGEscjJJxW4HN6Vr/G3iPAv1pTxSNwfoSiuv0/JkeQ6E
 2Y+dFw==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 24 Jun 2023 07:32:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13101

Am 23.06.23 um 20:59 schrieb Tim Orling:
>
>
> On Fri, Jun 23, 2023 at 5:34=E2=80=AFPM Steve <star@gmx.li <mailto:star@=
gmx.li>>
> wrote:
>
>     Actually not the kernel frustrates me, but the yocto (or at least wh=
at
>     NXP does there). I mean the recipes are for dozen of processors with
>     each different platforms.
>     I definitly need something simpler at start, otherwise I freak out ;=
)
>
>     I understand that virtual/kernel is somewhat a link to a certain
>     kernel-recipe.
>     So what to do? I mean as mentioned a source, a version and a defconf=
ig
>     should be enough. What is about that COMPATIBLE machine?
>
> The reason bitbake is not resolving a provider for virtual/kernel is
> because there is no linux-yocto_%.bbappend in your layer
> adding your MACHINE to COMPATIBLE_MACHINE variable. Bitbake is not
> psychic, it simply looks at MACHINE and says
> "this is not in the COMPATIBLE_MACHINE variable list for linx-foo so I
> will keep trying to find another kernel recipe that matches".
>
>
>     Am 23.06.23 um 15:42 schrieb Alexander Kanavin:
>      > I would rather take meta-freescale and start with a machine
>     definition
>      > available from there.
>      >
>      > https://git.yoctoproject.org/meta-freescale/about/
>     <https://git.yoctoproject.org/meta-freescale/about/>
>      >
>      > Once you get that working, you can embark on customizations. But
>      > trying to build your own kernel outside of yocto, and without all=
 of
>      > the accumulated knowledge embedded in a BSP layer will just frust=
rate
>      > you.
>      >
>      > Alex
>      >
>      > On Fri, 23 Jun 2023 at 14:14, Steve <star@gmx.li
>     <mailto:star@gmx.li>> wrote:
>      >>
>      >> It's an imx8mp.
>      >> The stuff that comes from NXP ia so fully bloated that I don't
>     have a
>      >> chance to understand what's going on.
>      >> That is why I skipped this til now and have in my machine conf:
>      >>
>      >> imx8mp-my.conf only 3 lines:
>      >> require conf/machine/include/arm/armv8a/tune-cortexa53.inc
>      >> DEFAULTTUNE =3D "cortexa53-crypto"
>      >> SERIAL_CONSOLES =3D "115200, ttymxc1".
>      >>
>      >> In local.conf there is
>      >> MACHINE ?=3D "imx8mp-my"
>
>
> In a bbappend for linux-yocto, you need
> COMPATIBLE_MACHINE ?=3D "(imx8mp-my)"
> or something similar
>
> Then your layer priority needs to be higher than the other layers which
> might also be setting that variable.
>
> For instance, meta-intel has a bbappend which adds an include file
> https://git.yoctoproject.org/meta-intel/tree/recipes-kernel/linux/linux-=
yocto_%25.bbappend#n1 <https://git.yoctoproject.org/meta-intel/tree/recipe=
s-kernel/linux/linux-yocto_%25.bbappend#n1>
>  =C2=A0which sets the COMPATIBLE_MACHINE
> https://git.yoctoproject.org/meta-intel/tree/recipes-kernel/linux/linux-=
intel.inc#n21 <https://git.yoctoproject.org/meta-intel/tree/recipes-kernel=
/linux/linux-intel.inc#n21>
>
>      >>
>      >> That's all for the moment to create a rootfs, but afraid with wr=
ong
>      >> kernel headers.
>      >>
>      >>> At this point I need to ask about your hardware. Can you tell
>     what it is?
>      >>>
>      >>> Alex
>      >>>
>      >>> On Fri, 23 Jun 2023 at 13:23, Steve <star@gmx.li
>     <mailto:star@gmx.li>> wrote:
>      >>>>
>      >>>> Thanks Alex, that was indeed my first attempt.
>      >>>> To start with a simple case (I thought) I just added to my
>     <machine>.conf
>      >>>>
>      >>>> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
>      >>>> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
>      >>>>
>      >>>> But get: "Noting Provides virtual/kernel"
>      >>>> I mentiones a few that provides it, but all are skipped as
>     they are
>      >>>> incompatible with my machine. But isn't that anyhow wrong way,
>     as I want
>      >>>> to use my kernel, not yocto-kernel?
>      >>>>
>      >>>> I also thought about doing like that:
>      >>>>
>      >>>> PREFERRED_PROVIDER_virtual/kernel ?=3D "my-linux"
>      >>>> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
>      >>>>
>      >>>> but it doesn't go for my-linux_5.15.bb
>     <http://my-linux_5.15.bb> file that contains SRC_URI and
>      >>>> SRCREV.
>      >>>>
>      >>>> Seems I am on a completly wrong track.
>      >>>> Thinking about what is theoretically needed:
>      >>>> Source, Revision and what config file it should compile.
>      >>>> How to provide that?
>      >>>>
>      >>>> Am 23.06.23 um 10:38 schrieb Alexander Kanavin:
>      >>>>> The recommended thing is to build the kernel directly in
>     yocto with a
>      >>>>> recipe. Or, even better, take one of the standard kernel
>     recipes and
>      >>>>> use that.
>      >>>>>
>      >>>>> Alex
>      >>>>>
>      >>>>> On Fri, 23 Jun 2023 at 10:28, Steve <star@gmx.li
>     <mailto:star@gmx.li>> wrote:
>      >>>>>>
>      >>>>>> I am a bit clueless about the relation between yocto build
>     of rootfs and
>      >>>>>> kernel.
>      >>>>>> Usually I build my kernel completely outside of Yocto, just
>     using the
>      >>>>>> SDK created by Yocto.
>      >>>>>> But now I am afraid I doing something wrong regarding kernel
>     headers
>      >>>>>> need in rootfs - or at least in SDK.
>      >>>>>>
>      >>>>>> My machine-config seems not to have any link to kernel or
>      >>>>>> kernel-version. I found that linux-libc-headers (is this
>     what I need ?)
>      >>>>>> is of 5.16, while I am actually compile a 5.15 (again
>     completely out of
>      >>>>>> Yocto).
>      >>>>>>
>      >>>>>> So what is recommended? What change is needed to use headers
>     out of my
>      >>>>>> linux git repo?

Thanks Tim, that was helpful.
It's not that documentation is missing - in fact it's huge.
And there are numerous of approaches which might confuse.
Have to look for some handson creating a BSP from scratch. I was under
stress and thought it's an easy thing to do. I will do a step back and
look carefully.

@Richard:
That was in no way a complain about it. Thanks for explain the background.

Thanks!

