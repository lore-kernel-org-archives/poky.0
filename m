Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D7AA4C804D9
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 11:32:42 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B11D81660365; Fri, 11 Mar 2011 10:32:41 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1CA0A166029A;
	Fri, 11 Mar 2011 10:32:40 -0700 (MST)
Message-ID: <4D7A5CB8.8000701@mlbassoc.com>
Date: Fri, 11 Mar 2011 10:32:40 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <4D7A08BF.80303@mlbassoc.com>
	<1299863594.1445.2875.camel@rex>	<4D7A59DC.6070900@mlbassoc.com>
	<4D7A5AFA.7080107@mentor.com>
In-Reply-To: <4D7A5AFA.7080107@mentor.com>
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
X-List-Received-Date: Fri, 11 Mar 2011 17:32:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/2011 10:25 AM, Tom Rini wrote:
> On 03/11/2011 10:20 AM, Gary Thomas wrote:
>> On 03/11/2011 10:13 AM, Richard Purdie wrote:
>>> On Fri, 2011-03-11 at 04:34 -0700, Gary Thomas wrote:
>>>> As pointed out in another thread, I'm trying to build a native
>>>> package which sends "I need native" ripples throughout much of
>>>> the Poky infrastructure.
>>>>
>>>> Does having a native version available for any given package incur a
>>>> cost?
>>>> If not, would patches for [all of] the packages I need be acceptable?
>>>>
>>>> So far, nearly all of the affected packages built fine, just adding
>>>> native
>>>> to BBCLASSEXTEND. Many already build nativesdk versions already.
>>>
>>> There is a cost incurred by doing this since it does increase parse time
>>> and this is something user exposed which we do try and keep under
>>> control.
>>>
>>> Having said that, the BBCLASSEXTEND technology has a lot less overhead
>>> than some of the older approaches to native/sdk recipes.
>>
>> As is, I created a separate layer with a bunch of bbappend files that are
>> only
>> BBCLASSEXTEND += " native "
>> I suppose if I never needed them, I could just not enable that layer.
>>
>>>
>>> The main reason I've been against native everywhere is that having
>>> native versions available makes it far too easy for people to add native
>>> dependencies which encourage feature creep without thinking through the
>>> huge additional dependency chains, the extra build time and other
>>> implications. Often there are slightly more difficult but worthwhile
>>> ways we can avoid the native dependency.
>>
>> Such as? I started down this path needing a native tool (which admittedly
>> came from an OE recipe librsvg) which then cascaded into cairo-native and
>> beyond, totally 22 packages!. If I knew of a short circuit for this, I'd
>> certainly entertain it.
>
> Having just skimmed the OE recipes, yeah, there we just build a ton of stuff in librsvg-native. But I would start by looking at what we can pass to configure to disable things as
> part of the host tool build.
>
> Doing some git grep'ing I see there's just a few things in OE that need librsvg-native so perhaps we can build a much more limited native recipe instead and still generate what we
> need to.

What I really needed was rsvg-convert which is used during the build of
midori.  In Poky/Yocto, that tool has to come from librsvg-native.  OE
seems to be happy leaning on the host version.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

