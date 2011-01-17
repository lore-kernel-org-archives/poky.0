Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3DCA04C811AA
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:26:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Jan 2011 07:26:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,333,1291622400"; d="scan'208";a="697627349"
Received: from unknown (HELO [10.255.14.51]) ([10.255.14.51])
	by orsmga001.jf.intel.com with ESMTP; 17 Jan 2011 07:26:24 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4D33F57D.2030009@intel.com>
References: <4D33F57D.2030009@intel.com>
Date: Mon, 17 Jan 2011 09:26:21 -0600
Message-ID: <1295277981.1738.3.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: QemuARM Boot Failure
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
X-List-Received-Date: Mon, 17 Jan 2011 15:26:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-01-16 at 23:53 -0800, Saul Wold wrote:
> Bruce,
> 
> Did you test the latest systemtap update on ARM?  I am just curious 
> based on the current failure that we are having with qemuarm.  If so, 
> against what revision of master? This might help us narrow down the issue.
> 

Just one thing - at this point, systemtap doesn't need to be tested on
arm, since it didn't work and therefore isn't one of the compatible
machines.

That doesn't explain why qemuarm doesn't boot for - anything
systemtap-related would be orthogonal.  I was able to boot it though,
only to find out that systemtap doesn't work on it...

Tom

> 
> I tried both the systemtap version and the older version and both 
> failed.  The last known good qemuarm was 2 weeks ago, there have been a 
> number of kernel updates in that time along with a loads of userspace 
> changes, but no qemu updates since the first of the year.  I am not sure 
> about the userspace changes yet, need to review them more deeply.
> 
> I will be tied up tomorrow, but will try bisecting tomorrow evening if 
> there is no update before then.
> 
> Thanks
>     Sau!
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



