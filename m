Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE3B34C8086F
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 19:52:15 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Jan 2011 17:52:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,275,1291622400"; d="scan'208";a="370168319"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 04 Jan 2011 17:52:14 -0800
Date: Wed, 5 Jan 2011 10:00:39 +0800
From: Yu Ke <ke.yu@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Message-ID: <20110105020039.GF20780@kyu3-hedt>
References: <cover.1294140740.git.ke.yu@intel.com>
	<4D237A44.3080804@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4D237A44.3080804@linux.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix random kernel unpack failure
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
X-List-Received-Date: Wed, 05 Jan 2011 01:52:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 04, 11:51, Saul Wold wrote:
> On 01/04/2011 03:36 AM, Yu Ke wrote:
> >autobuilder recently is blocked by random unpack failure of linux-libc-headers-yocto
> >and linux-yocto. this patch fix this issue. the patch description has the detailed
> >root cause and fix.
> >
> >Pull URL: git://git.pokylinux.org/poky-contrib.git
> >   Branch: kyu3/kernel-unpack-fix
> >   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/kernel-unpack-fix
> >
> >Thanks,
> >     Yu Ke<ke.yu@intel.com>
> >---
> >
> >
> >Yu Ke (1):
> >   base.bbclass: add lock file for do_unpack task
> >
> >  meta/classes/base.bbclass |    4 ++++
> >  1 files changed, 4 insertions(+), 0 deletions(-)
> >
> >_______________________________________________
> >poky mailing list
> >poky@yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/poky
> >
> 
> Ke,
> 
> This has been pulled into master as a workaround for the existing
> issue, please ensure that this issue gets addressed properly once
> the fetch work is completed to a point that this can be done.
> 
> Thanks
>   Sau!

Yes, with the new fetcher, do_fetch will not create the tar ball for git repo, instead, do_unpack will directly checkout the code from the git repo, thus there will be no race condition and the lock can be safely removed.

I will take care of it in the new fetcher.

Regards
Ke

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

