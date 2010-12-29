Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FBF54C81021
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 03:47:40 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Dec 2010 01:47:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,244,1291622400"; d="scan'208";a="872687722"
Received: from unknown (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 01:47:39 -0800
Message-Id: <db6dd5b865074847ed541ab4886b45d15d5d5e91.1293616099.git.ke.yu@intel.com>
In-Reply-To: <cover.1293616099.git.ke.yu@intel.com>
References: <cover.1293616099.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 29 Dec 2010 15:28:48 +0800
Date: Wed, 29 Dec 2010 17:54:35 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] bb.utils: check if lock file is writable, to fix bug 606
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
X-List-Received-Date: Wed, 29 Dec 2010 09:47:40 -0000

Bug 606 report that if $DL_DIR is read-only, do_fetch will
simply hang without any error message.

The root cause is that: bb.fetch.go()->bb.utils.lockfile()
will try to lock file ${DL_DIR}/xxxxx.lock. Since ${DL_DIR}
is read-only, it will cause IOError exception. Although
lockfile() can catch the exception, currently code simply
ignore all the exception and continue the loop. it make
sense if the exception is caused by locking contention,
but in the read-only $DL_DIR case, it cause endless waiting
unfortunately.

So this patch add read-only check for lockfile to avoid the
silent hang.

Fix [BUGID #606]

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/utils.py |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/utils.py b/bitbake/lib/bb/utils.py
index f468faf..e02969c 100644
--- a/bitbake/lib/bb/utils.py
+++ b/bitbake/lib/bb/utils.py
@@ -401,6 +401,10 @@ def lockfile(name):
         bb.msg.error(bb.msg.domain.Util, "Error, lockfile path does not exist!: %s" % path)
         sys.exit(1)
 
+    if not os.access(path, os.W_OK):
+        bb.msg.error(bb.msg.domain.Util, "Error, lockfile path is not writable!: %s" % path)
+        sys.exit(1)
+
     while True:
         # If we leave the lockfiles lying around there is no problem
         # but we should clean up after ourselves. This gives potential
-- 
1.7.0.4


