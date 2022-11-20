Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by mx.groups.io with SMTP id smtpd.web11.17001.1668963569708140409
 for <poky@lists.yoctoproject.org>;
 Sun, 20 Nov 2022 08:59:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.li header.s=s31663417 header.b=d4XeZ13G;
 spf=pass (domain: gmx.li, ip: 212.227.17.22, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1668963567; bh=o2xIKDoXXn9MKkf1CTsN1fd85DsUTurdS66TkaF15WY=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=d4XeZ13GFS4RXNt4ZvxzBvn+HW5EGSkcRIABckWSi7VTf/EZBZcZprZTBn9u+aRtN
	 CGyWfzEF7JqPVDWjEN+lkXNgbDg4z2TeWk9K1H8Rf/Nr1RTioBOLmgC8irfVCqr55R
	 hMdNDXJLFVjoyQjDqSPWJHd91J73hr7/RVXWtJ/BQq2qq+ai1c02Q4CF7NBzDD7/97
	 0JYlwJMkZrqBm72dz6wtcBi+hTVIAru9JxmTgo/ZNJuFL9/5xHZgtzrP+o6SvZdXFN
	 6TuC3n5VnQISkmOcN2Tq1FE/8R9qIitK2amJ7G3YTcVkWHXW+9KyZmf6wek7jxk0g/
	 2HY5z4AmstpKA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.20] ([84.185.242.13]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MtOKc-1pCo2j3Bug-00urUm for
 <poky@lists.yoctoproject.org>; Sun, 20 Nov 2022 17:59:27 +0100
Message-ID: <6a08687d-33ed-1197-568c-809e942b1054@gmx.li>
Date: Sun, 20 Nov 2022 17:59:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [poky] gcc 11.3 bug (gcc bugzilla 101723) on armv7
To: poky@lists.yoctoproject.org
References: <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
 <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
 <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
 <61e5b4c7-9f15-1ea2-49d6-8b484bc9a461@gmx.li>
 <4f229954ab406f98ef0589105779539ba562295f.camel@linuxfoundation.org>
 <17282032224EB050.28573@lists.yoctoproject.org>
 <8ef5d68d-0383-4291-f235-089267a66358@gmx.li>
 <CAMKF1spwh_U1x-h6ntOOaiUrCtt9w6PNPK2JKyHb8YThXeP-Jg@mail.gmail.com>
From: "Steve" <star@gmx.li>
In-Reply-To: <CAMKF1spwh_U1x-h6ntOOaiUrCtt9w6PNPK2JKyHb8YThXeP-Jg@mail.gmail.com>
X-Provags-ID: V03:K1:nmzb9UN0Jo6A1jNAtqrWmqFI25LDYG6w3k+OMEGn+fQ3/krPirK
 tvwftg6h4hNE6oSqZ6owngtTs13HkfHouSZQ2LNioI32cmT9vYiJSBCaAFQ2Iyd6McMJdff
 lnEA+5YVMyZIghtBmkFZwYBt/TI2yDnNkVs5H4pedRigEXdZfnSwvqF0JNRsmd8Qf4LDTYo
 LWwCUM/VY2JDLrtIkEoEA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:/mgziUAMd74=;cIz8pAQyW1d0MTuGbKaB4AojZPK
 xtKoF5a0SIQHQ9TbrP3oSqGMB8uSdTz2Cb1pBz+EIAmRC6J9NdoNSv7AjnLrQusYkJRjKMq8C
 5OdY1b9pCsmWmMWka50wxzYpFIqmDuKxxuZmblHt6w5bgU7uModC+xQeIPYAx7i2ENXMAObU+
 xM908BoqDJbAj/UZDK5iRD31gR7xbfqkFjkY3m6VXGpribxsHAYoiJ+f/JUblCRGMlXnruAKT
 dgmv+0nE3kpoBmLe2o0ueJBZrrVi6/HpGl02gUd0aoeEu6XgOJjPBhFUPDQBvi3KrPzVPN0W9
 zl1sGrV4EdOSE6cwOZN0e+UUjC9Lp7d6WRmvi3uweHW6jr+WFf8jqh56irOqeYPHCz/8bdIAb
 P1pNH17RuiC8S3tgb2X04gz3kdtO3TFBA5nnrrSGaLgC3kfuH7VwA+fl60uRMbrYoYSw4PK8v
 Y+z2rnBRPiXWiMacjDfUmI40CfPbs2/jMTAzagwjoHyvEbAkFxQ5Diz3XLRJK0ECUkXfJ7pSr
 eUHXv2CpoHywS4ukzFhCym2mnkxOTQmcymvBqGrF2JbS9MCnicL6AzJLCQrhTbUpxSXLK2NTR
 iH+PQp2k1K1g+TKATV/oCTDrizww8Dg0Cuc7PaPIU4+SEpECrd4yu76oi7nWROpFkHB2urJh4
 q5DjfXM1RyaEqhSArKcpPURqalbCMYrjbDTRGXkfI2XBwAepFt94/hPnvnINQJNC3sZA8+y4Z
 /NBkw3Y0XSvuTK20nLwZ314GFp8cfs1qoTZQVRO3h0WMPiWXMMJTbl5m6Qreg9zseAUwzbpeN
 ZYKYv2OQKEx51gQKLIzoIS9DJV145gT8MTqZObWdhwhoEyMETm4ph0cJQCOV7eNZme5qtR3FU
 YGxL1kTLQcIwBD4pNZHqhwFThzF19LqciOZ7gIqli1dzIX4+2gg8ghsi3Sl+4Clk4uzVwn3dq
 ajiJmQ==
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Am 18.11.22 um 20:53 schrieb Khem Raj:
> On Thu, Nov 17, 2022 at 10:27 PM Steve <star@gmx.li> wrote:
>>
>> Hi,
>>
>> I found that GCC 11.3 that is part of latest kirkstone 4.0.5 has a
>> problem building tensorflow-lite. (git.yoctoproject.org/meta-tensorflow=
)
>>
>> Problem is similar as described here:
>> https://github.com/google/XNNPACK/issues/2003
>>
>> There are options set to compile ( -march=3Darmv8.2-a+dotprod
>> -mfpu=3Dneon-fp-armv8) that doesn't match to the processor (armv7)
>>
>> Following this issue
>> and points to  patch in
>> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D101723
>>
>> Which is related to gcc 9. But couldn't it be that it is not fixed in
>> 11.3 too?
>
> Its in gcc11 as well see https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D=
101723#c5
>
>>
>> How is able to fix it or probably better ask: what can I do to get it
>> working? Honestly, I don't understand much of it.
>
> are you seeing it on yocto master ?

Good point. I need some time to check that. But even if it works, it is
not a real solution. I need to build a defined state.
The fix is not a new one. Wondering why it's not in (or I am wrong and
it is just similar).

Best regards,
Stece
