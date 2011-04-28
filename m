Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-gx0-f169.google.com (mail-gx0-f169.google.com
	[209.85.161.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA6084C80188
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 19:18:12 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk23 with SMTP id 23so911706gxk.28
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 17:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=qedK0yTaK1y3k5Fb+RCWZk7eFkQGs3NDo91FN4PMXs0=;
	b=QAlL/8arbvPKNLmKwUf2ymvZI3p73NHUCJfKB9zGZpZw1YYb2tZZ87p/BtMk9PrvCg
	h215buOM8nF2LgnLbJj2ChWTi2prziacZWJBnXK6sgsjTA81oqxKISogw+F4MKO83rx6
	0GhGi1Scwl7vD9IJuTrNMZz/0UtBWek6oGeSc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=D7fONrD7UyKn7TvRkjjEEWSdMOmc88V4KmBxUY0gk7CvopyEEemt+qXhk5lpju34aj
	63IKRLKgAqOCSRfIlk0nWpIT6iXgJ3RzX+okVQFoeM2nN9PoCpgXDdqEogK2c4B6mLh8
	fR6ZDwzkSi+2QDC73R9RRaZ6J4WZJJRvMnf/Q=
MIME-Version: 1.0
Received: by 10.91.136.15 with SMTP id o15mr2483167agn.155.1303949892288; Wed,
	27 Apr 2011 17:18:12 -0700 (PDT)
Received: by 10.91.164.36 with HTTP; Wed, 27 Apr 2011 17:18:12 -0700 (PDT)
In-Reply-To: <4DB8967F.2020409@linux.intel.com>
References: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
	<4DB875A5.30501@windriver.com> <4DB8967F.2020409@linux.intel.com>
Date: Wed, 27 Apr 2011 20:18:12 -0400
Message-ID: <BANLkTin=--u+ro8DxmJGpX_3n53ibdjEjw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] n450: add 2.6.37 kernel recipe and SMP support
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
X-List-Received-Date: Thu, 28 Apr 2011 00:18:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Apr 27, 2011 at 6:19 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>
>
> On 04/27/2011 12:59 PM, Bruce Ashfield wrote:
>> On 11-04-27 03:51 PM, Darren Hart wrote:
>>> The atom-pc BSP which the n450 is based on was originally intended for single
>>> CPU. The n450 is a single-core hyperthreaded CPU, so CONFIG_SMP and
>>> CONFIG_SCHED_SMT are required to access the second hardware thread. These
>>> patches add the newly created cfg/smp.scc config fragment to the recipe.
>>>
>>> The current n450 BSP uses linux-yocto-stable (2.6.34), which was an oversight.
>>> These patches add support for the linux-yocto (2.6.37) recipe and separately
>>> enable that as the default. I have tested the linux-yocto kernel and confirmed
>>> it boots, has functional networking, and can suspend and resume.
>>>
>>> After some discussion with Tom, it seems that there is adequate testing planned
>>> for the point release to allow for moving to the linux-yocto recipe. Note that
>>> fixing bug 1010 makes significant changes to whichever kernel we choose
>>
>> Was this supposed to read "does not make significant changes" ? Looks
>> pretty minor to me (outside of jumping kernels :).
>
> Actually no. There was some concern about jumping kernels and I just
> want to point out that enabling SMP changes the way a number of things
> work within the kernel, so some retesting might be necessary anyway. If
> so, then the jump to 2.6.37 isn't as big of a deal.

Aha. Understood, I was thinking in terms of patches/config, or some
other pending changes. But yes, switching to SMP is a under the
covers big change .. but nothing I wouldn't lump into the 'tested by
other BSPs' category I mentioned before.

Cheers,

Bruce

>
>>
>>> to use. Before I commit to meta-intel however, I would like the input of the QA
>>> team.
>>>
>>> How much testing was planned for the n450 originally? How much additional
>>> testing would be required if we make the new kernel the default?
>>
>> For what its worth our other x86 testing should have largely covered
>> this. If we can't count on the transitive value of our testing using
>> the common fragments/drivers/arch, then we don't have much to count on.
>>
>> I see little risk in this myself, and would support the default changing
>> to linux-yocto in 1.0.1.
>
> Excellent point Bruce!
>
>>
>> Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>>
>>>
>>> Thanks,
>>>
>>> Darren Hart
>>>
>>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

