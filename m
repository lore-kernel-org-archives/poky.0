Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2F09E00CB0; Wed, 16 Nov 2016 14:43:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2895FE00C65
	for <poky@yoctoproject.org>; Wed, 16 Nov 2016 14:43:43 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 16 Nov 2016 14:43:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,650,1473145200"; d="scan'208";a="902259759"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.5.38])
	([10.219.5.38])
	by orsmga003.jf.intel.com with ESMTP; 16 Nov 2016 14:43:33 -0800
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
References: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
	<1479297202.28508.20.camel@linuxfoundation.org>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <d0c2c8eb-6395-c042-c367-310364cb729f@linux.intel.com>
Date: Wed, 16 Nov 2016 16:48:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <1479297202.28508.20.camel@linuxfoundation.org>
Subject: Re: [PATCH 0/3] bb-perf: scripting to plot buildstats data
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
X-List-Received-Date: Wed, 16 Nov 2016 22:43:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/16/2016 05:53 AM, Richard Purdie wrote:
> On Tue, 2016-11-15 at 15:19 -0600,
> leonardo.sandoval.gonzalez@linux.intel.com wrote:
>> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>>
>> buildstats data has been mostly unexplored mainly due to the lack of
>> tools
>> to digest this data. The script buildstats.sh has been re-designed to
>> be much more flexible and the new script buildstats-plot.sh uses the
>> latter
>> to produce data to be consumed by gnuplot. The tools used are
>> datamash and
>> gnuplot, so these must be present before running them.
>>
>> Some plots created by buildstats-plot.sh can be found at [1]
>>
>> [1] https://wiki.yoctoproject.org/wiki/MortyBuildstats
>>
> This should go to the OE-Core list?
You are right.  buildstats data is produced by a class maintained in 
oe-core, so these scripts should go into the same project.

>
> Cheers,
>
> Richard
>


