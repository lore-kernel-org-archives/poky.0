Return-Path: <Yi.Zhao@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 876DBE00798
	for <poky@yoctoproject.org>; Wed, 27 Nov 2013 23:06:25 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rAS76Khp013071
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Nov 2013 23:06:21 -0800 (PST)
Received: from [128.224.158.249] (128.224.158.249) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Wed, 27 Nov 2013 23:06:20 -0800
Message-ID: <5296EB69.50205@windriver.com>
Date: Thu, 28 Nov 2013 15:06:17 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <1385533303-2125-1-git-send-email-yi.zhao@windriver.com>
	<A612847CFE53224C91B23E3A5B48BAC7A4A6238B2D@xmail3.se.axis.com>
In-Reply-To: <A612847CFE53224C91B23E3A5B48BAC7A4A6238B2D@xmail3.se.axis.com>
X-Originating-IP: [128.224.158.249]
Subject: Re: [PATCH] local.conf.sample: Fix typo
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
X-List-Received-Date: Thu, 28 Nov 2013 07:06:28 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


于 2013年11月27日 20:32, Peter Kjellerstedt 写道:
>> -----Original Message-----
>> From: poky-bounces@yoctoproject.org [mailto:poky-
>> bounces@yoctoproject.org] On Behalf Of Yi Zhao
>> Sent: den 27 november 2013 07:22
>> To: poky@yoctoproject.org
>> Subject: [poky] [PATCH] local.conf.sample: Fix typo
>>
>> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> ---
>>   meta-yocto/conf/local.conf.sample |    2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-yocto/conf/local.conf.sample b/meta-
>> yocto/conf/local.conf.sample
>> index 31e7605..49e64fb 100644
>> --- a/meta-yocto/conf/local.conf.sample
>> +++ b/meta-yocto/conf/local.conf.sample
>> @@ -126,7 +126,7 @@ PACKAGE_CLASSES ?= "package_rpm"
>>   #
>>   # This variable specified the architecture to build SDK/ADT items for and means
>                     ^^^^^^^^^
> While at it, shouldn't that be "specifies"?

Hi Peter,

Thanks for pointing this. I will send patch version 2.

Yi

>
>>   # you can build the SDK packages for architectures other than the machine you are
>> -# running the build on (i.e. building i686 packages on an x86_64 host._
>> +# running the build on (i.e. building i686 packages on an x86_64 host.)
>>   # Supported values are i686 and x86_64
>>   #SDKMACHINE ?= "i686"
>>
>> --
>> 1.7.9.5
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> //Peter
>
>
>


