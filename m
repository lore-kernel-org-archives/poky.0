Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92E614C805BB
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 20:06:25 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2011 18:06:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,196,1299484800"; d="scan'208";a="720996431"
Received: from unknown (HELO [10.255.12.146]) ([10.255.12.146])
	by orsmga001.jf.intel.com with ESMTP; 16 Mar 2011 18:06:25 -0700
Message-ID: <4D815E75.3090503@linux.intel.com>
Date: Wed, 16 Mar 2011 18:05:57 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>
References: <4D812FD5.5050504@linux.intel.com>
	<1300320837.30423.1924.camel@rex>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25CC1E9E75@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25CC1E9E75@orsmsx501.amr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH A or B] Fix for bug #853 - matchbox-panel segfaults, X becomes unusable
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
X-List-Received-Date: Thu, 17 Mar 2011 01:06:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2011 05:15 PM, Stewart, David C wrote:
> Great job finding this, Darren!

Thanks, but credit also goes to Ke who confirmed that this was the issue 
after I dismissed it because my build didn't reflect the change! Go Team.

:)

--
Darren

>
>> -----Original Message-----
>> From: poky-bounces@yoctoproject.org [mailto:poky-
>> bounces@yoctoproject.org] On Behalf Of Richard Purdie
>> Sent: Wednesday, March 16, 2011 5:14 PM
>> To: Darren Hart
>> Cc: poky@yoctoproject.org
>> Subject: Re: [poky] [PATCH A or B] Fix for bug #853 - matchbox-panel
>> segfaults, X becomes unusable
>>
>> On Wed, 2011-03-16 at 14:47 -0700, Darren Hart wrote:
>>> The root cause of the matchbox-panel segfault is the same as for the
>>> previous two bugs addressing the same issue:
>>>
>>> o Bug 224 - [Netbook/emenlow] matchbox-panel segfault after X startup
>>> o Bug 738 - matchbox-panel segfault after X startup
>>>
>>> There apparently is a bug in gcc which results in the omission of some
>>> code leading to the segfault on core2. The following flags resolve the
>>> problem.
>>>
>>> FULL_OPTIMIZATION = "-fexpensive-optimizations -frename-registers -O2
>>> -ggdb -feliminate-unused-debug-types"
>>>
>>> We can continue to patch each new machine's gtk+ recipe that is based
>> on
>>> atom-pc.conf, or we can just add the above to tune-atom.conf. I've
>>> tested both on both the n450 and a Toshiba NB305 netbook, and each
>>> solution is effective.
>>>
>>> Chaging it in tune-atom.conf likely fixes other bugs we either haven't
>>> solved yet or simply haven't hit. It is also much more invasive, and
>> we
>>> may not be willing to accept that this close to 1.0. The patches
>> follow,
>>> and we can include one or the other.
>>>
>>> Preferences?
>>
>> I'm in favour of C which is to add this to tune-atom.inc:
>>
>> FULL_OPTIMIZATION_pn-gtk+ = "-fexpensive-optimizations -frename-
>> registers -O2 -ggdb -feliminate-unused-debug-types"
>>
>> :)
>>
>> Cheers,
>>
>> Richard
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

