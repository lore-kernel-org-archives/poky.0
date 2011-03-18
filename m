Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews10.kpnxchange.com (cpsmtpb-ews10.kpnxchange.com
	[213.75.39.15])
	by mx1.pokylinux.org (Postfix) with ESMTP id C01474C800B8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 10:16:59 -0500 (CDT)
Received: from cpbrm-ews10.kpnxchange.com ([10.94.84.141]) by
	cpsmtpb-ews10.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 18 Mar 2011 16:16:53 +0100
Received: from CPSMTPM-cmt107.kpnxchange.com ([195.121.3.23]) by
	cpbrm-ews10.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 18 Mar 2011 16:16:53 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-cmt107.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Fri, 18 Mar 2011 16:16:52 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Fri, 18 Mar 2011 16:16:48 +0100
Message-ID: <4D837763.7060009@de-haardt.com>
Date: Fri, 18 Mar 2011 16:16:51 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D83700C.1000402@de-haardt.com> <1300460171.30423.2202.camel@rex>
In-Reply-To: <1300460171.30423.2202.camel@rex>
X-OriginalArrivalTime: 18 Mar 2011 15:16:52.0986 (UTC)
	FILETIME=[82E53DA0:01CBE57F]
X-RcptDomain: yoctoproject.org
Cc: poky@yoctoproject.org
Subject: Re: problem with serial interface laverne
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
X-List-Received-Date: Fri, 18 Mar 2011 15:17:00 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/18/2011 03:56 PM, Richard Purdie wrote:
> On Fri, 2011-03-18 at 15:45 +0100, Gerard van den Bosch wrote:
>> Hello,
>>
>> I have changed from green to laverne release.
>> But now I have a problem with the serial interface.
>> The booting process goes good but when asked for the login name I can
>> enter root and press enter.
>> Then I am presented with the shell but can't type anything anymore, only
>> some enters seem to get through.
>> Is there changed anything concerning the serial interface and or
>> settings for this in the laverne release?
>>
>> I have kept my machine settings and kernel the same.
> I'm reminded of this bug:
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=97d80dd99021d975f40304f8327c330fe1a1f71b
>
> Could you try that and let us know if it helps?
>
> If so, I'll ensure we add that the laverne branch so it would make any
> future point release of laverne.
>
> Cheers,
>
> Richard
>
This fixes the problem, thanks!

Regards,
Gerard



