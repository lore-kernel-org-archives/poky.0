Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A54E44C811B6
	for <poky@yoctoproject.org>; Sat, 14 May 2011 00:55:27 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 May 2011 22:55:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,367,1301900400"; 
   d="scan'208";a="2099375"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga001.fm.intel.com with ESMTP; 13 May 2011 22:55:26 -0700
Message-Id: <cover.1305352141.git.lei.mei@intel.com>
Old-Date: Sat, 14 May 2011 13:49:01 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 0/1]distro_check: Fix a bug when creating log file
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
Date: Sat, 14 May 2011 05:55:28 -0000
X-Original-Date: 六, 14  5月 2011 14:00:41 +0800
X-List-Received-Date: Sat, 14 May 2011 05:55:28 -0000

From: Mei Lei <lei.mei@intel.com>

Hi Saul,
	This patch fix a bug when creating log file, because we have created the log file in check_eventhandler, we need to remove the create log process in save_distro_check_result.

Thanks
Lei 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/licensecheck
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/licensecheck

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distro_check: Fix a bug in distro_check.py

 meta/classes/distrodata.bbclass |    9 +++++++--
 meta/lib/oe/distro_check.py     |    9 +--------
 2 files changed, 8 insertions(+), 10 deletions(-)


