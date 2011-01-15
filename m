Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C8134C8109B
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 22:14:49 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jan 2011 20:14:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,325,1291622400"; d="scan'208";a="877653530"
Received: from unknown (HELO [10.255.14.72]) ([10.255.14.72])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2011 20:14:43 -0800
Message-ID: <4D311F2F.8000104@intel.com>
Date: Fri, 14 Jan 2011 20:14:39 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1295044979.git.tom.zanussi@intel.com>	<AANLkTinm8D1ctw7d-dZ96njKxPO-dY0VA=cqwPkJkAT2@mail.gmail.com>	<1295063026.31259.14.camel@elmorro>
	<AANLkTim3ES1fWfpbkvUrQ-ynHFedKCL0T8RmkAwEsB5a@mail.gmail.com>
In-Reply-To: <AANLkTim3ES1fWfpbkvUrQ-ynHFedKCL0T8RmkAwEsB5a@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] linux-yocto: temporary NO_LIBPERL fix for perf
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
X-List-Received-Date: Sat, 15 Jan 2011 04:14:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/14/2011 07:56 PM, Bruce Ashfield wrote:
> On Fri, Jan 14, 2011 at 10:43 PM, Tom Zanussi<tom.zanussi@intel.com>  wrote:
>> On Fri, 2011-01-14 at 18:46 -0800, Bruce Ashfield wrote:
>>> On Fri, Jan 14, 2011 at 5:49 PM, Tom Zanussi<tom.zanussi@intel.com>  wrote:
>>>> I'm not familiar enough with the perf recipe to come up with a proper
>>>> fix for the problem yet, but this patch at least removes the build
>>>> error that recently started happening with the linux-yocto perf
>>>> compile.
>>>>
>>>> I'll send a patch re-instating the code it removes once I've
>>>> understood the perf recipe and root-caused the problem.  In any case,
>>>> it doesn't remove any functionality that was there before - NO_LIBPERL
>>>> was always the case, but the code that made that happen just started
>>>> blowing up for some reason.
>>>
>>>
>>> Thanks Tom! I was going to offer to merge this into the kernel
>>> tree itself, since having external patches to the repo isn't something
>>> we typically do. But in this case, the patch is temporary so I'm going
>>> to just ack it, and stay out of the way.
>>>
>>
>> Hi Bruce,
>>
>> The funny thing is that my first inclination and preference was to just
>> submit the kernel patch, and I was about to do that anyway after having
>> initial trouble getting it to apply this way...  Anyway, I decided at
>> least this way if you weren't around to apply it to the kernel tree,
>> Saul was waiting for it and it would be applied regardless - next time
>> I'll just do it the easy way ;-)
>
> Agreed.  We think alike on this one. Hedging your bets on the one
> step process of Saul pulling it into master without me needing to
> be in the middle was good, but given the choice, I'd chose the merge
> to the kernel branches as well.
>
The question still remains, is the root cause of this issue after the 
perl update, so Nitin is still looking into this.

Thanks for working the patch out so quickly, there are still a couple of 
issues with Master, but it's looking alot better right now!

Sau!

> Cheers,
>
> Bruce
>
>>
>> Tom
>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>>>   Branch: tzanussi/perf-no-libperl-fix
>>>>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/perf-no-libperl-fix
>>>>
>>>> Thanks,
>>>>     Tom Zanussi<tom.zanussi@intel.com>
>>>> ---
>>>>
>>>>
>>>> Tom Zanussi (1):
>>>>   linux-yocto: hard-code NO_LIBPERL/NO_LIBPYTHON
>>>>
>>>>   .../linux-yocto/tools-perf-no-scripting.patch      |   49 ++++++++++++++++++++
>>>>   meta/recipes-kernel/linux/linux-yocto_git.bb       |    5 +-
>>>>   2 files changed, 52 insertions(+), 2 deletions(-)
>>>>   create mode 100644 meta/recipes-kernel/linux/linux-yocto/tools-perf-no-scripting.patch
>>>>
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky
>>>>
>>>
>>>
>>>
>>
>>
>>
>
>
>


