Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C74364C80039
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 17:41:14 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Jan 2011 15:41:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,314,1291622400"; d="scan'208";a="373765875"
Received: from unknown (HELO [10.255.14.60]) ([10.255.14.60])
	by azsmga001.ch.intel.com with ESMTP; 12 Jan 2011 15:40:40 -0800
Message-ID: <4D2E3BF7.9060609@linux.intel.com>
Date: Wed, 12 Jan 2011 15:40:39 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1293749684.git.dvhart@linux.intel.com>
	<AANLkTimkuShXfmK7e2Buw_HM7-ce4OEzjdrd4poYxXfB@mail.gmail.com>
In-Reply-To: <AANLkTimkuShXfmK7e2Buw_HM7-ce4OEzjdrd4poYxXfB@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-2.6-windriver: add atom-pc preempt_rt support (RESEND)
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
X-List-Received-Date: Wed, 12 Jan 2011 23:41:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/12/2011 05:45 AM, Bruce Ashfield wrote:
> On Tue, Jan 11, 2011 at 8:45 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> In addition to the patch against the wrs_meta branch to follow, this tree
>> also needs the atom-pc-preempt_rt to be created:
>
> So just so I'm clear that I'm not missing anything, this is identical
> to the first send ? I have it queued here already, so I won't refresh
> anything if this is indeed the same. (and yes, it does look the same,
> I just wanted to confirm :)

Yes it is identical - that is why I used RESEND and not V2. I sent it 
out because I thought you requested that during our IRC discussion 
during which we each talked past the other at every turn :-)

--
Darren

>
> Bruce
>
>>
>> $ git checkout -b atom-pc-preempt_rt common_pc-preempt_rt
>>
>> Thanks,
>>     Darren Hart<dvhart@linux.intel.com>
>> ---
>>
>>
>> Darren Hart (1):
>>   linux-2.6-windriver: atom-pc-preempt_rt meta-data
>>
>>   .../bsp/atom-pc/atom-pc-preempt_rt.scc             |    7 +++++++
>>   1 files changed, 7 insertions(+), 0 deletions(-)
>>   create mode 100644 wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt.scc
>>   create mode 100644 wrs/patches/atom_pc-preempt_rt/series
>>   create mode 100644 wrs/patches/atom_pc-preempt_rt/status
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
>


-- 
Darren Hart
Yocto Linux Kernel

