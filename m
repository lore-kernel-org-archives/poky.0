Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 643F54C800BA
	for <poky@yoctoproject.org>; Fri, 17 Jun 2011 22:21:18 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Jun 2011 20:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,384,1304319600"; d="scan'208";a="16484194"
Received: from unknown (HELO [10.255.13.103]) ([10.255.13.103])
	by orsmga001.jf.intel.com with ESMTP; 17 Jun 2011 20:21:17 -0700
Message-ID: <4DFC19AC.2010002@linux.intel.com>
Date: Fri, 17 Jun 2011 20:21:16 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1308366864.git.josh@linux.intel.com>
	<85e22915241def8ef365762345942443c0828025.1308366864.git.josh@linux.intel.com>
In-Reply-To: <85e22915241def8ef365762345942443c0828025.1308366864.git.josh@linux.intel.com>
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
X-List-Received-Date: Sat, 18 Jun 2011 03:21:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/17/2011 08:16 PM, Joshua Lock wrote:
> It's been suggested that BB_NUMBER_THREADS should be 2 * the number of cores
> and PARALLEL_MAKE should be equal to the number of cores available on the
> build machine.
> 
> Update local.conf.sample to suggest this.
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  meta-yocto/conf/local.conf.sample |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
> index ea32b81..43d06e6 100644
> --- a/meta-yocto/conf/local.conf.sample
> +++ b/meta-yocto/conf/local.conf.sample
> @@ -9,7 +9,9 @@ CONF_VERSION = "1"
>  #SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
>  
>  # Uncomment and set to allow bitbake to execute multiple tasks at once.
> -# For a quadcore, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
> +# Recommended values are twice the number of processor cores for
> +# BB_NUMBER_THREADS and the number of processor cores for PARALLEL_MAKE
> +# For a quadcore, BB_NUMBER_THREADS = "8", PARALLEL_MAKE = "-j 4" would

Hrm, where is this coming from? In my experience it works better the
other way around. We probably also need to be explicit about cores
versus threads.


>  # be appropriate.
>  # BB_NUMBER_THREADS = "4"
>  # Also, make can be passed flags so it run parallel threads e.g.:

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

