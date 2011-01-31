Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71A744C8018D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 06:30:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Jan 2011 04:30:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,404,1291622400"; d="scan'208";a="382101252"
Received: from unknown (HELO localhost) ([10.255.16.147])
	by azsmga001.ch.intel.com with ESMTP; 31 Jan 2011 04:30:01 -0800
Message-Id: <cover.1296476857.git.josh@linux.intel.com>
Old-Date: Mon, 31 Jan 2011 12:27:37 +0000
Date: Mon, 31 Jan 2011 12:29:54 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/1] Remove Bashisms from scripts/bitbake
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
X-List-Received-Date: Mon, 31 Jan 2011 12:30:06 -0000

From: Joshua Lock <josh@linux.intel.com>

The BitBake wrapper script currently won't run under Dash, this patch removes
the Bash only syntax and ensures the script will run under Dash so that users
with this shell can get at least far enough to be advised that they should
run Bash.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/misc

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (1):
  scripts/bitbake: remove bashisms

 scripts/bitbake |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.7.3.5


