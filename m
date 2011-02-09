Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BCEC4C8008C
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 17:35:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Feb 2011 15:35:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,448,1291622400"; d="scan'208";a="705969361"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by orsmga001.jf.intel.com with ESMTP; 09 Feb 2011 15:35:12 -0800
Message-ID: <4D53249E.9030606@linux.intel.com>
Date: Wed, 09 Feb 2011 15:34:54 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-3-git-send-email-yanok@emcraft.com>
	<4D52D210.6070905@linux.intel.com> <4D53216D.4010908@emcraft.com>
In-Reply-To: <4D53216D.4010908@emcraft.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 3/3] u-boot: compile with -O2 on PowerPC
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
X-List-Received-Date: Wed, 09 Feb 2011 23:35:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2011 03:21 PM, Ilya Yanok wrote:
> Hi Darren,
>
> 09.02.2011 20:42, Darren Hart wrote:
>> This is already disabled in u-boot.inc with the following line:
>>
>> # GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS
>> EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"
>
> Yes, sorry, I've useed not up-to-date version of metadata and missed
> this fix. But it has to be '-O2' still.

Understood, -O2 is in master now for all arches.

>
>> Resetting OPTFLAGS to '' removes the -Os from the variable in the
>> Makefile. This isn't just a PowerPC problem, it also manifested on ARM,
>> I believe it is a GCC 4.5.1 issue.
>
> Well, the difference here is that on PowerPC we have -Os option disabled
> completely. Wolfgang tried to summarize know gcc bugs and seems like -Os
> bugs on ARM and PowerPC have different nature (it looks like bugs on ARM
> are already fixed while on the ones PowerPC are not).
> Then I think it's a bad idea to remove -Os everywhere: U-Boot really
> wants to be built with -Os optimization so we might want to change
> optimization level to -O2 only for targets where it's absolutely
> required. Actually I was able to build and successfully run U-Boot on
> beagleboard with -Os so it doesn't look like it's completely broken on ARM.

Interesting - is this using the current recipe in poky? It was building 
for the beagleboard that I hit the bug which caused me to clear -Os from 
the EXTRA_OEMAKE arguments.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

