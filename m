Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web11.18691.1669277527187015974
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Nov 2022 00:12:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.li header.s=s31663417 header.b=MFiHdejX;
 spf=pass (domain: gmx.li, ip: 212.227.15.19, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1669277524; bh=pBgK2hpKnUQhjMK+DBMDrpEzX0bl5fs91zuOR8Qx3lQ=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
	b=MFiHdejX07XElvSGylRbVvYVJnOTCzSCH5LgfJ1ccVR4CtWRPyTsw2jzdLusmi7Rg
	 /Kin0n6UFT37j3WN7ACKrYoV+bnkzzuONJYeoyc7C+i1nWRPofc5JIldSHuQsITKml
	 hFC6Iv6t3sxOlJPE8WpDFnWjAGkPDu+BYjrXJaWEBb6MdTR4ziUx/Uv5WrwoVhr9kB
	 kCXIV8b2v246BJKaMLuOMTVm8v2G0VL2M7VgkTeGreFsPFxbV33VAxMUqcULHLW2BZ
	 w5GZhCjx2NiEMexG5CWnaw8TSdChAgUtM75ohHzqPP0iokpe8+kHWph9lbnSAxs0Jo
	 H9UH29gICX+nA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.20] ([84.185.242.13]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1M9o1v-1osM2T1usf-005sw2; Thu, 24
 Nov 2022 09:12:04 +0100
Message-ID: <0f5cfbcd-03e3-4154-7486-6e812b258baf@gmx.li>
Date: Thu, 24 Nov 2022 09:12:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [poky] gcc11.3 (?) optimization performance problems
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
References: <c615aa2d-b8f3-913d-0a0c-a85037788752@gmx.li>
 <CAMKF1spZh5_JVq=xcRXErUJeqaAJncnLLp=REtCj9ghG51qXxQ@mail.gmail.com>
From: "Steve" <star@gmx.li>
In-Reply-To: <CAMKF1spZh5_JVq=xcRXErUJeqaAJncnLLp=REtCj9ghG51qXxQ@mail.gmail.com>
X-Provags-ID: V03:K1:NidAcL22ROMl/U3JcBDbS8tM/9tYUrR3/FAP5ItbQuvIEL3CJ5K
 UWWtATganLvMq/smLC/2FwDsuJttYuen4z3FdVQoM38RWzQLa26LtwDit/PtRdbFq6AAy2K
 3Dz5j73FqhViiTiIc5Kp+iNoztFQsptW/wm63X6R49FMSbVEPgZWR5+M+yf9SedTLZNJnUj
 g7TUjgM8aSgFRhqu176qQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:C+WVjZFc5Lc=;CZV9GIQZEhzSZW8zdVqkyzb5tz2
 PD4LOhi7zqJvP9msAM3PUAjHcao4kplfNkaZ5MRtehUAZfjHJqSGr5mt4IsCjDhptH0uIBwdG
 QCW9w9KlWqHI2VqiYdaadPx0fl55RNlR2SYRjsM9t8Sf4Mu12PBNUKranCWa6n5aSXou6aNkJ
 II+E6IggxzXUvev8wKlVNLzPGggfvZiB8uh+DnZsU3LRBcW1Yb3Z2UHx24/IMgIlo3fu/5m3O
 k2DbUkSMDdsXiRtzwdmdu8mpjpEF14IRE4yoIupMYrkD5ro6/8pdnUOit3tBtGlSjaYQRzGuS
 fhSE9KytJmfVqhveA7kxDRsAjLJY7UliwNQm531/05o3yTUhRt8AulnObBo1bQLl7kekASeZ1
 2MNAaUJAUyulxByB3y1Ecvs7icl07csd46speppL+RWW0xZVs/v9qr5orCUgqKG2D5+7GROdr
 5ybWX3+5frqvygLmC6qxUlKJadVqIhuwBL2HuoTBksC+TzxYMlFx08nWfQK7tiZBUkWYnoLaC
 sZx5gGVOxfXt697jIzbM9u8QMHrukDZCQFy6R1SQb58W08/SqAEt8kgvHNAMAZcif5qmD3kKJ
 zKcGSfqZMqoFePIt64SrtDZXPcegehRoNkPYHCPG1Deh29lI8B/j5NSaHh21+6Q6ygWBzSJnJ
 PtlD3Ht82cg6FkRvUlId0tF6PQNojdp/72S2S0rZrnq/bjOtCjfiqmX6FJAPZ0UV4L8b81kgI
 EovxzdehZoHdg0HnIZKbUhXZIc59YmfLhwK/s5SMEMxp0ktzg6jizeZsvNEdt0V439eC0NXsz
 FgtbaJ0YAfRIha/GXoPUqqWs0Y53CLtNENwlubBfQxZiEJMg61soIg4mUG1axqe4fJIn/FKLz
 GU2DOWtnbXDF1A4h6D/YmtqSWgUFXnFsLten90G+EUCiJeeGIjVnU2E914ydb8PdLosgFHKC+
 rCHCVg==
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Am 23.11.22 um 20:52 schrieb Khem Raj:
> On Wed, Nov 23, 2022 at 9:28 AM Steve <star@gmx.li> wrote:
>>
>> Hello, I switched my poky distro (and SDK to compile) to 4.0.5 - runnin=
g
>> an CortexA53 with 4 cores (before it was 4.0.0 I think).
>> My test application simple average over an array of 5 million bytes
>> takes now around 8 times as long as before.
>>
>> What is changed is gcc from 11.2 to 11.3. Can this be the reason?
>
> It can be. However we need to narrow it down. So perhaps just revert
> the 11.3 upgrade
> and leave everything else at yocto 4.0.5 and see if the behavior is regr=
essed.

Building a SDK takes some time... seems I am wasting time building 4.0.1
(gcc 11.2) and 4.0.5 (gcc11.3) clean again.

I am not good in analyzing files, but compare the strings in my test
binary tell me two differences: GNU AS 3.7 vs 3.8 and glibc 2.34-r0 vs
2.35-r0 (one is done with my "fast" SDK the other with 4.0.1)

Digging into details, my "fast" SDK was created in yocto 3.4 (not as
assumed in 4.0)

How can I test that, simply exchange the binutils-recipe? Will that
work? Can I really mix that version?
How to do that 'revert'? Just copy a gcc recipe from an older or newer
version? Finally it is not the compiler, but the cross compiler, right?


>> Compiler options, eg -O3 keeps same. Is there indeed a regression?
>>
>> The speed neither depends on rootfs nor kernel. Just the compiler/SDK
>> decides wether the compiled app is fast or slow.
>
> Right, there could be other factors as well. We do change other packages=
 too in
> minor releases and it could be one of these which might have caused the =
issue
> as well but its better to go one by one.
>



