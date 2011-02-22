Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews05.kpnxchange.com (cpsmtpb-ews05.kpnxchange.com
	[213.75.39.8])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24B3D4C800A6
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 05:21:20 -0600 (CST)
Received: from cpbrm-ews22.kpnxchange.com ([10.94.84.153]) by
	cpsmtpb-ews05.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 22 Feb 2011 12:21:19 +0100
Received: from CPSMTPM-cmt107.kpnxchange.com ([195.121.3.23]) by
	cpbrm-ews22.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 22 Feb 2011 12:21:19 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-cmt107.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Tue, 22 Feb 2011 12:21:19 +0100
Received: from [192.168.1.29] ([192.168.1.29])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Tue, 22 Feb 2011 12:21:14 +0100
Message-ID: <4D639C2E.1080704@de-haardt.com>
Date: Tue, 22 Feb 2011 12:21:18 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4D6397F6.4050103@de-haardt.com> <1298372880.11289.3263.camel@rex>
In-Reply-To: <1298372880.11289.3263.camel@rex>
X-OriginalArrivalTime: 22 Feb 2011 11:21:19.0250 (UTC)
	FILETIME=[A09E4720:01CBD282]
X-RcptDomain: yoctoproject.org
Subject: Re: poky custom kernel misconfiguration
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Feb 2011 11:21:20 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/22/2011 12:08 PM, Richard Purdie wrote:
> On Tue, 2011-02-22 at 12:03 +0100, Gerard van den Bosch wrote:
>> Hello,
>>
>> I am trying to build Poky for my hardware platform with a custom kernel.
>> But when I build Poky it crashes by not finding a defconfig for kernel
>> 2.6.33.2-r2 which isn't the kernel I preferred to build.
>>
>> This is what I have done:
>>
>> Copied local.conf.sample to local.conf and changed the following:
>> BB_NUMBER_THREADS = "2"
>> PARALLEL_MAKE = "-j 2"
>> MACHINE ?= "tao3530"
>>
>> Because this is a new machine I have generated a tao3530.conf by copying
>> the beagleboard.conf because this is a similar device.
>> I have changed the kernel recipe to:
>> PREFERRED_PROVIDER_virtual/kernel = "TAO-PSP"
>>
>> The kernel I used is normally used in Ångström for this board, but
>> because Ångström is also OpenEmbedded based I assumed I could use the
>> kernel in Poky also.
>>
>> In the meta/package/linux directory I made the TAO-PSP-2.6.32 directory.
>> In this directory I placed the tar.bz2 of my kernel and the defconfig
>> for my hardware platform.
>>
>> I have generated a bb file containing the following:
>>
>> SECTION = "kernel"
>> DESCRIPTION = "TAO3530 Linux kernel"
>> LICENSE = "GPL"
>>
>> KERNEL_OUTPUT = "arch/${ARCH}/boot/${KERNEL_IMAGETYPE}"
>>
>> inherit kernel
>>
>> COMPATIBLE_MACHINE = "tao3530"
>>
>> PR = "r1"
>>
>> SRC_URI = "file://TAO-PSP-03000106.tar.bz2 \
>>                           file://defconfig"
>>
>> S = "${WORKDIR}/linux-2.6.32"
>>
>> Can someone point me out what I did wrong or what I have forgot to
>> configure or where to look to find out what I did wrong.
> What did you call the .bb file?
>
> Cheers,
>
> Richard
>
Sorry for the reply mistake, I am new to mailinglists.

The name of the bb file is: TAO-PSP-2.6.32.bb

Regards,
Gerard



