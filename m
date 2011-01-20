Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 345134C81118
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 12:55:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2011 10:55:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,352,1291622400"; d="scan'208";a="698878704"
Received: from doubt.jf.intel.com (HELO [10.7.199.52]) ([10.7.199.52])
	by orsmga001.jf.intel.com with ESMTP; 20 Jan 2011 10:55:24 -0800
Message-ID: <4D388511.4070500@linux.intel.com>
Date: Thu, 20 Jan 2011 10:55:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Adrian Alonso <aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>	<1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
	<4D3884A0.8030602@linux.intel.com>
In-Reply-To: <4D3884A0.8030602@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 05/25] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Thu, 20 Jan 2011 18:55:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/20/2011 10:53 AM, Darren Hart wrote:
> On 01/17/2011 12:29 PM, Adrian Alonso wrote:
>> * Disable -Os optspace option not supported by gcc use insted
>> -O2
>> * Bump PR
>>
>
>
> I ran into this in the recent u-boot_git.bb recipe I added. Rather than
> create a patch to the Makefile, I found it simpler to adding OPTFLAGS to
> the EXTRA_OEMAKE variable in the recipe:
>
> EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"
>
> This negates the -Os in the Makefile.

In fact, once contrib/dvhart/beagle is merged, you'll get this 
automatically as you use u-boot.inc. So you should be able to drop this 
patch.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

