Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C83BEB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 12:14:35 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web11.40493.1687522468004627651
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 05:14:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=star@gmx.li header.s=s31663417 header.b=ovoUdP6M;
 spf=pass (domain: gmx.li, ip: 212.227.15.15, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li;
 s=s31663417; t=1687522466; x=1688127266; i=star@gmx.li;
 bh=8aGddEUOgwBkURCZKL+6DVaMyaZOwRTSedA+UDCi7nQ=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=ovoUdP6MoAznDi57KHXYrYXFb77vAvyrRcUjolZeLA/wChF+lBVN6aA/2G6hcXnIxPV90uE
 ndK4z2ZOSoqitXTfXw20Sa3EEUWBvVZkGxbHfJn/vE7xeVLprodtcOo5k+jNonVSguDqBqTKC
 +ho4Wg6sovS+ZflTX5hmS1qTzYbdgFapVg5LyG89+Gm66NC+YfolFlSf2LXSk/3K4jijOXRBi
 5r5ReSitzl6dow2zR+IXgzJLsXlpF7ZkpNueYDvgfqsfyGz3bXF1XOXcmD5HVp9K2HzrPr4O/
 RhANerk8QBqZEhSwneKEqmjFCWA42OUr4RH6CetnnofVynlS8iGA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.249.207]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MWASe-1qbX9k12Mc-00XbKn for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 14:14:26 +0200
Message-ID: <d18af7ff-ed61-5e3f-363a-29d85fa10903@gmx.li>
Date: Fri, 23 Jun 2023 14:14:20 +0200
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
From: star <star@gmx.li>
In-Reply-To: <CANNYZj-Y3fHBuPU4LxnhQbrw_MdKcAJFsh08ZNBBmfAMGFqW9w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:QjE5XmRYzU9Qq1wg2iI+bUJraAB/aFp7DcsWskS2of9IRzSCsiy
 UdywPXpFPWJesEk8J1m388s87Bo9Ihv7prPPFwel4hyCrAyhNoxcrwbBW9kwVj4b9s1WPT6
 L4A9L6UbV7++dNbgTxwTzYOqZ+KpzOL6cgK7bj3d8ACnSNyYLSvJ7FW2wz9iNN83HNQTtni
 xlVNBQi6qaWUdAqKazO4g==
UI-OutboundReport: notjunk:1;M01:P0:zHyzTuKO+C4=;OIlfdrAW5gOKaVDiuR7vlzd1SnX
 sYdb0IldsBtcssTU8r7SgjXrVhdvpbNnui4q3xIA7hmwiTQRmUF0Vceuy0EBgXpjPRYisJaRh
 35Uk5LOLwOg5L22QbiXyom5YpD9xMdaMRkCERpRxzWvgohG+MsEbt1wOa+vy5UJythJb3Sxxf
 f1kxV+HzQCtQdaKDQvMdtsFfmpSZBHaHYQWAfxqYftswfrIUKMj5VbGe8EPWcH8zxRg9wye1/
 qpQVQ7kAX4Y1927iodoCPjKxLEbzpnr5YQy1Z5+MYXR8cwvl1IOakBcSmWH8PcCeJ/mmkcahH
 AxjojzXdUQ+lH/nyE5s1U/tujrRxBiQUpHxG9/2HTEwiSN1HLxlxF9/5fQmUAIXv0LvBnPRzE
 NHXef5OdIlA+rYNUWLH+PS6I1T/TIrV/rYT/1o2ii0D6HiamtdqlUEN7tZVeIn46lSYfy3ayF
 PSMj2UbJR4CHtHFdtm6jH+xYHxkSmxGqA+uvfGK36icuY25N2U4ZycXmQYUAYOJikQIsM7H3j
 fLa6kCqc8S8dKLfUwvu7VVy3BYkfU0AVVW51V+Rcpq5qgUFyrxJRoVsy8+hIEO74AERYO6m80
 3EBPPtLQwS7+SU+cBep8KkkjffaBewOJti//m9FgWetydRDecDLE7CWB0RmdIV0kBmD+V/viT
 I/AOO3tcuAuOcriOj/D6x29UI86HsC+tdv/pCpipe6T68+6UCmx6ZeeNYyrpPKehw1sD0bcmy
 Rl8/VgzMBErNOkH5HkFnCZjNgW4RIuk+ZFXCkI/8nuv03HnKiVtBp8h7kErervKBtw9zC76N6
 t8zSq1GQ7bMqMkbODxB2C8XBkuuzpAUhHOvdPaNxJrhTzKbfMhH706muqX92wrSRLsQo+ZOO2
 8cEYVddalNGjK0GJQxaVDaq6HZRIRk+4OdYfs8dR4+sti2uND47DTuiyabLZvtBn/SfAe10d0
 fTGO9w==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 12:14:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13093

It's an imx8mp.
The stuff that comes from NXP ia so fully bloated that I don't have a
chance to understand what's going on.
That is why I skipped this til now and have in my machine conf:

imx8mp-my.conf only 3 lines:
require conf/machine/include/arm/armv8a/tune-cortexa53.inc
DEFAULTTUNE =3D "cortexa53-crypto"
SERIAL_CONSOLES =3D "115200, ttymxc1".

In local.conf there is
MACHINE ?=3D "imx8mp-my"

That's all for the moment to create a rootfs, but afraid with wrong
kernel headers.

> At this point I need to ask about your hardware. Can you tell what it is=
?
>
> Alex
>
> On Fri, 23 Jun 2023 at 13:23, Steve <star@gmx.li> wrote:
>>
>> Thanks Alex, that was indeed my first attempt.
>> To start with a simple case (I thought) I just added to my <machine>.co=
nf
>>
>> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
>> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
>>
>> But get: "Noting Provides virtual/kernel"
>> I mentiones a few that provides it, but all are skipped as they are
>> incompatible with my machine. But isn't that anyhow wrong way, as I wan=
t
>> to use my kernel, not yocto-kernel?
>>
>> I also thought about doing like that:
>>
>> PREFERRED_PROVIDER_virtual/kernel ?=3D "my-linux"
>> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
>>
>> but it doesn't go for my-linux_5.15.bb file that contains SRC_URI and
>> SRCREV.
>>
>> Seems I am on a completly wrong track.
>> Thinking about what is theoretically needed:
>> Source, Revision and what config file it should compile.
>> How to provide that?
>>
>> Am 23.06.23 um 10:38 schrieb Alexander Kanavin:
>>> The recommended thing is to build the kernel directly in yocto with a
>>> recipe. Or, even better, take one of the standard kernel recipes and
>>> use that.
>>>
>>> Alex
>>>
>>> On Fri, 23 Jun 2023 at 10:28, Steve <star@gmx.li> wrote:
>>>>
>>>> I am a bit clueless about the relation between yocto build of rootfs =
and
>>>> kernel.
>>>> Usually I build my kernel completely outside of Yocto, just using the
>>>> SDK created by Yocto.
>>>> But now I am afraid I doing something wrong regarding kernel headers
>>>> need in rootfs - or at least in SDK.
>>>>
>>>> My machine-config seems not to have any link to kernel or
>>>> kernel-version. I found that linux-libc-headers (is this what I need =
?)
>>>> is of 5.16, while I am actually compile a 5.15 (again completely out =
of
>>>> Yocto).
>>>>
>>>> So what is recommended? What change is needed to use headers out of m=
y
>>>> linux git repo?
>>>>
>>>> Best regards, Arno


