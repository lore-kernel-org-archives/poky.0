Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9080C4C8122F
	for <poky@pokylinux.org>; Wed,  8 Dec 2010 11:39:37 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Dec 2010 09:39:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,316,1288594800"; d="scan'208";a="358901522"
Received: from unknown (HELO [10.255.13.189]) ([10.255.13.189])
	by azsmga001.ch.intel.com with ESMTP; 08 Dec 2010 09:39:36 -0800
Message-ID: <4CFFC2CE.4090809@linux.intel.com>
Date: Wed, 08 Dec 2010 09:39:26 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <1291791085.2779.125.camel@constitution.bos.jonmasters.org>
	<1291806770.1554.304.camel@rex>
In-Reply-To: <1291806770.1554.304.camel@rex>
Cc: poky@pokylinux.org
Subject: Re: distcc/ccache?
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
X-List-Received-Date: Wed, 08 Dec 2010 17:39:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2010 03:12 AM, Richard Purdie wrote:
> On Wed, 2010-12-08 at 01:51 -0500, Jon Masters wrote:
>> Anyone happen to know if poky plays nicely with distcc?
>
> I think most success has been with icecc in the past and there is a
> icecc class which has code to enable that. It turns out that compiling
> isn't the main bottleneck in builds though and icecc isn't something we
> test in Poky at this time, we just provide the same class OE has which
> may or may not work.

While not distributed compiling related, the following might add some 
perspective as to what to expect with more compile nodes.

I tried a poky-image-sdk (qemux86_64) build on a 4 socket Westmere 
machine (40 physical cores total, 80 hardware threads). I set my 
local.conf to:

BB_NUMBER_THREADS = "160"
PARALLEL_MAKE = "-j 160"

After a warm-up build (get everything downloaded) I cleaned tmp and 
sstate-cache and did another build. This one build took 118 minutes to 
complete.

$ time bitbake poky-image-sdk

<time passes & bitbake spews messages like g++ and a buggy stl program>

NOTE: Tasks Summary: Attempted 5619 tasks of which 300 didn't need to be 
rerun and 0 failed.

real    117m56.025s
user    961m28.822s
sys     464m27.318s


I checked the CPU load periodically, often finding it under 10%. While 
not a scientific test, what this tells me is that the build is 
relatively serialized and/or much of the process is blocked on I/O. It 
also suggests that a really big machine isn't all that helpful in 
speeding up builds (although 117m is nothing to be ashamed of!).

One could likely run four parallel builds on this system and have them 
complete in about the same amount of time. I ran 4 copies of the above 
load (even leaving the parallelism settings at 160). All 4 builds 
completed in between 186 and 192 minutes. The system load average about 
120 (just eyeballing it), with peaks as high as 700. All four builds 
used the same disk, suggesting build dependencies leading to build 
serialization is the primary bottleneck. So while you definitely want a 
good number of CPUs to build, that number tapers off rapidly. Somewhere 
around 10 I'd guess (for single builds). I'd have to run a number of 
more tests to be sure.

Anyway, hopefully that adds a datapoint of some use.

-- 
Darren Hart
Yocto Linux Kernel

