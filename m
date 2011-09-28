Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 454BCE004CF
	for <poky@yoctoproject.org>; Wed, 28 Sep 2011 16:58:11 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0D4BF16601EA; Wed, 28 Sep 2011 17:58:10 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 080F416601D7;
	Wed, 28 Sep 2011 17:58:08 -0600 (MDT)
Message-ID: <4E83B490.2060805@mlbassoc.com>
Date: Wed, 28 Sep 2011 17:58:08 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E808201.8080103@mlbassoc.com> <4E82985F.9080009@linux.intel.com>
	<4E830605.2070504@mlbassoc.com> <1317215746.26109.250.camel@ted>
	<4E832289.5070706@mlbassoc.com>
In-Reply-To: <4E832289.5070706@mlbassoc.com>
Cc: Darren Hart <dvhart@linux.intel.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: How to build a kernel using menuconfig
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
X-List-Received-Date: Wed, 28 Sep 2011 23:58:11 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-09-28 07:35, Gary Thomas wrote:
> On 2011-09-28 07:15, Richard Purdie wrote:
>> On Wed, 2011-09-28 at 05:33 -0600, Gary Thomas wrote:
>>> On 2011-09-27 21:45, Darren Hart wrote:
>>>>
>>>>
>>>> On 09/26/2011 06:45 AM, Gary Thomas wrote:
>>>>> I'm working with a recent Poky checkout:
>>>>> meta-yocto = "master:7a0cbe6b0e5185aebabedc515b427994bc2a15dc"
>>>>>
>>>>> I used to be able to do this:
>>>>> % bitbake<some-image>
>>>>> This step builds everything, including the kernel
>>>>> % bitbake virtual/kernel -c menuconfig
>>>>> Adjust some settings
>>>>> % bitbake virtual/kernel -c compile -f
>>>>> % bitbake virtual/kernel
>>>>> Rebuild my image with the new kernel included
>>>>> % bitbake<some-image>
>>>>>
>>>>> In the past, this would let me adjust some kernel settings, e.g. add a new
>>>>> module, then rebuild it and later add this to an image. Sadly, when I run
>>>>> through these steps with the current master, the new kernel gets compiled
>>>>> (because I used -f), but not packaged.
>>>>>
>>>>> The only thing I've done differently, save updating master, is my build
>>>>> today includes
>>>>> INHERIT += "rm_work"
>>>>>
>>>>> Am I missing something?
>>>>>
>>>>> How can I build the kernel and make these in-tree adjustments like I used to?
>>>>> I do this to figure out what kernel settings to set/save for my final packaging.
>>>>
>>>>
>>>> Yeah, this is standard kernel devel workflow. I typically use the kernel
>>>> recipe name directly, but otherwise my process is the same. What happens
>>>> now when you run "bitbake virtual/kernel" after the compile -f ?
>>>>
>>>
>>> As indicated above, nothing. If I remove rm_work from my configuration
>>> and then rebuild the kernel, it works as expected.
>>
>> It sounds like there is a bad interaction between rm_work and this set
>> of steps. I can kind of see why, rm_work promotes the stamp files to
>> setscene ones (so the same as if a sstate build was made). Nothing in
>> the above steps would actually remove the setscene stamps so bitbake
>> sees them and assumes everything is still valid.
>>
>> If you did a bitbake -c package -f virtual/kernel then I suspect it
>> would actually sort itself out. Off the top of my head I can't see a way
>> to fix this in any straightforward way :/.
>
> My inclination is to just not allow rm_work for kernel recipes. Perhaps
> it's possible to filter out rm_work for this recipe like this?
> INHERIT := "${@oe_filter_out('rm_work', '${INHERIT}', d)}"
> Note: I've not tried it, just a thought.

Sadly, this doesn't work.  For now, I'll just note that rm_work is
incompatible with kernel fiddling :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

