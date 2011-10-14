Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EDBCE01277
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 15:24:11 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id C8A531660A6D; Fri, 14 Oct 2011 16:24:07 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 551C61660A5D;
	Fri, 14 Oct 2011 16:24:06 -0600 (MDT)
Message-ID: <4E98B686.3060601@mlbassoc.com>
Date: Fri, 14 Oct 2011 16:24:06 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Tom Rini <tom.rini@gmail.com>
References: <4E984ACB.1080901@mlbassoc.com> <4E985E22.1080008@windriver.com>
	<1318608939.2342.37.camel@ted> <4E9886EE.2080107@mlbassoc.com>
	<CA+M6bX=Rx-oT6mx1RwSzQQy0+8-mZhjG5A_1V=K8F0JFpCT34A@mail.gmail.com>
In-Reply-To: <CA+M6bX=Rx-oT6mx1RwSzQQy0+8-mZhjG5A_1V=K8F0JFpCT34A@mail.gmail.com>
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
X-List-Received-Date: Fri, 14 Oct 2011 22:24:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-14 13:58, Tom Rini wrote:
> On Fri, Oct 14, 2011 at 12:01 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> On 2011-10-14 10:15, Richard Purdie wrote:
>>>
>>> On Fri, 2011-10-14 at 11:06 -0500, Mark Hatle wrote:
>>>>
>>>> On 10/14/11 9:44 AM, Gary Thomas wrote:
>>>>>
>>>>> Premise: I'm happy with the toolchain that builds with Poky/Yocto
>>>>> Problem: I'm not happy rebuilding said toolchain all the time, nor
>>>>> having my customers have to rebuild it.
>>>>>
>>>>> Solution? I'd like to build the meta-toolchain and then be able to
>>>>> use that as an external toolchain for subsequent builds.  That way,
>>>>> I can create the tools and reuse them internally as well as pass
>>>>> them to my customers.
>>>>>
>>>>> How can I make this happen?  The last time I tried anything like
>>>>> this, I spent many days in the attempt only to find out that it
>>>>> was never going to work...
>>>>
>>>> We have a similar need for our commercial products.  We allow/enable our
>>>> customers to rebuild the toolchains (and use the results), but we only
>>>> provide
>>>> official support for our binary versions.  There are simply too many
>>>> variations
>>>> possible to try to support the toolchains in source format.  (Toolchains
>>>> =
>>>> bintuils, gcc, stock eglibc and a stock uclibc configurations...)
>>>>
>>>> Our intention is simply to create custom recipes that extract our
>>>> binaries and
>>>> use them instead of doing a by-source build.  If there is an easier way
>>>> that
>>>> would be nice.  (And I agree, using the results of the meta-toolchain
>>>> build is
>>>> the right approach for anything standard.)
>>>>
>>>> I'd suggest this get added as an enhancement request to the bugzilla.
>>>>   We're
>>>> currently working on feature planning for 1.2 so this would be a good
>>>> time to
>>>> add it into the bucket of possible work items.
>>>
>>> We already support external toolchains just fine. You can use a
>>> meta-toolchain as an external toolchain.
>>
>> How do I do this?   I really don't want to deal with another toolchain
>> [vendor]
>> like CSL.  As I said, I'm very happy with the toolchains that are being
>> built,
>> I just want to reuse them.
>
> What Richard is saying is that based on the recipe for CSL (which just
> plugs the binary in and satisfies DEPENDS, etc) you can do the same
> for one that comes out via the meta-toolchain recipe.  Provided that is,
> the toolchain that comes out of meta-toolchain does what you want it to do.
>
> See http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/meta/external-csl-toolchain_2008q3-72.bb
> as an example
>

Filed as enhancement bug: http://bugzilla.pokylinux.org/show_bug.cgi?id=1681

Note: I think this should be solveable with just a limited number of soft links
to the [well known] meta-toolchain install.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

