Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C1B54C803E4
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 15:08:30 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 673FC16604C4; Wed, 27 Jul 2011 14:08:29 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9F30416604C4;
	Wed, 27 Jul 2011 14:08:28 -0600 (MDT)
Message-ID: <4E30703C.6060708@mlbassoc.com>
Date: Wed, 27 Jul 2011 14:08:28 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <4E304A04.5090104@mlbassoc.com> <4E306DF5.40908@mentor.com>
In-Reply-To: <4E306DF5.40908@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: Customizing kernels
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
X-List-Received-Date: Wed, 27 Jul 2011 20:08:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-07-27 13:58, Tom Rini wrote:
> On 07/27/2011 10:25 AM, Gary Thomas wrote:
>> To run a customized kernel configuration, I've been doing this:
>>    % bitbake virtual/kernel
>>    % bitbake virtual/kernel -c menuconfig
>>    % bitbake virtual/kernel -c compile -f
>>    % bitbake virtual/kernel
>>
>> Is there some way that the kernel recipes (probably kernel.bbclass)
>> could mark the compile state as invalid so that the '-c compile -f'
>> step is no longer needed (implied)?
>
> What's the reason around the first bitbake?  I know with pstage you
> needed to do that for an empty TMPDIR to populate out everything else,
> but sstate shouldn't have that weakness.  It should just be:
> $ bitbake virtual/kernel -c menuconfig
> $ bitbake virtual/kernel

>
> And get populating from sstate correct.
>

The first step was just to get started, e.g. from scratch (no sstate, etc)

The situation I'm really talking about is when you've already built the
whole thing (presumably a full image, etc) and then want to change some
kernel option, e.g. add a non-module driver and not rebuild the kernel
from scratch, just recompile the required bits.  In this case, if you
just run the two steps you quote, nothing happens during the second
step because bitbake thinks that the whole recipe is complete.  Once
you run '-c compile -f', it will rerun the compile and that invalidates
the steps that follow in the recipe so they all run as well.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

