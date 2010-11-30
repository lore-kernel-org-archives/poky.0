Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81BF54C80815
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 23:58:44 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Nov 2010 21:58:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,278,1288594800"; d="scan'208";a="631489919"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga002.fm.intel.com with ESMTP; 29 Nov 2010 21:58:43 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PNJ9r-0005nX-Ny; Tue, 30 Nov 2010 13:53:43 +0800
Message-Id: <cover.1291096296.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Tue, 30 Nov 2010 13:51:36 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/2] fix cross build of dhcp 4.2.0
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
X-List-Received-Date: Tue, 30 Nov 2010 05:58:44 -0000

dhcp 4.2.0 introduces bind9 dependency, however, the cross compiling
doesn't work, this patch set fixes the issue. Tested for arm target

Thanks,
Qing

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (2):
  bind: add new recipe
  dhcp: fix cross build

 .../bind/bind-9.7.2-P2/conf.patch                  |  301 ++++++++++++++++++++
 .../bind/bind-9.7.2-P2/cross-build-fix.patch       |   19 ++
 meta/recipes-connectivity/bind/bind_9.7.2-P2.bb    |   54 ++++
 .../dhcp/dhcp-4.2.0/fix-external-bind.patch        |  101 +++++++
 meta/recipes-connectivity/dhcp/dhcp4.inc           |    6 +-
 meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb       |    6 +-
 6 files changed, 484 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-connectivity/bind/bind-9.7.2-P2/conf.patch
 create mode 100644 meta/recipes-connectivity/bind/bind-9.7.2-P2/cross-build-fix.patch
 create mode 100644 meta/recipes-connectivity/bind/bind_9.7.2-P2.bb
 create mode 100644 meta/recipes-connectivity/dhcp/dhcp-4.2.0/fix-external-bind.patch


