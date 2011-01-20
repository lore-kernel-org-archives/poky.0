Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F10634C81118
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 04:15:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2011 02:15:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="649147615"
Received: from unknown (HELO helios.localnet) ([10.255.16.99])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2011 02:15:06 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Thu, 20 Jan 2011 10:15:03 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
	<88be364793ae493d048409762c83ca4126e3fecf.1295455496.git.paul.eggleton@linux.intel.com>
	<4D3737DF.2040906@intel.com>
In-Reply-To: <4D3737DF.2040906@intel.com>
MIME-Version: 1.0
Message-Id: <201101201015.03665.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 1/3] util-linux: split out libuuid and libblkid into	separate packages
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
X-List-Received-Date: Thu, 20 Jan 2011 10:15:13 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 19 January 2011 19:13:35 Saul Wold wrote:
> On 01/19/2011 08:55 AM, Paul Eggleton wrote:
> > libuuid and libblkid can exist on their own separately from the rest
> > of util-linux. Slightly reduces the overall footprint of other packages
> > that depend on these libraries.
> 
> Is this different than the work that Qing submitted last night?  Are you
> both addressing the same bug #661?
> 
> This fix seems different than his, we need to make sure we are better
> coordinated

Yes, this is a lesson for me to check bugzilla and pay closer attention 
patches that are being posted - my apologies. FYI I was responding to a 
request from Richard on IRC rather than the bug report.

Qing's patch is slightly better than mine in that it splits the dev packages 
out as well; on the other hand it names the packages libuuid and libblkid 
rather than util-linux-libblkid and util-linux-libuuid. Personally it doesn't 
bother me, but having the prefix there does at least make it easy to determine 
the source recipe from the package name.

I think we do also need to bump PR on all packages that depend on these 
libraries (the other patches from my patchset) so that package dependencies 
get corrected automatically.

Qing, would you mind integrating these changes into your branch and reposting? 
(assuming we want the util-linux- package name prefix?)

Cheers,
Paul

