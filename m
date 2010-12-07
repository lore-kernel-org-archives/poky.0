Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E03F74C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 19:00:13 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB710D57013707;
	Mon, 6 Dec 2010 17:00:13 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 6 Dec 2010 17:00:12 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.25]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 6 Dec 2010 17:00:12 -0800
Message-ID: <4CFD871A.10904@windriver.com>
Date: Mon, 06 Dec 2010 20:00:10 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101203 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4CFD6C73.20006@linux.intel.com>
In-Reply-To: <4CFD6C73.20006@linux.intel.com>
X-OriginalArrivalTime: 07 Dec 2010 01:00:12.0821 (UTC)
	FILETIME=[1A49BC50:01CB95AA]
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
X-List-Received-Date: Tue, 07 Dec 2010 01:00:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-06 6:06 PM, Darren Hart wrote:
> I'm looking at how to best support PREEMPT_RT. We have a few things in
> the works which prevent the ideal scenario (which is just a new recipe
> using the preempt_rt branch in linux-yocto).
>
> 2.6.34 never had an -rt patch. The WR folks created one that builds and
> is undergoing review from tglx - but that doesn't appear to be near the
> top of his stack. 2.6.37 is still pending an -rt patch, also blocked on
> -tglx.

We'll be doing one at WR eventually, so it will exist in
one form or another for version > 2.6.34.

>
> I'm thinking of creating a meta-rt layer which would provide a latest
> -rt kernel and the rt-tests suite along with a non-graphical image
> definition that facilitates latency detection and rt performance
> measurement. poky-image-rt-test or something along those lines.
>
> Any objection to this approach? As we will eventually move these recipes
> into the core poky recipes, I'd suggest we put this in an
> "experimental/meta_rt" git repository.

I'm worrying about this muddying the water with respect to the
-rt branches in the linux-yocto repositories. In particular if
we go *backward* from the 2.6.34 variant that we already have
(remember, that -rt kernel has been heavily abused for 9
months now and is just as stable (probably more so for
non-x86) as anything else you'll find).

Why can't we continue to consolidate these into fewer kernels
and recipes ? We can't share fixes and BSPs easily if everything
is kept separate. We can obviously pair the tests/utilities along
with the linux-yocto -rt branches, so I'd prefer that approach
and continue to work on improving the base that we already
have.

Cheers,

Bruce

>
> Thoughts?
>


