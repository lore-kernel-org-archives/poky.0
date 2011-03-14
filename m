Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C86FC4C80A73
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 09:35:25 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Mar 2011 07:35:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,316,1297065600"; d="scan'208";a="612727954"
Received: from unknown (HELO localhost) ([10.255.16.55])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2011 07:35:24 -0700
Message-Id: <cover.1300113029.git.josh@linux.intel.com>
Old-Date: Mon, 14 Mar 2011 14:30:29 +0000
Date: Mon, 14 Mar 2011 14:35:18 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/2] Tidy up patches
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
X-List-Received-Date: Mon, 14 Mar 2011 14:35:26 -0000

From: Joshua Lock <josh@linux.intel.com>

This series consists of a couple of tidy up patches for Poky's BitBake.

The first enables bitbake-layers to work whilst the second changes our XML-RPC
server to only use the copy/paste Transport implementation for known broken
versions of Python.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (2):
  bitbake/bitbake-layers: fix to run with recent changes
  bitbake/xmlrpc: only use BBTransport for affected Python versions

 bitbake/bin/bitbake-layers      |   12 ++++++++----
 bitbake/lib/bb/server/xmlrpc.py |   21 +++++++++++++++++----
 2 files changed, 25 insertions(+), 8 deletions(-)
 mode change 100644 => 100755 bitbake/bin/bitbake-layers

-- 
1.7.4


