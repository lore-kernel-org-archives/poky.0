Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2614D4C80594
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 03:07:42 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2011 01:07:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="702079914"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by orsmga001.jf.intel.com with ESMTP; 30 Jan 2011 01:07:41 -0800
Message-Id: <cover.1296378252.git.lei.mei@intel.com>
Old-Date: Sun, 30 Jan 2011 17:04:12 +0800
Date: Sun, 30 Jan 2011 17:07:09 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 0/1] distrodata.bbclass:modify some regular expression and generate some data for pkg-report-system
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
X-List-Received-Date: Sun, 30 Jan 2011 09:07:42 -0000

From: Mei Lei <lei.mei@intel.com>

Hi Saul:
    This patch improve checkpkg task when checking upstrem version, we can get more precise upstream version and reduce the number of invalid upstream version. This patch also generate some data for package report system. Please review it, thanks.

Lei


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/distrodata.bbclass
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distrodata.bbclass

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distrodata.bbclass: Imporve the checkpkg task more precisely and
    generate data for pkg-report-system

 meta/classes/distrodata.bbclass |   35 +++++++++++++++++++++++++++++++----
 1 files changed, 31 insertions(+), 4 deletions(-)


