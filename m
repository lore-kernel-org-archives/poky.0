Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFDDE4C80517
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 19:34:37 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Feb 2011 17:34:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,209,1297065600"; d="scan'208";a="660489320"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2011 17:34:25 -0800
Message-Id: <cover.1298424181.git.lei.mei@intel.com>
Old-Date: Wed, 23 Feb 2011 09:23:01 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 0/1]distrodata.bbclass: Change the regular expression
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
Date: Wed, 23 Feb 2011 01:34:37 -0000
X-Original-Date: 三, 23  2月 2011  9:33:38 +0800
X-List-Received-Date: Wed, 23 Feb 2011 01:34:37 -0000

From: Mei Lei <lei.mei@intel.com>

This patch fix the postfix issue.
It will drop the postfix like "origin" or "pre1" in "3.2.2.origin"[recipe:apmd] and "3.12-pre1"[recipe:module-init-tools], but keep "rc1" or "dsf" in "1.2rc1"[recipe:speex] and "2.88dsf"[recipe:sysvinit] etc. This patch resolved 22 recipes' upstream version check issue.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/distrodata.bbclass
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distrodata.bbclass

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distrodata.bbclass: Fix the postfix issue in check_new_ver function

 meta/classes/distrodata.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


