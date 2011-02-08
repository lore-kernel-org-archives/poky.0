Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CBFA4C8009E
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 15:26:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Feb 2011 13:26:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,443,1291622400"; d="scan'208";a="705502017"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by orsmga001.jf.intel.com with ESMTP; 08 Feb 2011 13:26:46 -0800
Message-Id: <cover.1297176911.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 8 Feb 2011 06:55:11 -0800
Date: Tue, 08 Feb 2011  6:57:04 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] mklibs library size optimization
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
X-List-Received-Date: Tue, 08 Feb 2011 21:26:47 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Richard,
  Here are the image-mklibs.bbclass file with changes as you suggested.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/mklibs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/mklibs

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  image-mklibs.bbclass: add the library optimization functionality

 meta/classes/image-mklibs.bbclass |   69 +++++++++++++++++++++++++++++++++++++
 meta/conf/local.conf.sample       |   12 ++++++-
 2 files changed, 80 insertions(+), 1 deletions(-)
 create mode 100644 meta/classes/image-mklibs.bbclass

-- 
1.7.2.2


