Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DA2C4C81103
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 07:55:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Jan 2011 05:55:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="877907923"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.108])
	by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2011 05:55:10 -0800
Message-Id: <cover.1295185803.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Old-Date: Sun, 16 Jan 2011 21:50:03 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1]psplash_svn.bb: change the boot logo
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
Date: Sun, 16 Jan 2011 13:55:16 -0000
X-Original-Date: 日, 16  1月 2011 21:55:49 +0800
X-List-Received-Date: Sun, 16 Jan 2011 13:55:16 -0000

Change the boot logo from poky to yocto

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/changebootlogo
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/changebootlogo

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  psplash_svn.bb: Change poky boot logo to yocto logo

 meta/recipes-core/psplash/files/psplash-poky-img.h | 1013 ++++++++++++++++++++
 meta/recipes-core/psplash/psplash_svn.bb           |    9 +-
 2 files changed, 1020 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/psplash/files/psplash-poky-img.h


