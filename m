Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3980E4C81118
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 05:28:18 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jan 2011 03:27:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,271,1291622400"; d="scan'208";a="874260789"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jan 2011 03:27:47 -0800
Message-Id: <6b19cf34c82bc4f083a420da7430ff60cbfcb815.1294140740.git.ke.yu@intel.com>
In-Reply-To: <cover.1294140740.git.ke.yu@intel.com>
References: <cover.1294140740.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 4 Jan 2011 15:55:33 +0800
Date: Tue, 04 Jan 2011 19:36:06 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] base.bbclass: add lock file for do_unpack task
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
X-List-Received-Date: Tue, 04 Jan 2011 11:28:18 -0000

This patch intend to fix the random unpack failure of linux-libc-headers-yocto
and linux-yocto.

The root cause of the unpack failure is that: these two recpies has the same URL, thus
has the same dest file during the fetch and unpack phase:
do_fetch  : create tar ball ${DL_DIR}/git_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
do_unpack : extract tar ball ${DL_DIR}/git_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
fetch phase is protected by lockfile, so it works fine. but unpack phase is not lock protected,
thus there is race condition like: when linux-yocto do_unpack is extracting the tar ball,
linux-libc-headers-yocto do_fetch starts to create tar ball thus overwrite linux-yocto's
tar ball and cause linux-yocto do_unpack failure

To fix this issue, do_unpack also need to be protected by lock

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/classes/base.bbclass |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index 54a1dcd..f8ce123 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -242,6 +242,8 @@ python base_do_unpack() {
 	localdata = bb.data.createCopy(d)
 	bb.data.update_data(localdata)
 
+	urldata = bb.fetch.init([], localdata, True)
+
 	src_uri = bb.data.getVar('SRC_URI', localdata, True)
 	if not src_uri:
 		return
@@ -253,7 +255,9 @@ python base_do_unpack() {
 		if local is None:
 			continue
 		local = os.path.realpath(local)
+		lf = bb.utils.lockfile(urldata[url].lockfile)
 		ret = oe_unpack_file(local, localdata, url)
+		bb.utils.unlockfile(lf)
 		if not ret:
 			raise bb.build.FuncFailed("oe_unpack_file failed with return value %s" % ret)
 }
-- 
1.7.0.4


