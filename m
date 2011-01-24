Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 774A94C811A5
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2011 06:29:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="595906486"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2011 06:29:00 -0800
Message-Id: <77a3eed24556d9cb0edd3bdb5e063527eb07852d.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 22:38:34 +0800
Date: Mon, 24 Jan 2011 22:32:46 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 05/21] base.bbclass: use bb.fetch2 unpack API
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:06 -0000

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


