Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web10.9264.1635325797406119296
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 02:09:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=GGt2CovJ;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1635325795;
	bh=1J4k9w9PcsiEFWYX0ABCMUD3/A6GxNugVAADvavXtYk=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=GGt2CovJgVMQ4tfEcxcqMArDGKsCW+Ehk401K2mIbQZ6OlpGN8XI13W5PcrzwV38T
	 U8hSuDJGEzmNjrEcR4+i3n3IWJJgM91y6un8MZAvY3hjf+lnKGkwZF+ZYF/2CFqWBU
	 xTv2X6pyPJ+zYaocTIiZGXSNknnZSQ0r7LQKXRhA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.20] ([46.85.161.156]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MpDJX-1n0zOe1Epr-00qi3S for
 <poky@lists.yoctoproject.org>; Wed, 27 Oct 2021 11:09:55 +0200
Subject: Re: [poky] Warning: empty_var_volatile doesn't exist
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
References: <CAP2OjchVtRJfFwirrNjJ80VHLEZvMkascBbDvVkbsOfBB5BCjw@mail.gmail.com>
 <CAMKF1soxAHRFgzqwoTJ+xXbcBKBWqR2MwoDciJvw-6Hijw7Gmw@mail.gmail.com>
 <CANPvuR=FRqssxM25SAXE7pQw9=1cPOk9yya1sW+JOo-vAJ=xJA@mail.gmail.com>
 <cccb58eb-bdc6-8e74-f0f1-b1f4d17a3344@gmx.li>
 <658c10ff38a1404096cd4f689f91dac6@axis.com>
From: "Steve" <star@gmx.li>
Message-ID: <e8f04e2d-e1fb-7186-c2ef-a684da92a609@gmx.li>
Date: Wed, 27 Oct 2021 11:09:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <658c10ff38a1404096cd4f689f91dac6@axis.com>
X-Provags-ID: V03:K1:wRhZbLbr0v3J+lQ8aNAumQ10hb643noFYOtiPmZIkkJRXbrCDQ8
 TaqQ6671em0KzrkiWQHPpCL5ZSXnqNOuE2umLjL0jvtKxZA9UpJZ4cNvc+LLQcd9R9r9frf
 QDD65hfShba7e/+bbfN4zDlSXA530dJ9C3eZALX80DxyZ8b3Qm9kWbwDtVgASm8CTEFquHm
 ZTQIZ3neMzwrpXL7hNTaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P6qOgZMGF4o=:4FhkZTbJwwXfBpVOrtyGR6
 tH9lnBXD85P5Um94qLek6q98H0JUupO4KxtyaUD0vagSyT6t892x1+NwgDC/z92+DnJyaka2L
 mcuTNR0mKWI3FrIM1iVs52jPyT5TnYNjq0+RoE96x5SKp5HKX7syytfv8PocqzAVNaQebr5ZG
 Tp8a540+5jB1sXYUH8uvRwhfWmevMGaxvzVYhyzds8Q9kQLvPYKDPQlgE1omoEw537arxur8H
 7zZl5D66st5Cjy3FexxICkxbnwdv6heBQoGfrg/7EMpL3jnD5CvTpEYsoJYNpaL7xVBQXuo1g
 Ux+1IEP3zAguDY8hPCJuffDjNFD/Em2RYFEtqhZHAJHEf4A/nP8p8IzwXVt/jgMWBF2RJybnn
 YHFIHPCUIvlIY6v4AaGHTSUTApXr+ckvfe7XC3G1DGilDsmPYaGX+6EE9Hnneer6a06AU9ebx
 GDqvzLlWI9MChN++keEXPOhR7I/nO1l8UOXlBQ7TnpVNqkBkpZYlwh+n/0LvxsOQCyWKwGR37
 TUM3juSKY5X6ZhNGsumIUfNCt2pdGuN80a/zm1hxpMZ/6yvSvA49uRSh2QYuoyg4849yUiPuq
 KLn7ZU/NYqbOIxsXs50A7QDIbTQ3/Kr+/xvyOeDWHUQIENqG5J54EjichQ6eXy58158OrAJOj
 RjRFf5SLVZAazMGNLrFCvlHTQkWcAFQ8H1262keTNHsq9CfCekZnfHmI3z9gfRbHSO8Amme8o
 W9WRrEI2B/s02H61M7Nxl/AP5gfFc+8H62/0dUhzf8q8etfX86IwnMGhvh6UrNEGcG2D7Q2UF
 R6VlWyWKpf2nluptRte9w/6Z0KLv2DjkmB7rJj+I2qvQ52ioXTjbALr0Ia4LTFt9p8LV3o//x
 RFrrjLk1T4JzVKrHcWweWaC+xGE5A1G29usR4inkQO6w2mc73L/uMxOdmmGWAYbdn5b7XZaDU
 +o246i9XeMKvBXl8pxbXh3s92kVZWtJi8qRuplqgBXkH76I5F8MgjbZ8dr8RbPJybk8f7cUbG
 hYPHF1KakftyQKFeGOO6T5oZepD+imcbIXWfdpxzL5KmuocPKoqX+vNP6WTTOPk2pQ==
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Thanks Peter,
>> -----Original Message-----
>> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Beha=
lf
>> Of Steve
>> Sent: den 27 oktober 2021 10:42
>> To: poky@lists.yoctoproject.org
>> Subject: [poky] Warning: empty_var_volatile doesn't exist
>>
>> Hello,
>>
>> I would like to remove /etc/timestamp from my rootfs.
>> I found it is set by "rootfs_update_timestamp" as part of
>> ROOTFS_POSTPROCESS_COMMAND.
>>
>> I did in my image recipe the following:
>> ROOTFS_POSTPROCESS_COMMAND_remove =3D "rootfs_update_timestamp ; "
>
> That should be:
>
> ROOTFS_POSTPROCESS_COMMAND_remove =3D "rootfs_update_timestamp;"
>
> The _remove operator will remove each word specified from the original
> variable. So in your case it would remove all "rootfs_update_timestamp"
> and all ";", which is not what you want.


It isn't as easy as in original is like (watch the blanks)
" ... ; rootfs_update_timestamp ; >next..."

So if I do:
ROOTFS_POSTPROCESS_COMMAND_remove =3D "rootfs_update_timestamp;"
it is not removed
and if I do
ROOTFS_POSTPROCESS_COMMAND_remove =3D "rootfs_update_timestamp"
I got errors because of "; ;"

So my guess is, the original recipe with this blanks is not correct.
But how to workaround?

>>
>> That seems to work, no /etc/timestamp in image.
>> But I get the warning from do_rootfs:
>> "Function write_image_test_data  empty_var_volatile doesn't exist"
>>
>> Did I do something wrong? I am not feeling well to ignore warnings,
>> especially as I am a beginner here.
>>
>> Maybe allow me a second question:
>> I need a part of utils-linux, but won't include all the files (due to
>> space limitations).
>> I guess I need some utils-linux_%.bbappend - but what has to be in ther=
e?
>>
>> Thanks, Arno (in Yocto 3.0 atm)
>>
>
> //Peter
>

Best regards,  Arno
