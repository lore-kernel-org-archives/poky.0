Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C824FEB64DD
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 15:34:27 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web11.1627.1687534460489798634
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 08:34:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=star@gmx.li header.s=s31663417 header.b=Ra3E5MNj;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li;
 s=s31663417; t=1687534458; x=1688139258; i=star@gmx.li;
 bh=u6ZN1v5emrmmK0xZUdpWXaLevMesSGQv8tTkkBwKzUU=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=Ra3E5MNjDYP+vCD+MxlCmwcu11zA7o4v/Q6Yo3m2fST0B0rxRyLT1J6TrUCtwJoLBJKTkM9
 /ArfN8nlv10c8VBR5Q3DqMyNXIQK6Q+gacG7XnXT2HQpID9nybQBEVAhVLXAh7MOj/+iklGDp
 woLdeFn034yNVpG9/2fDcXYpHuizmvpr2rmuyg09iamcTQNOSZrkFRaDnqbLFuOXfWe/SxEKl
 7xMN0YdwcI4Jo3zYiblOXGbr1cKDV/pS+yZ3p3IIHEC1pqu0WEZ0BtGQWl6s2nn8fA/0MQCau
 WTf0bZ09rOlfgTsmiqqKQ0GGtVsU4rGpQZklXxha0suaR17jVtng==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.249.207]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N3siG-1q3oqo1NhY-00zpqZ for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 17:34:18 +0200
Message-ID: <78205739-5dc8-af4f-e498-378a00b4c245@gmx.li>
Date: Fri, 23 Jun 2023 17:34:17 +0200
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
From: Arno Steffens <star@gmx.li>
In-Reply-To: <CANNYZj8yFLetMj52Gf_jRzpxs=nN1W7z30eBFCO50WHayJeGEA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:tWJwahSiBH4Gss9+xunpz4ucavNeR9mbAAHwUbWulYrqWUcTp6Z
 9ZWn3tCFyE+oL9HUZgKPLTMA8p0BDi2hcQ0kGqPh+K13UxJrGAeopMkfZJIWRgoxQ7swFNM
 etmeHgqcCsu3N/MDqTrxQAUYCuV0nZM/++O0aleVqu1W43FyYU8nNJqThN5WyOSSxguai0l
 A1IhMqT/Ew0HCSzJxxrkQ==
UI-OutboundReport: notjunk:1;M01:P0:4fcg/ZmcNQQ=;BOyBxAU74cTnunzncNiZhuMQvGU
 mvFJBat1p4zf5nkWXpu8yu2N9IE2th/a2EnbPQq4tp4YWl5fpVpe4Uv/m+YZ8nilnPO+zsLfV
 UBNBKfk1QZbcqYfEogYrtBcH5PmiY3HmIqQ51cpdECpG4wHq97O2fEpxVUm24xGZQtuBUdSBY
 gaUOKf03DLJmhaaggr3wvaScBlfYMXAL6fnOiQ6clTQ96wIYEB0Yk4/YTwqvO5jdySEMU8uSV
 JAhMSLFz1ZyI2trMAInAlTKOhxbp+ep2jwEMNWxMnVKP3b+JP/x1w5Tx/UpUvO3IDc7N4xdDZ
 CLQGNflbuU7HaKo7cjDL0j9LAQZ/Vo7Q3uRTGuFpdw7cY0RQyIlEkziQvvNR88LEJQKUrBOqr
 7rqR2kv8vZW6hwYUjeADB7IszjxRb3bNW2pLn4N2rGu47oEeLOelf8hA1flx+0A66bqBpIefo
 hlWf+LCZnHmUdXO7/p5rz29qVcoxxKv4h9sSuLdx6YCeDkrQ2k7n7Tc+YON0Zem4IIW4C2uly
 KVdNbky9aRrWwa+xbvv6CNnN0OJA+quzyhszf5aHf7xt8sRhVpUkAS1yNmNcktJ7mD5/Q4bZo
 RQWDyuuenbojlPZv/TvE2twcTHhwN7gSlFM/EBPqG86Wink10lYv77yKDtI9oxkyhXiraYVlb
 PmLn/2bbQ45ASsIBRqHBFkvSLuYlher8u5jK+BOLTQtGLff8vDU1IIhM/W7oD1fN20zddxp5M
 1FH97fabgn2+2+S3+ZLDyEFD2PDA8BhUQur1j91B8l3lDtTNkpNcRJXm6SIlO1MaDSsoJP/wY
 tXNu5akAYUXmKNJu0JoIkXhD0qyRafiituq9lXAGh0R0cGl12+t+3IU9pIyx7L46PN1nvnVOt
 cbHzHnxTrwmeKFfiDNHux18IAECbJlc8l9wvW+r4HEgBvWqLE0vaztDM+R2ocyL0WQC5P68vk
 VSLk5niwNHt35IO1TRehBnYsuIE=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 15:34:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13098

