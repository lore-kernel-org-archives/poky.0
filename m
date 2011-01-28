Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 060AC4C811DE
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 11:16:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Jan 2011 09:16:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,393,1291622400"; d="scan'208";a="381278564"
Received: from unknown (HELO [10.255.14.93]) ([10.255.14.93])
	by azsmga001.ch.intel.com with ESMTP; 28 Jan 2011 09:16:34 -0800
Message-ID: <4D42F9F1.3020002@linux.intel.com>
Date: Fri, 28 Jan 2011 09:16:33 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110127111132.C69A3B335@gemini.denx.de>
	<20110127114216.744AEB335@gemini.denx.de>
	<4D41F2D6.4040406@linux.intel.com>
	<20110128070520.31A2BD42A86@gemini.denx.de>
	<4D42F269.1080005@linux.intel.com>
	<20110128165100.656AAD42A99@gemini.denx.de>
In-Reply-To: <20110128165100.656AAD42A99@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: Serial console unusable with poky-image-sdk
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
X-List-Received-Date: Fri, 28 Jan 2011 17:16:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/28/2011 08:51 AM, Wolfgang Denk wrote:
> Dear Darren Hart,
>
> In message<4D42F269.1080005@linux.intel.com>  you wrote:
>>
>> The serial console would show all the output of the boot process and
>> then present a getty. It would accept my login and my password, but as
>> soon as I was logged in, things went weird. Only every Nth character I
>> typed made it to the console, where N was somewhere between 2 and 30.
>
> Indeed. And the reason for this behaviour is that you have two
> processes reading from the console, so it depends on the scheduling
> which of hem receives which characters.
>
>> I believe this had something to do with the automatic consoles the
>> kernel will setup based on the console= parameters. By default, the last
>
> No, it does not.  You can test it by shutting down X11 (try:
> "/etc/init.d/xserver-nodm stop"); this will also terminate the
> dbus-launch process, and your login shell immediately works fine.
>
> Or try out the patch I posted.


I'm not running X11, this is just a poky-image-minimal.


>
>> What I haven't been able to explain yet is why just omitting the getty
>> from the tty doesn't result in console on the serial port due to the
>> kernel's automatic console thing. So clearly there are some gaps in my
>> explanation here, but please try this approach and let me know what your
>> results are. Based on that, we can dig a bit more and figure out how to
>> best setup the console= directives on the default images.
>
> THere is no problem with the console= settings.  It's two processes
> reading from a single input stream. This can never work.  Try it ut if
> you don't believe me.

Agreed on the two processes thing, that's clear. I believe the console= 
settings impact which processes are started and which read from which 
console devices.

And again, I can't try your patch, because I'm not running X.

Perhaps we are seeing similar problems caused by different things.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

