Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C3994C800A3
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 02:25:08 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Feb 2011 00:25:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,485,1291622400"; d="scan'208";a="658572532"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 17 Feb 2011 00:25:07 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Ppz4S-0005gI-Pa; Thu, 17 Feb 2011 16:18:40 +0800
Message-Id: <cover.1297930635.git.qing.he@intel.com>
Old-Date: Thu, 17 Feb 2011 16:17:15 +0800
Date: Thu, 17 Feb 2011 16:18:40 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 0/1] Fix parallel make for openssl
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
X-List-Received-Date: Thu, 17 Feb 2011 08:25:09 -0000

From: Qing He <qing.he@intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (1):
  openssl: fix parallel make

 .../openssl/openssl-0.9.8p/parallel-make-fix.patch |   18 ++++++++++++++++++
 meta/recipes-connectivity/openssl/openssl.inc      |    6 +++---
 .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
 3 files changed, 22 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-connectivity/openssl/openssl-0.9.8p/parallel-make-fix.patch


