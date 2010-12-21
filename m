Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A0974C81067
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 20:43:33 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Dec 2010 18:43:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,205,1291622400"; d="scan'208";a="638615816"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 20 Dec 2010 18:43:32 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PUsEq-0004g3-72; Tue, 21 Dec 2010 10:46:08 +0800
Message-Id: <cover.1292899187.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Date: Tue, 21 Dec 2010 10:39:47 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/2] [BUGID #565] fixing. Added meta-environment pacakge.
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
X-List-Received-Date: Tue, 21 Dec 2010 02:43:33 -0000

Added pacakge of meta-environment-${TARGET_ARCH} for environment files.
Had config site files with correct target config site files' content.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug565
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug565

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (2):
  meta-environment: Added package of meta-environment-${TARGET_ARCH}
    for     environment files.
  meta-environment: inherit cross-canadian.bbclass

 meta/classes/cross-canadian.bbclass            |    1 +
 meta/classes/toolchain-scripts.bbclass         |   30 +++++++++++
 meta/recipes-core/meta/meta-environment.bb     |   64 ++++++++++++++++++++++++
 meta/recipes-core/tasks/task-cross-canadian.bb |    1 +
 4 files changed, 96 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/meta/meta-environment.bb


