Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D6604C80AAB
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 13:04:16 -0500 (CDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PzC7r-0006Om-RV from Tom_Rini@mentor.com ;
	Mon, 14 Mar 2011 11:04:15 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Mon, 14 Mar 2011 11:04:09 -0700
Received: from [172.30.80.14] (147.34.91.1) by svr-orw-fem-05 (147.34.97.43)
	with Microsoft SMTP Server id 14.1.270.1;
	Mon, 14 Mar 2011 11:04:08 -0700
Message-ID: <4D7E588A.2090907@mentor.com>
Date: Mon, 14 Mar 2011 11:03:54 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D7A08BF.80303@mlbassoc.com> <1299863594.1445.2875.camel@rex>	
	<4D7A59DC.6070900@mlbassoc.com> <4D7A5AFA.7080107@mentor.com>	
	<4D7A5CB8.8000701@mlbassoc.com>	
	<20110312001053.GF5603@sakrah.homelinux.org>
	<4D7E4FB9.2060203@mentor.com>	 <1300124421.30423.311.camel@rex>
	<4D7E547A.5020906@mentor.com> <1300125326.30423.343.camel@rex>
In-Reply-To: <1300125326.30423.343.camel@rex>
X-OriginalArrivalTime: 14 Mar 2011 18:04:09.0731 (UTC)
	FILETIME=[379BFD30:01CBE272]
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
X-List-Received-Date: Mon, 14 Mar 2011 18:04:16 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/14/2011 10:55 AM, Richard Purdie wrote:
> On Mon, 2011-03-14 at 10:46 -0700, Tom Rini wrote:
>> On 03/14/2011 10:40 AM, Richard Purdie wrote:
>>> On Mon, 2011-03-14 at 10:26 -0700, Tom Rini wrote:
>>>> On 03/11/2011 05:10 PM, Khem Raj wrote:
>>>>
>>>>> I think having some buildhost/native packages (based on distro/version) trusted and assume provided or even
>>>>> installed using the build host package management could be one approach
>>>>> in modern distros I think we could use lot of host packages as is. or
>>>>> may be trust all and keep a list of blacklisted packages for a given
>>>>> distro might be something useful
>>>>
>>>> I've been thinking about this a bit and at least at the high level there
>>>> is an argument for making it easy to opt out of a big class of host
>>>> tools, on a modern distro and trade reprodicibility / reliability for
>>>> faster initial build times.  And on the flip side, opt out of a bit more
>>>> of our host tool dependencies.
>>>
>>> This is what ASSUME_PROVIDED is there for :)
>>
>> Well yes.  But it'd be nice if we had a few helpers so you could say:
>> ASSUME_PROVIDED += "${SCM_FETCH_TOOLS} ${DOCUMENTATION_GENERATION_TOOLS}
>> ..."
>> and so forth.
>
> We need to user to be very clearly aware of what they're adding IMO so
> I'd prefer maybe just some commented out lines such as:
>
> # Uncomment this if you want to use the system provided scm utilities
> # instead of having the system build them
> #ASSUME_PROVIDED += "git-native svn-native"
>
> I'm actually thinking about a local.conf.sample.advanced file where we
> list a load of things like this. This means we can keep
> local.conf.sample simple (the things they probably *need* to look at)
> yet still show users some of the other more advanced options.

I agree.  There's very real risk involved in not assuming things.  But 
there's also very real cases where people are fine taking the risk (and 
in some cases it's not really that risky, eg scm fetching tools, but 
others really are).

-- 
Tom Rini
Mentor Graphics Corporation

