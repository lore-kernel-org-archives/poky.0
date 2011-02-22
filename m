Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 371DA4C800A6
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 18:25:27 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Feb 2011 16:25:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,203,1297065600"; d="scan'208";a="889857474"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 21 Feb 2011 16:25:26 -0800
Date: Tue, 22 Feb 2011 08:26:18 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110222002618.GA10710@kyu3-hedt>
References: <1298331207.11289.3256.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1298331207.11289.3256.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Autobuilder status
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
X-List-Received-Date: Tue, 22 Feb 2011 00:25:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Feb 21, 23:33, Richard Purdie wrote:
> Hi,
> 
> There appear to be three issues on the autobuilder at present which we
> need to get fixed quickly.
> 
> 1) "zypper search avahi" is causing a segfault on some architectures
> with a double free being detected by libc. This seems to be the cause of
> all the runtime sanity test failures.
> 
> 2) The tar issues are fixed but there is an underlying problem with
> error propagation as it appears bitbake was ignoring the sstate
> extraction failure rather than accounting for it in its build task list.
> If extraction fails, that task should not be making the "skip" list but
> it looks like it does. That bug needs fixing too.
> 
> 3) There are a number of dpkg-deb failures on permissions. This looks to
> be pseudo related. Creation of the sstate package and extraction of it
> should be happening under pseudo and the error suggests this is not
> happening.
> 
> I think PaulE is looking at 2), 3) is new and unassigned and I'm not
> sure who is looking at 1) but I'd like to confirm someone is.
> 
> 
> I'm also aware of some other niggling problems:
> 
> a) do_rootfs depends on the populate_sysroot tasks for all the RDEPENDS.
> This appears to be to pull in any tools required for the postinstalls
> and dates to changes I made in 2007. This needs revisiting as its crazy
> to populate all the sysroots when just the rpms are needed for image
> generation.
> 
> Simply put, a "bitbake poky-image-xxx -c rootfs" should just install the
> package_write_rpm tasks it needs and the populate_sysroot for any tools
> needed. No package data or target populate_sysroot tasks should run.
> 
> b) "all" architecture packages seem to be getting reinstalled a lot by
> sstate. Recent changes to the autobuilder should make it clearer when
> this is happening but we should find out why.
> 
> 
> I'll aim to file bugs on these tomorrow but just wanted to write things
> down whilst there were fresh in my mind. I suspect there may be a bug
> open for 1) above but I'd still appreciate a status update on it.

Yes, Bug 722 is for 1), and Qing is looking at it. He will make a status update on this.

Regards
Ke

