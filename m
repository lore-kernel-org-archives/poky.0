Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96A82E00D75; Wed, 31 Jul 2019 17:58:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 771E3E00C5C
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 17:58:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x710wHAW007373
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 31 Jul 2019 17:58:18 -0700 (PDT)
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 31 Jul 2019 17:58:17 -0700
To: <richard.purdie@linuxfoundation.org>, <poky@yoctoproject.org>
References: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
	<8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
	<3ffdf92e-33d0-7d68-36b9-ce818ee03a78@windriver.com>
	<8b41cd10b0e3ffb1b0ec75cf2b0a796d1ca22888.camel@linuxfoundation.org>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <cc38f2e8-3325-73d2-7dcb-b3dd720d7fd4@windriver.com>
Date: Thu, 1 Aug 2019 08:58:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <8b41cd10b0e3ffb1b0ec75cf2b0a796d1ca22888.camel@linuxfoundation.org>
X-Originating-IP: [128.224.162.186]
Subject: Re: [PATCH] qemuboot-x86.inc: remove it and move content to corresponding conf
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
X-List-Received-Date: Thu, 01 Aug 2019 00:58:21 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 7/31/19 6:20 PM, richard.purdie@linuxfoundation.org wrote:
> On Wed, 2019-07-31 at 17:38 +0800, Changqing Li wrote:
>> On 7/31/19 5:00 PM, Richard Purdie wrote:
>>> On Wed, 2019-07-31 at 11:40 +0800, changqing.li@windriver.com
>>> wrote:
>>>> From: Changqing Li <changqing.li@windriver.com>
>>>>
>>>> Configrations:
>>>> MACHINE: qemux86-64
>>>> require conf/multilib.conf
>>>> MULTILIBS = "multilib:lib32"
>>>> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>>>>
>>>> Reproduce steps:
>>>> bitbake lib32-core-image-minimal
>>>> runqemu qemux86-64 nographic lib32-core-image-minimal
>>>>
>>>> Errors:
>>>> qemu cannot bootup since:
>>>> Booting from ROM...
>>>> This kernel requires an x86-64 CPU, but only detected an i686
>>>> CPU.
>>>> Unable to boot - please use a kernel appropriate for your CPU.
>>>> QEMU: Terminated
>>>>
>>>> For lib32 image, override has x86, so the qemubin set to qemu-
>>>> system-
>>>> i386,
>>>> fix by move qemuboot parameters to corresponding conf, don't use
>>>> the
>>>> override
>>> Why remove/move the whole file when its just QB_SYSTEM_NAME that is
>>> the
>>> issue and that alone could be moved?
>> I think maybe put qemuboot related parameter together in one file is
>> better
>>
>> than some config is here and some config is there. So I move the
>> whole  content
> I would prefer not to duplicate this kind of configuration if we can
> help it...
OK, I will send a V2 and only move QB_SYSTEM_NAME out
>
> Cheers,
>
> Richard
>
>
-- 
BRs

Sandy(Li Changqing)


