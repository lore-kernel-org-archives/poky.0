Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0A924C800A3
	for <poky@lists.pokylinux.org>; Thu,  3 Feb 2011 08:33:07 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p13EX1cR004072;
	Thu, 3 Feb 2011 06:33:01 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 06:33:01 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 06:33:00 -0800
Message-ID: <4D4ABC9B.5090607@windriver.com>
Date: Thu, 03 Feb 2011 09:32:59 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110131 Thunderbird/3.1.8 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D499346.4050800@mlbassoc.com>	<4D49976E.5030800@linux.intel.com>
	<1296669636.1544.4238.camel@rex>	<4D49A22F.6030003@mlbassoc.com>
	<4D49D7FC.20303@mlbassoc.com> <1296692475.1544.5760.camel@rex>
In-Reply-To: <1296692475.1544.5760.camel@rex>
X-OriginalArrivalTime: 03 Feb 2011 14:33:00.0766 (UTC)
	FILETIME=[423517E0:01CBC3AF]
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Poky & armv5te
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
X-List-Received-Date: Thu, 03 Feb 2011 14:33:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-02 07:21 PM, Richard Purdie wrote:
> On Wed, 2011-02-02 at 15:17 -0700, Gary Thomas wrote:
>> On 02/02/2011 11:27 AM, Gary Thomas wrote:
>>> On 02/02/2011 11:00 AM, Richard Purdie wrote:
>>>> On Wed, 2011-02-02 at 09:42 -0800, Darren Hart wrote:
>>>>> On 02/02/2011 09:24 AM, Gary Thomas wrote:
>>>>>> I'd like to use Poky with my OMAP-L138 which is armv5te
>>>>>> Sadly today, this just isn't a go because of GCC issues.
>>>>>> I've tried all the combinations which are in the trees
>>>>>> (main&  contrib) with no luck:
>>>>>> * 4.3.3 - fails to build GCC
>>>>>> * 4.5.1 - everything builds but kernel crashes
>>>>>> * 4.5.2 - fails to build GCC
>>>>>>
>>>>>> Am I totally out of luck?
>>>>>
>>>>> What are you running into? I've recently backported some changes in
>>>>> support of the Beagleboard (armv7-a) which were necessary to build with
>>>>> 4.5.1 and our 2.21 binutils.
>>>>
>>>> Those wouldn't affect armv5. What puzzles me is that qemuarm is
>>>> effectively an armv5 like system and those do build and boot in qemu.
>>>>
>>>> When you managed images above for 4.5.1 did you try using a known good
>>>> kernel with our userspace? I'm wondering if we can narrow it to a kernel
>>>> issue?
>>>
>>> Not sure I got that far, but I'll check it out.
>>
>> A simple test indicates that the user-space tools built in Poky
>> do run fine on this hardware when built with GCC/4.5.1 and BINUTILS/2.21
>> It's only the kernel that crashes hard with this combo.
>
> Ok, thats positive in many ways :)
>
> When you say the kernel crashes hard can you be any more specific about
> where in the process its doing that? Any chance its using -Os anywhere
> in the kernel build and that is causing the problem?

For ARM .. it definitely is using Os. Unless gcc 4.5.1 has
some changes in this area, ARM builds require Os, as they
have for a while (see below).

Typically if you build an ARM kernel without Os you get
indeterminate errors (in the network stack, scheduler
optimizations, etc). At least in kernels 2.6.34 and older
this is true, I've shared in the marathon debug sessions
to prove it :) In fact, we explicitly force on the
CC_OPTIMIZE_FOR_SIZE in our configuration of th ARM kernels
to make sure this doesn't creep back in.

A quick check shows that out of ~170 ARM defconfigs 151
turn on CONFIG_CC_OPTIMIZE_FOR_SIZE, and the ones with it
off are typically older ones.

I just doubled checked qemuarm, and it also turns on
CC_OPTIMIZE_FOR_SIZE (which it was supposed to do). I started
a build for it and will do a boot to see what happens
shortly.

Maybe this has changed recently (I haven't had to have a
deeper look in 2.6.37 (yet)), so I am happy to be corrected :)

Cheers,

Bruce

>
> Cheers,
>
> Richard
>
>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


