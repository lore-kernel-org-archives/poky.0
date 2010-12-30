Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 876784C80FFE
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:13:10 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Dec 2010 18:12:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="367895839"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 29 Dec 2010 18:12:08 -0800
Date: Thu, 30 Dec 2010 10:19:31 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20101230021931.GE20780@kyu3-hedt>
References: <cover.1293616099.git.ke.yu@intel.com> <4D1B7784.6080604@intel.com>
	<1293654413.17519.9146.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1293654413.17519.9146.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org, Saul Wold <saul.wold@intel.com>
Subject: Re: [PATCH 0/1] check if lockfile is writable (bug 606 patch V2)
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
X-List-Received-Date: Thu, 30 Dec 2010 02:13:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Dec 29, 20:26, Richard Purdie wrote:
> On Wed, 2010-12-29 at 10:01 -0800, Saul Wold wrote:
> > I still wonder about this.  If the DL_DIR is read-only, since it is a 
> > shared environment (as example), when a fetch occurs, it may be for 
> > different reasons.
> > 
> > A couple of examples are:
> > 1) an upstream fetch was missed (world build, but different hardware)
> > 2) a developer changed the version information
> > 
> > In cases like this we really do want to do the fetch, so how can we 
> > handle that issue correctly, and not just fail and force the user to 
> > re-download all the packages (which may not be possible).
> > 
> > One option I can think of is to add a "WRITABLE_DL_DIR" (losy name but 
> > you get the idea) or something like that which if the DL_DIR is 
> > read-only could be written to for the lock file and ultimately the fetch 
> > of the missing upstream package.
> 
> DL_DIR *must* be writeable. We don't support the use case where it is
> not. We handle readonly directory sources as part of the mirror
> handling. It might be not a lot is written to DL_DIR, that is just fine.

Yes, so this patch does not intended to support read-only DL_DIR, it just provides more verbal information to use instead of silently hang, so that user can know what is wrong and fix it accordingly.

Regards
Ke

> 
> I therefore agree with Ke's patch which errors if the directory is
> writeable.
> 
> Cheers,
> 
> Richard
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

