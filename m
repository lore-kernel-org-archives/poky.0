Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E183EE0098A; Wed, 31 Jul 2019 02:39:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 829FEE008E3
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 02:39:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6V9d3Bl023167
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 31 Jul 2019 02:39:13 -0700
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 31 Jul 2019 02:38:52 -0700
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	<poky@yoctoproject.org>
References: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
	<8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <3ffdf92e-33d0-7d68-36b9-ce818ee03a78@windriver.com>
Date: Wed, 31 Jul 2019 17:38:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
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
X-List-Received-Date: Wed, 31 Jul 2019 09:39:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 7/31/19 5:00 PM, Richard Purdie wrote:
> On Wed, 2019-07-31 at 11:40 +0800, changqing.li@windriver.com wrote:
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> Configrations:
>> MACHINE: qemux86-64
>> require conf/multilib.conf
>> MULTILIBS = "multilib:lib32"
>> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>>
>> Reproduce steps:
>> bitbake lib32-core-image-minimal
>> runqemu qemux86-64 nographic lib32-core-image-minimal
>>
>> Errors:
>> qemu cannot bootup since:
>> Booting from ROM...
>> This kernel requires an x86-64 CPU, but only detected an i686 CPU.
>> Unable to boot - please use a kernel appropriate for your CPU.
>> QEMU: Terminated
>>
>> For lib32 image, override has x86, so the qemubin set to qemu-system-
>> i386,
>> fix by move qemuboot parameters to corresponding conf, don't use the
>> override
> Why remove/move the whole file when its just QB_SYSTEM_NAME that is the
> issue and that alone could be moved?

I think maybe put qemuboot related parameter together in one file is better

than some config is here and some config is there. So I move the whole 
content

>
> Cheers,
>
> Richard
>
>
-- 
BRs

Sandy(Li Changqing)


