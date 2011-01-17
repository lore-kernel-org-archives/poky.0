Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61D794C81065
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:33:56 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jan 2011 07:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,333,1291622400"; d="scan'208";a="647779452"
Received: from unknown (HELO [10.255.14.51]) ([10.255.14.51])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jan 2011 07:33:55 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
In-Reply-To: <1295277981.1738.3.camel@elmorro>
References: <4D33F57D.2030009@intel.com>  <1295277981.1738.3.camel@elmorro>
Date: Mon, 17 Jan 2011 09:33:53 -0600
Message-ID: <1295278433.1738.5.camel@elmorro>
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
X-List-Received-Date: Mon, 17 Jan 2011 15:33:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-17 at 07:26 -0800, Tom Zanussi wrote:
> On Sun, 2011-01-16 at 23:53 -0800, Saul Wold wrote:
> > Bruce,
> > 
> > Did you test the latest systemtap update on ARM?  I am just curious 
> > based on the current failure that we are having with qemuarm.  If so, 
> > against what revision of master? This might help us narrow down the issue.
> > 
> 
> Just one thing - at this point, systemtap doesn't need to be tested on
> arm, since it didn't work and therefore isn't one of the compatible
> machines.
> 
> That doesn't explain why qemuarm doesn't boot for - anything
> systemtap-related would be orthogonal.  I was able to boot it though,
> only to find out that systemtap doesn't work on it...
> 

Actually, that's not true, got confused with something else - I never
got to the point of booting it, since it was a compile failure...

Tom

> Tom
> 
> > 
> > I tried both the systemtap version and the older version and both 
> > failed.  The last known good qemuarm was 2 weeks ago, there have been a 
> > number of kernel updates in that time along with a loads of userspace 
> > changes, but no qemu updates since the first of the year.  I am not sure 
> > about the userspace changes yet, need to review them more deeply.
> > 
> > I will be tied up tomorrow, but will try bisecting tomorrow evening if 
> > there is no update before then.
> > 
> > Thanks
> >     Sau!
> > 
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



