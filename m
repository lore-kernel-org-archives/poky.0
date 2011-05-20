Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D45314C803BA
	for <poky@yoctoproject.org>; Fri, 20 May 2011 18:06:15 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 May 2011 16:06:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,244,1304319600"; d="scan'208";a="440046415"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by azsmga001.ch.intel.com with ESMTP; 20 May 2011 16:06:13 -0700
Message-Id: <cover.1305932581.git.dvhart@linux.intel.com>
Old-Date: Fri, 20 May 2011 16:03:01 -0700
Date: Fri, 20 May 2011 16:06:11 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/3] fetch2/git: debug updates and minor cleanup
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
X-List-Received-Date: Fri, 20 May 2011 23:06:16 -0000

From: Darren Hart <dvhart@linux.intel.com>

Yu Ke,

Please consider the following patches against the fetch2/git fetcher. The one
point I would appreciate your review of is in 2/3. Is there a concern that
the urldata has not been initialized at the point where I made the change?

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/git2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/git2

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (3):
  fetch2/git: ensure network check log matches actual command
  fetch2/git: use urldata basecmd when available
  fetch2/git: use logging.debug() and clarify messages

 bitbake/lib/bb/fetch2/git.py |   24 +++++++++++++++---------
 1 files changed, 15 insertions(+), 9 deletions(-)


