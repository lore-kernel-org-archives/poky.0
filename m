Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B40D4C800BE
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 13:26:18 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id F0B0816601CF; Mon, 14 Mar 2011 12:26:17 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id AE12E1660198;
	Mon, 14 Mar 2011 12:26:16 -0600 (MDT)
Message-ID: <4D7E5DC8.3000006@mlbassoc.com>
Date: Mon, 14 Mar 2011 12:26:16 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <4D7A08BF.80303@mlbassoc.com>
	<1299863594.1445.2875.camel@rex>		<4D7A59DC.6070900@mlbassoc.com>
	<4D7A5AFA.7080107@mentor.com>		<4D7A5CB8.8000701@mlbassoc.com>		<20110312001053.GF5603@sakrah.homelinux.org>	<4D7E4FB9.2060203@mentor.com>	
	<1300124421.30423.311.camel@rex>	<4D7E547A.5020906@mentor.com>
	<1300125326.30423.343.camel@rex> <4D7E588A.2090907@mentor.com>
In-Reply-To: <4D7E588A.2090907@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: Native vs not
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
X-List-Received-Date: Mon, 14 Mar 2011 18:26:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/14/2011 12:03 PM, Tom Rini wrote:
> On 03/14/2011 10:55 AM, Richard Purdie wrote:
>> On Mon, 2011-03-14 at 10:46 -0700, Tom Rini wrote:
>>> On 03/14/2011 10:40 AM, Richard Purdie wrote:
>>>> On Mon, 2011-03-14 at 10:26 -0700, Tom Rini wrote:
>>>>> On 03/11/2011 05:10 PM, Khem Raj wrote:
>>>>>
>>>>>> I think having some buildhost/native packages (based on distro/version) trusted and assume provided or even
>>>>>> installed using the build host package management could be one approach
>>>>>> in modern distros I think we could use lot of host packages as is. or
>>>>>> may be trust all and keep a list of blacklisted packages for a given
>>>>>> distro might be something useful
>>>>>
>>>>> I've been thinking about this a bit and at least at the high level there
>>>>> is an argument for making it easy to opt out of a big class of host
>>>>> tools, on a modern distro and trade reprodicibility / reliability for
>>>>> faster initial build times. And on the flip side, opt out of a bit more
>>>>> of our host tool dependencies.
>>>>
>>>> This is what ASSUME_PROVIDED is there for :)
>>>
>>> Well yes. But it'd be nice if we had a few helpers so you could say:
>>> ASSUME_PROVIDED += "${SCM_FETCH_TOOLS} ${DOCUMENTATION_GENERATION_TOOLS}
>>> ..."
>>> and so forth.
>>
>> We need to user to be very clearly aware of what they're adding IMO so
>> I'd prefer maybe just some commented out lines such as:
>>
>> # Uncomment this if you want to use the system provided scm utilities
>> # instead of having the system build them
>> #ASSUME_PROVIDED += "git-native svn-native"
>>
>> I'm actually thinking about a local.conf.sample.advanced file where we
>> list a load of things like this. This means we can keep
>> local.conf.sample simple (the things they probably *need* to look at)
>> yet still show users some of the other more advanced options.
>
> I agree. There's very real risk involved in not assuming things. But there's also very real cases where people are fine taking the risk (and in some cases it's not really that
> risky, eg scm fetching tools, but others really are).

I fully agree with the basic idea, but I'm not sure it solves everything.
I ended up down this road when a configure step tried to use a host tool,
in this case /usr/bin/rsvg-convert.  I think there still would have been
some grousing even if I had ASSUME_PROVIDED="librsvg-native" which is
the package I ended up needing to build.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

