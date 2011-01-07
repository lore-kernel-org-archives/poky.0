Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0154A4C8108C
	for <poky@lists.pokylinux.org>; Fri,  7 Jan 2011 07:13:45 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 71F3D16601A0; Fri,  7 Jan 2011 06:13:45 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 34EB81660182;
	Fri,  7 Jan 2011 06:13:44 -0700 (MST)
Message-ID: <4D271188.7010208@mlbassoc.com>
Date: Fri, 07 Jan 2011 06:13:44 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D26588E.7070701@mlbassoc.com>	
	<AANLkTikFj5SROL4Thc3Aj8VK6oLudeVz=2vSRiJ8jOM9@mail.gmail.com>	
	<AANLkTinAz2JynsoSYXZB6sTJUg2hJa8Apa_gNaKsdHfi@mail.gmail.com>	
	<AANLkTinp0GooZu6e5uHCaTey=42qUe-NF9FN6qvVTwO3@mail.gmail.com>
	<1294405139.17519.27035.camel@rex>
In-Reply-To: <1294405139.17519.27035.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SRCREV_FORMAT breaks my builds
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
X-List-Received-Date: Fri, 07 Jan 2011 13:13:46 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/07/2011 05:58 AM, Richard Purdie wrote:
> On Thu, 2011-01-06 at 22:26 -0500, Bruce Ashfield wrote:
>> On Thu, Jan 6, 2011 at 10:10 PM, Bruce Ashfield
>> <bruce.ashfield@gmail.com>  wrote:
>>> On Thu, Jan 6, 2011 at 10:06 PM, Bruce Ashfield
>>> <bruce.ashfield@gmail.com>  wrote:
>>>> On Thu, Jan 6, 2011 at 7:04 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
>>>>> My system builds on the Poky meta layer (only), plus my
>>>>> target layers.  As of an update today, I now get errors
>>>>> parsing any package (in meta) which uses SRCREV_FORMAT.
>>>>>
>>>>> The error (bitback tracebacks) is attached.
>>>>>
>>>>> I see these recipes with SRCREV_FORMAT:
>>>>>   ./meta/recipes-kernel/linux/linux-yocto-stable_git.bb:SRCREV_FORMAT =
>>>>> "meta_machine"
>>>>>   ./meta/recipes-kernel/linux/linux-yocto_git.bb:SRCREV_FORMAT =
>>>>> "meta_machine"
>>>>>   ./meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb:SRCREV_FORMAT
>>>>> = "meta_machine"
>>>>>
>>>>> This error happens because I have my own machine(s) which
>>>>> are not listed in poky-default-revisions.inc, such as:
>>>>>   SRCREV_machine_pn-linux-yocto-stable_beagleboard ?=
>>>>> "0431115c9d720fee5bb105f6a7411efb4f851d26"
>>>>> adding such an entry for my machine into my distribution
>>>>> files does work past the problem.
>>>>
>>>> Interesting. I've suffered my fair share of SRCREV pain, but this time I
>>>> haven't touched anything in days, and a quick look didn't show me
>>>> any suspect commits. But from the traces, it is does look to me to be
>>>> another case of the fetcher going out and attempting to validate the
>>>> branches in the SRC_URI of the yocto kernel.
>>>>
>>>> Did you try bisecting a bit to narrow down on the offending commit ?
>>>> I'm not seeing it myself, but if I reproduce it here, I'll try locate what's
>>>> up. There has been fetching work ongoing, but it doesn't appear to be
>>>> the cause here.
>>>>
>>>> I may be able to drop a sane default in the recipes that will keep
>>>> this working, but until I reproduce it, I can't run effective experiments.
>>>> It should simply be pointing at the fallback branches and going merrily
>>>> along in the build
>>>>
>>>> I'll continue to try and reproduce this here.
>>>
>>> And sure enough, I immediately saw this after hitting send. I'm having
>>> a look at this now.
>>
>> My first thought on this was "It must be the recent SRCPV changes", and
>> sure enough, removing SRCPV from the PV of the offending recipes clears
>> out the errors. Whacking SRCREV with any value in the recipes themselves
>> also fixes things up, I'm going to do some test builds to see if that is the
>> solution since the later processing should do the right thing with the specific
>> SRCREV overrides.
>>
>> I'm not seeing why this is being triggered though, it could be a combination
>> of several things .. or I'm just over looking something obvious. I'm more of
>> a kernel guy than a bitbake hacker at this point.
>>
>> Not much help yet, but providing some extra data.
>
> The error is caused by our recent updates to bitbake from bitbake
> upstream. The behaviour of skipped tasks changed in the cache changes in
> that variable expansion was still attempted for variables from skipped
> recipes.
>
> I've added this fix:
>
> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=847b717862a518746bc5e457f40760e3bd36f1db
>
> which seems to fix the problem here for me.

Works for me as well.  Thanks for the quick response!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

