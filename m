Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C7264C804C2
	for <poky@yoctoproject.org>; Thu,  7 Jul 2011 05:40:25 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p67AeGZe027015;
	Thu, 7 Jul 2011 11:40:16 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26785-05; Thu,  7 Jul 2011 11:40:12 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p67Ae9n2027009
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 7 Jul 2011 11:40:10 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4E14A686.5020104@linux.intel.com>
References: <4E14A686.5020104@linux.intel.com>
Date: Thu, 07 Jul 2011 11:39:33 +0100
Message-ID: <1310035173.20015.820.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Thu, 07 Jul 2011 10:40:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-06 at 11:16 -0700, Darren Hart wrote:
> I ran the attached bb-matrix.sh on the following system:
> 
> CPU (1): Intel(R) Core(TM) i7 CPU         870  @ 2.93GHz
> Cores: 4
> Threads: 8
> Memory: 8186560 kB
> OS Disk: INTEL SSDSA2M040G2GC (SSD)
> Build Disk: Hitachi HDT721050SLA360 (Spinning Media)
> 
> The script runs builds with all combinations of BB_NUMBER_THREADS and
> PARALLEL_MAKE from 4 through 16.
> 
> Once BB_NUMBER_THREADS hit 10, the kernel OOM Killer started killing off
> tasks and build time tripled. Those runs have been removed the dataset.
> 
> All of the runs with PARALLEL_MAKE=10 also failed, for a variety of
> reasons. See bb-pm-errors.txt for details. For whatever reason, 10 seems
> to be a bad number. Additional failures were seen at 09-11 and 10-14.
> These have all been removed from the dat file.
> 
> From the remaining results, a clear downward trend in build time is
> evident with increasing BB_NUMBER_THREADS through 8, while build time
> mostly increases again with 9 (and dramatically so with 10, not shown).
> Optimal build time is achieved with BB_NUMBER_THREADS=8.
> 
> Along the BB_NUMBER_THREADS=8 line, there is no clear trend with
> increasing values of PARALLEL_MAKE. Local downward trends appear from
> 4-7 and from 11-14. Optimal build time occurs with PARALLEL_MAKE=14,
> however, it only bests PARALLEL_MAKE=7 by 68 seconds.
> 
> While optimal build time is achieved with BB=8 and PM=14, a more
> resource friendly setting of BB=8 and PM=6 yields nearly as good results.

Thanks Darren, I think those are interesting results.

Is the general advice we should give out therefore to set
BB_NUMBER_THREADS = PARALLEL_MAKE = number threads?

I'd love to understand why there is the peak and second dip on the
PARALLEL_MAKE curve...

It would also be good to put the script in scripts/contrib.

Cheers,

Richard


