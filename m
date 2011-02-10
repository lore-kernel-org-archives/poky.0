Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 363AD4C80053
	for <poky@lists.pokylinux.org>; Thu, 10 Feb 2011 11:13:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Feb 2011 09:13:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="706276595"
Received: from unknown (HELO [10.255.14.120]) ([10.255.14.120])
	by orsmga001.jf.intel.com with ESMTP; 10 Feb 2011 09:13:42 -0800
Message-ID: <4D541CAD.1030001@linux.intel.com>
Date: Thu, 10 Feb 2011 09:13:17 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D53E3A5.9050801@mlbassoc.com> <4D53E416.4090200@mlbassoc.com>
In-Reply-To: <4D53E416.4090200@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Can't build for BeagleBoard
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
X-List-Received-Date: Thu, 10 Feb 2011 17:13:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/10/2011 05:11 AM, Gary Thomas wrote:
> On 02/10/2011 06:09 AM, Gary Thomas wrote:
>> Using latest master 296866c38e1b88df42d66bdc32cfed2d5212914c
>>
>> bitbake poky-image-sato fails with the log
>> http://www.mlbassoc.com/poky/log.do_compile-beagleboard
>>
>> You can see this with the simpler case
>> bitbake binutils
>>
>
> Belay that - I had Nitin's GCC 4.5.2 changes enabled, so this
> error probably only applies there.

I'm currently booting the poky-image-minimal on the beagleboard in the 
following configs:

meta w/ linux-yocto

meta w/ linux-yocto-stable

meta
meta-linaro

There appears to be an issue with the serial driver, changing it to 
ttyS2 from ttyO2 in beagleboard.conf seems to resolve it for the linaro 
kernel. I'm looking into correcting the serial bits. The network 
interface isn't working on the linaro kernel, but it does on the two 
yocto kernels. I'm working on this as well.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

