Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5ECEB4C80039
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 02:17:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Dec 2010 00:17:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,212,1291622400"; d="scan'208";a="586137329"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 22 Dec 2010 00:17:52 -0800
Message-Id: <cover.1293006082.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 22 Dec 2010 16:21:22 +0800
Date: Wed, 22 Dec 2010 16:23:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] sanity check for writable DL_DIR, to fix bug 606
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
X-List-Received-Date: Wed, 22 Dec 2010 08:17:53 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/bug606
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug606

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  sanity.bbclass: check if DL_DIR is writeable

 meta/classes/sanity.bbclass |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)


