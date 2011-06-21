Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D792B4C804E4
	for <poky@yoctoproject.org>; Tue, 21 Jun 2011 16:14:35 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2011 14:14:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,402,1304319600"; d="scan'208";a="19001899"
Received: from unknown (HELO [10.255.13.171]) ([10.255.13.171])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2011 14:14:35 -0700
Message-ID: <4E0109BA.5020809@linux.intel.com>
Date: Tue, 21 Jun 2011 14:14:34 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <cover.1308366864.git.josh@linux.intel.com>	<85e22915241def8ef365762345942443c0828025.1308366864.git.josh@linux.intel.com>	<4DFC19AC.2010002@linux.intel.com>
	<4DFFD045.3020003@mentor.com>
In-Reply-To: <4DFFD045.3020003@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [RFC PATCH 1/1] local.conf.sample: update suggestions for	BB_NUMBER_THREADS and PARALLEL_MAKE
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
X-List-Received-Date: Tue, 21 Jun 2011 21:14:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/20/2011 03:57 PM, Tom Rini wrote:
> On 06/17/2011 08:21 PM, Darren Hart wrote:
>>
>>
>> On 06/17/2011 08:16 PM, Joshua Lock wrote:
>>> It's been suggested that BB_NUMBER_THREADS should be 2 * the number of cores
>>> and PARALLEL_MAKE should be equal to the number of cores available on the
>>> build machine.
>>>
>>> Update local.conf.sample to suggest this.
>>>
>>> Signed-off-by: Joshua Lock <josh@linux.intel.com>
>>> ---
>>>  meta-yocto/conf/local.conf.sample |    4 +++-
>>>  1 files changed, 3 insertions(+), 1 deletions(-)
>>>
>>> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
>>> index ea32b81..43d06e6 100644
>>> --- a/meta-yocto/conf/local.conf.sample
>>> +++ b/meta-yocto/conf/local.conf.sample
>>> @@ -9,7 +9,9 @@ CONF_VERSION = "1"
>>>  #SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
>>>  
>>>  # Uncomment and set to allow bitbake to execute multiple tasks at once.
>>> -# For a quadcore, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
>>> +# Recommended values are twice the number of processor cores for
>>> +# BB_NUMBER_THREADS and the number of processor cores for PARALLEL_MAKE
>>> +# For a quadcore, BB_NUMBER_THREADS = "8", PARALLEL_MAKE = "-j 4" would
>>
>> Hrm, where is this coming from? In my experience it works better the
>> other way around. We probably also need to be explicit about cores
>> versus threads.
> 
> On my older quad-core AMD box, -j 6 / 4 threads is where it's at, and
> our testing / poking around on other hardware bears that out (for
> example my Dell M4400 laptop is -j 3 / 2 threads).

Those ratios are closer to what I have seen as optimal as well - specifically
more PARALLEL_MAKE threads than BB_NUMBER_THREADS, which is the opposite of the
suggestion made above.


