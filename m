Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 093554C800BA
	for <poky@yoctoproject.org>; Fri, 17 Jun 2011 22:16:11 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jun 2011 20:16:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,384,1304319600"; d="scan'208";a="19724105"
Received: from unknown (HELO scimitar.amr.corp.intel.com) ([10.255.13.73])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2011 20:16:11 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 17 Jun 2011 20:16:03 -0700
Message-Id: <cover.1308366864.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [RFC PATCH 0/1] Update suggestion of values for BB_NUMBER_THREADS and PARALLEL_MAKE
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
X-List-Received-Date: Sat, 18 Jun 2011 03:16:12 -0000

Title and patch header say it all. Just clearing some local changes out. This one based on
opinion I've overheard.

Please review the following changes for suitability for inclusion. If you have
any objections or suggestions for improvement, please respond to the patches. If
you agree with the changes, please provide your Acked-by.

The following changes since commit 2163461ec94528ecf046a04edc5db3d2dd3a6b8b:

  systemtap: remove non-core COMPATIBLE_MACHINES (2011-06-16 22:14:06 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib josh/localconf
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/localconf

Joshua Lock (1):
  local.conf.sample: update suggestions for BB_NUMBER_THREADS and
    PARALLEL_MAKE

 meta-yocto/conf/local.conf.sample |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

-- 
1.7.5.4


