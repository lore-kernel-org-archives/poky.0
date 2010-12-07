Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 41F314C811C2
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 11:44:26 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 09:44:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="684801243"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.99]) ([10.7.201.99])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2010 09:44:25 -0800
Message-ID: <4CFE7269.4000507@intel.com>
Date: Tue, 07 Dec 2010 09:44:09 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.15) Gecko/20101026 SUSE/3.0.10 Lightning/1.0b1
	Thunderbird/3.0.10 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4CFD94DD.7010906@intel.com>
In-Reply-To: <4CFD94DD.7010906@intel.com>
Subject: Re: Master Stability
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
X-List-Received-Date: Tue, 07 Dec 2010 17:44:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Acked-by: Beth Flanagan

(Stands on build engineer soap box)

If at all possible, when you try to verify a fix, do a full clean build
for more than just one arch using BB_NUMBER_THREADS and PARALLEL_MAKE.
With the number of pull requests coming through, it becomes more and
more vital to verify patches prior to sending them out.

Preferably, I'd like to start seeing people add something like a
Verified-with: <build target> tag to pull requests, so we can at least
identify pulls that need more peer review than normal.

-b


On 12/06/2010 05:58 PM, Saul Wold wrote:
> 
> Folks,
> 
> We had a rash of changes that have broken master, I am trying to resolve 
> the last few breakages, which mostly are in meta-toolchain-sdk build. I 
> realized that this is not in our normal test build path.
> 
> I have fixes for most of the break (I hope), there are still a couple of 
> items that we need to address.
> 
> There is a failure for libatomics on mips, there may be a configuration 
> issue.
> 
> Please be sure to verify your builds before makeing pull requests.
> 
> 
> Thanks
> 	Sau!
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


