Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 092314C80B70
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 08:39:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2011 06:39:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,272,1291622400"; d="scan'208";a="643236297"
Received: from unknown (HELO localhost) ([10.239.48.108])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2011 06:39:07 -0800
Message-Id: <cover.1294150731.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Old-Date: Tue, 4 Jan 2011 22:18:51 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1]Make some change for package report system
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
Date: Tue, 04 Jan 2011 14:39:08 -0000
X-Original-Date: 二, 04  1月 2011 22:37:48 +0800
X-List-Received-Date: Tue, 04 Jan 2011 14:39:08 -0000

Make some changes in distrodata.bbclass for package report system

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/pkg-report
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/pkg-report

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distrodata.bbclass: Make some change for package report system

 meta/classes/distrodata.bbclass |   38 ++++++++++++++++++++++++++++++++------
 1 files changed, 32 insertions(+), 6 deletions(-)


