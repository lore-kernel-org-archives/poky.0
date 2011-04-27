Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C92C4C80188
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 17:19:58 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Apr 2011 15:19:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,276,1301900400"; d="scan'208";a="426707203"
Received: from unknown (HELO [10.255.13.11]) ([10.255.13.11])
	by azsmga001.ch.intel.com with ESMTP; 27 Apr 2011 15:19:46 -0700
Message-ID: <4DB8967F.2020409@linux.intel.com>
Date: Wed, 27 Apr 2011 15:19:43 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
	<4DB875A5.30501@windriver.com>
In-Reply-To: <4DB875A5.30501@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] n450: add 2.6.37 kernel recipe and SMP support
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
X-List-Received-Date: Wed, 27 Apr 2011 22:19:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/27/2011 12:59 PM, Bruce Ashfield wrote:
> On 11-04-27 03:51 PM, Darren Hart wrote:
>> The atom-pc BSP which the n450 is based on was originally intended for single
>> CPU. The n450 is a single-core hyperthreaded CPU, so CONFIG_SMP and
>> CONFIG_SCHED_SMT are required to access the second hardware thread. These
>> patches add the newly created cfg/smp.scc config fragment to the recipe.
>>
>> The current n450 BSP uses linux-yocto-stable (2.6.34), which was an oversight.
>> These patches add support for the linux-yocto (2.6.37) recipe and separately
>> enable that as the default. I have tested the linux-yocto kernel and confirmed
>> it boots, has functional networking, and can suspend and resume.
>>
>> After some discussion with Tom, it seems that there is adequate testing planned
>> for the point release to allow for moving to the linux-yocto recipe. Note that
>> fixing bug 1010 makes significant changes to whichever kernel we choose
> 
> Was this supposed to read "does not make significant changes" ? Looks
> pretty minor to me (outside of jumping kernels :).

Actually no. There was some concern about jumping kernels and I just
want to point out that enabling SMP changes the way a number of things
work within the kernel, so some retesting might be necessary anyway. If
so, then the jump to 2.6.37 isn't as big of a deal.

> 
>> to use. Before I commit to meta-intel however, I would like the input of the QA
>> team.
>>
>> How much testing was planned for the n450 originally? How much additional
>> testing would be required if we make the new kernel the default?
> 
> For what its worth our other x86 testing should have largely covered
> this. If we can't count on the transitive value of our testing using
> the common fragments/drivers/arch, then we don't have much to count on.
> 
> I see little risk in this myself, and would support the default changing
> to linux-yocto in 1.0.1.

Excellent point Bruce!

> 
> Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> 
>>
>> Thanks,
>>
>> Darren Hart
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

