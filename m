Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C09A4C80A7D
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 04:57:46 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2011 02:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,265,1301900400"; d="scan'208";a="633724593"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 25 Apr 2011 02:57:31 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QEIQO-0002TR-61; Mon, 25 Apr 2011 17:49:48 +0800
Message-Id: <cover.1303724875.git.qing.he@intel.com>
Old-Date: Mon, 25 Apr 2011 17:47:55 +0800
Date: Mon, 25 Apr 2011 17:49:48 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 0/2][RESEND] bug fix for quilt and sat-solver
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
X-List-Received-Date: Mon, 25 Apr 2011 09:57:46 -0000

From: Qing He <qing.he@intel.com>

sat-solver: rebranding
quilt: alternative form in patch

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (2):
  sat-solver: fix arch=all packages
  quilt: fix test for target build

 .../quilt/quilt/gnu_patch_test_fix_target.patch    |   26 +++++++++++++++++++
 meta/recipes-devtools/quilt/quilt_0.48.bb          |    6 +++-
 ...sat-solver_poky.patch => sat-solver_core.patch} |   27 +++++++++++++++++--
 meta/recipes-extended/sat-solver/sat-solver_git.bb |   16 ++++++------
 4 files changed, 62 insertions(+), 13 deletions(-)
 create mode 100644 meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix_target.patch
 rename meta/recipes-extended/sat-solver/sat-solver/{sat-solver_poky.patch => sat-solver_core.patch} (81%)


