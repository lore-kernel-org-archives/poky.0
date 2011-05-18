Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews07.kpnxchange.com (cpsmtpb-ews07.kpnxchange.com
	[213.75.39.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 79DF34C80052
	for <poky@yoctoproject.org>; Wed, 18 May 2011 08:53:11 -0500 (CDT)
Received: from cpbrm-ews10.kpnxchange.com ([10.94.84.141]) by
	cpsmtpb-ews07.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Wed, 18 May 2011 15:52:30 +0200
Received: from CPSMTPM-CMT102.kpnxchange.com ([195.121.3.18]) by
	cpbrm-ews10.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Wed, 18 May 2011 15:53:10 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT102.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Wed, 18 May 2011 15:53:10 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Wed, 18 May 2011 15:53:09 +0200
Message-ID: <4DD3CF45.1050706@de-haardt.com>
Date: Wed, 18 May 2011 15:53:09 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DD39237.7040304@de-haardt.com> <1305713621.3424.309.camel@rex>
In-Reply-To: <1305713621.3424.309.camel@rex>
X-OriginalArrivalTime: 18 May 2011 13:53:10.0599 (UTC)
	FILETIME=[EC848D70:01CC1562]
X-RcptDomain: yoctoproject.org
Cc: poky <poky@yoctoproject.org>
Subject: Re: Disable screen standby
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
X-List-Received-Date: Wed, 18 May 2011 13:53:12 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/18/2011 12:13 PM, Richard Purdie wrote:

> On Wed, 2011-05-18 at 11:32 +0200, Gerard van den Bosch wrote:
>> My display is always going black after ~10 minutes, I assume this is
>> standby.
>> In which recipe can I disable this or change the timeout?
> Its the kernel terminal/console screen blanking which does this. A quick
> google found:
>
> http://www.cyberciti.biz/tips/linux-disable-screen-blanking-screen-going-blank.html
>
> which shows how to disable it on the device. I think you might have to
> patch the kernel to disable it by default. There may be an option in the
> kernel config, I'm not sure.
>
> Hopefully this at least gives you information on where to start looking.
> If you do figure it out please report back so others can benefit! :)
>
> Cheers,
>
> Richard
Thanks for the directions, I have got it working by creating a .profile file in /home/root containing the following command:
xset s off>  /dev/null 2>&1
The redirection to /dev/null removes the error on the console it can't find a display.

Regards,
Gerard



