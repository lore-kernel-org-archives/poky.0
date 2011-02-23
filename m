Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BC8D4C80335
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 05:53:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Feb 2011 03:53:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,211,1297065600"; d="scan'208";a="890414749"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga001.fm.intel.com with ESMTP; 23 Feb 2011 03:53:11 -0800
Message-Id: <cover.1298461187.git.lei.mei@intel.com>
Old-Date: Wed, 23 Feb 2011 19:39:47 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 0/1]distrodata.bbclass: Fix some issues when checking upstream version on sourceforge
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
Date: Wed, 23 Feb 2011 11:53:12 -0000
X-Original-Date: 三, 23  2月 2011 19:52:28 +0800
X-List-Received-Date: Wed, 23 Feb 2011 11:53:12 -0000

From: Mei Lei <lei.mei@intel.com>

After this patch, it will check more 34 recipes upsteam version automatically, so we only need to check about 20 recipes upstream version manually.
I will continue to reduce the manual check number.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/distrodata2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distrodata2

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distrodata.bbclass: Fix some issues when checking upstream version on
    sourceforge

 meta/classes/distrodata.bbclass |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)


