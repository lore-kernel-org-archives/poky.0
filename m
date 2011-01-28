Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DCB04C810E5
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 10:44:42 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jan 2011 08:44:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,392,1291622400"; d="scan'208";a="652163078"
Received: from unknown (HELO [10.255.14.93]) ([10.255.14.93])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2011 08:44:25 -0800
Message-ID: <4D42F269.1080005@linux.intel.com>
Date: Fri, 28 Jan 2011 08:44:25 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110127111132.C69A3B335@gemini.denx.de>
	<20110127114216.744AEB335@gemini.denx.de>
	<4D41F2D6.4040406@linux.intel.com>
	<20110128070520.31A2BD42A86@gemini.denx.de>
In-Reply-To: <20110128070520.31A2BD42A86@gemini.denx.de>
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
X-List-Received-Date: Fri, 28 Jan 2011 16:44:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2011 11:05 PM, Wolfgang Denk wrote:
> Dear Darren Hart,
>
> In message<4D41F2D6.4040406@linux.intel.com>  you wrote:
>>
>>>> Is there a way to stop dbus-launch from concurring with a login shell
>>>> on the serial console port?
>>>
>>> This patch appears to be working fine for me:
>>>
>>>> From: Wolfgang Denk<wd@denx.de>
>>>> Subject: Stop dbus-launch from interfering with a serial console
>>>
>>> Signed-off-by: Wolfgang Denk<wd@denx.de>
>>> ---
>>>
>>> diff --git a/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession b/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
>>> index a87447a..0b73127 100644
>>> --- a/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
>>> +++ b/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
>>> @@ -2,7 +2,7 @@
>>>
>>>    if [ -x /usr/bin/dbus-launch ]; then
>>>        # As this is the X session script, always start a new DBus session.
>>> -    eval `dbus-launch --sh-syntax --exit-with-session`
>>> +    eval `dbus-launch --sh-syntax --exit-with-session</dev/null`
>>>        echo "D-BUS per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
>>>    fi
>>>
>>
>> you can also append "console=tty" to the kernel command line and the
>> serial console should work. I've run into this on a couple platforms as
>> well and addressed it this way. This isn't just an X11 issue as I
>> usually boot -minimal images.
>
> I think you misunderstand.  It is not that the serial console port is
> not working at all, or that there are any wrong assignments to the
> Linux console device.
>
> The problem is that after logging in both the shell and the
> dbus-launch processes will read from the same device, and it is pur
> chance which of these provesses will read which input character.
>
> The problem is that dbus-launch should not read from the console
> terminal at all, and this is what above patch enforces.

Actually, this is precisely the behavior I was seeing on other boards. 
The serial console would show all the output of the boot process and 
then present a getty. It would accept my login and my password, but as 
soon as I was logged in, things went weird. Only every Nth character I 
typed made it to the console, where N was somewhere between 2 and 30.

I believe this had something to do with the automatic consoles the 
kernel will setup based on the console= parameters. By default, the last 
console= parameter becomes /dev/console, if only serial is specified 
this seems to conflict with the getty started via inittab. If you add a 
second console directive after the first, /dev/console will point to 
that. console=/dev/tty0 works for example. Using /dev/tty however 
instructs the kernel to use an automatic console on all tty's - except 
the serial ports, which also resolves the problem for me.

What I haven't been able to explain yet is why just omitting the getty 
from the tty doesn't result in console on the serial port due to the 
kernel's automatic console thing. So clearly there are some gaps in my 
explanation here, but please try this approach and let me know what your 
results are. Based on that, we can dig a bit more and figure out how to 
best setup the console= directives on the default images.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

