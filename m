Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05CF7E0093B; Mon, 27 Aug 2018 16:17:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E5DCE0053F
	for <poky@yoctoproject.org>; Mon, 27 Aug 2018 16:17:13 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7RNHCn5016989
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 27 Aug 2018 16:17:12 -0700 (PDT)
Received: from server.local (128.224.20.193) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Mon, 27 Aug 2018 16:17:11 -0700
To: <richard.purdie@linuxfoundation.org>, Kevin Hao <kexin.hao@windriver.com>, 
	<poky@yoctoproject.org>
References: <20180825125134.267328-1-kexin.hao@windriver.com>
	<34a50b47-dcb3-1d1f-2ca8-bd4a486a475f@windriver.com>
	<58902a1687cb8e24bc9f7fef1141db742f680924.camel@linuxfoundation.org>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <ddceea2d-429e-6c26-2d6f-4515277574a2@windriver.com>
Date: Mon, 27 Aug 2018 19:17:10 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <58902a1687cb8e24bc9f7fef1141db742f680924.camel@linuxfoundation.org>
Subject: Re: [PATCH] meta-yocto-bsp: Bump the kernel to v4.18
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 27 Aug 2018 23:17:14 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-08-27 7:12 PM, richard.purdie@linuxfoundation.org wrote:
> On Mon, 2018-08-27 at 09:47 -0400, Bruce Ashfield wrote:
>> On 2018-08-25 8:51 AM, Kevin Hao wrote:
>>> Bump the kernel to v4.18 for all the boards in meta-yocto-bsp
>>> layer.
>>>
>>
>> Thanks Kevin, this is fantastic.
>>
>> Richard: I don't know the status of my other 4.18 changes, but I
>> could
>> take this into my queue and re-submit it all with the 4.15 kernel
>> being removed.
>>
>> Or since there are no major problems with my 4.18 uprev, maybe this
>> should just be independently grabbed ? Versus me re-submitting
>> unchanged
>> patches.
> 
> The original patch queue was testing in -next. I was away for the
> weekend so the results were waiting for me when I got back.
> 
> As you say, it seems ok from the kernel perspective, there were some
> other issues with other patches.
> 
> I've pulled in Kevin's patch for the next round of testing, no need to
> resend anything.
> 
> If it works out and merges, we can then just remove 4.15 with a new
> additional patch submission?

Yep. I'd do that in a separate patch anyway. I don't have any more
queued changes for 4.18 until the core support goes in, and then I'll
send a -stable update, etc, for 4.18 and the other kernels.

Bruce

> 
> Cheers,
> 
> Richard
> 


