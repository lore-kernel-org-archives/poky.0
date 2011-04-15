Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F8EB4C80B74
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:33:52 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Apr 2011 03:33:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,217,1301900400"; d="scan'208";a="910012057"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga001.fm.intel.com with ESMTP; 15 Apr 2011 03:33:51 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QAgEF-0006Xs-NQ; Fri, 15 Apr 2011 18:26:19 +0800
Message-Id: <cover.1302863087.git.qing.he@intel.com>
Old-Date: Fri, 15 Apr 2011 18:24:47 +0800
Date: Fri, 15 Apr 2011 18:26:19 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [RESEND][PATCH 0/1] bug fix for sat-solver and zypper
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
X-List-Received-Date: Fri, 15 Apr 2011 10:33:53 -0000

From: Qing He <qing.he@intel.com>

This patch fix the issue when installing and handling 'all' packages in zypper.

Resend to the right list, also with Upstream-Status updated.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/poky
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/poky

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (1):
  sat-solver: fix arch=all packages

 .../sat-solver/sat-solver/cmake.patch              |    2 +
 .../sat-solver/sat-solver/db5.patch                |    2 +
 .../sat-solver/sat-solver_obsolete.patch           |    2 +
 .../sat-solver/sat-solver/sat-solver_poky.patch    |   21 ++++++++++++++++++++
 .../sat-solver/sat-solver/sat-solver_rpm5.patch    |    2 +
 meta/recipes-extended/sat-solver/sat-solver_git.bb |    4 +-
 6 files changed, 31 insertions(+), 2 deletions(-)


