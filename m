Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F0804C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 21:45:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 19:45:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,262,1297065600"; d="scan'208";a="716004314"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2011 19:45:22 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Mar 2011 11:50:45 +0800
Message-Id: <cover.1299210292.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] Fix for BUG782: vnc server issue in mips
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
X-List-Received-Date: Fri, 04 Mar 2011 03:45:39 -0000

Bug 782 is that x86 vnc client does not work with vnc server in qemumips.

the root cause is that x11vnc server's word endian is wrong in qemumips.

mips linux is bigendian, while x86 linux is little endian, so there should be
endian convention between the vnc client/server. the code does have the endian
convertion logic and the logic works well in most case. the only issue is that
in vncserver mips compiling, there is missing flag "-DLIBVNCSERVER_WORDS_BIGENDIAN",
thus the vncserver in mips has wrong endian.

Adding the flag can fix this issue.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/bug782-vnc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug782-vnc

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  x11vnc: add big endian CFLAG for mips, to fix bug 782

 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)


