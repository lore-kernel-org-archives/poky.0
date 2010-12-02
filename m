Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D99B74C810AE
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 18:41:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Dec 2010 16:41:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,285,1288594800"; d="scan'208";a="355824585"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 01 Dec 2010 16:41:34 -0800
Message-Id: <f8cee172fc09b0364fe3c44f62548cffc211d368.1291251005.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291251005.git.dongxiao.xu@intel.com>
References: <cover.1291251005.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 2 Dec 2010 08:46:27 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] package.bbclass: Use hard link for package split instead of copy
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
X-List-Received-Date: Thu, 02 Dec 2010 00:41:36 -0000

When doing package split, we use hard link instead of copy, which can
save about 10% disk space when building poky-image-minimal.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/package.bbclass |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index d39c694..2940eb9 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -406,8 +406,8 @@ python populate_packages () {
 			fpath = os.path.join(root,file)
 			dpath = os.path.dirname(fpath)
 			bb.mkdirhier(dpath)
-			ret = bb.copyfile(file, fpath)
-			if ret is False or ret == 0:
+			ret = os.system("ln %s %s" % (file, fpath))
+			if ret is False:
 				raise bb.build.FuncFailed("File population failed")
 		del localdata
 	os.chdir(workdir)
-- 
1.6.3.3


