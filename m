Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 370BE4C800A3
	for <poky@lists.pokylinux.org>; Thu,  3 Feb 2011 08:41:26 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id A292316603BE; Thu,  3 Feb 2011 07:41:25 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id B07831660233;
	Thu,  3 Feb 2011 07:41:24 -0700 (MST)
Message-ID: <4D4ABE94.5020101@mlbassoc.com>
Date: Thu, 03 Feb 2011 07:41:24 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4D499346.4050800@mlbassoc.com>	<4D49976E.5030800@linux.intel.com>
	<1296669636.1544.4238.camel@rex>	<4D49A22F.6030003@mlbassoc.com>
	<4D49D7FC.20303@mlbassoc.com> <1296692475.1544.5760.camel@rex>
	<4D4ABC9B.5090607@windriver.com>
In-Reply-To: <4D4ABC9B.5090607@windriver.com>
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
X-List-Received-Date: Thu, 03 Feb 2011 14:41:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2011 07:32 AM, Bruce Ashfield wrote:
> On 11-02-02 07:21 PM, Richard Purdie wrote:
>> On Wed, 2011-02-02 at 15:17 -0700, Gary Thomas wrote:
>>> On 02/02/2011 11:27 AM, Gary Thomas wrote:
>>>> On 02/02/2011 11:00 AM, Richard Purdie wrote:
>>>>> On Wed, 2011-02-02 at 09:42 -0800, Darren Hart wrote:
>>>>>> On 02/02/2011 09:24 AM, Gary Thomas wrote:
>>>>>>> I'd like to use Poky with my OMAP-L138 which is armv5te
>>>>>>> Sadly today, this just isn't a go because of GCC issues.
>>>>>>> I've tried all the combinations which are in the trees
>>>>>>> (main& contrib) with no luck:
>>>>>>> * 4.3.3 - fails to build GCC
>>>>>>> * 4.5.1 - everything builds but kernel crashes
>>>>>>> * 4.5.2 - fails to build GCC
>>>>>>>
>>>>>>> Am I totally out of luck?
>>>>>>
>>>>>> What are you running into? I've recently backported some changes in
>>>>>> support of the Beagleboard (armv7-a) which were necessary to build with
>>>>>> 4.5.1 and our 2.21 binutils.
>>>>>
>>>>> Those wouldn't affect armv5. What puzzles me is that qemuarm is
>>>>> effectively an armv5 like system and those do build and boot in qemu.
>>>>>
>>>>> When you managed images above for 4.5.1 did you try using a known good
>>>>> kernel with our userspace? I'm wondering if we can narrow it to a kernel
>>>>> issue?
>>>>
>>>> Not sure I got that far, but I'll check it out.
>>>
>>> A simple test indicates that the user-space tools built in Poky
>>> do run fine on this hardware when built with GCC/4.5.1 and BINUTILS/2.21
>>> It's only the kernel that crashes hard with this combo.
>>
>> Ok, thats positive in many ways :)
>>
>> When you say the kernel crashes hard can you be any more specific about
>> where in the process its doing that? Any chance its using -Os anywhere
>> in the kernel build and that is causing the problem?
>
> For ARM .. it definitely is using Os. Unless gcc 4.5.1 has
> some changes in this area, ARM builds require Os, as they
> have for a while (see below).
>
> Typically if you build an ARM kernel without Os you get
> indeterminate errors (in the network stack, scheduler
> optimizations, etc). At least in kernels 2.6.34 and older
> this is true, I've shared in the marathon debug sessions
> to prove it :) In fact, we explicitly force on the
> CC_OPTIMIZE_FOR_SIZE in our configuration of th ARM kernels
> to make sure this doesn't creep back in.
>
> A quick check shows that out of ~170 ARM defconfigs 151
> turn on CONFIG_CC_OPTIMIZE_FOR_SIZE, and the ones with it
> off are typically older ones.
>
> I just doubled checked qemuarm, and it also turns on
> CC_OPTIMIZE_FOR_SIZE (which it was supposed to do). I started
> a build for it and will do a boot to see what happens
> shortly.
>
> Maybe this has changed recently (I haven't had to have a
> deeper look in 2.6.37 (yet)), so I am happy to be corrected :)

The kernel I'm using is 2.6.32 and it does have CONFIG_CC_OPTIMIZE_FOR_SIZE=y

I should be able to investigate what's crashing shortly .

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

