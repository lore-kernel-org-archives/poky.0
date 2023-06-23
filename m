Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4DABC001B0
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 11:23:54 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by mx.groups.io with SMTP id smtpd.web10.39609.1687519425964696493
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 04:23:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=star@gmx.li header.s=s31663417 header.b=C/0EPHhZ;
 spf=pass (domain: gmx.li, ip: 212.227.17.22, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li;
 s=s31663417; t=1687519424; x=1688124224; i=star@gmx.li;
 bh=vKYTAseCiuw/9mVy8/zjF3V5ebVxI3dZUA7A9V4La+g=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=C/0EPHhZOz3Xp5CJT3ssSPIZWbkWt3BrGibrcHAkyvypO+kClHv+51aAgOqmAUUbJBdpjaZ
 4nKRJteGY1sVI7Smk6BstTrLSctdaAt3LCjwESFK5iGN9NAXf2ieESg/VRg4pxiaxwOKwGWBn
 upFvXNzzUYIVKegrjuyBAx9C/ZQb2nPmC9U1/z5gZQLTt0IWi8Gh3XHnvPh3B25c7OVU24lhD
 KMGRe/SlDlyC/J4lPHh+UJEYVMH0pvHT8gEAyyFkNWq799GmuLIar8U0e7p+Sv8GfwxlWnQMP
 Zds48NQjJp36BzG2g9zImoc+h7e33Ptw87zl6qWG73L3wQQI6SUg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.249.207]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MuDbx-1pvpUQ3ARp-00uZkx for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 13:23:43 +0200
Message-ID: <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li>
Date: Fri, 23 Jun 2023 13:23:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [poky] Yocto and kernel - dependencies
Content-Language: en-US
To: poky@lists.yoctoproject.org
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li>
 <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
From: Arno Steffens <star@gmx.li>
In-Reply-To: <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:B+YbLMNV903oACbjU69e+HF90xXTb4azwN61EX7puFaOGeXJUVB
 wmcXF4c8PahVZkoXDkMFcIKMdM1ao5ZsFsCyUm4sP9JEgXD4qqNaXqAV3TYHL299k3Mg4cO
 gAdRESzlJdujnP5Be1GQP0c9bHZsdiwH4ekVZpBx28o4+zcIoFs85LDsFzYE8p7Epp2izPK
 QixuBtQ80s6JU62kRloEw==
UI-OutboundReport: notjunk:1;M01:P0:bvwep5c7nZs=;zEB07XsGGvbKx2AIeuPDb5yHQ9z
 EleIIg8S7whZwdNgL/eVfct4x5v0SzRJ1jJKaJ/3eQQskIPx8sSIylrUIs3jeUA4EnlvL5W3W
 fn9AoKbPfy+kO6Q/MHoLkb7ETeGklYTR1l16EOzUNF+NlM0UG9gW9wps2qoNKi3hCnfL5xkyR
 wNEcDTJZjP2Uq42lgUhzJPKLUmjWfaDGRuZt6QH8uUfifSbyNL9iiPv6N8P1xX2ZawWs76ZSn
 jCw1VV/VeLI2pYVleYwo3KeLx2a0h1VCCrty6UbdlHyZx1iTyA64w/Pk0egQJq18+PT8bBWSV
 sQvyNzUpNnHOiQOLijxSuvQtDwrKbDfFuENbQJQGQFjvM4tPk9Cnw+ESOt+8tArLEe0ybfpy6
 DRiJYscBCKhMIpEu8a33aSPkU7gb4uwj8PgrNYZ18HRz/E9KswzBRBGWDlIOoPM+X12fLvNw9
 6NC0cdjd+GEqVFJ7k5BnVopLV4eAYcXwkximRRaBslelRA5v7WR2j/wvWZDDayH+F1TSlEniI
 rwhe+dcKh6gGyEZOSPv13522sYR5Qt27xuM8msPtsHGdw0i9duXownIunAypObqecPVCUf0BE
 A3TGykusELCdZ7OWQvuOemnu1NKen5QiNvnmSklt9EEc4YpJLf2eZFqQ3fjDXM0TOOfLcWSlY
 IqVWzXPdBmXcEYRgG5+Oq2iyBm3TTqi80wkhOtvCMzmIAuLKmvHqpwu+kA/w/gh0sASdEL1t+
 oGsoLRknbjx2bjvdOHDq15WRTBc1eXL1HLbbKakU5oerAPWFgJvJep9G2QXd3nVnq31lH3LIP
 5H+DUOsYrHvSDIDYrow7OBkp0AnJI8MY3nLmHcrNZfcl+up3lgPCDY1eovhasINNgz9v3PthO
 /9JsrRdhC+y4x6xJGINynJBqJhUmO8cE8APTbwj28d8nXTA0NIeYe6mj0Z2N81AzAhv5sqe8N
 Yjv7tcz6TroKI7XGeRqWyoElKIM=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 11:23:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13091

Thanks Alex, that was indeed my first attempt.
To start with a simple case (I thought) I just added to my <machine>.conf

PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
PREFERRED_VERSION_linux-yocto ?=3D "5.15%"

But get: "Noting Provides virtual/kernel"
I mentiones a few that provides it, but all are skipped as they are
incompatible with my machine. But isn't that anyhow wrong way, as I want
to use my kernel, not yocto-kernel?

I also thought about doing like that:

PREFERRED_PROVIDER_virtual/kernel ?=3D "my-linux"
PREFERRED_VERSION_linux-yocto ?=3D "5.15%"

but it doesn't go for my-linux_5.15.bb file that contains SRC_URI and
SRCREV.

Seems I am on a completly wrong track.
Thinking about what is theoretically needed:
Source, Revision and what config file it should compile.
How to provide that?

Am 23.06.23 um 10:38 schrieb Alexander Kanavin:
> The recommended thing is to build the kernel directly in yocto with a
> recipe. Or, even better, take one of the standard kernel recipes and
> use that.
>
> Alex
>
> On Fri, 23 Jun 2023 at 10:28, Steve <star@gmx.li> wrote:
>>
>> I am a bit clueless about the relation between yocto build of rootfs an=
d
>> kernel.
>> Usually I build my kernel completely outside of Yocto, just using the
>> SDK created by Yocto.
>> But now I am afraid I doing something wrong regarding kernel headers
>> need in rootfs - or at least in SDK.
>>
>> My machine-config seems not to have any link to kernel or
>> kernel-version. I found that linux-libc-headers (is this what I need ?)
>> is of 5.16, while I am actually compile a 5.15 (again completely out of
>> Yocto).
>>
>> So what is recommended? What change is needed to use headers out of my
>> linux git repo?
>>
>> Best regards, Arno
>>
>>
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#13090): https://lists.yoctoproject.org/g/poky/messa=
ge/13090
>> Mute This Topic: https://lists.yoctoproject.org/mt/99714609/3618575
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>


