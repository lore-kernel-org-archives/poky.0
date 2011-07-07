Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E6144C8047B
	for <poky@yoctoproject.org>; Thu,  7 Jul 2011 13:12:15 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Jul 2011 11:12:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,494,1304319600"; d="scan'208";a="22742757"
Received: from doubt.jf.intel.com (HELO [10.7.199.182]) ([10.7.199.182])
	by orsmga002.jf.intel.com with ESMTP; 07 Jul 2011 11:12:14 -0700
Message-ID: <4E15F6FD.6020809@linux.intel.com>
Date: Thu, 07 Jul 2011 11:12:13 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E14A686.5020104@linux.intel.com> <1310035173.20015.820.camel@rex>
In-Reply-To: <1310035173.20015.820.camel@rex>
Cc: Josh Lock <joshua.lock@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	Tom Rini <tom_rini@mentor.com>
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
X-List-Received-Date: Thu, 07 Jul 2011 18:12:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 07/07/2011 03:39 AM, Richard Purdie wrote:
> On Wed, 2011-07-06 at 11:16 -0700, Darren Hart wrote:
>> I ran the attached bb-matrix.sh on the following system:
>>
>> CPU (1): Intel(R) Core(TM) i7 CPU         870  @ 2.93GHz
>> Cores: 4
>> Threads: 8
>> Memory: 8186560 kB
>> OS Disk: INTEL SSDSA2M040G2GC (SSD)
>> Build Disk: Hitachi HDT721050SLA360 (Spinning Media)
>>
>> The script runs builds with all combinations of BB_NUMBER_THREADS and
>> PARALLEL_MAKE from 4 through 16.
>>
>> Once BB_NUMBER_THREADS hit 10, the kernel OOM Killer started killing off
>> tasks and build time tripled. Those runs have been removed the dataset.
>>
>> All of the runs with PARALLEL_MAKE=10 also failed, for a variety of
>> reasons. See bb-pm-errors.txt for details. For whatever reason, 10 seems
>> to be a bad number. Additional failures were seen at 09-11 and 10-14.
>> These have all been removed from the dat file.
>>
>> From the remaining results, a clear downward trend in build time is
>> evident with increasing BB_NUMBER_THREADS through 8, while build time
>> mostly increases again with 9 (and dramatically so with 10, not shown).
>> Optimal build time is achieved with BB_NUMBER_THREADS=8.
>>
>> Along the BB_NUMBER_THREADS=8 line, there is no clear trend with
>> increasing values of PARALLEL_MAKE. Local downward trends appear from
>> 4-7 and from 11-14. Optimal build time occurs with PARALLEL_MAKE=14,
>> however, it only bests PARALLEL_MAKE=7 by 68 seconds.
>>
>> While optimal build time is achieved with BB=8 and PM=14, a more
>> resource friendly setting of BB=8 and PM=6 yields nearly as good results.
> 
> Thanks Darren, I think those are interesting results.
> 
> Is the general advice we should give out therefore to set
> BB_NUMBER_THREADS = PARALLEL_MAKE = number threads?

I don't think we have enough data to make a general recommendation, but
for 4 core systems, I think BB=8 and PM=6 is a good choice. With some
additional runs on other hardware, hopefully we can come up with a more
general number like BB=2*NR_CORES PM=1.5*NR_CORES (cores not threads).

> 
> I'd love to understand why there is the peak and second dip on the
> PARALLEL_MAKE curve...

Me too! The PM axis plots are very strange and not at all expected. I'm
seeing similarly unexpected results on the 12 core machine currently
running through a 12-48 bb-matrix run.

> 
> It would also be good to put the script in scripts/contrib.

Yes, I'll try to get around to that soon... this week. They need a
little cleanup I think first.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

