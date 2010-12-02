Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A590B4C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 08:09:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Dec 2010 06:09:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="356088091"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 06:09:40 -0800
Message-Id: <cover.1291291436.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 2 Dec 2010 20:03:56 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 0/2] Add SRC_URI checksum support
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
X-List-Received-Date: Thu, 02 Dec 2010 14:09:41 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/srcuri
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcuri

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (2):
  [RFC] Add SRC_URI checksum
  [RFC] Automatically patch recipes to add the SRC_URI checksum

 meta/classes/base.bbclass  |    4 +-
 meta/classes/utils.bbclass |  101 ++++++++++++++++++++++++++++++++++++++-----
 2 files changed, 92 insertions(+), 13 deletions(-)


