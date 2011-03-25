Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0423A4C80A88
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 03:26:43 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Mar 2011 01:26:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,242,1299484800"; d="scan'208";a="618705344"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by orsmga002.jf.intel.com with ESMTP; 25 Mar 2011 01:26:37 -0700
Message-Id: <cover.1301041428.git.lei.mei@intel.com>
Old-Date: Fri, 25 Mar 2011 16:23:48 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 0/1]distrodata.bbclass: merge two log files into one
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
Date: Fri, 25 Mar 2011 08:26:44 -0000
X-Original-Date: 五, 25  3月 2011 16:27:58 +0800
X-List-Received-Date: Fri, 25 Mar 2011 08:26:44 -0000

From: Mei Lei <lei.mei@intel.com>

Hi Saul,
	As your requirement, I have merged get_pkg_info.log into checkpkg.csv, after that, we will use only one file to track packages status.

Thansk
Lei

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distro

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distrodata.bbclass: Merge the get_pkg_info.log into checkpkg.csv

 meta/classes/distrodata.bbclass |   29 +++++++----------------------
 1 files changed, 7 insertions(+), 22 deletions(-)


