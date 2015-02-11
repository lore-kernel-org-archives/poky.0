Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F29ACE00964; Tue, 10 Feb 2015 20:45:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EA0AE00945
	for <poky@yoctoproject.org>; Tue, 10 Feb 2015 20:43:06 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t1B4gRru025950
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Feb 2015 20:43:01 -0800 (PST)
Received: from server.local (128.224.23.22) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 10 Feb 2015 20:42:37 -0800
Message-ID: <54DADDBD.8030800@windriver.com>
Date: Tue, 10 Feb 2015 23:42:37 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Holger Hans Peter
	Freyther <holger@freyther.de>
References: <20150210184309.GB19902@xiaoyu.lan>
	<1423608686.20217.54.camel@linuxfoundation.org>
In-Reply-To: <1423608686.20217.54.camel@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: kernel.release being regenerated
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
X-List-Received-Date: Wed, 11 Feb 2015 04:45:37 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-10 5:51 PM, Richard Purdie wrote:
> Hi Holger,
>
> On Tue, 2015-02-10 at 19:43 +0100, Holger Hans Peter Freyther wrote:
>> I have an integration build that at least builds our sysmocom
>> BTS layers against master of Yocto. Our nightly build started
>> to be flaky and fail most of the time building the Linux kernel.
>>
>> We are using a 3.10 LTS kernel for the product and it looks
>> like the kernel.release will be (re)created in the build directory
>> when the uImage is generated but also when "make modules" is
>> called.
>>
>> This means that shared_workdir in my case should be called at
>> a later stage, e.g. after do_compilekernelmodules.
>>
>> Did anyone else see flaky builds?
>
> We've not see any on the yocto project autobuilders and I've not heard
> reports of this from anyone else. I've cc'd Bruce in case he's aware of
> anything and can chime in but the new code is being used in many places,
> including with 3.10 kernels and I've not heard reports.

I haven't seen anything like this either, and I've been doing builds
on a constant loop.

But I'll think on it, and see if anything jumps to mind.

Bruce

>
> The fact the kernel.release is being recreated suggests something in the
> configuration is changing (different environment or commandline
> options?) or that there is a problem in your kernel to do with the
> Makefiles and the dependencies of the kernel.release file.
>
> You might reach a wider audience with questions like this on the yocto
> or openembedded-core mailing lists btw, poky tends to be fairly quiet
> these days although many of us are here too :)
>
> Cheers,
>
> Richard
>
>
>


