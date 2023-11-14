Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B7C4332F
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 07:53:29 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web10.8259.1699948399272937462
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Nov 2023 23:53:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=star@gmx.li header.s=s31663417 header.b=IRItao0y;
 spf=pass (domain: gmx.li, ip: 212.227.15.19, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1699948396; x=1700553196; i=star@gmx.li;
	bh=4z7MIG5NVyOOJp5/jvtxRyz9WpLKt2ztnmVoYRiH8Ds=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=IRItao0yJFWkYDWV42ZdXSdkazFXwK54lZEvl7cvGHQE4wgU9FAW3qeTcufb2khR
	 xmNsq/EgPIEq0DjQd5oIUZjmtyFyad8Ck+s5L/jYv9pqQCx+lGi/dmTIC2DEZ/+Zd
	 kuopa4CGZd4mrgYJQUcFYEV0mAutgV11NHweMAvv1imdY9p0YHblYLoKnbE5tBCVM
	 EjRY3VXvq00bwgmZHkCEMatrf1BaOEPWtKf1ALcLV2zVdTK4va9e9HhhvuDanpxGJ
	 Bcg/XbxAJCmN3ubTwIAVFJptrXVuRfqOrsCCrwLu0z12qm9uFoVhNdQocghqE7hj0
	 tn7bWz8Nr5zTXaYp2A==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.85.4]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1M7b6l-1r1SFy3H81-00850X; Tue, 14
 Nov 2023 08:53:15 +0100
Message-ID: <b7d7cf97-4750-45d7-aebe-a3d01d0e081e@gmx.li>
Date: Tue, 14 Nov 2023 08:53:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] let the manifest/used licenses become part of image
Content-Language: en-US
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
 "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
References: <54265c1a-f32a-4285-94c2-58fad656624e@gmx.li>
 <DB5PR02MB10213A41BAD15B82E2709E7D4EFAEA@DB5PR02MB10213.eurprd02.prod.outlook.com>
From: Arno Steffens <star@gmx.li>
In-Reply-To: <DB5PR02MB10213A41BAD15B82E2709E7D4EFAEA@DB5PR02MB10213.eurprd02.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:ePo4N6v4Ou30KXuv/FVXYlM8EUkrK01nySLKPY8Z3MibMAn7tkM
 3aBWjGGrC6voYul4UeUdByMm5S2zDye2QsvegjoXs0DdPswaB9P2C3mVZU9mEbEGuNws14/
 nr6SLYQqyrxeTJ7D/UTjGMaXuFN86w+5Ve64Z6hbwOQLHl5ehsGJEZMg26aai/ibXsG4pjE
 18IwuKeJctbmhfFydqtrQ==
UI-OutboundReport: notjunk:1;M01:P0:njn8/o5NuJU=;nCG7N1IMt3GBA22ke6JjtF4h8dG
 TWLVnMLkXjDqxmgoO0tfZ1TjsSw7lw4qODJIUY0IhSe1k268S+uJdP+siDYJcHAAzC+srKYGr
 69cQrE7BA++NxreAhO98eKqsOoO9pdfjdAGRxePDuMYNslUyjJlyEEejs9wAdRTdkDcRiF+nQ
 IfKxHYh13fynAbNA5g/6Gl9zkyFSFzokAs7Bds5g2Rk+2x569NtBEHOoXW1dIGuwgqn4m2dCL
 3RyFjBq9eELEEyJ0XkLtighQH+pbLQ0s9/9oSYyI2g/83PeH9El4JWtoe8iLtRxTYhR7EWgfz
 9fb8ybkW/Mcy/VYtXES1m7l+jGLgif83/SzqLoV9vvu6jevID0PZco41rKSqhsf9WNwtqbbO1
 MzCZNCNyNNRYoQ9skNNFr5VCIn3Dm4KjnFEszHaE1RG2XguBdZ2iISaFWXL6CVUPdKK/1Gaam
 35GYOdLUiSB5hczr5Px875ifTlyBbi+a+CfUQqB6YYVvwK4UXGC+xVW3oVmpXrAJBk1LK1v+h
 IiWzyZkHbqDwbad/Z4giHmst1mNmNp/v0r0h+0U/wqVSNJ/DpbQAGK9YKl9icjj3G5FN1ERWZ
 6r3btVZBbo/73sChnG005wYYJDsO5bmQKtiATtACs1dmHMwkTgB9gqTXKwThQXGVc7hwjYxn5
 z3fDT5Sk3jk6A5O8yYo+9H/urHuiJJGTwjhEG+19tPiMswbjDB4Y0E6bPdQr9HlElAFLbh3Z+
 OhCO2S4QuBrKaGVO09Wwe/vk0cshjkZLPFXpl6rbHTkb5ZMQlGwe7TzoEKHUFoxrpHiccBr3/
 DbOJv6+vJll+w/uYk9wXm2BUk/qAy0ns8osLOiU93W3ZD/B9WyE4mcuYf2kj95juvgCcYjy4p
 258gnpoXdGqBsxPcs9+RoHKpyGWMQiyO4h1kHQCd5z9XtYpJfGaEkRhlMHICeQ8mhsa0l/fRi
 yXJL2/DZ7VEmCknJR0Fuf81+8aE=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 14 Nov 2023 07:53:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13202

Am 10.11.23 um 21:55 schrieb Peter Kjellerstedt:
>> -----Original Message-----
>> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Beha=
lf
>> Of Steve via lists.yoctoproject.org
>> Sent: den 9 november 2023 08:17
>> To: poky@lists.yoctoproject.org
>> Subject: [poky] let the manifest/used licenses become part of image
>>
>> Hi,
>> think it makes sense to provide in the image itself the manifest and
>> what licenses are used.
>>
>> I want to copy the *.manifest to some place in filesystem, but that
>> doesn't work. Even if done in IMAGE_POSTPROCESS_COMMAND, the manifest
>> file seems to be generated at a later stage.
>> Although here is stated something different:
>> https://docs.yoctoproject.org/overview-manual/concepts.html#image-gener=
ation
>>
>> Any hint how to work around that? Or am I completly wrong?
>> Best regards,
>> Arno
>>
>> Another thing. The tmp/deploy/license folder keeps all ever used
>> packages. How to get only thoses licenses that used (as in manifest)?
>
> If you set:
>
> COPY_LIC_MANIFEST =3D "1"
> COPY_LIC_DIRS =3D "1"
>
> in your configuration, you should get the license manifest and the
> licenses added to your rootfs.
>
> //Peter
>

Thanks Peter,
that helps me a lot! To not spend so much space in final rootfs, I
compress that folder /usr/share/common-licenses into a single file and
remove that original /usr/share/common-licenses via
ROOTFS_POSTPROCESS_COMMAND.
Best regards,
Arno




