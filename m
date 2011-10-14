Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB13CE01277
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 12:01:05 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 69FAF16608B5; Fri, 14 Oct 2011 13:01:04 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 609B116608B4;
	Fri, 14 Oct 2011 13:01:02 -0600 (MDT)
Message-ID: <4E9886EE.2080107@mlbassoc.com>
Date: Fri, 14 Oct 2011 13:01:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E984ACB.1080901@mlbassoc.com> <4E985E22.1080008@windriver.com>
	<1318608939.2342.37.camel@ted>
In-Reply-To: <1318608939.2342.37.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: Poky SDK as an external toolchain
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
X-List-Received-Date: Fri, 14 Oct 2011 19:01:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-14 10:15, Richard Purdie wrote:
> On Fri, 2011-10-14 at 11:06 -0500, Mark Hatle wrote:
>> On 10/14/11 9:44 AM, Gary Thomas wrote:
>>> Premise: I'm happy with the toolchain that builds with Poky/Yocto
>>> Problem: I'm not happy rebuilding said toolchain all the time, nor
>>> having my customers have to rebuild it.
>>>
>>> Solution? I'd like to build the meta-toolchain and then be able to
>>> use that as an external toolchain for subsequent builds.  That way,
>>> I can create the tools and reuse them internally as well as pass
>>> them to my customers.
>>>
>>> How can I make this happen?  The last time I tried anything like
>>> this, I spent many days in the attempt only to find out that it
>>> was never going to work...
>>
>> We have a similar need for our commercial products.  We allow/enable our
>> customers to rebuild the toolchains (and use the results), but we only provide
>> official support for our binary versions.  There are simply too many variations
>> possible to try to support the toolchains in source format.  (Toolchains =
>> bintuils, gcc, stock eglibc and a stock uclibc configurations...)
>>
>> Our intention is simply to create custom recipes that extract our binaries and
>> use them instead of doing a by-source build.  If there is an easier way that
>> would be nice.  (And I agree, using the results of the meta-toolchain build is
>> the right approach for anything standard.)
>>
>> I'd suggest this get added as an enhancement request to the bugzilla.  We're
>> currently working on feature planning for 1.2 so this would be a good time to
>> add it into the bucket of possible work items.
>
> We already support external toolchains just fine. You can use a
> meta-toolchain as an external toolchain.

How do I do this?   I really don't want to deal with another toolchain [vendor]
like CSL.  As I said, I'm very happy with the toolchains that are being built,
I just want to reuse them.

>
> If you want to reuse the toolchain directly, we do have sstate and we
> need to fix issues it has. We know and acknowledge they exist, we just
> need to track down the problems and fix them. The more people who help
> with that the sooner it will get done.
>
> If anything goes into the bugzilla it should be examples of where sstate
> is failing. Most sstate bugs do get resolved failrly quickly.

My bug #1536 gives a very explicit failure case, including a script to
recreate it from scratch.  I've not heard anything about it except "later"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

