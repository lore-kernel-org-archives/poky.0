Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3133E4C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 21:35:10 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 19:35:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="684573220"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 19:35:09 -0800
Message-ID: <4CFDAB6C.2080600@linux.intel.com>
Date: Mon, 06 Dec 2010 19:35:08 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4CFD6C73.20006@linux.intel.com> <4CFD871A.10904@windriver.com>
In-Reply-To: <4CFD871A.10904@windriver.com>
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
X-List-Received-Date: Tue, 07 Dec 2010 03:35:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2010 05:00 PM, Bruce Ashfield wrote:
> On 10-12-06 6:06 PM, Darren Hart wrote:
>> I'm looking at how to best support PREEMPT_RT. We have a few things in
>> the works which prevent the ideal scenario (which is just a new recipe
>> using the preempt_rt branch in linux-yocto).
>>
>> 2.6.34 never had an -rt patch. The WR folks created one that builds and
>> is undergoing review from tglx - but that doesn't appear to be near the
>> top of his stack. 2.6.37 is still pending an -rt patch, also blocked on
>> -tglx.
>
> We'll be doing one at WR eventually, so it will exist in
> one form or another for version > 2.6.34.

My wording above wasn't quite right. tglx will be releasing a 2.6.37 -rt 
tree, that is committed. We're just waiting for it to emerge. There are 
a handful of reworks that will begin with 2.6.37 and may delay things 
some, but it will emerge.

>
>>
>> I'm thinking of creating a meta-rt layer which would provide a latest
>> -rt kernel and the rt-tests suite along with a non-graphical image
>> definition that facilitates latency detection and rt performance
>> measurement. poky-image-rt-test or something along those lines.
>>
>> Any objection to this approach? As we will eventually move these recipes
>> into the core poky recipes, I'd suggest we put this in an
>> "experimental/meta_rt" git repository.
>
> I'm worrying about this muddying the water with respect to the
> -rt branches in the linux-yocto repositories. In particular if
> we go *backward* from the 2.6.34 variant that we already have
> (remember, that -rt kernel has been heavily abused for 9
> months now and is just as stable (probably more so for
> non-x86) as anything else you'll find).
>
> Why can't we continue to consolidate these into fewer kernels
> and recipes ? We can't share fixes and BSPs easily if everything
> is kept separate. We can obviously pair the tests/utilities along
> with the linux-yocto -rt branches, so I'd prefer that approach
> and continue to work on improving the base that we already
> have.

Hrm. Perhaps my perception of the 2.6.34 kernel is flawed. I wasn't 
aware that this particular version of the patch had seen so much 
runtime. If that is the case, instead of an rt-layer, I'll just prepare 
an rt kernel recipe (as we discussed) using the linux-yocto kernel and 
add rt-tests. Both to the core poky meta dir.

I think it would still make sense to have a linux-rt_tip.bb, which 
builds from linux-2.6-tip.git/rt/head as a sort of developers kernel. 
Perhaps this would work well with the other dev recipes you have simmering?


-- 
Darren Hart
Yocto Linux Kernel

