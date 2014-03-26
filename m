Return-Path: <laurentiu.palcu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B7BFE00A44
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 03:22:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Mar 2014 03:21:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,734,1389772800"; d="scan'208";a="480295679"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.45])
	by orsmga001.jf.intel.com with ESMTP; 26 Mar 2014 03:21:50 -0700
Date: Wed, 26 Mar 2014 12:21:49 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Jeremy Powell <jeremy@visionaid.com>
Message-ID: <20140326102148.GC32501@lpalcu-linux>
References: <53329F23.8020307@visionaid.com>
MIME-Version: 1.0
In-Reply-To: <53329F23.8020307@visionaid.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: Poky core-image-minimal fails to build with package_deb
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
X-List-Received-Date: Wed, 26 Mar 2014 10:22:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 26, 2014 at 09:34:27AM +0000, Jeremy Powell wrote:
> Hi All,
> 
> I'm trying to build poky from the git master head, but there are
> several problems in the DpkgIndexer class in
> ./meta/lib/oe/package_manager.py
> 
> For instance:
> cd %s; PSEUDO_UNLOAD=1 %s packages > Packages
> should be
> cd %s; PSEUDO_UNLOAD=1 %s packages . > Packages
> 
> The generation of the "Release" file also appears to be incorrect
> (maybe it is also missing a trailing period?).
Might be related to this:

commit aec1194c120e5eae12cee18741d368ac3bb11722
Author: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date:   Mon Mar 17 09:30:37 2014 +0000

package_manager: Use apt-ftparchive for deb packages

Can you revert this patch and try again?

laurentiu

> 
> Finally, the creation of the Packages.gz file causes an error, but
> I'm not currently familiar enough with Yocto to fix it, but perhaps
> someone else might be able to help? (Seems to me that this part of
> the build is running the commands in parallel but needs to performed
> be serially)
> 
> Kind regards,
> Jeremy
> 
> -- 
> Jeremy Powell
> Senior Software Engineer
> 
> VisionAid International Ltd
> Unit 9
> Crawley Business Centre
> Stephenson Way
> Three Bridges
> Crawley
> West Sussex
> RH10 1TN
> 
> -- 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