Actually not the kernel frustrates me, but the yocto (or at least what
NXP does there). I mean the recipes are for dozen of processors with
each different platforms.
I definitly need something simpler at start, otherwise I freak out ;)

I understand that virtual/kernel is somewhat a link to a certain
kernel-recipe.
So what to do? I mean as mentioned a source, a version and a defconfig
should be enough. What is about that COMPATIBLE machine?


Am 23.06.23 um 15:42 schrieb Alexander Kanavin:
> I would rather take meta-freescale and start with a machine definition
> available from there.
>
> https://git.yoctoproject.org/meta-freescale/about/
>
> Once you get that working, you can embark on customizations. But
> trying to build your own kernel outside of yocto, and without all of
> the accumulated knowledge embedded in a BSP layer will just frustrate
> you.
>
> Alex
>
> On Fri, 23 Jun 2023 at 14:14, Steve <star@gmx.li> wrote:
>>
>> It's an imx8mp.
>> The stuff that comes from NXP ia so fully bloated that I don't have a
>> chance to understand what's going on.
>> That is why I skipped this til now and have in my machine conf:
>>
>> imx8mp-my.conf only 3 lines:
>> require conf/machine/include/arm/armv8a/tune-cortexa53.inc
>> DEFAULTTUNE =3D "cortexa53-crypto"
>> SERIAL_CONSOLES =3D "115200, ttymxc1".
>>
>> In local.conf there is
>> MACHINE ?=3D "imx8mp-my"
>>
>> That's all for the moment to create a rootfs, but afraid with wrong
>> kernel headers.
>>
>>> At this point I need to ask about your hardware. Can you tell what it =
is?
>>>
>>> Alex
>>>
>>> On Fri, 23 Jun 2023 at 13:23, Steve <star@gmx.li> wrote:
>>>>
>>>> Thanks Alex, that was indeed my first attempt.
>>>> To start with a simple case (I thought) I just added to my <machine>.=
conf
>>>>
>>>> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
>>>> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
>>>>
>>>> But get: "Noting Provides virtual/kernel"
>>>> I mentiones a few that provides it, but all are skipped as they are
>>>> incompatible with my machine. But isn't that anyhow wrong way, as I w=
ant
>>>> to use my kernel, not yocto-kernel?
>>>>
>>>> I also thought about doing like that:
>>>>
>>>> PREFERRED_PROVIDER_virtual/kernel ?=3D "my-linux"
>>>> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
>>>>
>>>> but it doesn't go for my-linux_5.15.bb file that contains SRC_URI and
>>>> SRCREV.
>>>>
>>>> Seems I am on a completly wrong track.
>>>> Thinking about what is theoretically needed:
>>>> Source, Revision and what config file it should compile.
>>>> How to provide that?
>>>>
>>>> Am 23.06.23 um 10:38 schrieb Alexander Kanavin:
>>>>> The recommended thing is to build the kernel directly in yocto with =
a
>>>>> recipe. Or, even better, take one of the standard kernel recipes and
>>>>> use that.
>>>>>
>>>>> Alex
>>>>>
>>>>> On Fri, 23 Jun 2023 at 10:28, Steve <star@gmx.li> wrote:
>>>>>>
>>>>>> I am a bit clueless about the relation between yocto build of rootf=
s and
>>>>>> kernel.
>>>>>> Usually I build my kernel completely outside of Yocto, just using t=
he
>>>>>> SDK created by Yocto.
>>>>>> But now I am afraid I doing something wrong regarding kernel header=
s
>>>>>> need in rootfs - or at least in SDK.
>>>>>>
>>>>>> My machine-config seems not to have any link to kernel or
>>>>>> kernel-version. I found that linux-libc-headers (is this what I nee=
d ?)
>>>>>> is of 5.16, while I am actually compile a 5.15 (again completely ou=
t of
>>>>>> Yocto).
>>>>>>
>>>>>> So what is recommended? What change is needed to use headers out of=
 my
>>>>>> linux git repo?
>>>>>>
>>>>>> Best regards, Arno
>>
>>
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#13094): https://lists.yoctoproject.org/g/poky/messa=
ge/13094
>> Mute This Topic: https://lists.yoctoproject.org/mt/99714609/3618575
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>


