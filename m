Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2F994C81001
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 02:58:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Jan 2011 00:58:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="597988403"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 31 Jan 2011 00:58:37 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PjpUs-0000Dp-1X; Mon, 31 Jan 2011 16:52:30 +0800
Message-Id: <cover.1296463869.git.qing.he@intel.com>
Old-Date: Mon, 31 Jan 2011 16:51:09 +0800
Date: Mon, 31 Jan 2011 16:52:29 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 0/1] fix createrepo-native
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
X-List-Received-Date: Mon, 31 Jan 2011 08:58:38 -0000

From: Qing He <qing.he@intel.com>

The binaries hard code /usr/share/createrepo to look for python libraries,
this needs to change for -native version to work.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (1):
  createrepo: fix native binary

 .../createrepo/createrepo/fix-native-install.patch |   40 +++++++++++++++++++-
 .../createrepo/createrepo_0.4.11.bb                |    2 +-
 2 files changed, 40 insertions(+), 2 deletions(-)