> That said, for much
> more beefy configurations, we use -j 16, and 12 threads (on an 8 core
> machine with 12GB mem).  I think perhaps the best change here is to keep
> it at 1:1 in the sample (since we've also run into older hardware too)
> and explain that anywhere between 1:1 and 2*core:2*core could work best
> depending on setup, ymmv, etc.

I'm well into the data collection process I promised in my first response, with
several days still remaining. However, here is a snapshot of the results. This
is a quad-core i7.

BB PM Seconds ...
04 04 9083.43 2704.41 16073.55 206% 5079496 57424647 2377276782 51099 0 0 1910864 0 0 0 0
04 05 9032.61 2708.10 16093.60 208% 5114730 56938109 2377140907 52246 0 0 2027232 0 0 0 0
04 06 9031.50 2711.30 16095.67 208% 5154734 56737116 2377276988 52525 0 0 1937824 0 0 0 0
04 07 9022.27 2711.39 16150.86 209% 5165928 56811664 2377060362 52531 0 0 2027248 0 0 0 0
04 08 9087.11 2716.88 16103.36 207% 5061918 56763715 2376970987 52525 0 0 1940448 0 0 0 0
04 09 9310.98 2698.72 16080.94 201% 5159166 56868437 2377495925 53496 0 0 2027232 0 0 0 0
04 10 9243.03 2709.35 16077.68 203% 4983749 56880160 2377210887 53044 0 0 2027360 0 0 0 0
04 11 9139.86 2711.91 16085.86 205% 5108951 56824250 2377433181 53253 0 0 2027232 0 0 0 0
04 12 9132.83 2719.61 16066.65 205% 4995133 56904875 2377286845 53102 0 0 1857632 0 0 0 0
04 13 9169.78 2715.16 16095.05 205% 5046506 56856301 2376970111 52827 0 0 2027248 0 0 0 0
04 14 9079.85 2715.04 16082.28 207% 5075792 56804956 2377616169 53000 0 0 1912128 0 0 0 0
04 15 9133.57 2710.45 16096.39 205% 5101938 56804976 2377283916 53125 0 0 2027360 0 0 0 0
04 16 9200.60 2728.44 16129.32 204% 4959845 56852830 2381322571 53793 0 0 2027248 0 0 0 0
05 04 8685.73 2942.91 17328.96 233% 8572490 54322660 2383126091 52468 0 0 2027232 0 0 0 0
05 05 9109.86 2964.68 18033.54 230% 8637358 54222700 2380041373 54070 0 0 2027248 0 0 0 0
05 06 8681.89 2950.25 17384.38 234% 8466556 54244954 2382944050 53202 0 0 2027360 0 0 0 0
05 07 8683.63 2950.78 17380.57 234% 8420681 54277047 2382977368 52970 0 0 2027360 0 0 0 0
05 08 8845.89 2922.37 17296.46 228% 8356145 54197213 2375969732 52062 0 0 2027232 0 0 0 0
05 09 8801.84 2932.86 17509.07 232% 8508554 54179792 2383768769 52943 0 0 2027216 0 0 0 0
05 10 8742.35 2942.06 17341.79 232% 8475095 54323068 2383570357 52587 0 0 2027232 0 0 0 0
05 11 8798.83 2943.76 17428.09 231% 8821969 54234482 2375921193 53157 0 0 2027232 0 0 0 0
05 12 8805.69 2947.29 17417.49 231% 8753090 54442047 2383254479 52402 0 0 1883440 0 0 0 0
05 13 8834.71 2948.17 17435.29 230% 8794659 54271404 2382972825 53267 0 0 2027360 0 0 0 0
05 14 9549.34 2867.80 16897.12 206% 7406864 54830774 2376222762 57989 0 0 2027376 0 0 0 0
05 15 8912.57 2935.90 17301.71 227% 8389127 54353519 2383108921 52124 0 0 1883312 0 0 0 0
05 16 8780.23 2935.33 17286.67 230% 8417447 54242775 2376062987 52913 0 0 2027248 0 0 0 0
06 04 8514.25 3134.09 18582.59 255% 12856900 50543451 2375930920 52359 0 0 2027248 0 0 0 0
06 05 8502.72 3138.54 18576.75 255% 12884270 50607027 2376254598 52315 0 0 2027248 0 0 0 0
06 06 8485.14 3144.19 18611.51 256% 12892763 50365642 2376118338 53214 0 0 2027248 0 0 0 0
06 07 8452.52 3123.77 18596.88 256% 13006966 50461438 2376229877 52251 0 0 2027248 0 0 0 0
06 08 8450.55 3135.17 18586.06 257% 12926578 50394462 2375790855 52833 0 0 2027232 0 0 0 0
06 09 8473.10 3123.47 18554.24 255% 12696799 50642273 2375742839 52867 0 0 2027248 0 0 0 0
06 10 8491.59 3125.92 18580.78 255% 12931115 50381662 2375931612 51677 0 0 2027232 0 0 0 0

Here we can see diminishing returns around 7 threads or so for PARALLEL_MAKE, and
continue to see improvements going from 4 to 6 threads on BB_NUMBER_THREADS. I
suspect this will find an optimal build time with BB=4 and PM=6, but we'll see
(it should be around Jul 1 if things proceed on track and I don't melt the
machine).


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

