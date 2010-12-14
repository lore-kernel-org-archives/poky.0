Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFC064C80B71
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 15:43:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2010 13:43:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,344,1288594800"; d="scan'208";a="687139068"
Received: from doubt.jf.intel.com (HELO [10.7.199.80]) ([10.7.199.80])
	by orsmga001.jf.intel.com with ESMTP; 14 Dec 2010 13:43:52 -0800
Message-ID: <4D07E518.7020903@linux.intel.com>
Date: Tue, 14 Dec 2010 13:43:52 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <4D07D920.9090205@linux.intel.com>
	<AANLkTi=S66To=45rywH50VJS2pC0TNXkOYtJC73xpLsR@mail.gmail.com>
In-Reply-To: <AANLkTi=S66To=45rywH50VJS2pC0TNXkOYtJC73xpLsR@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: kernel type naming and package version conflicts
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
X-List-Received-Date: Tue, 14 Dec 2010 21:43:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/14/2010 01:20 PM, Bruce Ashfield wrote:
> On Tue, Dec 14, 2010 at 3:52 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> I believe I've identified why my preempt_rt kernel recipes are failing to
>> build. The do_package_write_ipk is complaining about invalid characters in
>> the file name - specifically:
>>
>> kernel-2.6.34.7-rt-yocto-preempt_rt
>> *** Error: Package name  contains illegal characters, (other than
>> [a-z0-9.+-])
>>
>> Note the "_" in preempt_rt.
>>
>> This name appears to be generated in part from the following assignment:
>>
>> LINUX_KERNEL_TYPE = "preempt_rt"
>> LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
>>
>> Changing this to the following allows the build to succeed without error
>> (replacing _ with -).
>> LINUX_VERSION_EXTENSION ?= "-yocto-preempt-rt"
>>
>> As I see it we have two options, we can rewrite linux-yocto kernel branches
>> for use in bitbake package names (replacing _ with -), or we can forbid the
>> use of _ in the linux-yocto git branches. Rather than clutter up the recipes
>> with string manipulators, I would prefer the latter option.
>
> Ah yes. The _ in preempt_rt pre-dates bitbake, but I'm not particularly
> attached to it.
>
> As for forbidding, I'll have to add sanity checks, since the branch names
> are board customizable, and I know of plenty that will use _'s.
>
>>
>> Bruce, Tom, do you have an opinion?
>
> I'll fix preempt_rt to be preempt-rt, and add sanity checks, but won't
> go for full replacement.
>
> How does that sound ?

Sounds sound ;-)

Thanks,

-- 
Darren Hart
Yocto Linux Kernel

