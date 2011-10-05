Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23745E004CF
	for <poky@yoctoproject.org>; Wed,  5 Oct 2011 08:10:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3B54216609E8; Wed,  5 Oct 2011 09:10:35 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 107C91660836;
	Wed,  5 Oct 2011 09:10:25 -0600 (MDT)
Message-ID: <4E8C7360.2090003@mlbassoc.com>
Date: Wed, 05 Oct 2011 09:10:24 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E862363.8010704@mlbassoc.com> <4E89CDC9.9050500@mlbassoc.com>
	<4E8A1795.6020306@gmail.com> <4E8B06BD.8020100@mlbassoc.com>
	<4E8B303F.4010508@gmail.com> <4E8B31FB.1020603@mlbassoc.com>
	<1317822299.14671.157.camel@ted> <4E8C6176.5020103@mlbassoc.com>
In-Reply-To: <4E8C6176.5020103@mlbassoc.com>
Cc: poky@yoctoproject.org
Subject: Re: web2 on PPC
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
X-List-Received-Date: Wed, 05 Oct 2011 15:10:38 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-05 07:53, Gary Thomas wrote:
> On 2011-10-05 07:44, Richard Purdie wrote:
>> On Tue, 2011-10-04 at 10:19 -0600, Gary Thomas wrote:
>>> On 2011-10-04 10:11, Khem Raj wrote:
>>>> On 10/4/2011 6:14 AM, Gary Thomas wrote:
>>>>> On 2011-10-03 14:14, Khem Raj wrote:
>>>>>> On 10/3/2011 7:59 AM, Gary Thomas wrote:
>>>>>>> On 2011-09-30 14:15, Gary Thomas wrote:
>>>>>>>> I'm trying to run the web-webkit browser on my PowerPC system (built
>>>>>>>> using Poky).
>>>>>>>> I've built this on ARM and it runs great, but on PowerPC it fails
>>>>>>>> almost immediately.
>>>>>>>> Following into the failure with GDB, it looks like it's trying to
>>>>>>>> build up a string
>>>>>>>> using a [possibly] wide character iterator. It fails on line 76 of the
>>>>>>>> code below,
>>>>>>>> going through it by hand shows that 'iterator' is NULL.
>>>>>>>>
>>>>>>>> (gdb) dir
>>>>>>>> /local/logopak8347tbga_new/tmp/work/ppc603e-amltd-linux/webkit-gtk-1.5.1+svnr90727-r0
>>>>>>>>
>>>>>>>>
>>>>>>>> (gdb) l
>>>>>>>> 71 TextBreakIterator* acquireLineBreakIterator(const UChar* string,
>>>>>>>> int length, const AtomicString& locale)
>>>>>>>> 72 {
>>>>>>>> 73 UBreakIterator* iterator =
>>>>>>>> LineBreakIteratorPool::sharedPool().take(locale);
>>>>>>>> 74
>>>>>>>> 75 UErrorCode setTextStatus = U_ZERO_ERROR;
>>>>>>>> 76 ubrk_setText(iterator, string, length,&setTextStatus);
>>>>>>>> 77 if (U_FAILURE(setTextStatus)) {
>>>>>>>> 78 LOG_ERROR("ubrk_setText failed with status %d", setTextStatus);
>>>>>>>> 79 return 0;
>>>>>>>> 80 }
>>>>>>>> (gdb) b 75
>>>>>>>> Breakpoint 1 at 0xf8a7440: file
>>>>>>>> Source/WebCore/platform/text/TextBreakIteratorICU.cpp, line 75.
>>>>>>>>
>>>>>>>> Any ideas what might be wrong here? Maybe some confusion about wide vs
>>>>>>>> not-wide
>>>>>>>> character representation (I've seen this one a lot, especially on
>>>>>>>> PowerPC systems)?
>>>>>>>> Any clues where to look next?
>>>>>>>> I did note that 'locale' into this function is also NULL.
>>>>>>>>
>>>>>>>> Should I file a bug?
>>>>>>>>
>>>>>>>> Note: I tried this with the stock Poky master
>>>>>>>> 9d1db6cc928199f8ac4960e8d4648563ef141427
>>>>>>>> building for qemuppc and running web2 via ssh -X (since qemu doesn't
>>>>>>>> support graphics?)
>>>>>>>> The failure is the same, so this is not something special in my setup.
>>>>>>>>
>>>>>>>> Note 2: it's difficult to get this to fail when running in qemu since
>>>>>>>> it only fails
>>>>>>>> when it's loading and rendering the www.google.co.uk default page. I
>>>>>>>> couldn't figure
>>>>>>>> out how to get my qemu system to be able to access that page over the
>>>>>>>> net, but I ran
>>>>>>>> the same Yocto filesystem on my hardware (this is not a hardware bug)
>>>>>>>> with the same
>>>>>>>> failure. Maybe someone smarter than me can show me how to get qemu to
>>>>>>>> actually access
>>>>>>>> the internet (when the machine that's running qemu is inside a NAT'd
>>>>>>>> zone)?
>>>>>>>>
>>>>>>>> Thanks for any help/ideas
>>>>>>>>
>>>>>>>
>>>>>>> Filed as http://bugzilla.pokylinux.org/show_bug.cgi?id=1570
>>>>>>>
>>>>>>> Still looking for ideas on where to look, how to debug this.
>>>>>>
>>>>>> such problems can happen when autoconf variables are not cached with
>>>>>> right values. So look into site files. What variables to look for can be
>>>>>> taken from config.log of the package.
>>>>>>
>>>>>
>>>>> It turns out the problem is that the ICU library does not work
>>>>> properly (at all!) when the host and target systems have different
>>>>> endianness. If I install ICU libraries which were built on a
>>>>> native PowerPC system, the 'web2' program works.
>>>>>
>>>>
>>>> compare the configure outputs of icu between cross and native ppc build
>>>
>>> I have - they are totally broken in the cross-compile setup.
>>>
>>> The ICU library has a tool which is used to covert their internal
>>> data base to the proper endianness. However, it only works properly
>>> when converting _to_ the endianness of the machine it runs on. It will
>>> not convert a little endian data base to a big endian version when the
>>> tool is run on a little endian machine. I tried to get the ICU folks
>>> to fix this more than a year ago, but they weren't interested in this
>>> case.
>>
>> Is there much needed to make this tool work across different endians? It
>> depends what its doing I guess...
>
> It's a horrible mess :-( I've spent a number of days trying to get this
> thing working with no luck. As I said, I got little joy from the upstream
> folks - they don't seem to be concerned that this doesn't work properly.
> Maybe if they were contacted from someone with more clout (Intel?), they'd
> be more interested.
>
>>
>>> I think I have a solution, albeit a bit crude. The ICU library builder
>>> can take a properly ordered data base as input and not do any of this
>>> mucking around. In fact, the library ships with the little endian version
>>> which is used untouched on little endian targets. I can produce the big
>>> endian version and just provide it to the recipe. One problem with this
>>> is that it's HUGE - 18MB, so I'm not quite sure where to put it.
>>
>> Is that compressed?
>
> Compressed it's less than 7MB.
>
>>
>> I'd be prepared to host that on the Yocto web server so that we can fix
>> the big endian builds for now although its not really a long term
>> solution...
>
> The only "solution" I've come up with so far is to simply replace one
> of the libraries that gets built with one that works. There doesn't
> seem to be any way to get the existing build system to create the library
> properly. I'll package up what I have and send a pointer for review.

Recipe and data file (working library) attached to http://bugzilla.pokylinux.org/show_bug.cgi?id=1570


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

