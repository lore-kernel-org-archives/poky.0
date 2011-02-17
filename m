Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id EAF2B4C80A1D
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 20:23:50 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Feb 2011 18:23:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,483,1291622400"; d="scan'208";a="389928308"
Received: from unknown (HELO [10.255.14.148]) ([10.255.14.148])
	by azsmga001.ch.intel.com with ESMTP; 16 Feb 2011 18:23:45 -0800
Message-ID: <4D5C86B1.3050702@linux.intel.com>
Date: Wed, 16 Feb 2011 18:23:45 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1297791165.4945.281.camel@rex> <4D5C29CE.9020605@linux.intel.com>
In-Reply-To: <4D5C29CE.9020605@linux.intel.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: Build profiling, now in pictures
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
X-List-Received-Date: Thu, 17 Feb 2011 02:23:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2011 11:47 AM, Darren Hart wrote:
> On 02/15/2011 09:32 AM, Richard Purdie wrote:
>> We have just merged Beth's initial buildstats logging work. I was
>> sitting wondering how to actually evaluate the numbers as I wanted to
>> know "where are we spending the time?".
>>
>> It occurred to me that I wanted a graph very similar to that generated
>> by bootchart. I looked around and found pyboootchartgui and then hacked
>> it around a bit and coerced it to start producing charts like:
>>
>> http://tim.rpsys.net/bootchart.png
>>
>> which is the initial "pseudo-native" part of the build. This was simple
>> enough to test with.
>>
>> I then tried graphing a poky-image-sato. To get a graph I could actually
>> read, I stripped out any task taking less than 8 seconds and scaled the
>> x axis from 25 units per second to one unit per second. The result was:
>>
>> http://tim.rpsys.net/bootchart2.png
>> (warning this is a 2.7MB png)
>>
>> I also added in a little bit of colour coding for the second chart.
>> Interestingly it looks like there is more yellow than green meaning
>> configure is a bigger drain on the build time not that its
>> unexpected :/.
>>
>> I quite enjoyed playing with this and on a serious note, the gradient of
>> the task graph makes me a little suspicious of whether the overhead of
>> launching tasks in bitbake itself is having some effect on build time.
>> Certainly on the first graph there are some interesting latencies
>> showing up.
>>
>> Anyhow, I think this is the first time bitbake's task execution has been
>> visualised and there are some interesting things we can learn from it.
>> I'm hoping this is a start of a much more detailed understanding of the
>> build process with respect to performance.
>>
>
> Per Richard's request, I ran this on a large Westmere machine with 40
> physical cores (10 per socket).
>
> BB_NUMBER_THREADS = "40"
> PARALLEL_MAKE = "-j 40"
> MACHINE=qemux86
>
> Here's the poky-image-sato "buildchart" (1.6M):
>
> http://dvhart.com/darren/yocto/buildchart-sato.png
>
> For reference, total build time:
>
> real 68m57.268s
> user 424m23.566s
> sys 211m30.272s
>
> The higher core count results in a steeper gradient and makes the
> serialized build sections a bit more prominent. The two obvious
> serialization points being "eglibc" and the
> "openssl,ncurses,gettext,readline,sqlite,augeas,python,boost,perl"
> sequence.

Note: I am not the only one running jobs on the 40-way, but the CPU 
utilization has been under 30% during my periodic spot checks.

With poky/master 27894c58b74fb01530aa7144b8e8c7a2298187b4 with 
perl-native forced to use PARALLEL_MAKE="" we get:

http://dvhart.com/darren/yocto/buildchart-pre-perl.png

real    58m28.575s
user    421m47.013s
sys     193m12.428s

The second pinch point (gettext,python,etc.) seems to be less 
pronounced, and we're 10 minutes faster (but that shouldn't be taken too 
literally with other jobs running on this system).

With contrib/nitin/misc 42a0ae1220f9add4078f207086ed7f9c859de0af which 
includes a fix for perl-native PARALLEL_MAKE:

http://dvhart.com/darren/yocto/buildchart-post-perl.png

real    57m42.992s
user    423m5.026s
sys     197m50.407s

Visual inspections suggest the second pinch point is further reduced here.

--
Darren

>
> --
> Darren
>
>> Cheers,
>>
>> Richard
>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

