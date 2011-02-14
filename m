Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69FCD4C8007E
	for <poky@lists.pokylinux.org>; Mon, 14 Feb 2011 10:32:08 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Feb 2011 08:32:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="388538105"
Received: from unknown (HELO [10.255.14.142]) ([10.255.14.142])
	by azsmga001.ch.intel.com with ESMTP; 14 Feb 2011 08:32:07 -0800
Message-ID: <4D59590B.1020601@linux.intel.com>
Date: Mon, 14 Feb 2011 08:32:11 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D569EC5.6040609@mlbassoc.com>
In-Reply-To: <4D569EC5.6040609@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Booting BeagleBoard
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
X-List-Received-Date: Mon, 14 Feb 2011 16:32:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/12/2011 06:52 AM, Gary Thomas wrote:
> I have a BeagleBoard C3 (not the new xM). Trying to run the
> latest Poky ran into some problems:
>

Thank you for testing with the C3, I only have an xM at my desk, so the 
extra testing is appreciated.

> * The boot commands in README.hardware are no longer accurate
> for the 2.6.37 (linux-yocto) kernel. At least you need to
> use ttyO2 for the serial console.

I am aware of this one and have a patch series I'm working on. There are 
a couple of gotcha's here. The first, setting up inittab to give a 
serial console, is easy and addressed by changing SERIAL_CONSOLE, 
conditionally by kernel. The second is more difficult: u-boot hardcodes 
the default environment to "console=ttyS2" in omap3-beagle.h. There are 
a couple ways to address it:

1) conditionally patch u-boot based on the content of SERIAL_CONSOLE
2) add a boot.scr to the deploy files of u-boot which provides a
    modified environment.
3) just update the docs and make people do it manually

I'm working on #1 at the moment, but have been running into various 
build issues which have been slowing my down. Once this is functional, 
I'll make my patches available in contrib and would appreciate some 
testing on the C3 if you can make the time.


> * There is no video? /dev/fb0 is not being created.


I haven't investigated this yet, but hope to.


> I know that the previous (Angstrom based) 2.6.32 kernel had
> lots of additions which support video (DSS subsystem) and
> also camera (ISP). Has this support been ported forward
> into the Yocto kernel?


Angstrom appears to have a high quality and complete BSP for the 
Beagleboard. At present, poky has basic machine support for booting, 
serial console, and networking (on the bbxm).


>
> Perhaps I missed some setting?
>

Nope, we just aren't quite that far along yet, but we are actively 
working on it.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

