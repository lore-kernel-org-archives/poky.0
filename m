Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C508E4C80A74
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 12:33:23 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Dec 2010 10:33:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,321,1288594800"; d="scan'208";a="685581705"
Received: from doubt.jf.intel.com (HELO [10.24.4.158]) ([10.24.4.158])
	by orsmga001.jf.intel.com with ESMTP; 09 Dec 2010 10:33:23 -0800
Message-ID: <4D0120ED.6060801@linux.intel.com>
Date: Thu, 09 Dec 2010 10:33:17 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Kernel recipe naming
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
X-List-Received-Date: Thu, 09 Dec 2010 18:33:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I asked Richard about recipe naming convention this morning. We were pressed for
time, but this is what I took away from the discussion.

For typical packages, the filename typically looks like:

package-name_version.bb

For kernels this gets a bit more complex as it's useful to indicate the source
of the kernel (linaro, omap, etc.) as well as the base kernel version (2.6.33)
and Richard feels it would be nice to indicate in the filename what the
underlying source repository is (_git). (I agree up to the last point, but for
the source repository type, it seems to me if a user needs that much detail
they can open the .bb file and check the SRC_URI.)

So for a linux recipe, naming as follows seems to meet the above:

linux-linaro_2.6.35+git.bb
linux-linaro_2.6.37+git.bb

I mentioned the -stable and -devel tags which he agreed could be useful, how to
integrate them into the naming scheme wasn't clear to me though. Perhaps:

linux-linaro-stable_2.6.35+git.bb
linux-linaro-devel_2.6.37+git.bb

Although to me, stable and 2.6.35 are redundant for this kernel, and something
along the lines of the following is just as informative, and doesn't pollute the
directory listings quite as much (and doesn't have to be renamed when stable
rebases):

linux-linaro_stable.bb
linux-linaro_devel.bb

In any of the above cases, the PV value doesn't seem to be disputed:

PV=2.6.35+git${SRCPV}

or possibly

PV=2.6.35-linaro+git${SRCPV}

Although including linaro in the PV is probably redundant as it's included in
the PN and those are typically reported together IIRC $PN_$PV.

Thoughts?
-- 
Darren Hart
Yocto Linux Kernel

