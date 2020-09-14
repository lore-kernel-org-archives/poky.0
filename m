Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web11.60559.1600088300124008230
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 05:58:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=Mq/N+PSw;
 spf=pass (domain: gmx.li, ip: 212.227.15.15, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1600088294;
	bh=lPxdAzn7TQccEcTfyUiklrv4BAdkqwf9X08HlFbtQT0=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=Mq/N+PSwHTr9fKpt7iLbgCLN8tzuf9GPZyLX5QxRanyS1sjJJuPvIWnmw3lOdyiBx
	 V1rNFYmLtWhQYaDYif4xYEdLNLDQETNlhszfXskw4rKfnzADU2xtVooXFR2u0hP8Ez
	 SmD+4Cl14/XZ3nNzusnb89DgnagPXX9bjbc01Wxs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.33] ([84.185.231.152]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M89Kr-1kCbOn1xXn-005Gg4; Mon, 14
 Sep 2020 14:58:14 +0200
Subject: Re: [poky] add a -dev package to SDK (in sysroot)
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
References: <21bed7fc-b057-c97c-ae5d-3d84f45c69b4@gmx.li>
 <ef6241acac0e9124077509c79af3bffc63088d3e.camel@linuxfoundation.org>
 <dcdd105f-fcb3-c0d2-f606-2ac1d39ed347@gmx.li>
 <78218829d8d34289aac18eceb6464996@XBOX03.axis.com>
From: "Steve" <star@gmx.li>
Message-ID: <df59f0ba-aad9-5d0f-026f-e0747b4f15dd@gmx.li>
Date: Mon, 14 Sep 2020 14:58:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <78218829d8d34289aac18eceb6464996@XBOX03.axis.com>
X-Provags-ID: V03:K1:b14UZHcFQn+L9qaOMDDCPTM0mDHWuwf9pSQN6/g/zUakUi54ZA3
 tB3FXh1qB57hknML0Xy8WGRego+R4wtV0HQcoUJa4QngUQ/3zoWDJ4ykHvGK8OFkh0RSPYX
 8qIBMvy8+D6hXjvQbhn0WosMwcA76tWkmfn6UcuIXRcApzrAnf++o/GhmUofIxpHvsdsFA6
 u62jC30q9oZ82UF2xUcSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7zt95tJwOjY=:YwDEadCHBhChvaGiSfqF5e
 73Lh3qQEeG0cxAN4jaB9oRhAZ1P1Ya1LjPeu0Wx1UBZHuo3dgTtUDUb3jOuQRg5NydB1FDkoM
 B3keLbHnIraDuQrkaKh+utOcBGoQ12SM5dHbjyHDTJ1zk1rhiPqh6zRFljGs7T1Sa7aQzCNPt
 /EO315DlGbfrsH97XiLWOxruCn4OLtLwXZJTKTcolGRl5Iusb8OoyoS+JTu8NQhtKR9O08xNs
 hK1Ho/poUBmB/T93X3+rX4oIHUdiFEd9HT+VhBv9RsnFV41p+oQ/SrYMpAWuozgYjpCAeJ7e8
 26512UA6zI+VxkoU3e1Y3zryXgq67pwDVmhHu+forgDVJRnBm6SkJHUj0CmNLlblqNAv9escF
 jp4bOUGZ8Clj0BAG+7Uu25efgL4VaP1zf0UVfcyE/4/ZP5DyI0E/2Ntncf0vCRtEVSC7IFfUR
 jGdHEBb4mY13RrqCJM6MHrqLqdN/DkVy+zoYhN+STkHsx2CEFvg0ZgSDxWLCpEbUtxiQqDUcB
 UCtYQK9ngi1/0S4W+JcfsttMS4Kx0W+BuOLfN687NFmqFrnLja64x/Tlfn4nTKnAEekQWJeui
 NL+eY3caqH541CJxPgvpouvS4TxFnC1yDtjHlQFGm2c8euG16PJqSYQYJN9B9R5uNgiE85Pxf
 T6tuyu3pUvLj2x1RldrkEmS/ExSViS9V3LUICp7nhqWeIv2aHcRWDIU7OSv2rsgSCSdYaYwRw
 CxabXzrQx8BLjbZAh9eN6IoLI5tA87Xjhvu+junExnj619k3ceV3HFmk3FBhip9i6NJaRTfTA
 m4T0EkD8MiSJwEjiuDhQByqtzJY09RkwfE32ByExP2xgG3D1RDxQvK6STeRgDhrPaZl55FneZ
 6bp6CoSFgOGEGu8nGo416ABehd4ALad2Vt96qIpRY0Xp83sUqdVoYRNKfsEaJBpjM7KrzJUp3
 QIMZGvI2oLeJVaE80kuZZ/JVKRmDd/sWLtuXM5WreLpKndUYAKdzoEJoZjohftoOPT8tEU0eT
 wugGpXXkRocZvuozdV1/ZI1mBdYt3bBPjMjy0cuSJzaLQ73QCSX4x8u9WclTZm6Gg7znQa/Nj
 9EVfF2dFLBVCiKSJqAy/CH9eJ5EQtNc1bTYj6mGyowckUx2qfTf43UcUqdw4YUDr8QUCYG9md
 yw/6j5XTfyuZZ3GfqBjG2/emsiap3rSZ2SKSNvWEcBSg8NKZrgQLV02xBL9UG/VjdLSRC7J+F
 5KuaprYRO8/+R2Akv
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 11.09.20 19:50, Peter Kjellerstedt wrote:
>> -----Original Message-----
>> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Beha=
lf
>> Of Steve
>> Sent: den 11 september 2020 19:07
>> To: Richard Purdie <richard.purdie@linuxfoundation.org>;
>> poky@lists.yoctoproject.org
>> Subject: Re: [poky] add a -dev package to SDK (in sysroot)
>>
>>
>> On 11.09.20 14:22, Richard Purdie wrote:
>>> On Fri, 2020-09-11 at 12:01 +0200, Steve wrote:
>>>> I try to add websocketpp-dev to my SDK, but fail.
>>>>
>>>> I did a
>>>>
>>>> IMAGE_INSTALL =3D "... websocketpp ..."
>>>>
>>>> and to get the dev-package into SDK:
>>>>
>>>> TOOLCHAIN_TARGET_TASK_append =3D websocketpp-dev"
>>>>
>>>> The result is an error in
>>>>
>>>> bitbake .... -c populate_sdk
>>>>
>>>> Unable to install packages. ...
>>>>
>>>> Problem 1: Nothing provides websocketpp =3D 0.8.1-r0 needed by
>>>> websocketpp-dev-0.8.1-r0...
>>>>
>>>> Solution: so not ask to install a package providing websocketpp-dev
>>>>
>>>>
>>>> If I see this right this approach works for other dev-Packages like
>> curl
>>>> and curlpp, but doesn't seem to work for websocketpp. What am I doing
>>>> wrong? Where is the bug? What is the trick?
>>>>
>>>> Somewhere I have read that just creating the SDK by -c populate_sdk i=
s
>>>> adding *-dev packages to sysroot in SDK, but this is definitely not
>> true
>>>> for all packages.
>>>>
>>>> Thanks for any help!
>>>>
>>>>
>>>> PS: I can see in deploy that package websocketpp-dev with all the
>>>> /usr/include/websocket/...) has been created.
>>> I suspect that websocketpp is an empty package and not being
>>> generated?
>>>
>>> If so, you either need to remove the dependency from websocketpp-dev o=
n
>>> websocketpp or generate an empty package.
>>>
>>> Cheers,
>>>
>>> Richard
>> Thanks Richard for leaving me not alone. Checked that. You are right,
>> there is no websocketpp package created ?!? There is just a empty -dbg
>> package, the wanted -dev-package and no websocketpp-package at all. Mh,
>> how is this to understand? Usually there is a package with a lib or
>> binary, a package with debug info and one with headers and stuff to
>> develop with. But just a dev-package? That is bizarre to me (a colleage
>> wanted to have this inside SDK, so no idea what to do with it).
>>
>> Regarding your suggestions to solve it:=C2=A0 I just found the recipe f=
or
>> websocketpp,
>> (meta-openembedded/meta-oe/recipes-
>> support/websocketpp/websocketpp_0.8.1bb)
>> where is nothing mentioned about -dev and dependencies. (I can see your
>> eyes rolling, sorry for my ignorance - I just can guess there is some
>> inherent rule to build the dev).
>>
>> Creating an empty package. No idea how to do so as there is already a b=
b
>> with this name So I ended up in cp and rename the empty -dbg package
>> from deploy/ipk folder in websocketpp_0.8.1.ipk, but that doesn't solve
>> the problem either. Can you or someone else give me a further hint?
>>
>> Best regards and a nice weekend,
>>
>> Steve
> You do not mention which version of OpenEmbedded you are using, but
> my guess is that it is an older one. The fix for this problem was
> integrated in commit 7cd26041, which is included with Dunfell and
> later, by doing:
>
> RDEPENDS_${PN}-dev =3D ""
>
> Assuming you are using an older version of OpenEmbedded, you can add
> the above to a websocketpp_%.bbappend file in one of your own layers,
> alternatively you can add:
>
> RDEPENDS_${PN}-dev_pn-websocketpp =3D ""
>
> to your local.conf file.
>
> //Peter
>
Thanks Peter, you saved my day. This works well.

Best regards, Steve


