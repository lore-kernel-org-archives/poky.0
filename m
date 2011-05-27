Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews02.kpnxchange.com (cpsmtpb-ews02.kpnxchange.com
	[213.75.39.5])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24D2B4C804E4
	for <poky@yoctoproject.org>; Fri, 27 May 2011 08:24:06 -0500 (CDT)
Received: from cpbrm-ews16.kpnxchange.com ([10.94.84.147]) by
	cpsmtpb-ews02.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 27 May 2011 15:24:06 +0200
Received: from CPSMTPM-CMT104.kpnxchange.com ([195.121.3.20]) by
	cpbrm-ews16.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 27 May 2011 15:24:05 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT104.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Fri, 27 May 2011 15:24:05 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Fri, 27 May 2011 15:24:03 +0200
Message-ID: <4DDFA5F4.6040300@de-haardt.com>
Date: Fri, 27 May 2011 15:24:04 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DDE01BB.3000109@de-haardt.com> <1306402981.27470.97.camel@rex>	
	<4DDE37EE.101@de-haardt.com> <1306418056.27470.181.camel@rex>	
	<4DDF404D.2010504@de-haardt.com> <1306500547.27470.269.camel@rex>
In-Reply-To: <1306500547.27470.269.camel@rex>
X-OriginalArrivalTime: 27 May 2011 13:24:05.0688 (UTC)
	FILETIME=[5A300380:01CC1C71]
X-RcptDomain: yoctoproject.org
Cc: poky <poky@yoctoproject.org>
Subject: Re: wrong rpm name qt package
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
X-List-Received-Date: Fri, 27 May 2011 13:24:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/27/2011 02:49 PM, Richard Purdie wrote:

> On Fri, 2011-05-27 at 08:10 +0200, Gerard van den Bosch wrote:
>> Ok, I have tried the following with the Bernard release:
>>
>> print "hello"
>> print bb.data.getVar('BB_WORKERCONTEXT', d, True)
>> if bb.data.getVar('BB_WORKERCONTEXT', d, True) is not None:
>> 	print "hello2"
>> 	runtime_mapping_rename("PACKAGE_INSTALL", d)
>> 	runtime_mapping_rename("PACKAGE_INSTALL_ATTEMPTONLY", d)
>> The "hello" gets printed, and the variable outputs "None", the "hello2" doesn't get printed because the variable is None.
>>
>> In the laverne release I use here it checks on something else namely:
>> if bb.data.getVar('__RUNQUEUE_DO_NOT_USE_EXTERNALLY', d, True) is not None:
>> I can't add print commands there because it gives ident errors, found that has something todo with spaces but couldn't get it working.
>>
>> I tried searching some further, I see in this commit that the if is added, that is in the laverne release:
>> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=4e0ee648b4c18b770aba11921370258f3e2aaeef
>>
>> Then a few commits later it is changed to the BB_WORKERCONTEXT:
>> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=e427f251a457f3015c4b1cdf1648c53a9acc646d
>>
>> Thus I tried to figure out what sets the BB_WORKERCONTEXT, I found it in two files in bitbake namely cooker.py and runqueue.py.
>> Eventually it leads to the loading of the configuration file and something set BB_WORKERCONTEXT then but I couldn't figure out what sets the variable.
>>
>> I looked up the commits where it is added to bitbake:
>> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/runqueue.py?id=1f3e313fd5cc5ae8ea838bf8fcdedace3cb72584
>> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/cooker.py?id=ca09a6f08cc29f79f9742058d737deaef9d6d5ef
>>
>> But I couldn't figure out what the changes did and I did not come further than this.
>> If I need to try something else out, let me know.
> This code only triggers at rootfs generation time. I've discovered this
> broken in master at least. To test I did:
>
> bitbake -b /path/to/some-image.bb -c rootfs
>
> and then saw:
>
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Start package mapping
> ERROR: Found package mapping
> NOTE: Running task 10 of 10 (ID: 6, /media/build2/builds/rptest/meta/recipes-core/images/core-image-minimal.bb, do_rootfs)
> NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Started
> ^C
>
> with the following in image.bbclass:
>
>      bb.error("Start package mapping")
>      if bb.data.getVar('BB_WORKERCONTEXT', d, True) is not None:
>          bb.error("Found package mapping")
>          runtime_mapping_rename("PACKAGE_INSTALL", d)
>
> when I'd fixed the underlying problem.
>
> Cheers,
>
> Richard
>
If I understand correctly, you have fixed something to get it working? or does it work and am I doing something wrong?
Because when I add the bb.error commands I am only seeing the "Start package mapping" with the suggested bitbake command.

Regards,
Gerard



