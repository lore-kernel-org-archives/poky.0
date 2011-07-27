Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF1044C803E4
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 15:17:47 -0500 (CDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1QmAY6-00077k-Tu from Tom_Rini@mentor.com ;
	Wed, 27 Jul 2011 13:17:46 -0700
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Wed, 27 Jul 2011 13:17:46 -0700
Received: from [172.30.80.87] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.289.1;
	Wed, 27 Jul 2011 13:17:46 -0700
Message-ID: <4E307263.4010904@mentor.com>
Date: Wed, 27 Jul 2011 13:17:39 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4E304A04.5090104@mlbassoc.com> <4E306DF5.40908@mentor.com>
	<4E30703C.6060708@mlbassoc.com>
In-Reply-To: <4E30703C.6060708@mlbassoc.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 27 Jul 2011 20:17:46.0756 (UTC)
	FILETIME=[3FE52C40:01CC4C9A]
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
X-List-Received-Date: Wed, 27 Jul 2011 20:17:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 07/27/2011 01:08 PM, Gary Thomas wrote:
> On 2011-07-27 13:58, Tom Rini wrote:
>> On 07/27/2011 10:25 AM, Gary Thomas wrote:
>>> To run a customized kernel configuration, I've been doing this:
>>>    % bitbake virtual/kernel
>>>    % bitbake virtual/kernel -c menuconfig
>>>    % bitbake virtual/kernel -c compile -f
>>>    % bitbake virtual/kernel
>>>
>>> Is there some way that the kernel recipes (probably kernel.bbclass)
>>> could mark the compile state as invalid so that the '-c compile -f'
>>> step is no longer needed (implied)?
>>
>> What's the reason around the first bitbake?  I know with pstage you
>> needed to do that for an empty TMPDIR to populate out everything else,
>> but sstate shouldn't have that weakness.  It should just be:
>> $ bitbake virtual/kernel -c menuconfig
>> $ bitbake virtual/kernel
> 
>>
>> And get populating from sstate correct.
>>
> 
> The first step was just to get started, e.g. from scratch (no sstate, etc)

In that case, you can just to -c menuconfig and then build, but...

> The situation I'm really talking about is when you've already built the
> whole thing (presumably a full image, etc) and then want to change some
> kernel option, e.g. add a non-module driver and not rebuild the kernel
> from scratch, just recompile the required bits.  In this case, if you
> just run the two steps you quote, nothing happens during the second
> step because bitbake thinks that the whole recipe is complete.  Once
> you run '-c compile -f', it will rerun the compile and that invalidates
> the steps that follow in the recipe so they all run as well.

Yes, this is annoying.  The problem stems from menuconfig being
optional.  You could do instead:
bitbake -f -c configure virtual/kernel
bitbake -c menuconfig virtual/kernel
bitbake virtual/kernel

But indeed, that's not much better, it's just re-ordering things.  I
don't know off hand if there's a way to mark a task as invalid from
another task, which is what's needed here (especially when we move the
menuconfig bits to where busybox/etc can use them).

-- 
Tom Rini
Mentor Graphics Corporation

