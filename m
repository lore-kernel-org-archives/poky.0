Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACF1DE00BB2
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 05:54:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2SCsH2V008513
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Mar 2014 05:54:17 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 28 Mar 2014 05:54:17 -0700
Message-ID: <533570F8.5090802@windriver.com>
Date: Fri, 28 Mar 2014 08:54:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1395944862.git.bruce.ashfield@windriver.com>	
	<bc72d57bd8234c080074fd2c2d44df4a7cbdf946.1395944862.git.bruce.ashfield@windriver.com>
	<1395999655.24890.166.camel@ted>
In-Reply-To: <1395999655.24890.166.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/6] yocto-bsps: routerstationpro: explicitly set preferred version
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
X-List-Received-Date: Fri, 28 Mar 2014 12:54:22 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-28 05:40 AM, Richard Purdie wrote:
> On Thu, 2014-03-27 at 14:29 -0400, Bruce Ashfield wrote:
>> The other reference BSPs have an explicit version in their conf files.
>> To avoid the routerstationpro picking up kernel's newer than 3.10, we
>> do the same for it.
>>
>> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>> ---
>>   meta-yocto-bsp/conf/machine/edgerouter.conf | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
>> index f3ea33bb0d6b..c5e490f824ea 100644
>> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
>> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
>> @@ -11,6 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>>   KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
>>
>>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-dev"
>> +PREFERRED_VERSION_linux-yocto ?= "3.10%"
>>
>>   SERIAL_CONSOLE = "115200 ttyS0"
>>   USE_VT ?= "0"
>
> I think some commits have got confused here. edgerouter.conf !=
> routerstationpro.conf...

Doh. Right you are. I'm juggling and rebasing about 3 separate patch queues
across oe-core and poky .. looks like I hacked the wrong file.

I'll fix this up.

Bruce

>
> Cheers,
>
> Richard
>
>
>


