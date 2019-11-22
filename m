Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2439.1574447867356701540
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 10:37:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 140.211.169.56, mailfrom: mark.hatle@kernel.crashing.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39581E00E47; Fri, 22 Nov 2019 10:37:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 353 seconds by postgrey-1.32 at yocto-www; Fri, 22 Nov 2019 10:37:45 PST
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A423E00E42
	for <poky@yoctoproject.org>; Fri, 22 Nov 2019 10:37:45 -0800 (PST)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xAMIVWYj009726
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Fri, 22 Nov 2019 12:31:34 -0600
Subject: Re: [poky] Python2 maintenance will expired
To: Khem Raj <raj.khem@gmail.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
        Junling Zheng <zhengjunling@huawei.com>,
        Poky Project
 <poky@yoctoproject.org>, Wang Nan <wangnan0@huawei.com>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
 <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
 <1c708581fdcbcc81e3fab40ef6d88175860eba0d.camel@linuxfoundation.org>
 <CAMKF1spJ1YhhKLxBE3ZvJXOQRVzNHJ_9SgwEyKfW2FktKx4S8A@mail.gmail.com>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <dcc537c3-0723-8cda-adf8-36144b280b4e@kernel.crashing.org>
Date: Fri, 22 Nov 2019 12:31:32 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMKF1spJ1YhhKLxBE3ZvJXOQRVzNHJ_9SgwEyKfW2FktKx4S8A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 11/22/19 12:17 PM, Khem Raj wrote:
> On Fri, Nov 22, 2019 at 10:12 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>>
>> On Thu, 2019-11-21 at 12:07 +0100, Alexander Kanavin wrote:
>>> On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
>>> richard.purdie@linuxfoundation.org> wrote:
>>>> The project has been working hard to remove python2 dependencies
>>>> where
>>>> we can and in OE-Core, on target usage has been removed and at
>>>> build
>>>> time, u-boot is one of the main remaining pieces that still needs
>>>> it.
>>>> Their next release should address that issue.
>>>>
>>>> There is still a need for python2 in HOSTTOOLS but that is also
>>>> being
>>>> looked at.
>>>
>>> I can confirm (from local testing) that as far as oe-core is
>>> concerned, u-boot is actually the last piece, and after it's been
>>> moved to use py3, py2 can be removed entirely, including a link in
>>> HOSTTOOLS, and native and target recipes.
>>
>> FWIW I'm tempted to suggest we take a pre-release u-boot into OE-Core
>> for now until it does come out, letting us proceed with the rest of the
>> py2 rearrangement...
>>
> 
> this should be fine, I think, downside is we might have to ship it if
> u-boot upstream does not release in time for spring release but
> chances of that happening are low

I think that is a good idea.. When I looked back in August there were still
support scripts that appeared to be python2.  Also I think other layers
(meta-openembedded) had a bunch of python2 uses in them.

I'm wondering if there needs to be a way to poison 'python' and 'python2'
executables to find these.

--Mark

>> Cheers,
>>
>> Richard
>>
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#11824): https://lists.yoctoproject.org/g/poky/message/11824
>> Mute This Topic: https://lists.yoctoproject.org/mt/61302503/1997914
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#11825): https://lists.yoctoproject.org/g/poky/message/11825
>> Mute This Topic: https://lists.yoctoproject.org/mt/61302503/3616948
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [mark.hatle@kernel.crashing.org]
>> -=-=-=-=-=-=-=-=-=-=-=-
