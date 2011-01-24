Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22C834C81212
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:27 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2011 06:29:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="880395599"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2011 06:29:26 -0800
Message-Id: <9409c97944677a168ce758d152945fba2396b809.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 19:41:53 +0800
Date: Mon, 24 Jan 2011 22:33:12 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 21/21] ssh.py: add no network access check
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:27 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/ssh.py |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/ssh.py b/bitbake/lib/bb/fetch2/ssh.py
index 78f55a6..711e668 100644
--- a/bitbake/lib/bb/fetch2/ssh.py
+++ b/bitbake/lib/bb/fetch2/ssh.py
@@ -112,6 +112,8 @@ class SSH(Fetch):
             commands.mkarg(ldir)
         )
 
+        bb.fetch2.check_network_access(d, cmd)
+
         (exitstatus, output) = commands.getstatusoutput(cmd)
         if exitstatus != 0:
             print(output)
-- 
1.7.0.4


