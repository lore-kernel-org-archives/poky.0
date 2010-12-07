Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-gw0-f54.google.com (mail-gw0-f54.google.com [74.125.83.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 506674C811CE
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 09:35:58 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj21 with SMTP id 21so41081gwj.13
	for <poky@yoctoproject.org>; Tue, 07 Dec 2010 07:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=5tiHq2hzNjKCi7UA2eULEiOXaH7D+h6aMb1vvXH+W0Q=;
	b=ZShsS04jLHOa/C7+Du1EDcBX3i/Fq0uESHJtvMdDgsqoecvCnF6nxhbby2RO01l0Kc
	/bbziVIAQId/uqUI7KU5CRTMzW+9zs0RN/JlhOd0bEk7sWoBAGefe61Q514q2FpxjrNv
	NaRF1mCwvw9FBq+91r9CZqjUKVx8tMDkyzVv0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=YKVEMBWGdSv3NsVwSmm17I60bnk8fj+APeqFkffWiyaz5yq9FHm7iEniyrneyfNcf5
	jOvppJ9A+9QrByoKShDeuVQh1wgCoRRJYc1T3B2gi0th4gXhTKA1m0XTaHzfcQD56RbS
	CIJzymdPhkWOMSV8eBaaj0z+cu8oED3j7TbiU=
MIME-Version: 1.0
Received: by 10.231.10.139 with SMTP id p11mr7727240ibp.179.1291736157133;
	Tue, 07 Dec 2010 07:35:57 -0800 (PST)
Received: by 10.231.207.5 with HTTP; Tue, 7 Dec 2010 07:35:57 -0800 (PST)
In-Reply-To: <4CFDAB6C.2080600@linux.intel.com>
References: <4CFD6C73.20006@linux.intel.com> <4CFD871A.10904@windriver.com>
	<4CFDAB6C.2080600@linux.intel.com>
Date: Tue, 7 Dec 2010 10:35:57 -0500
Message-ID: <AANLkTi=fQRrrY+rbgyvQqJ9Y6j9n5o3UrJNx-y+4qo4f@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: PREEMPT_RT support
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
X-List-Received-Date: Tue, 07 Dec 2010 15:35:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 6, 2010 at 10:35 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 12/06/2010 05:00 PM, Bruce Ashfield wrote:
>>
>> On 10-12-06 6:06 PM, Darren Hart wrote:
>>>
>>> I'm looking at how to best support PREEMPT_RT. We have a few things in
>>> the works which prevent the ideal scenario (which is just a new recipe
>>> using the preempt_rt branch in linux-yocto).
>>>
>>> 2.6.34 never had an -rt patch. The WR folks created one that builds and
>>> is undergoing review from tglx - but that doesn't appear to be near the
>>> top of his stack. 2.6.37 is still pending an -rt patch, also blocked on
>>> -tglx.
>>
>> We'll be doing one at WR eventually, so it will exist in
>> one form or another for version > 2.6.34.
>
> My wording above wasn't quite right. tglx will be releasing a 2.6.37 -rt
> tree, that is committed. We're just waiting for it to emerge. There are a
> handful of reworks that will begin with 2.6.37 and may delay things some,
> but it will emerge.

Right, I recall hearing that at the plumbers conference as well.
I'd like to 'abstract' my statement such that, we can always consider
doing ports if for some reason the upstream tree doesn't move
or match the cadence. We've had to do a 2.6.27 and .34 custom -rt
inside Wind River for just this reason.

>
>>
>>>
>>> I'm thinking of creating a meta-rt layer which would provide a latest
>>> -rt kernel and the rt-tests suite along with a non-graphical image
>>> definition that facilitates latency detection and rt performance
>>> measurement. poky-image-rt-test or something along those lines.
>>>
>>> Any objection to this approach? As we will eventually move these recipes
>>> into the core poky recipes, I'd suggest we put this in an
>>> "experimental/meta_rt" git repository.
>>
>> I'm worrying about this muddying the water with respect to the
>> -rt branches in the linux-yocto repositories. In particular if
>> we go *backward* from the 2.6.34 variant that we already have
>> (remember, that -rt kernel has been heavily abused for 9
>> months now and is just as stable (probably more so for
>> non-x86) as anything else you'll find).
>>
>> Why can't we continue to consolidate these into fewer kernels
>> and recipes ? We can't share fixes and BSPs easily if everything
>> is kept separate. We can obviously pair the tests/utilities along
>> with the linux-yocto -rt branches, so I'd prefer that approach
>> and continue to work on improving the base that we already
>> have.
>
> Hrm. Perhaps my perception of the 2.6.34 kernel is flawed. I wasn't aware
> that this particular version of the patch had seen so much runtime. If that

It has been used a lot, even deployed in products, the stabilization
was long running on about 15 or 20 targets. I'm confident that it has
seen enough burn time

> is the case, instead of an rt-layer, I'll just prepare an rt kernel recipe
> (as we discussed) using the linux-yocto kernel and add rt-tests. Both to the
> core poky meta dir.

This works, and we can update the -rt branches in the 2.6.34 based
kernel to suit.

Cheers,

Bruce

>
> I think it would still make sense to have a linux-rt_tip.bb, which builds
> from linux-2.6-tip.git/rt/head as a sort of developers kernel. Perhaps this
> would work well with the other dev recipes you have simmering?
>
>
> --
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

