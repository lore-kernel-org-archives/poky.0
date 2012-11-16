Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 047A4E0032E
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 11:35:56 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A8A1DF811DF; Fri, 16 Nov 2012 12:35:55 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D9F6AF811DB;
	Fri, 16 Nov 2012 12:35:53 -0700 (MST)
Message-ID: <50A695AD.7080704@mlbassoc.com>
Date: Fri, 16 Nov 2012 12:36:13 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Andy Ross <andy.ross@windriver.com>
References: <50A649D6.9030301@mlbassoc.com> <7871104.EdYNj4Ce18@helios>
	<50A68290.4000909@windriver.com>
In-Reply-To: <50A68290.4000909@windriver.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: Wacky dependencies
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Nov 2012 19:35:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-11-16 11:14, Andy Ross wrote:
> On 11/16/2012 06:24 AM, Paul Eggleton wrote:
>> The build system is not able to determine whether a variable within a recipe
>> depends on a single value within DISTRO_FEATURES, it only knows that it looks
>> at the variable; thus any change to DISTRO_FEATURES will change the hash of
>> all recipes that read DISTRO_FEATURES.
>>
>> I'd like to fix this but given that we check if DISTRO_FEATURES and other list
>> variables like it contain values using inline python code i.e.
>> ${@base_contains(...)} this seems like it would be tricky to implement in a
>> reliable way.
>
> I've been playing with variable dependency tracking recently and saw
> issues like this too.  I don't think it can be done compatibly (in the
> sense of preserving the existing list-in-a-string representation) at
> all.  The problem is that dependencies are only tracked at the
> variable level and the "logical dependency" is on substructure in the
> data that isn't visible to the dependency system.
>
> You could do this with the existing data model though, but splitting
> things out into distinct variables.  Test for the presence of
> "DISTRO_FEATURES_directfb" for example.  Or use flags:
> "DISTRO_FEATURES[directfb]".  Flags would require bitbake modification
> though, because they aren't part of the taskdeps field in the
> siguatures.
>
> DISTRO_FEATURES is interpreted outside bitbake, of course.  But in a
> more limited sense this could be done for OVERRIDES, as it's handled
> internally and could be special-cased in the dependency handling.

Thanks, I can see that this is a truly "sticky widget".

Sadly, it probably doesn't matter as gtk-directfb isn't really ready
for prime time (it does not play nice with my touch screen device),
so I'll be switching back to X11 and fighting my battles there.

... off to rebuild the world [again]

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

