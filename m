Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27B42E00CB0; Wed, 16 Nov 2016 14:39:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36898E00C65
	for <poky@yoctoproject.org>; Wed, 16 Nov 2016 14:39:36 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Nov 2016 14:39:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,650,1473145200"; 
   d="scan'208";a="5261185"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.5.38])
	([10.219.5.38])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2016 14:39:35 -0800
To: Markus Lehtonen <markus.lehtonen@linux.intel.com>, poky@yoctoproject.org
References: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
	<6177d4c8121ebf5a8c390bec71a6d7ee86a85386.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
	<1479291900.13463.4.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <def34d22-e7ec-b6d6-13bc-0ae44be7c23d@linux.intel.com>
Date: Wed, 16 Nov 2016 16:44:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <1479291900.13463.4.camel@linux.intel.com>
Subject: Re: [PATCH 3/3] bb-perf: plot histograms base on buildstats data
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Nov 2016 22:39:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/16/2016 04:25 AM, Markus Lehtonen wrote:
> On Tue, 2016-11-15 at 15:19 -0600,
> leonardo.sandoval.gonzalez@linux.intel.com wrote:
>> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>>
>> Scripts that produces script data to be consumed by gnuplot.
>> There are two possible plots depending if either the
>> -S parameter is present or not:
>>
>>      * without -S: Produces a histogram listing top N recipes/tasks versus
>>        stats. The first stat defined in the -s parameter is the one taken
>>        into account for ranking
>>      * -S: Produces a histogram listing tasks versus stats.  In this case,
>>        the value of each stat is the sum for that particular stat in all
>> recipes found.
>>        Stats values  are in descending order defined by the first stat
>> defined on -s
>>
>> EXAMPLES
>>
>> 1. Top recipes' tasks taking into account utime
>>
>>      $ buildstats-plot.sh -s utime | gnuplot -p
>>
>> 2. Tasks versus utime:stime
>>
>>      $ buildstats-plot.sh -s utime:stime -S | gnuplot -p
>>
>> 3. Tasks versus IO write_bytes:IO read_bytes
>>
>>      $ buildstats-plot.sh -s 'IO write_bytes:IO read_bytes' -S | gnuplot
>> -p
> One problem (or problematic restriction) I see is that the script relies on
> the new buildstats format introduced by PATCH 2/3 in this patchset, making
> the script incompatible with older buildstats and not being able to render
> them.

The proposed buildstats.sh script has the same behavior as the old one 
if -s 'Elapsed time' is included as argument. The new feature introduced 
is that we can parse other stats besides Elapsed Time, so with 
buildstats-plot.sh can make use of it. The main reason of the 2/2 change 
is that Elapsed time does not give us much info because this is wall 
time, not CPU time.

> Another problem for me is the dependency on datamash which I wasn't able to
> find for my distro (openSUSE Leap 42.1). How hard would it be to ditch the
> dependency on datamash?
datamash is pretty good for doing basic stat and this case we are just 
summing columns by 'groups'. The same thing can be with awk of course. 
Looking at the https://www.gnu.org/software/datamash/download/, there is 
no package ready for opensuse so the only option here is to get the 
tarball and 'make' it.


> Thanks,
>    Markus
>
>


