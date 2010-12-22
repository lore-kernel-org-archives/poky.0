Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C1DA4C811DF
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 01:40:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2010 23:40:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,212,1291622400"; d="scan'208";a="639177148"
Received: from unknown (HELO localhost) ([10.255.13.77])
	by fmsmga002.fm.intel.com with ESMTP; 21 Dec 2010 23:40:32 -0800
Message-Id: <790e8b7a78bf40bf2f3d9dc6832bcecba083810a.1293003470.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293003470.git.sgw@linux.intel.com>
References: <cover.1293003470.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Tue, 21 Dec 2010 23:05:25 -0800
Date: Tue, 21 Dec 2010 23:40:10 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/4] apr: update x86_64 site config file
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
X-List-Received-Date: Wed, 22 Dec 2010 07:40:33 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/site/x86_64-linux |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/site/x86_64-linux b/meta/site/x86_64-linux
index 31acb34..fd7dcfa 100644
--- a/meta/site/x86_64-linux
+++ b/meta/site/x86_64-linux
@@ -114,3 +114,7 @@ as_cv_unaligned_access=${as_cv_unaligned_access=yes}
 nfsd_cv_broken_setfsuid=${nfsd_cv_broken_setfsuid=0}
 nfsd_cv_func_statfs=${nfsd_cv_func_statfs=statfs2_bsize}
 nfsd_cv_bsd_signals=${nfsd_cv_bsd_signals=yes}
+
+#apr
+apr_cv_tcp_nodelay_with_cork=${apr_cv_tcp_nodelay_with_cork=yes}
+
-- 
1.7.1.1


