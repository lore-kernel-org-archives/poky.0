Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 857B84C800B7
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 11:26:46 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1Py66w-0006mv-1q from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Fri, 11 Mar 2011 09:26:46 -0800
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Fri, 11 Mar 2011 09:25:26 -0800
Received: from [172.30.80.238] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.270.1;
	Fri, 11 Mar 2011 09:25:25 -0800
Message-ID: <4D7A5AFA.7080107@mentor.com>
Date: Fri, 11 Mar 2011 10:25:14 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4D7A08BF.80303@mlbassoc.com> <1299863594.1445.2875.camel@rex>
	<4D7A59DC.6070900@mlbassoc.com>
In-Reply-To: <4D7A59DC.6070900@mlbassoc.com>
X-OriginalArrivalTime: 11 Mar 2011 17:25:26.0484 (UTC)
	FILETIME=[4F9B6140:01CBE011]
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
X-List-Received-Date: Fri, 11 Mar 2011 17:26:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/2011 10:20 AM, Gary Thomas wrote:
> On 03/11/2011 10:13 AM, Richard Purdie wrote:
>> On Fri, 2011-03-11 at 04:34 -0700, Gary Thomas wrote:
>>> As pointed out in another thread, I'm trying to build a native
>>> package which sends "I need native" ripples throughout much of
>>> the Poky infrastructure.
>>>
>>> Does having a native version available for any given package incur a
>>> cost?
>>> If not, would patches for [all of] the packages I need be acceptable?
>>>
>>> So far, nearly all of the affected packages built fine, just adding
>>> native
>>> to BBCLASSEXTEND. Many already build nativesdk versions already.
>>
>> There is a cost incurred by doing this since it does increase parse time
>> and this is something user exposed which we do try and keep under
>> control.
>>
>> Having said that, the BBCLASSEXTEND technology has a lot less overhead
>> than some of the older approaches to native/sdk recipes.
>
> As is, I created a separate layer with a bunch of bbappend files that are
> only
> BBCLASSEXTEND += " native "
> I suppose if I never needed them, I could just not enable that layer.
>
>>
>> The main reason I've been against native everywhere is that having
>> native versions available makes it far too easy for people to add native
>> dependencies which encourage feature creep without thinking through the
>> huge additional dependency chains, the extra build time and other
>> implications. Often there are slightly more difficult but worthwhile
>> ways we can avoid the native dependency.
>
> Such as? I started down this path needing a native tool (which admittedly
> came from an OE recipe librsvg) which then cascaded into cairo-native and
> beyond, totally 22 packages!. If I knew of a short circuit for this, I'd
> certainly entertain it.

Having just skimmed the OE recipes, yeah, there we just build a ton of 
stuff in librsvg-native.  But I would start by looking at what we can 
pass to configure to disable things as part of the host tool build.

Doing some git grep'ing I see there's just a few things in OE that need 
librsvg-native so perhaps we can build a much more limited native recipe 
instead and still generate what we need to.

-- 
Tom Rini
Mentor Graphics Corporation

