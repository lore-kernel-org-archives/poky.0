Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E421E4C8123C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 16:34:04 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 14:34:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597162944"
Received: from doubt.jf.intel.com (HELO [10.7.199.151]) ([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 14:34:04 -0800
Message-ID: <4D41F2D6.4040406@linux.intel.com>
Date: Thu, 27 Jan 2011 14:33:58 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110127111132.C69A3B335@gemini.denx.de>
	<20110127114216.744AEB335@gemini.denx.de>
In-Reply-To: <20110127114216.744AEB335@gemini.denx.de>
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
X-List-Received-Date: Thu, 27 Jan 2011 22:34:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2011 03:42 AM, Wolfgang Denk wrote:
> Hi,
>
> in message<20110127111132.C69A3B335@gemini.denx.de>  I wrote:
>>
>> it seems that for some time (probably back to laverne-4.0) the serial
>> console port is basicly unusable in the poky-image-sdk file system.
>> I tried this in several PPC and ARM configurations, and the behaviours
>> is pretty much the same: login works fine, but at the shell prompt
>> only one out of N input characters (N usually between 2 and 10) gets
>> through to the shell.
> ...
>> Is there a way to stop dbus-launch from concurring with a login shell
>> on the serial console port?
>
> This patch appears to be working fine for me:
>
>> From: Wolfgang Denk<wd@denx.de>
>> Subject: Stop dbus-launch from interfering with a serial console
>
> Signed-off-by: Wolfgang Denk<wd@denx.de>
> ---
>
> diff --git a/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession b/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
> index a87447a..0b73127 100644
> --- a/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
> +++ b/meta/recipes-graphics/x11-common/x11-common/etc/X11/Xsession
> @@ -2,7 +2,7 @@
>
>   if [ -x /usr/bin/dbus-launch ]; then
>       # As this is the X session script, always start a new DBus session.
> -    eval `dbus-launch --sh-syntax --exit-with-session`
> +    eval `dbus-launch --sh-syntax --exit-with-session</dev/null`
>       echo "D-BUS per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
>   fi
>

you can also append "console=tty" to the kernel command line and the 
serial console should work. I've run into this on a couple platforms as 
well and addressed it this way. This isn't just an X11 issue as I 
usually boot -minimal images.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

