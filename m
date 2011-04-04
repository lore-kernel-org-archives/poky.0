Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A21744C80593
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 09:25:53 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Apr 2011 07:25:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,297,1299484800"; d="scan'208";a="623285608"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by orsmga002.jf.intel.com with ESMTP; 04 Apr 2011 07:25:52 -0700
Message-Id: <cover.1301909087.git.lei.mei@intel.com>
Old-Date: Mon, 4 Apr 2011 17:24:47 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 0/1]qemuppc:Add libqtopengl4 support for ppc
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
Date: Mon, 04 Apr 2011 14:25:54 -0000
X-Original-Date: 一, 04  4月 2011 22:28:53 +0800
X-List-Received-Date: Mon, 04 Apr 2011 14:25:54 -0000

From: Mei Lei <lei.mei@intel.com>

Modify some configs for ppc to enable the libqtopengl4 support.
This fixes BUG 848

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/task-poky-lsb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/task-poky-lsb

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  qemuppc: add libqtopengl4 for ppc

 meta/conf/machine/qemuppc.conf               |    2 ++
 meta/recipes-extended/tasks/task-poky-lsb.bb |    3 +++
 meta/recipes-qt/qt4/qt4-x11-free.inc         |    1 +
 3 files changed, 6 insertions(+), 0 deletions(-)


