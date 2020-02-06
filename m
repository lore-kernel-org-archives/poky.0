Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6392.1580957143396443872
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Feb 2020 18:45:43 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: huawei.com, ip: 140.211.169.56, mailfrom: zhengjunling@huawei.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B867BE01673; Wed,  5 Feb 2020 18:45:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [45.249.212.35 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
X-Greylist: delayed 947 seconds by postgrey-1.32 at yocto-www; Wed, 05 Feb 2020 18:45:39 PST
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A54CFE01382
	for <poky@yoctoproject.org>; Wed,  5 Feb 2020 18:45:39 -0800 (PST)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 52EE210A1EC04473C576;
	Thu,  6 Feb 2020 10:29:50 +0800 (CST)
Received: from [127.0.0.1] (10.111.155.88) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Thu, 6 Feb 2020
 10:29:39 +0800
Subject: Re: [poky] Python2 maintenance will expired
To: Tom Rini <trini@konsulko.com>, Alexander Kanavin <alex.kanavin@gmail.com>
CC: Wang Nan <wangnan0@huawei.com>, Poky Project <poky@yoctoproject.org>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
 <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
 <20191121204251.GO971@bill-the-cat>
From: "Junling Zheng" <zhengjunling@huawei.com>
Message-ID: <a3c2090b-54b0-58cd-6502-e77eb4cf5b43@huawei.com>
Date: Thu, 6 Feb 2020 10:29:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20191121204251.GO971@bill-the-cat>
X-Originating-IP: [10.111.155.88]
X-CFilter-Loop: Reflected
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 2019/11/22 4:42, Tom Rini wrote:
> On Thu, Nov 21, 2019 at 12:07:14PM +0100, Alexander Kanavin wrote:
>> On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
>> richard.purdie@linuxfoundation.org> wrote:
>>
>>> The project has been working hard to remove python2 dependencies where
>>> we can and in OE-Core, on target usage has been removed and at build
>>> time, u-boot is one of the main remaining pieces that still needs it.
>>> Their next release should address that issue.
>>>
>>> There is still a need for python2 in HOSTTOOLS but that is also being
>>> looked at.
>>>
>>
>> I can confirm (from local testing) that as far as oe-core is concerned,
>> u-boot is actually the last piece, and after it's been moved to use py3,
>> py2 can be removed entirely, including a link in HOSTTOOLS, and native and
>> target recipes.
> 
> And for the slightly wider audience, the v2020.01 release is scheduled for
> release on January 6th and Alex has tested the current -rc within
> oe-core to confirm we're all good with respect to just using Python 3
> now.
> 

Hi,

Is the "v2020.01" released? And, what's the name of this release?

Thanks
Junling

>>

