Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82FB04C804C5
	for <poky@pokylinux.org>; Sun, 10 Jul 2011 02:13:35 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Jul 2011 00:13:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,507,1304319600"; d="scan'208";a="25844032"
Received: from unknown (HELO [10.255.13.187]) ([10.255.13.187])
	by orsmga001.jf.intel.com with ESMTP; 10 Jul 2011 00:13:34 -0700
Message-ID: <4E195134.2060601@linux.intel.com>
Date: Sun, 10 Jul 2011 00:13:56 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4E14A686.5020104@linux.intel.com> <1310035173.20015.820.camel@rex>
	<4E15F6FD.6020809@linux.intel.com> <iv7q7b$sqj$1@dough.gmane.org>
	<4E18132A.6020300@linux.intel.com>
	<CABcZANkBJzCk+ceCYyyx79zqsA87t7E5K=GAERj0Zjaugxi2_A@mail.gmail.com>
In-Reply-To: <CABcZANkBJzCk+ceCYyyx79zqsA87t7E5K=GAERj0Zjaugxi2_A@mail.gmail.com>
Cc: gmane@reliableembeddedsystems.com, poky@pokylinux.org
Subject: Re: build performance: bb-matrix on 4-core (BB_NUMBER_THREADS and PARALLEL_MAKE optimization)
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
X-List-Received-Date: Sun, 10 Jul 2011 07:13:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 07/09/2011 02:16 PM, Chris Larson wrote:
> On Sat, Jul 9, 2011 at 1:36 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>> On 07/08/2011 01:44 PM, Robert Berger wrote:
>>> Darren/Richard,
>>>
>>> Maybe we could instead of hacking hard coded default values (or nothing)
>>> into the config file default to something like this:
>>>
>>> somehow get the number of CPUs:
>>>
>>> CPUS=$(grep ^processor /proc/cpuinfo | wc -l)
>>> echo CPUS=${CPUS}
>>>
>>> or
>>>
>>> CPUS=`getconf _NPROCESSORS_ONLN`
>>> echo CPUS_UBUNTU=${CPUS_UBUNTU}
>>>
>>> (don't know if the second one will also work with other distros than Ubuntu)
>>>
>>> Do some calculation which magic number for BB_NUMBER_THREADS and
>>> PARALLEL_MAKE to use:
>>>
>>> e.g. what was suggested: BB=2*NR_CORES PM=1.5*NR_CORES
>>
>> My concern with this is that on larger machines I'm seeing very
>> different optimal multipliers. On my 12 core with a RAID 0 build array,
>> the ideal setting seems to be BB=12 PM=12.
>>
>> Until we can better characterize the ideal settings, I think we are
>> better off documenting what works for specific systems. Now perhaps we
>> need to do something that caps the number, but that is sure to be wrong
>> in short order as well.
>>
>> As your signature suggests, the solution to this isn't likely to be
>> simple ;-)
> 
> This may be rather specific to my personal setup, but I use
> https://gist.github.com/776390 -- you'll note that you can adjust the
> scaling factors via variables.

Something like this would probably be a good improvement - but it will
need some sort of step function (of cpu count) for the multipliers. I'm
concerned this step function will be tedious to maintain. I suspect the
ideal number is also dependent on on build path storage (spinning disk,
RAID, SSD, tmpfs, etc.), faster storage can likely benefit from higher
thread counts, whereas slower storage just gets more and more bogged
down under higher thread counts. I'll have some numbers from the 12 core
on Tuesday if I'm extrapolating accurately.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

