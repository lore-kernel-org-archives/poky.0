Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A432A4C800A7
	for <poky@lists.pokylinux.org>; Wed,  2 Feb 2011 12:28:00 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3046F166029B; Wed,  2 Feb 2011 11:28:00 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 89865166028C;
	Wed,  2 Feb 2011 11:27:59 -0700 (MST)
Message-ID: <4D49A22F.6030003@mlbassoc.com>
Date: Wed, 02 Feb 2011 11:27:59 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D499346.4050800@mlbassoc.com>	 <4D49976E.5030800@linux.intel.com>
	<1296669636.1544.4238.camel@rex>
In-Reply-To: <1296669636.1544.4238.camel@rex>
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
X-List-Received-Date: Wed, 02 Feb 2011 18:28:00 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2011 11:00 AM, Richard Purdie wrote:
> On Wed, 2011-02-02 at 09:42 -0800, Darren Hart wrote:
>> On 02/02/2011 09:24 AM, Gary Thomas wrote:
>>> I'd like to use Poky with my OMAP-L138 which is armv5te
>>> Sadly today, this just isn't a go because of GCC issues.
>>> I've tried all the combinations which are in the trees
>>> (main&  contrib) with no luck:
>>> * 4.3.3 - fails to build GCC
>>> * 4.5.1 - everything builds but kernel crashes
>>> * 4.5.2 - fails to build GCC
>>>
>>> Am I totally out of luck?
>>
>> What are you running into? I've recently backported  some changes in
>> support of the Beagleboard (armv7-a) which were necessary to build with
>> 4.5.1 and our 2.21 binutils.
>
> Those wouldn't affect armv5. What puzzles me is that qemuarm is
> effectively an armv5 like system and those do build and boot in qemu.
>
> When you managed images above for 4.5.1 did you try using a known good
> kernel with our userspace? I'm wondering if we can narrow it to a kernel
> issue?

Not sure I got that far, but I'll check it out.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

