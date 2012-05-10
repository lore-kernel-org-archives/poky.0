Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3B28E0044A
	for <poky@yoctoproject.org>; Thu, 10 May 2012 09:49:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q4AGnAIG015326
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 10 May 2012 09:49:10 -0700 (PDT)
Received: from msp-dhcp22.wrs.com (172.25.34.22) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 10 May 2012 09:49:09 -0700
Message-ID: <4FABF185.5060205@windriver.com>
Date: Thu, 10 May 2012 11:49:09 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4FABD070.9090100@mlbassoc.com>
	<CAMKF1soadVR07jQ_QGBjkc0=UAvCrTHFPu2V3hxf_dNXg4vmEw@mail.gmail.com>
	<4FABEA1B.4050901@mlbassoc.com>
	<CAMKF1sqUt4QrNh9ff0ZERDCttdUSams-wUcOR4e4hDs+7z-Txw@mail.gmail.com>
In-Reply-To: <CAMKF1sqUt4QrNh9ff0ZERDCttdUSams-wUcOR4e4hDs+7z-Txw@mail.gmail.com>
Subject: Re: Bad ARM code with GCC 4.7.1
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
X-List-Received-Date: Thu, 10 May 2012 16:49:10 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 5/10/12 11:30 AM, Khem Raj wrote:
> On Thu, May 10, 2012 at 9:17 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>>
>> My board is DM3730, much like a BeagleBoard
>>   ARM architecture: armv7a
>>   Linux kernel 3.0
>
> hmmm that should be able to handle alignment faults in hardware

As far as I know, most armv7a handle alignment in the kernel, but there are 
newer crops of CPUs coming out that will no longer have alignment handlers as a 
"speed optimization".. (I think they're a bit nuts myself, but anyway.)

But if the code in question is inside the kernel, then the alignment faults 
won't work -- or will they?  (Certainly won't from within the alignment handlers 
of course...)

--Mark

>>
>>
>>>
>>> gcc generate unaligned accesses by default
>>>
>>> Does adding -mno-unaligned-access to cflags help ?
>>
>>
>> I'll check.
>
> Its not entirely clear whats going on so post the complete function disassembly
> so further context can be seen as well.
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


