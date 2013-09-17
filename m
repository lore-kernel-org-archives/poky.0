Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD53BE015A4
	for <poky@yoctoproject.org>; Mon, 16 Sep 2013 17:04:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 16 Sep 2013 17:04:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,919,1371106800"; d="scan'208";a="396676522"
Received: from qana.jf.intel.com ([10.7.201.146])
	by fmsmga001.fm.intel.com with ESMTP; 16 Sep 2013 17:04:19 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 99B705F82A7F; Mon, 16 Sep 2013 17:02:31 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: poky@yoctoproject.org
Date: Mon, 16 Sep 2013 17:02:27 -0700
Message-Id: <1379376147-5116-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] meta-yocto/layer.conf: Bump LAYERVERSION_yocto
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Sep 2013 00:04:21 -0000

Commit 5992830145c fixes the autobuilder needing to rename
qemux86-64 to qemux86_64 however in order to maintain autobuilder
compatibility with prior releases we need to bump LAYERVERSION.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index e326aad..9942b51 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -11,6 +11,6 @@ BBFILE_PRIORITY_yocto = "5"
 
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
-LAYERVERSION_yocto = "1"
+LAYERVERSION_yocto = "2"
 
 LAYERDEPENDS_yocto = "core"
-- 
1.8.1.2


