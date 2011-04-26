Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E8824C80332
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 12:41:32 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3QHfVxM004479
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 10:41:31 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 26 Apr 2011 10:41:31 -0700
Message-ID: <4DB703CA.1000803@windriver.com>
Date: Tue, 26 Apr 2011 12:41:30 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: Kang Kai <Kai.Kang@windriver.com>
References: <4DB0F192.6020809@windriver.com> <4DB620F5.3010709@windriver.com>
	<4DB65AB6.4040208@windriver.com>
In-Reply-To: <4DB65AB6.4040208@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: About minimal image
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
X-List-Received-Date: Tue, 26 Apr 2011 17:41:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 4/26/11 12:40 AM, Kang Kai wrote:
> Hi Mark,
> 

Apologies for the late response.  I've been out of the office...

>> I have read your mail about minimal image posted on Feb 19 on this mail list. 
>> We try to reduce image size by what your said:
>>
>>    1. eglic configurability

eglibc configuration should affect the size of things greatly...

>>    2. using mklibs
>>
>>
>> Right now after migrate eglic configurability to my local yocto branch, and I
>> only enable 4 options ("locale-code nsswitch rtld-debug posix-clang-wchar ",
>> pls. check in attachment) of eglibc just to make compile pass.

locale-code, nsswitch and any of the "wchar" options add a significant amount of
space to the eglibc environment.  (I don't know what rtld-debug does, so I don't
know how to quantify it's effects on the rootfs size.)

If disabling any of these items causes a failure when building eglibc itself, we
need to fix these issues and/or report them upstream.

>> When after create minimal image, the rootfs (tar.bz2) is still about 3.4M,
>> same size as without adding  configurability to eglibc.
>>

You need to look at the files on the image, not the overall size of the image.
Figure out where the larger items are any why they are there.  This should help
explain what is making the "optimized" minimal so big.

>> Could you give me some directions what should we do in next step? We also hope
>> some information about how to use mklibs to reduce packages and image size?
> After open MKLIBS_OPTIMIZED_IMAGES ?= "core-image-minimal" in local.conf, the
> minimal image decrease from 3.4M to 3.1M, after extraction is 8.1M( vs. 8.4M
> before using mklibs). It looks like not so efficient as we expected.

mklibs relinks the libc binary to remove objects that were not used.  While the
eglibc configuration simply disables various features in order to save space.
The two are complementary.. but the more features you disable, the less mklibs
will save.

> Should I try to reduce busybox size at same time?Such as remove some not so
> usually used commands by configurations?

I suspect that the size and configuration of busybox is also affecting which
items you need to have enabled within the eglibc configuration -- and which
items mklibs is determining are needed.

> Any suggestion or guild will be appreciate!

I would suggest that you evaluate busybox and see if there are any components
you can disable there as well -- while leaving the system somewhat functional.

The biggest problem with any of these "smallest system" exercises is that you
need to have a target of functionality so that you can make the proper
decisions.  If the target is current configuration -- then likely we're about at
a minimum already.. however if the target is to boot into a shell, we can
disable a lot of busybox and simply enable the dash capabilities -- or even one
of the lesser non-POSIX shells.

--Mark

> Thanks and Regards,
> Kai
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> 


