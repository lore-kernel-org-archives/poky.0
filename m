Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05EDC4C811F7
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:43:55 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2011 09:43:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="878550001"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2011 09:43:55 -0800
Message-Id: <2d1fc20ecf8251ff93cf3348a330b1bea6591e46.1295371995.git.ke.yu@intel.com>
In-Reply-To: <cover.1295371995.git.ke.yu@intel.com>
References: <cover.1295371995.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 22:38:34 +0800
Date: Wed, 19 Jan 2011  1:48:17 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/11] base.bbclass: use bb.fetch2 unpack API
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
X-List-Received-Date: Tue, 18 Jan 2011 17:43:56 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/classes/base.bbclass |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index f1ffb45..23b17f2 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -256,7 +256,13 @@ python base_do_unpack() {
 			continue
 		local = os.path.realpath(local)
 		lf = bb.utils.lockfile(urldata[url].lockfile)
-		ret = oe_unpack_file(local, localdata, url)
+		if bb.fetch.__version__ == "1":
+			ret = oe_unpack_file(local, localdata, url)
+		else:
+			# use bb.fetch2 unpack API
+			ud = urldata[url]
+			rootdir = bb.data.getVar('WORKDIR', localdata, True)
+			ret = ud.method.unpack(ud, rootdir, localdata)
 		bb.utils.unlockfile(lf)
 		if not ret:
 			raise bb.build.FuncFailed("oe_unpack_file failed with return value %s" % ret)
-- 
1.7.0.4


