Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12D33E01914; Tue, 19 Jun 2018 06:56:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F977E01375
	for <poky@yoctoproject.org>; Tue, 19 Jun 2018 06:56:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w5JDtYuI018572
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 19 Jun 2018 06:55:35 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Tue, 19 Jun 2018 06:55:33 -0700
To: Bas Mevissen <abuse@basmevissen.nl>, Ankit Rastogi <Ankit.Rastogi@kpit.com>
References: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
	<971d94d15a5e6fe1887a5bc81e2295e1@basmevissen.nl>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <9d5f3a74-1cb9-ef2d-79a0-ef3d403295e2@windriver.com>
Date: Tue, 19 Jun 2018 09:55:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <971d94d15a5e6fe1887a5bc81e2295e1@basmevissen.nl>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Tue, 19 Jun 2018 13:56:03 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 06/19/2018 09:44 AM, Bas Mevissen wrote:
> On 2018-06-19 07:16, Ankit Rastogi wrote:
>> Hi,
>>
>> Can someone provide any pointers on how to export kernel specific
>> headers to userspace?
>>
>> I am getting below error while building our one of the component which
>> requires kernel uapi headers.
>>
>> Error Received:
>>  /hdmi-capture/main.c:16:10: fatal error: linux/hdmi_info.h: No such
>> file or directory
>>> |  #include <linux/hdmi_info.h>
>>> |           ^~~~~~~~~~~~~~~~~~~
>>> | compilation terminated.
>>
>> In yocto 2.5, userspace is boot strapped with linux-libc-headers
>> package which uses a set of uapi headers from Linux kernel 4.15. Can
>> someone suggest for custom kernels, how to expose uapi headers to
>> userspace? Thus create a separate linux-apl-headers package with those
>> files.
>>
> 
> You might want to (re)move the linux-libc-headers package (header files) 
> and install kernel-devsrc package. Then link the include directories 
> from /usr/src/kernel/include/{asm*,linux} to /usr/include or modify your 
> Makefile to get the linux include files from 
> /usr/src/kernel/include/linux instead of /usr/include/linux.
> 
> Please note that the kernel-devsrc package is not without problems. 
> Building it and manually installing it with --nodeps (for rpm) will do 
> the trick. The package is due for replacement, see a thread on this 
> started by me a few weeks ago.
> 
> Please also note that linux-libc-headers are cleaned-up versions of the 
> 4.15 kernel headers, so expect some rough edges.

They aren't actually cleaned up at all. They are the standard uapi
installed headers from the latest kernel in a given yocto release.

They will be updated to 4.18 shortly, since I'm preparing the next
round of kernel updates (and devsrc resubmission).

Bruce



> 


