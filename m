Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AB1F4C800A9
	for <poky@pokylinux.org>; Sat,  9 Jul 2011 03:36:58 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Jul 2011 01:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,503,1304319600"; d="scan'208";a="24915134"
Received: from unknown (HELO [10.255.13.187]) ([10.255.13.187])
	by azsmga001.ch.intel.com with ESMTP; 09 Jul 2011 01:36:48 -0700
Message-ID: <4E18132A.6020300@linux.intel.com>
Date: Sat, 09 Jul 2011 01:36:58 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <4E14A686.5020104@linux.intel.com>
	<1310035173.20015.820.camel@rex>	<4E15F6FD.6020809@linux.intel.com>
	<iv7q7b$sqj$1@dough.gmane.org>
In-Reply-To: <iv7q7b$sqj$1@dough.gmane.org>
Cc: poky@pokylinux.org
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
X-List-Received-Date: Sat, 09 Jul 2011 08:36:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/08/2011 01:44 PM, Robert Berger wrote:
> Darren/Richard,
> 
> Maybe we could instead of hacking hard coded default values (or nothing)
> into the config file default to something like this:
> 
> somehow get the number of CPUs:
> 
> CPUS=$(grep ^processor /proc/cpuinfo | wc -l)
> echo CPUS=${CPUS}
> 
> or
> 
> CPUS=`getconf _NPROCESSORS_ONLN`
> echo CPUS_UBUNTU=${CPUS_UBUNTU}
> 
> (don't know if the second one will also work with other distros than Ubuntu)
> 
> Do some calculation which magic number for BB_NUMBER_THREADS and
> PARALLEL_MAKE to use:
> 
> e.g. what was suggested: BB=2*NR_CORES PM=1.5*NR_CORES

My concern with this is that on larger machines I'm seeing very
different optimal multipliers. On my 12 core with a RAID 0 build array,
the ideal setting seems to be BB=12 PM=12.

Until we can better characterize the ideal settings, I think we are
better off documenting what works for specific systems. Now perhaps we
need to do something that caps the number, but that is sure to be wrong
in short order as well.

As your signature suggests, the solution to this isn't likely to be
simple ;-)

--
Darren

> 
> Regards,
> 
> Robert
> ...For every complex problem there is a solution which is simple, neat
> and wrong. -- H.L. Mencken
> 
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

