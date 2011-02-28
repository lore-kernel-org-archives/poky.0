Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 219064C80510
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 08:38:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Feb 2011 06:37:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,239,1297065600"; d="scan'208";a="714136072"
Received: from unknown (HELO helios) ([10.255.16.249])
	by orsmga001.jf.intel.com with SMTP; 28 Feb 2011 06:37:58 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 28 Feb 2011 14:37:58 +0000
Message-Id: <cover.1298903625.git.paul.eggleton@linux.intel.com>
Old-Date: Mon, 28 Feb 2011 14:33:45 +0000
Date: Mon, 28 Feb 2011 14:37:58 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/3] Minor sstate-related fixes
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
X-List-Received-Date: Mon, 28 Feb 2011 14:38:00 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

These patches fix two potential sources of problems with sstate stamp file 
handling and one error message issue for setscene tasks. They are not urgent
for the 1.0 release but may be desirable.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/sstate-fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sstate-fixes

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (3):
  sstate.bbclass: avoid deleting unrelated stamp files
  sstate.bbclass: always delete stamp files in sstate_clean
  bitbake/runqueue: show correct task name for setscene task failure

 bitbake/lib/bb/runqueue.py  |   14 +++++++++++---
 meta/classes/sstate.bbclass |   20 ++++++++++----------
 2 files changed, 21 insertions(+), 13 deletions(-)


