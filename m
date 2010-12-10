Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E5464C81001
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 10:50:17 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBAGoAi6028148;
	Fri, 10 Dec 2010 16:50:10 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28009-02; Fri, 10 Dec 2010 16:50:05 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBAGo3dI028134
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 10 Dec 2010 16:50:04 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D0120ED.6060801@linux.intel.com>
References: <4D0120ED.6060801@linux.intel.com>
Date: Fri, 10 Dec 2010 16:49:49 +0000
Message-ID: <1291999789.14420.65.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Kernel recipe naming
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
X-List-Received-Date: Fri, 10 Dec 2010 16:50:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 10:33 -0800, Darren Hart wrote:
> I asked Richard about recipe naming convention this morning. We were pressed for
> time, but this is what I took away from the discussion.
> 
> For typical packages, the filename typically looks like:
> 
> package-name_version.bb
> 
> For kernels this gets a bit more complex as it's useful to indicate the source
> of the kernel (linaro, omap, etc.) as well as the base kernel version (2.6.33)
> and Richard feels it would be nice to indicate in the filename what the
> underlying source repository is (_git). (I agree up to the last point, but for
> the source repository type, it seems to me if a user needs that much detail
> they can open the .bb file and check the SRC_URI.)
> 
> So for a linux recipe, naming as follows seems to meet the above:
> 
> linux-linaro_2.6.35+git.bb
> linux-linaro_2.6.37+git.bb

So far so good :)

> I mentioned the -stable and -devel tags which he agreed could be useful, how to
> integrate them into the naming scheme wasn't clear to me though. Perhaps:
> 
> linux-linaro-stable_2.6.35+git.bb
> linux-linaro-devel_2.6.37+git.bb

No, PN should remain the same for things that are the same target. So
this should really be:

linux-linaro-2.6.35+git-stable.bb
linux-linaro_2.6.37+git-devel.bb

> Although to me, stable and 2.6.35 are redundant for this kernel, and something
> along the lines of the following is just as informative, and doesn't pollute the
> directory listings quite as much (and doesn't have to be renamed when stable
> rebases):
> 
> linux-linaro_stable.bb
> linux-linaro_devel.bb

This would be equally fine as long as you never expect to have two
versions. Since PV overrides whats in there that part of the string is
just for the user's reference and is quite open to various uses.

> In any of the above cases, the PV value doesn't seem to be disputed:
> 
> PV=2.6.35+git${SRCPV}
> 
> or possibly
> 
> PV=2.6.35-linaro+git${SRCPV}
>
> Although including linaro in the PV is probably redundant as it's included in
> the PN and those are typically reported together IIRC $PN_$PV.
>
> Thoughts?

This latter one is redundant as PN reflects it.

Note that there are some issues with the fetcher that mean linux-yocto
may break these guidelines for a short while. We're planning to fix the
fetcher.

Cheers,

Richard


