Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E24F44C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 01:29:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2011 23:28:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,343,1291622400"; d="scan'208";a="648579099"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2011 23:28:31 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PfSNJ-0003rZ-4g; Wed, 19 Jan 2011 15:22:37 +0800
Message-Id: <cover.1295421399.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Wed, 19 Jan 2011 15:16:39 +0800
Date: Wed, 19 Jan 2011 15:22:37 +0800
To: poky@yoctoproject.org
Cc: aleksandr.koltsoff@ebts.fi
Subject: [PATCH 0/2] improvement for util-linux
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
X-List-Received-Date: Wed, 19 Jan 2011 07:29:01 -0000

this patch set adjusts the packaging policy of util-linux,
separating out shared libraries for flexibility, it also fixes
the dangling symlink exists in the recipe.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He
---


Qing He (2):
  util-linux: separately packaging blkid and uuid
  util-linux: fix dangling symlinks

 meta/recipes-core/util-linux/util-linux.inc       |   27 ++++++++++++++++----
 meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
 2 files changed, 22 insertions(+), 7 deletions(-)


