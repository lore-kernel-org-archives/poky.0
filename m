Return-Path: <markus.lehtonen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47A99E00C1A; Wed, 16 Nov 2016 02:29:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0E67E00BF8
	for <poky@yoctoproject.org>; Wed, 16 Nov 2016 02:29:17 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 16 Nov 2016 02:29:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,647,1473145200"; d="scan'208";a="192041766"
Received: from marquiz.fi.intel.com ([10.237.72.155])
	by fmsmga004.fm.intel.com with ESMTP; 16 Nov 2016 02:29:15 -0800
Message-ID: <1479291900.13463.4.camel@linux.intel.com>
From: Markus Lehtonen <markus.lehtonen@linux.intel.com>
To: leonardo.sandoval.gonzalez@linux.intel.com, poky@yoctoproject.org
Date: Wed, 16 Nov 2016 12:25:00 +0200
In-Reply-To: <6177d4c8121ebf5a8c390bec71a6d7ee86a85386.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
	<6177d4c8121ebf5a8c390bec71a6d7ee86a85386.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: Evolution 3.16.5 
Mime-Version: 1.0
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
X-List-Received-Date: Wed, 16 Nov 2016 10:29:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2016-11-15 at 15:19 -0600,
leonardo.sandoval.gonzalez@linux.intel.com wrote:
> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
> 
> Scripts that produces script data to be consumed by gnuplot.
> There are two possible plots depending if either the
> -S parameter is present or not:
> 
>     * without -S: Produces a histogram listing top N recipes/tasks versus
>       stats. The first stat defined in the -s parameter is the one taken
>       into account for ranking
>     * -S: Produces a histogram listing tasks versus stats.  In this case,
>       the value of each stat is the sum for that particular stat in all
> recipes found.
>       Stats values  are in descending order defined by the first stat
> defined on -s
> 
> EXAMPLES
> 
> 1. Top recipes' tasks taking into account utime
> 
>     $ buildstats-plot.sh -s utime | gnuplot -p
> 
> 2. Tasks versus utime:stime
> 
>     $ buildstats-plot.sh -s utime:stime -S | gnuplot -p
> 
> 3. Tasks versus IO write_bytes:IO read_bytes
> 
>     $ buildstats-plot.sh -s 'IO write_bytes:IO read_bytes' -S | gnuplot 
> -p

One problem (or problematic restriction) I see is that the script relies on
the new buildstats format introduced by PATCH 2/3 in this patchset, making
the script incompatible with older buildstats and not being able to render
them.

Another problem for me is the dependency on datamash which I wasn't able to
find for my distro (openSUSE Leap 42.1). How hard would it be to ditch the
dependency on datamash?


Thanks,
  Markus


