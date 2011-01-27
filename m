Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 704574C8118C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 08:14:48 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2011 06:14:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="881519806"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2011 06:14:47 -0800
Message-Id: <dbc0a04d84dd5c8d7a7ffed7d25c9d2044d42e66.1296137142.git.ke.yu@intel.com>
In-Reply-To: <cover.1296137142.git.ke.yu@intel.com>
References: <cover.1296137142.git.ke.yu@intel.com>
Old-Date: Wed, 26 Jan 2011 15:49:21 +0800
Date: Thu, 27 Jan 2011 22:18:15 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 2/3] kernel-yocto.bbclass: adjust the git dir to fit with git unpack
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
X-List-Received-Date: Thu, 27 Jan 2011 14:14:48 -0000

From: Yu Ke <ke.yu@intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/classes/kernel-yocto.bbclass |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 8479b39..ca1fb15 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -89,11 +89,11 @@ do_patch() {
 }
 
 do_kernel_checkout() {
-	if [ -d ${WORKDIR}/.git/refs/remotes/origin ]; then
+	if [ -d ${WORKDIR}/git/.git/refs/remotes/origin ]; then
 		echo "Fixing up git directory for ${LINUX_KERNEL_TYPE}/${KMACHINE}"
 		rm -rf ${S}
 		mkdir ${S}
-		mv ${WORKDIR}/.git ${S}
+		mv ${WORKDIR}/git/.git ${S}
 	
 		if [ -e ${S}/.git/packed-refs ]; then
 			cd ${S}
-- 
1.7.0.4


