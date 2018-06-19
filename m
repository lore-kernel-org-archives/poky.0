Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A711E0191D; Tue, 19 Jun 2018 06:57:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCC5BE01375
	for <poky@yoctoproject.org>; Tue, 19 Jun 2018 06:57:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w5JDv0TD018576
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 19 Jun 2018 06:57:00 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Tue, 19 Jun 2018 06:57:00 -0700
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Ankit Rastogi
	<Ankit.Rastogi@kpit.com>, "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
	<0179fbbfddf7680e309b02422761c7478125d1ad.camel@linuxfoundation.org>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <b2ca63c9-3fcf-3a48-c2e4-03c9b2dd1117@windriver.com>
Date: Tue, 19 Jun 2018 09:56:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <0179fbbfddf7680e309b02422761c7478125d1ad.camel@linuxfoundation.org>
Subject: Re: How to export kernel specific headers to userspace
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
X-List-Received-Date: Tue, 19 Jun 2018 13:57:27 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 06/19/2018 09:22 AM, Richard Purdie wrote:
> On Tue, 2018-06-19 at 05:16 +0000, Ankit Rastogi wrote:
>> Can someone provide any pointers on how to export kernel specific
>> headers to userspace?
>>
>> I am getting below error while building our one of the component
>> which requires kernel uapi headers.
>>
>> Error Received:
>>   /hdmi-capture/main.c:16:10: fatal error: linux/hdmi_info.h: No such
>> file or directory
>>> |  #include <linux/hdmi_info.h>
>>> |           ^~~~~~~~~~~~~~~~~~~
>>> | compilation terminated.
>>
>> In yocto 2.5, userspace is boot strapped with linux-libc-headers
>> package which uses a set of uapi headers from Linux kernel 4.15. Can
>> someone suggest for custom kernels, how to expose uapi headers to
>> userspace? Thus create a separate linux-apl-headers package with
>> those files.
> 
> linux-libc-headers is really there to bootstrap the libc and toolchain,
> not provide non-standard kernel headers to userspace. You likely need
> to create your own recipe which installs the correct extra headers and
> then have your code DEPEND on that recipe.

Just adding a confirmation that this is what I've always done, and
what I recommend to anyone trying to do this.

The only additional caution/advice that I'd add, is that if you do
this, do not modify existing headers (since you are changing the
interface for a given version of the kernel), but additional/new
header files are fine.

Cheers,

Bruce

> 
> Cheers,
> 
> Richard
> 


