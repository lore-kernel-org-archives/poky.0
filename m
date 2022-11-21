Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web10.41375.1669044606581626956
 for <poky@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 07:30:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.li header.s=s31663417 header.b=pAE98hl6;
 spf=pass (domain: gmx.li, ip: 212.227.15.15, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1669044604; bh=f1qc1HWohcapVbyKWORHtLje7OoSOUlXdlpV9ZmxThE=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=pAE98hl6RPaQCr9JuSNscUcBHa+qCLZOFLXqsx2xKVR9tdUkXSr+BVJR1d6rlq0YO
	 PxOc/9P+nZdjxvKYt8L144wUL7MwhPL5zZoxpCAgi9fWvV/0Hs6YMha+F0xZKYOvNV
	 z+NZSH3zr6gvV8yoLaSF8YBadRtCIBIYcGDCoD03132SGhqzbuPuvjuoaPd4skf/fn
	 J7wUe6wpahIWRWF5VLGw4F0mrYBZciepwH2qIkIBemh0qu3GCi1ATFzW1aBlP8Puai
	 SomqZBOajRLuVAW+A5IAzxjfUKbFLsq9d7GUV4WVQ6gFdiLnp1vYOsCWW/1YVXvCMm
	 XRLF7SP9H+D8w==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.20] ([84.185.242.13]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N6bk4-1ozpuE20je-0183OG for
 <poky@lists.yoctoproject.org>; Mon, 21 Nov 2022 16:30:04 +0100
Message-ID: <3709403d-9030-7100-2899-fca493ae5857@gmx.li>
Date: Mon, 21 Nov 2022 16:30:03 +0100
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
 <17295986615369AA.25787@lists.yoctoproject.org>
From: "Steve" <star@gmx.li>
In-Reply-To: <17295986615369AA.25787@lists.yoctoproject.org>
X-Provags-ID: V03:K1:B3V36qseD6h4rneZ7y4RP8fyZr3pznEzz06J+YH9uK0tgx8C+8p
 8KoH6Fq/UY2SQEWSK3uU+KC0wtN9x8R3qoaG4vFmzxh6DIUvwcz5USEbIaxEwhTANfZdHJJ
 xnBfR3lDmUhqiPVzIdYUE2yGIprEIWGQXXzOBc9TAUCAGVE2TKJtBs8bSDgDmB+kYauTBwo
 VRCaeyJWgsH3HXvnZytqA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:wFxxNF8ADU8=;CzOTdcNCKQLYtgIQ6Ec2jK40wiT
 RVYxOVl6XhzrED0gqClEKZdnlePsnuxoKnrJZwvQCX1ep0nRn2BqsI8QrwXtcg3mrB0NwwA0F
 MceCs6jxKEx971kDOV5pVZ6HR4dUUboscnmCakd6rVseWlyNlosMWn6ZAH254s8wu+R8b19Tw
 7pgOGDGCQyy+iVmzN68UEWL4YZLg5n3QuQTnucqEg6kdBJDZ9s2tgFJSajSdPXwPnM4wL15AT
 RETN8Hc8JHOu0qzNTPBZKQRoD+4YIAQULQC9bT/WaVWi6Xp1sKY4JBte5BpHxUQAj0B8YKq1a
 o/yc9A9dN9Go4b3mjLsis0PFuD0rYQPdAtRZWzszR9dq5ImqIe3Mmo1PBI8orJzQIXTBhs5dS
 3lHfdReniNDoxjSpNabvW5QJEkOIKNXUIKDrln+FXMonfI/nNpYP6tiVOPQLUespvxhk+s+Ka
 qvQ+jRQZ0G0o5K8S+qlWqGxB4zhvXA8lx9nTMvCmMyJKXLV8tNfsEjGR0aMKV+Niug9+4veuT
 jUyEKAuVZXPQGzYEe0WTcq9mxvabU+gOPUdd0R5KJDSnGWvmwTscRe7LdhdA2Ic9KRvQXDosY
 M0Lm1a8KfJwf1DcQNyuomBtcqTTjdeREezZN9dTbhbgRY90/o+uBSexL5WQqDtNkXeYQcKjdo
 vkjxl+0qdXUmIowyXtIPNnq3FiDq9x90W8IkHfx5A0blROmUAjf8aLbbxqp5WDrsd7YaIuaFl
 Riqs0KpZwMzQc71eBft6Rk6VZYBa+mXcDscEjAGDJoDB3/qzh9ktHfE0coQuYv4MY5vYjD3nf
 rR9ZzfFiEkimowAK//M3NjB9cMu8NK7bc8F/opZivr6uIYh0uM42/TUzN19OJ6zMSvfC7WKFC
 mvx7Io2JtbuBplhwCOf4lv9iYJDFi8LTwLfTub6+Pd+lF5HMa7JAHUKH8vFRA4y0S4L9uoS6p
 HGAgxA==
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Am 20.11.22 um 17:59 schrieb Steve:
> Am 18.11.22 um 20:53 schrieb Khem Raj:
>> On Thu, Nov 17, 2022 at 10:27 PM Steve <star@gmx.li> wrote:
>>>
>>> Hi,
>>>
>>> I found that GCC 11.3 that is part of latest kirkstone 4.0.5 has a
>>> problem building tensorflow-lite. (git.yoctoproject.org/meta-tensorflo=
w)
>>>
>>> Problem is similar as described here:
>>> https://github.com/google/XNNPACK/issues/2003
>>>
>>> There are options set to compile ( -march=3Darmv8.2-a+dotprod
>>> -mfpu=3Dneon-fp-armv8) that doesn't match to the processor (armv7)
>>>
>>> Following this issue
>>> and points to=C2=A0 patch in
>>> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D101723
>>>
>>> Which is related to gcc 9. But couldn't it be that it is not fixed in
>>> 11.3 too?
>>
>> Its in gcc11 as well see
>> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D101723#c5
>>
>>>
>>> How is able to fix it or probably better ask: what can I do to get it
>>> working? Honestly, I don't understand much of it.
>>
>> are you seeing it on yocto master ?
>
> Good point. I need some time to check that. But even if it works, it is
> not a real solution. I need to build a defined state.
> The fix is not a new one. Wondering why it's not in (or I am wrong and
> it is just similar).
>
> Best regards,
> Steve

sorry, can't test Master right now, it is  another gcc (12.2 instead of
11.3) - but I need to be in 11.3. Please, if possible ad that patch to
kirkstone release.

