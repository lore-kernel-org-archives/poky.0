Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web11.41219.1669357857572111497
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Nov 2022 22:30:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.li header.s=s31663417 header.b=Qdxae7au;
 spf=pass (domain: gmx.li, ip: 212.227.15.15, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1669357855; bh=OXCbiBTSR465AWPVGt59Mj97NTS+kie0T0aFANqWvj4=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=Qdxae7audlxZ65pVS/bFpH7jwBDcSyNMSJq2N3gvcsR0nujD5kHBs1Q94i2IqEq/Q
	 4rXQSanr6+1G37GkbjhCuuo5jBAtHy0B5dzrzJ3/hoetgeCk/LUhnCVo8xca6o5CXX
	 FWO5GgyxaUViUZGFsBHzaLD+yLV0/msHeNHM6W4R67P+QW6n+PiRjLt2qo/xZfVcml
	 BcZhk42ASf4aAi1p/O7Ur2P/r7t/P7ysasvTkT849Xwd+68MBJrH65mGw0fNS3tWNS
	 c8Bu0xqEVH3eLStjHsN/nfugJLlkrZGyOWI3rBhy9N4nPcCVWaNxxaC9JF96MzLXnI
	 ipDLxf5tLCEog==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.20] ([84.185.242.13]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MiJV6-1oVT4L0cre-00fUlA for
 <poky@lists.yoctoproject.org>; Fri, 25 Nov 2022 07:30:55 +0100
Message-ID: <29907449-6772-0b9a-7fe7-9dec1a02decb@gmx.li>
Date: Fri, 25 Nov 2022 07:30:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [poky] gcc11.3 (?) optimization performance problems
To: poky@lists.yoctoproject.org
References: <c615aa2d-b8f3-913d-0a0c-a85037788752@gmx.li>
 <CAMKF1spZh5_JVq=xcRXErUJeqaAJncnLLp=REtCj9ghG51qXxQ@mail.gmail.com>
 <172A77114EC2E04B.11309@lists.yoctoproject.org>
From: "Steve" <star@gmx.li>
In-Reply-To: <172A77114EC2E04B.11309@lists.yoctoproject.org>
X-Provags-ID: V03:K1:eLTcGYTQGBsv9Eblz5K2yzi3SCK0tCXaKlRkqCRfoA35soDv2eG
 tjr6gntJWbsjpuLE+Y8OtXVzJdflsjo+JHSUKqvyyNbwKfvfPTgsD6AlCHArwRTwAZM1+KE
 00uRt2rqnS5PfS6bsUmxgDbUJHD2ICZEOMmeTR/hrojWVF1CfEUnOOAe0URpwv6d1iXwi8m
 uZO2aGm4nmtH2CxipvPyg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:AmziS6YkjAQ=;qXV7iVnWJHxfOIL0OasBMbtgu5j
 C4ftom+xg0PSjtXQO5ayYwe6CfNkagA6u+BfnBsjV4pYcifwlVec/42aKltAJJVM402NHmlQw
 0k/Le4SAQcwvkILsGRQTenZOAxB+JMvxdw4I8G8Zd+pd2bL+KAYMb47PryZkPNO9eZzeXzFfT
 7zrM0ZcmUr9u4MoxJwPrz+OUZAluFoWH8ctebyG3lnZqziqMV7sK1hQPSlgMDhlW/wZd/8Km/
 YkVf+MSVyz4Jq/rhs2ECRfDPikiDMk/ppsMXdrIekEA4EwGqJ0YWWl4pfhV0BkGPFqMTBUFQP
 jHQyBFqolL9DO07U3ITMhUZKOUZUBNs3Sdd8s/TrHWt1Ro/T6OUgbG5d4ScrPJXjM5+JhE0ro
 zyV+01KoIUj2bIjx6VcGEqwoCWjJmn77BZKk3/MyE+UGfM9+WoPbWOfMqcQOkX3ZumYWRqXyZ
 QglZ6EU4WcxHnkZN1uVtbF+rj/yQiMfdkipA76OYYEsbjTXZJ6ts3mZu8APbm3v3E9XfisYX2
 5unSIZyf+Aan5fdOilt9OqxjMQxUT9Png47BeTmmWovxRnM087qsksSEWP/iJYfIxX2L6/WYD
 zRi5vhYR+VdeVLafcsxfT2hgdvl9HIqQvFYdLFkMZZ9dk7HhommQWgKDmgoDei0x12AUfnUip
 J6uC2MNI++FkITrm4d4nm18/sFGl6qLihzk8T/pBR3jlDatCYuBtp3L7WOlmASUPzqkZDsoY2
 l9bpW21Tr/uBQJxOin3tKEhmlmmpW1RfBRl6rR6uza0DQXMTA0Zf8Kz0I3DwWbDio0Z/9D17t
 c9eSxluDpUjPcGfbbQRyv8k5PGYnAr5SHv8mGUOTpz29q+YzwYDEWOoGFtfcIfnixPwnsfbPh
 glp3e2RGj6mp1rNjLQT0lY3mxLlIzvswiqfH7Xbst8sTWoGyORfnQGae7MAlQk8ZgC5xwpHsI
 5ZSVxaO/4FoPR6c+pJVxb5JjkXQ=
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Am 24.11.22 um 09:12 schrieb Steve:
> Am 23.11.22 um 20:52 schrieb Khem Raj:
>> On Wed, Nov 23, 2022 at 9:28 AM Steve <star@gmx.li> wrote:
>>>
>>> Hello, I switched my poky distro (and SDK to compile) to 4.0.5 - runni=
ng
>>> an CortexA53 with 4 cores (before it was 4.0.0 I think).
>>> My test application simple average over an array of 5 million bytes
>>> takes now around 8 times as long as before.
>>>
>>> What is changed is gcc from 11.2 to 11.3. Can this be the reason?
>>
>> It can be. However we need to narrow it down. So perhaps just revert
>> the 11.3 upgrade
>> and leave everything else at yocto 4.0.5 and see if the behavior is
>> regressed.
>
> Building a SDK takes some time... seems I am wasting time building 4.0.1
> (gcc 11.2) and 4.0.5 (gcc11.3) clean again.
>
> I am not good in analyzing files, but compare the strings in my test
> binary tell me two differences: GNU AS 3.7 vs 3.8 and glibc 2.34-r0 vs
> 2.35-r0 (one is done with my "fast" SDK the other with 4.0.1)
>
> Digging into details, my "fast" SDK was created in yocto 3.4 (not as
> assumed in 4.0)
>
> How can I test that, simply exchange the binutils-recipe? Will that
> work? Can I really mix that version?
> How to do that 'revert'? Just copy a gcc recipe from an older or newer
> version? Finally it is not the compiler, but the cross compiler, right?
>
>
>>> Compiler options, eg -O3 keeps same. Is there indeed a regression?
>>>
>>> The speed neither depends on rootfs nor kernel. Just the compiler/SDK
>>> decides wether the compiled app is fast or slow.
>>
>> Right, there could be other factors as well. We do change other
>> packages too in
>> minor releases and it could be one of these which might have caused
>> the issue
>> as well but its better to go one by one.

Based on 4.0.5 I reverted first gcc recipe to what was in 3.4 and in a
second step binutuil.
The result keeps same. I am clueless and need your help please what to
check next. Any optimization that works only on a certain kernel that I
don't use maybe?

