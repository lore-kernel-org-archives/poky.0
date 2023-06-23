Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B265AEB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 15:19:27 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web11.1260.1687533566071783766
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 08:19:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=star@gmx.li header.s=s31663417 header.b=g8cMzZE5;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li;
 s=s31663417; t=1687533564; x=1688138364; i=star@gmx.li;
 bh=DNCs0OFDDCDANvQLx4T8Ds4gPypOttMZbwxiUQ7rehk=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=g8cMzZE5I0YbQ0a5ylnbBZCUtL5xQIg2xj43GgdqAvXHnkZvxVaDSeYUsVt4ztdCimnqQ8O
 ol4D08rv+O+LgNhsBSHgk76oMgqzTvysGR4L5z1Oghtl/ExyBWofgocHxrvFHbcjPYA6cLYom
 4CSlCxF/UcYQfpS9wc5K19m9fZfpycAc68ZePPrL/GhDuBwPgcwWXVce4aZC9Vir/kZ7tIsDy
 RXmrSRPHRYysOr9d3Z1tHEHKQyjpxryxvVsVnco7zD9qf2d0iR37JEH0g6faPrgEFePJZ6vBh
 M6PA5dCSDXhIChJhpOTtGRP4udm4Iy5pqhSOZNrn7sTpzOCRS+Pw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.249.207]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MGz1f-1qHKzX0TFT-00E5vY for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 17:19:24 +0200
Message-ID: <56f415b7-cedb-5f6f-0254-4b1358fd8801@gmx.li>
Date: Fri, 23 Jun 2023 17:19:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [poky] Yocto and kernel - dependencies
Content-Language: en-US
To: poky@lists.yoctoproject.org
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li>
 <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
 <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li>
 <CADkTA4MhTL1yyO3Q=R8CfnfKMW2TuqPB7t4JQSUqx2eH6Sb1rA@mail.gmail.com>
From: star <star@gmx.li>
In-Reply-To: <CADkTA4MhTL1yyO3Q=R8CfnfKMW2TuqPB7t4JQSUqx2eH6Sb1rA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:ynH8BwR3vwU/Ypg76w0gDeBMgVuVDWChg5k4MHkpWYkhGc6ScgT
 OkGcBBbSSp82VwMTSIvsjIj5W3W7ISSqqrwtvYiomHPoU/81Cgt+sAZYjpaTzBtxRNKC7co
 lkwdOO+31PV97AjxNn+XOcoJc5eD5CAdZpW5EU5BlZ2TCLw5xFlTIt4JjxNHq1WgBq9G20v
 vP6MI6bm42Bdn8iqrZXVQ==
UI-OutboundReport: notjunk:1;M01:P0:X6pT5xY1jmw=;WShe/giIGgPEaGmWV+D9ovY7PSl
 mdEz5koGC0vz//1JqAweVx1fYFaNln4ss9DUMC1gSIiv/41k7zYdQYRIgb16tc2gUp/IK9xER
 29nuGjmBdHHqX9px1O350tmOhQMEDy0xfU7j+T6DyW4jLsUZVQCNwVShQ4ztsyCsyN7T/tEzh
 eXEJESOmSu0iqLWF6SZZTUxePh+JKbZf0xoLyrA6Kz9FtFFY4m+OhdP6xfuj6a2EnpnPo8dhW
 bkbSVqtjRtZmBqpgGDfs4Kp030xJwK8Bg6wy+z51fkbXcfH6Cvrw2pp49rYuP5Wz8Z+g6uLy0
 uqmhQs/n5QbtYVJSCaxKzlw1FGRbzV9b7j6yrRaCRhln8VxisCH4xuyRn781tmPmxesntyhTJ
 2YSMYUFvWdpk1dn2nhYye+CvDz19sSSBoMqBx+UoR+wMiPi8TBKQhwZ5WKjkI5DvKzh68QkwP
 tzM8a+caAYeC/kydpOF+h5wDHpDK8SgCHX/yrBkSJJso18oHahDjGPGUL4209XuZBiTyvGY7x
 mxbjNaDj2kJtmhseMY5j5/TWJnCOC4oBtmGlVCxmFFzxHWCq5VNcHNM4PgckYMfkk4+Tzjmwl
 /VIwtv5gBW25WkSPvkoony5EesWbpRqJAtg1/4I5DSXMdo7wbbiHqNSmCFRFrjrxu94dn+raH
 I+/XfZDmnJBlfPTSSdMtsdqYs+FCKOv4aPJMm0yarfg4e8C7jA6Fz6ysxCdVZQyJvF07Wv1ij
 o2qd1VMRqovZt6CHPvAitkjmbk8zkUYZHSpt9pwVT1ag1zg4JIK9G0W2Pn0cgjycQePbVHhEn
 99SD+8qVUWJtspUm3ogvxmHZ2mPOUcuRzjAUdRUSSaQMzd0nowJQYV0ccqSNXUZVcHqRgrydq
 EUoEmmTt2PY1wr6THMdPx69Bn7nYcU853+Nuq/JK/N4vSNa9bj2MnKB6vjw25wI1DXG1rlpTV
 LX635Q==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 15:19:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13096

Am 23.06.23 um 15:44 schrieb Bruce Ashfield:
> On Fri, Jun 23, 2023 at 7:23=E2=80=AFAM Steve <star@gmx.li> wrote:
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
>
> You mentioned "linux headers" in your first email. What exactly are
> you looking for out of the kernel ?
>
> If it is the kernel uapi headers, then you should absolutely use the
> linux-libc-headers package, it is safe to be used across different
> kernel versions (and we test it as such each release).
>
> If it is the actual kernel and BSP/HW support, then you do want your
> own kernel (but should have a look at how much support is upstream
> in kernel.org .. because if the support is there, you can just use
> linux-yocto).
>

I didn't observe any issues in my workflow since I compiled "perf" with
my SDK.That alerts me.
Get some warnings that Kernel API headers differs.
tools/include/uapi/linux/const.h and include/uapi/linux/const.h
tools/include/uapi/linux/in.h and include/uapi/linux/in.h
as for instance.

I am not into it and maybe even mean something different, but that is
what triggers me.
I mean the linux-libc-headers are of 5.16, but my kernel is 5.15.
Where is it set to 5.16? Didn't do active.

I don't get why yocto has its own kernel beside the mainline kernel.org?

Sorry if I mix things up a but - but that is my understanding as of now.



>>
>> I also thought about doing like that:
>>
>> PREFERRED_PROVIDER_virtual/kernel ?=3D "my-linux"
>> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
>
> You wouldn't set the preferred version of linux-yocto, if you are using
> your own kernel recipe. If you only have one version of your kernel
> provider, then you don't need to set a preferred version at all.
>
> Check if something else is setting the preferred provider for the
> kernel (since you are using "?=3D" as the assignment, you may not
> actually be setting the final variable.
>
>>
>> but it doesn't go for my-linux_5.15.bb file that contains SRC_URI and
>> SRCREV.
>
> If there were no warnings about incompatible machines, etc, then
> it probably is just the assignment I mentioned previously.
>
>>
>> Seems I am on a completly wrong track.
>> Thinking about what is theoretically needed:
>> Source, Revision and what config file it should compile.
>> How to provide that?
>
> The yocto project documentation is the best place to get into details
> like that.
>
> But again, if you are mainly looking for kernel userspace headers,
> you won't get them from providing your own kernel recipe.
>
> Bruce
>
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
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>
>>
>>
>>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13095): https://lists.yoctoproject.org/g/poky/messag=
e/13095
> Mute This Topic: https://lists.yoctoproject.org/mt/99714609/3618575
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


