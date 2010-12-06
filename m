Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6D1B4C81081
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 19:42:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 17:42:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="684548095"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 17:42:43 -0800
Message-Id: <0969b7dd1a56d7d16a94da3ed45ee59d42280290.1291683028.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291683028.git.dongxiao.xu@intel.com>
References: <cover.1291683028.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 6 Dec 2010 20:26:08 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/3] package.bbclass: Use hard link for package split instead of copy
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
X-List-Received-Date: Tue, 07 Dec 2010 01:42:44 -0000

When doing package split, we use hard link instead of copy, which can
save about 10% disk space when building poky-image-minimal.

If fail, it will fall back to the copyfile function.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/package.bbclass |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index d39c694..2b4747b 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -406,9 +406,11 @@ python populate_packages () {
 			fpath = os.path.join(root,file)
 			dpath = os.path.dirname(fpath)
 			bb.mkdirhier(dpath)
-			ret = bb.copyfile(file, fpath)
-			if ret is False or ret == 0:
-				raise bb.build.FuncFailed("File population failed")
+			ret = os.system("ln -f %s %s" % (file, fpath))
+			if ret is False:
+				ret = bb.copyfile(file, fpath)
+				if ret is False or ret == 0:
+					raise bb.build.FuncFailed("File population failed")
 		del localdata
 	os.chdir(workdir)
 
-- 
1.6.3.3


